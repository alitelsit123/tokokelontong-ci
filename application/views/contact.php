<!DOCTYPE html>
<html lang="en">

<head>
  <?php $this->load->view('produk/_partials-heda.php') ?>
  <style type="text/css">
    html,
    body,
    header,
    .carousel {
      height: 60vh;
    }

    @media (max-width: 740px) {

      html,
      body,
      header,
      .carousel {
        height: 100vh;
      }
    }

    @media (min-width: 800px) and (max-width: 850px) {

      html,
      body,
      header,
      .carousel {
        height: 100vh;
      }
    }
  </style>
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
      <a target="_blank" href="https://wa.me/6287734250835">
        <div class="alert alert-primary" role="alert">
          Whatsapp &nbsp;&nbsp;&nbsp;: <b>087734250835</b>
        </div>
      </a>
      <div class="alert alert-secondary" role="alert">
        Email &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;: <b>KaisarProducts@gmail.com</b>
      </div>
      <a target="_blank" href="#">
        <div class="alert alert-success" role="alert">
          Instagram &nbsp;&nbsp;: <b>@Kaisar Products</b>
        </div>
      </a>
      <a target="_blank" href="#">
        <div class="alert alert-danger" role="alert">
          Facebook &nbsp;&nbsp;: <b>Kaisar Products</b>
        </div>
      </a>
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