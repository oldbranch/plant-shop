<%@page import="xtu.edu.Entity.Flower"%>
<%@ page pageEncoding="utf-8"%>
<!doctype html>
<html class="no-js" lang="en">
<head>
	<meta charset="utf-8">
	<meta http-equiv="x-ua-compatible" content="ie=edge">
	<title>Single Product || Plantmore</title>
	<meta name="description" content="">
	<meta name="robots" content="noindex, follow" />
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="robots" content="noindex, follow" />
	<!-- Place favicon.ico in the root directory -->
	<link rel="shortcut icon" type="image/x-icon" href="img/favicon.ico">
   <!--All Css Here-->
    
    <!-- Bootstrap CSS-->
    <link rel="stylesheet" href="../css/bootstrap.min.css">

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
</head>
<body>


	<!--[if lt IE 8]>
	<p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
	<![endif]-->
       <%
					//ArrayList<Flower> flowerList=(ArrayList<Folwer>)request.getAttribute("flowerList");
		             Flower flower=(Flower)request.getAttribute("flower");
		      
		    
		            %>
	<div class="wrapper">
		<!--Header Area Start-->
		<%@include file="../page/header.jsp" %>
		<br>
		<br>
		<br>
		<br>
		<!--Header Area End-->
		<!--Breadcrumb One Start-->
		<div class="breadcrumb-one mb-120">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <div class="breadcrumb-img">
                            <img src="../img/page-banner/product-banner.jpg" alt="">
                        </div>
                        <div class="breadcrumb-content">
                        </div>
                    </div>
                </div>
            </div>
        </div>
		<!--Breadcrumb One End-->
		<!--Single Product Area Start-->
		<div class="single-product-area mb-115">
		    <div class="container">
		        <div class="row">
		            <div class="col-md-12 col-lg-5">
		                <div class="product-details-img-tab">
		                    <!--Product Tab Content Start-->
		                    <div class="tab-content single-product-img">
                              <div class="tab-pane fade show active" id="product1">
                                  <div class="product-large-thumb img-full">
                                     <div class="easyzoom easyzoom--overlay">
                                        <a href="../img/goods/<%= flower.getPicn()%>/index.jpg">
                                            <img src="../img/goods/<%= flower.getPicn()%>/index.jpg" alt="">
                                        </a>
                                        <a href="../img/goods/<%= flower.getPicn()%>/index.jpg" class="popup-img venobox" data-gall="myGallery"><i class="fa fa-search"></i></a>
                                     </div>
                                  </div>
                              </div>
                            </div>
                     
		                    <!--Product Tab Content End-->
		                    <!--Product Tab Menu Start-->
		                    <div class="product-menu">
		                        <div class="nav product-tab-menu">
                                  <div class="product-details-img">
                                    <a class="active" data-toggle="tab" href="#product1"><img src="img/single-product/small/single-product1.jpg" alt=""></a>
                                  </div>
                                </div>
		                    </div>
		                    <!--Product Tab Menu End-->
		                </div>
		            </div>
		            
		            <div class="col-md-12 col-lg-7">
                        <!--Product Details Content Start-->
		                <div class="product-details-content">
                            <!--Product Nav Start-->
                            <div class="product-nav">
                                <a href="#"><i class="fa fa-angle-left"></i></a>
                                <a href="#"><i class="fa fa-angle-right"></i></a>
                            </div>
                            <!--Product Nav End-->
		                    <h2><%=flower.getTitle() %></h2>
		                    <div class="single-product-reviews">
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star-o"></i>
                                <a class="review-link" href="#">(1 customer review)</a>
                            </div>
                            <div class="single-product-price">
                                
                                <span class="regular-price">商品单价：￥<%= flower.getPrice()%></span>
                            </div>
                            <div class="product-description">
                                <p>商品描述</p>
                                <p><%=flower.getIntro() %></p>
                            </div>
                           
                            <div class="single-product-quantity">
                                <form class="add-quantity" action="#">
                                     <div class="product-quantity">
                                         <input value="1" type="number" id="number">
                                     </div>
                                    <div class="add-to-link">
                                       
                                        <button class="product-btn"  onclick="dealCar(<%=flower.getId()%>);">加入购物车</button>
                                    </div>
                                </form>
                           </div>
                            <div class="wishlist-compare-btn">
                                <a href="javascript:dealflower(<%=flower.getId() %>);" class="wishlist-btn">收藏</a>
                                <a href="#" class="add-compare">比较</a>
                            </div>
                            <div class="product-meta">
                                <span class="posted-in">
                                                                                                              商品花语: 
		                                <a ><%=flower.getSymbol() %></a>
		                            </span>
                            </div>
		                </div>
		                <!--Product Details Content End-->
		            </div>
		        </div>
		    </div>
		</div>
		<!--Single Product Area End-->
		
		<!--Product Description Review Area Start-->
		<!--Footer Area Start-->
