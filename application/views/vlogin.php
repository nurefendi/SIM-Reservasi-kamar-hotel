<form method="post" action="<?php echo site_url('login');?>">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Creative - Bootstrap 3 Responsive Admin Template">
    <meta name="author" content="GeeksLabs">
    <meta name="keyword" content="Creative, Dashboard, Admin, Template, Theme, Bootstrap, Responsive, Retina, Minimal">
    <link rel="shortcut icon" href="<?php echo base_url();?>/admin/img/favicon.png">

    <title>Login Page 2 | Creative - Bootstrap 3 Responsive Admin</title>

    <!-- Bootstrap CSS -->    
    <link href="<?php echo base_url();?>/admin/css/bootstrap.min.css" rel="stylesheet">
    <!-- bootstrap theme -->
    <link href="<?php echo base_url();?>/admin/css/bootstrap-theme.css" rel="stylesheet">
    <!--external css-->
    <!-- font icon -->
    <link href="<?php echo base_url();?>/admin/css/elegant-icons-style.css" rel="stylesheet" />
    <link href="<?php echo base_url();?>/admin/css/font-awesome.css" rel="stylesheet" />
    <!-- Custom styles -->
    <link href="<?php echo base_url();?>/admin/css/style.css" rel="stylesheet">
    <link href="<?php echo base_url();?>/admin/css/style-responsive.css" rel="stylesheet" />

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 -->
    <!--[if lt IE 9]>
    <script src="js/html5shiv.js"></script>
    <script src="js/respond.min.js"></script>
    <![endif]-->
</head>

  <body class="login-img3-body">

    <div class="container">

      <form class="login-form">
			
        <div class="login-wrap">
			<br><br><br><br>
			
            <div class="input-group">
              <span class="input-group-addon"><i class="icon_profile"></i></span>
				<?php
					if (isset($pesan))
						{	
							echo $pesan;
						}

				?>
              <input type="text" class="form-control" placeholder="Username" autofocus>
            </div>
            <div class="input-group">
                <span class="input-group-addon"><i class="icon_key_alt"></i></span>
                <input type="password" class="form-control" placeholder="Password">
            </div>
           
            <button class="btn btn-primary btn-lg btn-block" type="submit">Login</button>
            
        </div>
      </form>

    </div>


  </body>
