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
    <div class="container">
      <div class="alert alert-success" role="alert">
        <h4 class="alert-heading"><b>Toko Kaisar Products</b></h4>
        <p>Menyesal, tak kusampaikan
          Cinta monyetku ke Kanya dan Rebecca
          Apa kabar kalian di sana?
          Semoga hidup baik-baik saja
          Tak belajar, terkena getahnya
          Saat bersama Thanya dan Saphira
          Kupercaya mungkin bukan jalannya
          Namun kalian banyak salah juga
          Jika dahulu ku tak cepat berubah
          Ini maafku untukmu, Sharfina
          Segala doa yang baik adanya
          Untukmu dan mimpimu yang mulia.</p>
        <hr>
        <p class="mb-0">Kuat apapun yang terjadi, kita abadi.</p>
      </div>
    </div>
    <div class="container">
      <div class="alert alert-success" role="alert">
        <h4 class="alert-heading"><b>Alhamdulillah Dengan Ini Saya Ucapkan</b></h4>
        <p>Berkat usaha saya, saya dapat melalui semester 5 dengan nilai yang memuaskan
        salah satunya dengan pembuatan program ini yang membantu saya mendapat nilai A dari 2 matakuliah
        .</p>
        <hr>
        <p class="mb-0">Lompatan yang tidak diambil.</p>
      </div>
    </div>
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