<%@include file="../page/footer.jsp" %>
		<!--Footer Area End-->
		<!-- Modal Area Strat -->
        <div class="modal fade" id="open-modal" tabindex="-1" role="dialog" aria-hidden="true">
          <div class="modal-dialog" role="document">
            <div class="modal-content">
              <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><i class="fa fa-close"></i></button>
              </div>
              <div class="modal-body">
                <div class="row">
                    <!--Modal Img-->
                    <div class="col-md-5">
                        <!--Modal Tab Content Start-->
                        <div class="tab-content product-details-large" id="myTabContent">
                          <div class="tab-pane fade show active" id="single-slide1" role="tabpanel" aria-labelledby="single-slide-tab-1">
                              <!--Single Product Image Start-->
                              <div class="single-product-img img-full">
                                <img src="img/single-product/large/single-product1.jpg" alt="">
                              </div>
                              <!--Single Product Image End-->
                          </div>
                          <div class="tab-pane fade" id="single-slide2" role="tabpanel" aria-labelledby="single-slide-tab-2">
                              <!--Single Product Image Start-->
                              <div class="single-product-img img-full">
                                <img src="img/single-product/large/single-product2.jpg" alt="">
                              </div>
                              <!--Single Product Image End-->
                          </div>
                          <div class="tab-pane fade" id="single-slide3" role="tabpanel" aria-labelledby="single-slide-tab-3">
                              <!--Single Product Image Start-->
                              <div class="single-product-img img-full">
                                <img src="img/single-product/large/single-product3.jpg" alt="">
                              </div>
                              <!--Single Product Image End-->
                          </div>
                          <div class="tab-pane fade" id="single-slide4" role="tabpanel" aria-labelledby="single-slide-tab-4">
                              <!--Single Product Image Start-->
                              <div class="single-product-img img-full">
                                <img src="img/single-product/large/single-product4.jpg" alt="">
                              </div>
                              <!--Single Product Image End-->
                          </div>
                          <div class="tab-pane fade" id="single-slide5" role="tabpanel" aria-labelledby="single-slide-tab-4">
                              <!--Single Product Image Start-->
                              <div class="single-product-img img-full">
                                <img src="img/single-product/large/single-product5.jpg" alt="">
                              </div>
                              <!--Single Product Image End-->
                          </div>
                          <div class="tab-pane fade" id="single-slide6" role="tabpanel" aria-labelledby="single-slide-tab-4">
                              <!--Single Product Image Start-->
                              <div class="single-product-img img-full">
                                <img src="img/single-product/large/single-product6.jpg" alt="">
                              </div>
                              <!--Single Product Image End-->
                          </div>
                        </div>
                        <!--Modal Content End-->
                        <!--Modal Tab Menu Start-->
                        <div class="single-product-menu">
                            <div class="nav single-slide-menu owl-carousel" role="tablist">
                                <div class="single-tab-menu img-full">
                                    <a class="active" data-toggle="tab" id="single-slide-tab-1" href="#single-slide1"><img src="img/single-product/small/single-product1.jpg" alt=""></a>
                                </div>
                                <div class="single-tab-menu img-full">
                                    <a data-toggle="tab" id="single-slide-tab-2" href="#single-slide2"><img src="img/single-product/small/single-product2.jpg" alt=""></a>
                                </div>
                                <div class="single-tab-menu img-full">
                                    <a data-toggle="tab" id="single-slide-tab-3" href="#single-slide3"><img src="img/single-product/small/single-product3.jpg" alt=""></a>
                                </div>
                                <div class="single-tab-menu img-full">
                                    <a data-toggle="tab" id="single-slide-tab-4" href="#single-slide4"><img src="img/single-product/small/single-product4.jpg" alt=""></a>
                                </div>
                                <div class="single-tab-menu img-full">
                                    <a data-toggle="tab" id="single-slide-tab-5" href="#single-slide5"><img src="img/single-product/small/single-product5.jpg" alt=""></a>
                                </div>
                                <div class="single-tab-menu img-full">
                                    <a data-toggle="tab" id="single-slide-tab-6" href="#single-slide6"><img src="img/single-product/small/single-product6.jpg" alt=""></a>
                                </div>
                            </div>
                        </div>
                        <!--Modal Tab Menu End-->
                    </div>
                    <!--Modal Img-->
                    <!--Modal Content-->
                    <div class="col-md-7">
                        <div class="modal-product-info">
                            <h1>Sit voluptatem</h1>
                            <div class="modal-product-price">
                               <span class="old-price">$74.00</span>
                               <span class="new-price">$69.00</span>
                           </div>
                           <a href="single-product.html" class="see-all">See all features</a>
                           <div class="add-to-cart quantity">
                                <form class="add-quantity" action="#">
                                     <div class="modal-quantity">
                                         <input type="number" value="1">
                                     </div>
                                    <div class="add-to-link">
                                        <button class="form-button" data-text="add to cart">add to cart</button>
                                    </div>
                                </form>
                           </div>
                           <div class="cart-description">
                               <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco,Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus.</p>
                           </div>
                            <div class="social-share">
                               <h3>Share this product</h3>
                               <ul class="socil-icon2">
                                   <li><a href=""><i class="fa fa-facebook"></i></a></li>
                                   <li><a href=""><i class="fa fa-twitter"></i></a></li>
                                   <li><a href=""><i class="fa fa-pinterest"></i></a></li>
                                   <li><a href=""><i class="fa fa-google-plus"></i></a></li>
                                   <li><a href=""><i class="fa fa-linkedin"></i></a></li>
                               </ul>
                            </div>
                        </div>
                    </div>
                    <!--Modal Content-->
                </div>
              </div>
            </div>
          </div>
        </div>
        <!-- Modal Area End -->
	</div>





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
	<script>
	function dealflower(Id){
		//console.log(Id);
		$.ajax({
			url:'../collect/collect.do',
			type:'post',
			data:{"plantId":Id},
			success:function(result){
				if(result=="no"){
					alert("未知错误!");
				}
				else if(result=="yes"){
					alert("添加成功!");
				}
				else if(result=="noLogin"){
					alert("没有登陆!");
					location.href="../user/loginRegister.do";
				}
				else{
					alert("已经添加!");
				}
			}
		});
		
	}
	function dealCar(fId)
    {
	   var num=document.getElementById("number").value;
	   $.ajax({
		   url:'../cart/addToCart.do',
		   type:'post',
		   data:{"flowerId":fId,"num":num},
		   success:function(result){
			   if(result=="nologin"){
				   alert("请登陆!!!");
				   location.href="../user/loginRegister.do";
			   }
			   else if(result=="yes"){
				   alert("添加成功!");
				   location.href="../goods/detail.do?id="+fId;
			   }
			   else{
				   alert("未知错误!");
				   location.href="../goods/detail.do?id="+fId;
			   }
		   }
	   });
    }
	</script>
</body>
</html>
