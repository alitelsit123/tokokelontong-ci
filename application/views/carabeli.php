<!DOCTYPE html>
<html lang="en">

<head>
  <?php $this->load->view('produk/_partials-heda.php') ?>
  <!-- Floating WA -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
<a href="https://api.whatsapp.com/send?
        phone=+6287734250835
        &text=Hola%21%20Quisiera%20m%C3%A1s%20informaci%C3%B3n%20sobre%20Varela%202." 
        class="float" target="_blank">
<i class="fa fa-whatsapp my-float"></i>
</a>
<style>
  .float{
	position:fixed;
	width:60px;
	height:60px;
	bottom:40px;
	right:40px;
	background-color:#25d366;
	color:#FFF;
	border-radius:50px;
	text-align:center;
  font-size:30px;
	box-shadow: 2px 2px 3px #999;
  z-index:100;
}

.my-float{
	margin-top:16px;
}
  </style>
<!-- end Floating Wa -->
</head>

<body>
<?php $this->load->view('produk/_partials-nav.php') ?>
<main style="margin-top: 100px;">
<div class="clear"></div><div id="wrapcontainer">
 <div id="container">
     <div class="page" id="post-9">
    <div class="title">
     <h2><a href="#" title="Cara Beli">Cara Beli</a></h2>
    </div>
    <div class="entry">
     <table cellspacing="0" align="center">
<tbody>
<tr>
<td>
<blockquote><p><img alt="1" src="assets/images/Angka/1.png" width="50" height="67"></p></blockquote>
</td>
<td >
   <h4> Lihat <a title="klik untuk melihat produk" href="<?= base_url('home') ?> ">produk</a> yang ada di bagian home, setelah itu silahkan pilih produk yang akan di beli.</h4>
</td>
</tr>
<tr>
<td>
<blockquote><p><img alt="step 2" src="assets/images/Angka/2.png" width="50" height="67" border="0" /></p></blockquote>
</td>
<td>
<h4> Setelah mendapatkan produk yang diinginkan, maka akan di arahkan ke bagian produk yang telah dipilih dan isi jumlah yang akan dibeli. setalah itu klik bagian <b>"Tambah ke Cart"</b> </h4></span>.</td>
</tr>
<tr>
<td>
<blockquote><p><img alt="step 3" src="assets/images/Angka/3.png" width="50" height="67" border="0" /></p></blockquote>
</td>
<td>
<h4> Klik bagian Keranjang, setelah itu muncul tampilan produk yang telah anda pilih tadi kemudian klik <b> Tombol bayar</b>. anda akan di arahkan ke form pengiriman beserta total pembayaran nya & detail produk. <b>pastikan isi form sudah sesuai. </h4> </td>
</tr>
<tr>
<td>
<blockquote><p><img alt="step 3" src="assets/images/Angka/4.png" width="50" height="67" border="0" /></p></blockquote>
</td>
<td>
<h4> jika semua sudah sesuai, segera lakukan pembayaran sesuai metode pembayaran yang ada. Pada halaman ini kamu dapat memilih metode pembayaran seperti apa yang ingin digunakan baik itu transfer bank hingga melalui indomart. </h4> </td>
</tr>
<td>
<blockquote><p><img alt="step 3" src="assets/images/Angka/5.png" width="50" height="67" border="0" /></p></blockquote>
</td>
<td>
<h4> Setelah melakukan pembayaran, kamu bisa cek status pembelianmu di bagian <b> Dashboard</b>(pojok kanan atas) untuk tau status transaksi dan Nomer resi Produk yang telah kamu beli. </h4> </td>
</tr>
</tbody>
</table>
<p></br></p>
<p style="text-align: left;">NB: - setelah melakukan transaksi jangan lupa menekan tombol konfirmasi yang berada di dashboard.</p>
<p style="text-align: left;"> -Jika anda kurang jelas bisa hubugni kami --> <a title="hubungi kami" href="<?= base_url('contact') ?> ">disini</p>
    </div>
    <div class="comments-template">
</main>
  <!--Footer-->
  <footer class="page-footer text-center font-small mt-4 wow fadeIn fixed-bottom">

    <div class="footer-copyright py-3">
      © <?= date('Y') ?> Copyright:
      <a href="#" target="_blank"> Kaisar Products </a>
    </div>


  </footer>
  <!--/.Footer-->

  <!-- SCRIPTS -->
  <!-- JQuery -->
  <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <!-- Bootstrap tooltips -->
  <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.15.0/umd/popper.min.js"></script>
  <!-- Bootstrap core JavaScript -->
  <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.3.1/js/bootstrap.min.js"></script>
  <!-- MDB core JavaScript -->
  <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.7.6/js/mdb.min.js"></script>
  <!-- Initializations -->
  <script type="text/javascript">
    // Animations initialization
    new WOW().init();
  </script>
</body>

</html>