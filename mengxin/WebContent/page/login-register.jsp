<%@ page pageEncoding="utf-8"%>
<!doctype html>
<html class="no-js">
<head>
	<meta charset="utf-8">
	<meta http-equiv="x-ua-compatible" content="ie=edge">
	<title>Login-Register || Plantmore</title>
	<meta name="description" content="">
	<meta name="robots" content="noindex, follow" />
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="robots" content="noindex, follow" />
	<!-- Place favicon.ico in the root directory -->
	<link rel="shortcut icon" type="image/x-icon" href="../img/favicon.ico">
    <!--All Css Here-->
    
    <!-- Bootstrap CSS-->
	<link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/4.1.0/css/bootstrap.min.css
">

	<!-- Linearicon CSS-->
    <link rel="stylesheet" href="../css/linearicons.min.css">
    <!-- Font Awesome CSS-->
    <link rel="stylesheet" type="text/css" href="http://www.jq22.com/jquery/font-awesome.4.6.0.css">

	<!-- Animate CSS-->
	<link rel="stylesheet" href="../css/animate.css">
	<!-- Owl Carousel CSS-->
	<link rel="stylesheet" href="../css/owl.carousel.min.css">
	<!-- Slick CSS-->
	<link rel="stylesheet" href="../css/slick.css">
	<!-- Meanmenu CSS-->
	<link rel="stylesheet" href="../css/meanmenu.min.css">
	<!-- Easyzoom CSS-->
	<link rel="stylesheet" href="../css/easyzoom.css">
	<!-- Venobox CSS-->
	<link rel="stylesheet" href="../css/venobox.css">
	<!-- Jquery Ui CSS-->
	<link rel="stylesheet" href="../css/jquery-ui.css">
	<!-- Nice Select CSS-->
	<link rel="stylesheet" href="../css/nice-select.css">
	<!-- Style CSS -->
	<link rel="stylesheet" href="../css/style.css">
	<!-- Responsive CSS -->
	<link rel="stylesheet" href="../css/responsive.css">
	<!-- Modernizr Js -->
	<script src="../js/vendor/modernizr-2.8.3.min.js"></script>
    <style type="text/css">
       .error{
        color: red;
       }  
       .succ{
        color: green;
       }
       
    </style>
