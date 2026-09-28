<%@page import="xtu.edu.Entity.Flower"%>
<%@page import="java.util.ArrayList"%>
<%@ page pageEncoding="utf-8"%>
<!doctype html>
<html class="no-js" lang="en">
<head>
	<meta charset="utf-8">
	<meta http-equiv="x-ua-compatible" content="ie=edge">
	<title>Shop || Plantmore</title>
	<meta name="description" content="">
	<meta name="robots" content="noindex, follow" />
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="robots" content="noindex, follow" />
	<!-- Place favicon.ico in the root directory -->
	<link rel="shortcut icon" type="image/x-icon" href="../img/favicon.ico">
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

	<div class="wrapper">
		<!--Header Area Start-->
		<%@include file="../page/header.jsp" %>
		<!--Header Area End-->
		<br>
		<br>
		<br>
		<br>
		<br>
		<!--Shop Area Start-->
		<div class="shop-area mb-70">
		    <div class="container">
		        <div class="row">
		            <div class="col-lg-3 order-2 order-lg-1">
		                <!--Product Category Widget Start-->
		                <div class="shop-sidebar">
		                    <h4>按植物筛选</h4>
		                    <div class="categori-checkbox">
		                        <form action="#">
		                            <ul>
		                                <li><input name="product-categori" type="checkbox"><a href="#">绿植盆栽</a><span class="count">(14)</span></li>
		                                <li><input name="product-categori" type="checkbox"><a href="#">花卉</a><span class="count">(14)</span></li>
		                                <li><input name="product-categori" type="checkbox"><a href="#">大型绿植</a><span class="count">(14)</span></li>
		                                <li><input name="product-categori" type="checkbox"><a href="#">多肉植物</a><span class="count">(14)</span></li>
		                                <li><input name="product-categori" type="checkbox"><a href="#">苗木</a><span class="count">(11)</span></li>
		                                <li><input name="product-categori" type="checkbox"><a href="#">微景观 </a><span class="count">(13)</span></li>
		                            </ul>
		                        </form>
		                    </div>
		                </div>
		                <!--Product Category Widget End-->
		                <!--Color Category Widget Start-->
		                <div class="shop-sidebar">
		                    <h4>按颜色筛选</h4>
		                    <div class="categori-checkbox">
		                        <form action="#">
		                            <ul>
		                                <li><input name="product-categori" type="checkbox"><a href="#">金色</a><span class="count">(1)</span></li>
		                                <li><input name="product-categori" type="checkbox"><a href="#">绿色</a><span class="count">(4)</span></li>
		                                <li><input name="product-categori" type="checkbox"><a href="#">白色</a><span class="count">(5)</span></li>
		                            </ul>
		                        </form>
		                    </div>
		                </div>
		                <!--Color Category Widget End-->
		                <!--Price Filter Widget Start-->
		                <div class="shop-sidebar">
		                    <h4>按价格筛选</h4>
		                    <div class="price-filter">
                                <div id="slider-range"></div>
                                <div class="price-slider-amount">
                                    <div class="label-input">
                                        <label>价格 </label>
                                        <input type="text" id="amount" name="price"  placeholder="Add Your Price" />
                                    </div>
                                    <button type="button">Filter</button> 
                                </div>
                            </div>
		                </div>
		                <!--Price Filter Widget End-->
		                <!--Recent Product Widget Start-->
		                <!--Recent Product Widget End-->
		                <!--Banner Widget Start-->
		                <div class="shop-sidebar">
                            <div class="sidebar-banner single-banner">
		                        <div class="banner-img">
		                            <a href="#"><img src="../img/banner/shop-sidebar.jpg" alt=""></a>
		                        </div>
		                    </div>
		                </div>
		                <!--Banner Widget End-->
		                <!--Product Tags Widget Start-->
		               
		                <!--Product Tags Widget End-->
		            </div>
		            <div class="col-lg-9 order-1 order-lg-2">
		                <div class="shop-layout">
                           <!--Breadcrumb One Start-->
                            <div class="breadcrumb-one mb-120">
                                <div class="breadcrumb-img">
                                    <img src="../img/page-banner/shop-banner-1.jpg" alt="">
                                </div>
                                <div class="breadcrumb-content">
                                    <ul>
                                        <li><a href="index.html">Home</a></li>
                                        <li class="active">Shop</li>
                                    </ul>
                                </div>
                            </div>
                           <!--Breadcrumb One End-->
		                    <!--Grid & List View Start-->
		                    <div class="shop-topbar-wrapper d-md-flex justify-content-md-between align-items-center">
		                        <div class="grid-list-option">
		                             <ul class="nav">
                                      <li>
                                        <a class="active" data-toggle="tab" href="#grid"><i class="fa fa-th-large"></i></a>
                                      </li>
                                      <li>
                                        <a data-toggle="tab" href="#list"><i class="fa fa-th-list"></i></a>
                                      </li>
                                    </ul>
		                         </div>
		                         <!--Toolbar Short Area Start-->
		                         <div class="toolbar-short-area d-md-flex align-items-center">
                                     <div class="toolbar-shorter ">
                                        <label>Sort By:</label>
                                         <select class="wide">
                                             <option data-display="Select">Nothing</option>
                                             <option value="Relevance">Relevance</option>
                                             <option value="Name, A to Z">Name, A to Z</option>
                                             <option value="Name, Z to A">Name, Z to A</option>
                                             <option value="Price, low to high">Price, low to high</option>
                                             <option value="Price, high to low">Price, high to low</option>
                                         </select>
                                     </div>
                                     <p class="show-product">Showing 1–9 of 42 results</p>
                                 </div>
		                         <!--Toolbar Short Area End-->
		                    </div>
		                    <!--Grid & List View End-->
		                    <!--Shop Product Start-->
		                    <div class="shop-product">
		                        <div id="myTabContent-2" class="tab-content">
		                            <div id="grid" class="tab-pane fade show active">
		                                <div class="product-grid-view">
		                                    <div class="row">
		                                        
		                                            <!--Single Product Start-->
		                                             <%
														ArrayList<Flower> flowerList=(ArrayList<Flower>)request.getAttribute("flowerlist");
														for(int i=0; i<flowerList.size(); i++){
															Flower flower=flowerList.get(i);
														//	if(i%4==0){
															%>
                   									 		<div class="col-md-4">
       														<%
            											//	}
        													%>
        											
                                                    <div class="single-product mb-25">
                                                        <div class="product-img img-full">
                                                            <a href="../goods/detail.do?id=<%=flower.getId()%>">
                                                                <img src="../img/goods/<%=flower.getPicn() %>/index.jpg" alt="">
                                                            </a>
                                                            <span class="onsale">Sale!</span>
                                                            <div class="product-action">
                                                                <ul>
                                                                    <li><a href="#open-modal" data-toggle="modal" title="Quick view"><i class="fa fa-search"></i></a></li>
                                                                    <li><a href="javascript:dealflower(<%=flower.getId() %>);" title="收藏"> <i class="fa fa-heart-o"></i> </a></li>
                                                                    <li><a href="#" title="Compare"><i class="fa fa-refresh"></i></a></li>
                                                                </ul>
                                                            </div>
                                                        </div>
                                                        <div class="product-content">
                                                            <h2><a href="../main/detail.do?id=<%=flower.getId()%>"><%=flower.getTitle()%></a></h2>
                                                            <div class="product-price">
                                                                <div class="price-box">
                                                                    <span class="regular-price"><%=flower.getPrice()%></span>
                                                                </div>
                                                                <div class="add-to-cart">
                                                                    <a href="../cart/addToCart.do?id=<%=flower.getId()%>">Add To Cart</a>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <%
            										//if(i%4==3 || i==flowerList.size()-1){
       			 									%>
        											</div>
        											<%
                									//}
            									}
        									%>
                                                    <!--Single Product End-->
		                                            <!--Single List Product End-->
		                                      
		                                    </div>
		                                </div>
		                            </div>
		                            <!--Pagination Start-->
		                            <div class="product-pagination">
		                                <ul>
		                                    <li class="active"><a href="#">1</a></li>
		                                    <li><a href="#">2</a></li>
		                                    <li><a href="#">3</a></li>
		                                    <li><a href="#">4</a></li>
		                                    <li><a href="#">5</a></li>
		                                    <li><a href="#"><i class="fa fa-angle-double-right"></i></a></li>
		                                </ul>
		                            </div>
		                            <!--Pagination End-->
		                        </div>
		                    </div>
		                    <!--Shop Product End-->
		                </div>
		            </div>
		        </div>
		    </div>
		</div>
		<!--Shop Area End-->
		
		<!--Brand Area End-->
		<!--Footer Area Start-->
		
		<%@ include file="../page/footer.jsp" %>
		
		<!--Footer Area End-->
	





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
	</script>
</body>
</html>
