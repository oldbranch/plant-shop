
<%@page import="xtu.edu.Entity.CollectionFlowerVo"%>
<%@page import="java.util.ArrayList"%>
<%@ page pageEncoding="utf-8"%>


<!doctype html>
<html class="no-js">
<head>
	<meta charset="utf-8">
	<title>收藏</title>

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
	<style type="text/css">
	 #pic{
	   width:20%;
	   height:20%;
	 }
	</style>
	<script src="../js/vendor/modernizr-2.8.3.min.js"></script>
</head>
<body>


	<div class="wrapper">
		<!--Header Area Start-->
    <%@ include file="../page/header.jsp" %>
    <br><br><br><br>
		<!--Header Area End-->
		<!--Breadcrumb Tow Start-->
		<div class="breadcrumb-tow mb-120">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <div class="breadcrumb-title">
                            <h1>收藏中心</h1>
                        </div>
                        <div class="breadcrumb-content breadcrumb-content-tow">
                            <ul>
                                <li><a href="../main/index.do">主页</a></li>
                                <li class="active">收藏</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
		<!--Breadcrumb Tow End-->
		<!--Wishlist Area Strat-->
		<div class="wishlist-area mb-110">
		    <div class="container">
		        <div class="row">
		            <div class="col-12">
		                <form action="#">
		                    <div class="table-content table-responsive">
		                        <table class="table">
		                            <thead>
		                                <tr>
		                                    <th class="plantmore-product-remove">delete</th>
		                                    <th class="plantmore-product-thumbnail">images</th>
		                                    <th class="cart-product-name">title</th>
		                                    <th class="plantmore-product-price">price</th>
		                                    <th class="plantmore-product-stock-status">Stock Status</th>
		                                    <th class="plantmore-product-add-cart">add to cart</th>
		                                </tr>
		                            </thead>
		                            <tbody>
		                            
                                    <%
                                    //获取收藏清单
                                    ArrayList<CollectionFlowerVo> collectPlantVoList=(ArrayList<CollectionFlowerVo>)request.getAttribute("collectPlantVoList");
                                    for(int i=0;i<collectPlantVoList.size();i++){
                                    	CollectionFlowerVo cpo=collectPlantVoList.get(i);
                                    %>
                    
		                                <tr>
		                                    <td class="plantmore-product-remove"
                                            id="deletebtn"
                                            ><a href="#" onclick="deleteWish(cpo.getId())"><i class="fa fa-times"></i></a></td>
		                                    <td class="plantmore-product-thumbnail"><a href="#"><img src="../img/goods/<%=cpo.getPicn() %>/index.jpg" alt="" id="pic"></a></td>
		                                    <td class="plantmore-product-name"><a href="#"><%=cpo.getTitle() %></a></td>
		                                    <td class="plantmore-product-price"><span class="amount"><%=cpo.getPrice() %></span></td>
		                                    <td class="plantmore-product-stock-status"><span class="in-stock">in stock</span></td>
		                                    <td class="plantmore-product-add-cart"><a href="#" onclick="addToCart()">加入购物车</a></td>
		                                </tr>
		                              <%  } %>
		                            </tbody>
		                        </table>
		                    </div>
		                </form>
		            </div>
		        </div>
		    </div>
		</div>
		<!--Wishlist Area End-->
		<!--Brand Area Start-->

        <%@ include file="../page/footer.jsp" %>
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
	<script src="../js/main.js" type="text/javascript"></script>
    <script type="text/javascript">
        function deleteWish(var flower_id){//删除数据库收藏
           $.ajax({
               url:'../collect/delete.do',
               type: 'get',
               data: {"flowerId":flower_id},
               function:success(result){
                if(result=="yes"){
                    alert("删除成功");
                    return ;
                }
                if(reslut=="no"||result=="NeverCollect"){
                    alter("没有收藏该商品，请刷新重试");
                }
               }
           })

        }

        function addToCart(var flower_id){
            var num=1;
            $.$.ajax({
                url: '../cart/addToCart.do',
                type: 'get',
                dataType: 'default: Intelligent Guess (Other values: xml, json, script, or html)',
                data: {"flowerId":flowerId
                        "number":num},
                function:success(result){
                     if(result=="yes"){
                    alert("加入成功");
                    return ;
                }if(result=="no"){
                    alert("未知错误");
                    return ;
                }
                }
            })
            
        }
    </script>
</body>
</html>