</head>
<body>
		<!--[if lt IE 8]>
	<p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
	<![endif]-->

	<div class="wrapper">
		<!--Header Area Start-->
		<%@include file="../page/header.jsp" %>
		<!--Header Area End-->
		<br>
		<br>
		<br>
		<br>
		<!--Breadcrumb Tow Start-->
		<div class="breadcrumb-tow mb-120">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <div class="breadcrumb-title">
                            <h1>Login - Register</h1>
                        </div>
                        <div class="breadcrumb-content breadcrumb-content-tow">
                            <ul>
                                <li><a href="index.html">Home</a></li>
                                <li class="active">Login-Register</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
		<!--Breadcrumb Tow End-->
		<!--Login Register Area Strat-->
		<div class="login-register-area mb-80">
		    <div class="container">
		        <div class="row">
                    <!--Login Form Start-->
		            <div class="col-md-6 col-sm-6">
		                <div class="customer-login-register">
		                    <div class="form-login-title">
		                        <h2>Login</h2>
		                    </div>
		                    <div class="login-form">
		                        <form action="#">
		                            <div class="form-fild">
		                                <p><label>Username<span class="required">*</span></label></p>
		                                <input name="username" placeholder="请输入用户名" type="text" id="username1">
		                            </div>
		                            <div class="form-fild">
		                                <p><label>Password <span class="required">*</span></label></p>
		                                <input name="password" placeholder="请输入6-12位长度密码" type="password" id="password1">
		                            </div>
		                            <div class="login-submit">
		                                <button type="button" class="form-button" onclick="checkLogin();">Login</button>
		                                <label>
		                                    <input class="checkbox" name="rememberme" value="" type="checkbox">
		                                    <span id="login1"></span>
		                                </label>
		                            </div>
		                            <div class="lost-password">
		                               <br>
		                            </div>
		                        </form>
		                    </div>
		                </div>
		            </div>
		            <!--Login Form End-->
		            <!--Register Form Start-->
		            <div class="col-md-6 col-sm-6">
		                <div class="customer-login-register register-pt-0">
		                    <div class="form-register-title">
		                        <h2>Register</h2>
		                    </div>
		                    <div class="register-form">
		                        <form action="#">
		                            <div class="form-fild">
		                                <p><label>Username<span class="required">*</span></label><span id="tixing1"></span></p>
		                                <input name="username" placeholder="请输入用户名" type="text" id="username2" onblur="checkUname();">
		                            </div>
		                            <div class="form-fild">
		                                <p><label>Password <span class="required">*</span></label><span id="tixing2"></span></p>
		                                <input name="password" placeholder="请输入6-12位长度密码" type="password" id="password2" onblur="checkPassword();">
		                            </div>
		                            <div class="register-submit">
		                                <button type="button" class="form-button" onclick="checkRegist();">Register</button>
                                        <span id="regist2"></span>
		                            </div>
		                        </form>
		                    </div>
		                </div>
		            </div>
		            <!--Register Form End-->
		        </div> 
		    </div>
		</div>
		<!--Login Register Area End-->
		
		<!--Footer Area Start-->
		<%@include file="../page/footer.jsp" %>




    <!--All Js Here-->
    
	<!--Jquery 1.12.4-->
	<script src="http://www.jq22.com/jquery/jquery-1.10.2.js"></script>
	<!--Popper-->
	<script src="../js/popper.min.js"></script>
	<!--Bootstrap-->
	<script src="../js/bootstrap.min.js"></script>
	<!--Imagesloaded-->
	<script src="../js/imagesloaded.pkgd.min.js"></script> 
	<!--Isotope-->
	<script src="../js/isotope.pkgd.min.js"></script>
	<!--Waypoints-->
	<script src="../js/waypoints.min.js"></script>
	<!--Counterup-->
	<script src="../js/jquery.counterup.min.js"></script>
	<!--Carousel-->
	<script src="../js/owl.carousel.min.js"></script>
	<!--Slick-->
	<script src="../js/slick.min.js"></script>
	<!--Meanmenu-->
	<script src="../js/jquery.meanmenu.min.js"></script>
	<!--Easyzoom-->
	<script src="../js/easyzoom.min.js"></script>
	<!--Nice Select-->
	<script src="../js/jquery.nice-select.min.js"></script>
	<!--ScrollUp-->
	<script src="../js/jquery.scrollUp.min.js"></script>
	<!--Wow-->
	<script src="../js/wow.min.js"></script>
	<!--Venobox-->
	<script src="../js/venobox.min.js"></script>
	<!--Jquery Ui-->
	<script src="http://cdn.bootcss.com/jqueryui/1.11.0/jquery-ui.min.js"></script>
	<!--Countdown-->
	<script src="../js/jquery.countdown.min.js"></script>
	<!--Plugins-->
	<script src="../js/plugins.js"></script>
	<!--Main Js-->
	<script src="../js/main.js"></script>
    <script type="text/javascript">
        function checkLogin(){
             var uname=document.getElementById("username1").value;
             var upwd=document.getElementById("password1").value;
             var span=document.getElementById("login1");
             $.ajax({
                    url:'../user/login.do',
                    type:'post',
                    data:{"Uname":uname,"PassWord":upwd},
                    success:function(result){
                        if(result=="no"){
                             span.innerText="用户名或密码错误!";
                             span.className="error";
                        }
                        else{
                            span.innerText="登陆成功!"
                            span.className="succ";
                            location.href="../main/index.do";
                        }
                    }
             });
        }
      function checkUname(){
         var uname=document.getElementById("username2").value.trim();
         var span=document.getElementById("tixing1");
         if(uname.length==0){
        	 span.innerText="用户名不可为空";
             span.className="error";
             return;
         }
          $.ajax({
                    url:'../user/checkUname.do',
                    type:'post',
                    data:{"Uname":uname},
                    success:function(result){
                        if(result=="no"){
                             span.innerText="用户名不可用";
                             span.className="error";
                        }
                        else{
                            span.innerText="用户名可用!"
                            span.className="succ";
                        }
                    }
             });

      }
      function checkPassword()
      {
        var upwd=document.getElementById("password2").value;
        var span=document.getElementById("tixing2");
        if(upwd.length<6||upwd.length>12){
              span.innerText="密码长度不合法!";
              span.className="error";
        }
        else{
            span.innerText="密码长度合法!";
            span.className="succ";
        }

      }
     function checkRegist(){
         var uname=document.getElementById("username2").value;
        var upwd=document.getElementById("password2").value;
        var span=document.getElementById("regist2");
        var spans=document.getElementsByClassName("succ");
        if(spans.length<2){
            span.innerText="信息填些不完整!";
            span.className="error";
            return;
        }
        $.ajax({
                    url:'../user/regist.do',
                    type:'post',
                    data:{"Uname":uname,"PassWord":upwd},
                    success:function(result){
                        if(result=="no"){
                             span.innerText="注册失败!";
                             span.className="error";
                        }
                        else{
                            span.innerText="注册成功!"
                            span.className="succ";
                            location.href="../user/loginRegister.do";
                        }
                    }
             });
     }
      
    </script>
</body>
</html>
