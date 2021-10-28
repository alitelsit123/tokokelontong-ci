<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Payment extends CI_Controller {

	public function __construct()
    {
        parent::__construct();
        $params = array('server_key' => API_MIDTRANS, 'production' => false); //Ganti dengan key anda, cek config/Constants.php
				$this->load->library('veritrans');
				$this->load->model(['Payment_Model','Produk_Model']);
				$this->veritrans->config($params);
    }

	public function index()
	{
		redirect('payment/checkout');
	}

	public function finish()
	{
		$this->session->unset_userdata(['id_orders','kurir','service','estimasi','alamat_pengiriman',
																		'kode_pos','nama_penerima','no_penerima',
																		'berat', 'total_ongkir','totalBayar','triggerCheckout']);
		$this->cart->destroy();
		$this->freeM->getSweetAlert('infoPayment', 'Horayy!', 'Pemesanan berhasil di lakukan!', 'success');
		redirect('home');
	}

	public function unfinish()
	{
		$this->session->unset_userdata(['id_orders','kurir','service','estimasi','alamat_pengiriman',
																		'kode_pos','nama_penerima','no_penerima',
																		'berat', 'total_ongkir','totalBayar','triggerCheckout']);
		$this->cart->destroy();
		$this->freeM->getSweetAlert('infoPayment', 'Upss!', 'Pemesanan gagal di lakukan!', 'error');
		redirect('home');
	}

	public function checkout()
	{
		if($this->session->totalBayar == 0 or !$this->session->has_userdata('triggerCheckout')){
			redirect('/');
		}
		$transaction_details = array(
			'order_id' 			=> 'KaisarProducts-'.uniqid(),
			'gross_amount' 	=> $this->session->totalBayar
		);

		// Populate items
		$i=0;
		foreach($this->cart->contents() as $key => $val):
			$items[$i] = [
					'id' 				=> $val['id'],
					'price' 		=> $val['price'],
					'quantity' 	=> $val['qty'],
					'name' 			=> $val['name'].'('.strtoupper($val['ukuran'].')')
			];
			$i++;
		endforeach;
		$ongkir = [
				'id'				=> 'ongkir',
				'price' 		=> $this->session->total_ongkir,
				'quantity' 	=> 1,
				'name' 			=> 'Biaya Pengiriman'
		];
		array_push($items,$ongkir); //Menambahkan list ongkir ke midtrans


		// echo '<pre>';
    // var_dump($items);
		// echo '</pre>';
		// die;

		$newPenerima = explode(' ',$this->session->nama_penerima);
		// Populate customer's billing address
		$billing_address = array(
			'first_name' 			=> $newPenerima[0],
			'last_name' 			=> (!isset($newPenerima[1]))? '' : $newPenerima[1],
			'address' 				=> $this->session->alamat_pengiriman,
			'city' 						=> $this->session->kota_tujuan,
			'postal_code' 		=> $this->session->kode_pos,
			'phone' 					=> $this->session->no_penerima,
			'country_code'		=> 'IDN'
			);

		// Populate customer's shipping address
		$newPenerima = explode(' ',$this->session->nama_penerima);
		$shipping_address = array(
			'first_name' 			=> $newPenerima[0],
			'last_name' 			=> (!isset($newPenerima[1]))? '' : $newPenerima[1],
			'address' 				=> $this->session->alamat_pengiriman,
			'city' 						=> $this->session->kota_tujuan,
			'postal_code' 		=> $this->session->kode_pos,
			'phone' 					=> $this->session->no_penerima,
			'country_code'		=> 'IDN'
			);

		// Populate customer's Info
		$newNama = explode(' ',$this->session->nama);
		$customer_details = array(
			'first_name' 			=> $newNama[0],
			'last_name' 			=> (!isset($newNama[1]))? '' : $newNama[1],
			'email' 					=> $this->session->email,
			'phone' 					=> $this->session->no_penerima,
			'billing_address' => $billing_address,
			'shipping_address'=> $shipping_address
			);

		// Data yang akan dikirim untuk request redirect_url.
		// Uncomment 'credit_card_3d_secure' => true jika transaksi ingin diproses dengan 3DSecure.
		$transaction_data = array(
			'payment_type' 			=> 'vtweb', 
			'vtweb' 						=> array(
				'enabled_payments' 	=> ["credit_card",  "mandiri_va",
                                        "bca_klikbca", "bri_epay", "echannel", "permata_va",
                                        "bca_va", "bni_va", "bri_va", "gopay", "indomaret",
                                         "shopeepay", "cstore",],
                                        
                                       /* ["credit_card", "cimb_clicks", "mandiri_va",
                                        "bca_klikbca", "bca_klikpay", "bri_epay", "echannel", "permata_va",
                                        "bca_va", "bni_va", "bri_va", "other_va", "gopay", "indomaret",
                                        "danamon_online", "akulaku", "shopeepay", "cstore",],*/
				
				'credit_card_3d_secure' => false
			),
			'transaction_details'=> $transaction_details,
			'item_details' 			 => $items,
			'customer_details' 	 => $customer_details
		);

		try
		{
			$vtweb_url = $this->veritrans->vtweb_charge($transaction_data);
			$this->Payment_Model->insertDataOrders($transaction_details['order_id']); //insert data ke DB (Orders)
			header('Location: ' . $vtweb_url);
		} 
		catch (Exception $e) 
		{
    		echo $e->getMessage();	
		}
		
	}

	public function handling() //Webhook untuk menangkap respon dari Midtrans
  {

    $obj = file_get_contents('php://input');
		$midtrans = json_decode($obj, true);
		if($midtrans == null){ //Pengecekan
			die('jnck');
		} else  {
			if($midtrans['merchant_id'] != MARCHANT_ID){
				die('wtf');
			}
		}

		$this->Payment_Model->insertDataMidtrans($midtrans); //Olah data respon dari midtrans

    $this->output
      ->set_status_header(201)
      ->set_content_type('application/json', 'utf-8')
      ->set_output(json_encode($midtrans, JSON_PRETTY_PRINT))
      ->_display();
      exit;
  }
}
