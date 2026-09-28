<%@page import="xtu.edu.Entity.CartFlowerVo"%>
<%@page import="java.util.ArrayList"%>
<%@ page pageEncoding="utf-8"%>

<!doctype html>
<html class="no-js">
<head>
    <meta charset="utf-8">
    <title>Cart || Plantmore</title>
    <!-- Place favicon.ico in the root directory -->
    <link rel="shortcut icon" type="image/x-icon" href="../img/favicon.ico">
    <!--All Css Here-->
    
    <!-- Bootstrap CSS-->
    <link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/4.1.0/css/bootstrap.min.css">

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
      #chen{
         width:30%;
         height:20%;
      }
    </style>
    <script src="../js/vendor/modernizr-2.8.3.min.js"></script>
</head>
<body>


     <%@include file="../page/header.jsp" %>
        <!--Header Area End-->
        <!--Breadcrumb Tow Start-->
        <br>
        <br>
        <br>
        <br>
        
        <div class="breadcrumb-tow mb-120">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <div class="breadcrumb-title">
                            <h1>Shopping Cart</h1>
                        </div>
                        <div class="breadcrumb-content breadcrumb-content-tow">
                            <ul>
                                <li><a href="index.html">Home</a></li>
                                <li class="active">Shopping Cart</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--Breadcrumb Tow End-->
        <!--Shopping Cart Area Strat-->
        <div class="Shopping-cart-area mb-110">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <form action="#">


                            <div class="table-content table-responsive">
                                <table class="table">
                                    <thead>
                                        <tr>
                                            <th class="plantmore-product-remove">remove</th>
                                            <th class="plantmore-product-thumbnail">images</th>
                                            <th class="cart-product-name">Product</th>
                                            <th class="plantmore-product-price">Unit Price</th>
                                            <th class="plantmore-product-quantity">Quantity</th>
                                            <th class="plantmore-product-subtotal">Total</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <% 
                                           double sum=0;
                                            ArrayList<CartFlowerVo> cfv=(ArrayList<CartFlowerVo>)request.getAttribute("cartFlowerVoList");
                                            for(int i=0;i<cfv.size();i++){
                                            CartFlowerVo th=cfv.get(i);
                                            
                                        %>
                                        <tr>
                                            <td class="plantmore-product-remove"><a href="javascript:removeFromCart(<%=th.getId()%>);"><i class="fa fa-times"></i></a></td>
                                            <td class="plantmore-product-thumbnail"><a href="#"><img src="../img/goods/<%=th.getPicn()%>/index.jpg" alt="" id="chen"></a></td>
                                            <td class="plantmore-product-name"><a href="#"><%=th.getTitle()%></a></td>
                                            <td class="plantmore-product-price"><span class="amount">$<%=th.getPrice()%></span></td>
                                            <td class="plantmore-product-quantity">
                                                <input value="<%=th.getNum()%>" type="number">
                                            </td>
                                            <td class="product-subtotal"><span class="amount">$<%=th.getPrice()*th.getNum()%></span></td>
                                        </tr>

                                    <%
                                        sum=sum+th.getPrice()*th.getNum();
                                     }%>
                                    </tbody>
                                </table>
                            </div>



                            <div class="row">
                                <div class="col-12">
                                    <div class="coupon-all">
                                        <div class="coupon">
                                            <input id="coupon_code" class="input-text" name="coupon_code" value="" placeholder="Coupon code" type="text">
                                            <input class="button" name="apply_coupon" value="Apply coupon" type="submit">
                                        </div>
                                        <div class="coupon2">
                                            <input class="button" name="update_cart" value="Update cart" type="submit">
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-5 ml-auto">
                                    <div class="cart-page-total">
                                        <h2>Cart totals</h2>
                                        <ul>
                                            <li>Total <span>$<%=sum%></span></li>
                                        </ul>
                                        <a href="#">Proceed to checkout</a>
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <!--Shopping Cart Area End-->
        <!--Brand Area Start-->
        <!--Brand Area End-->
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
        function removeFromCart(Id){
        	
        	$.ajax({
            url:'../cart/deleteFromCart.do',
            type:'post',
            data:{"id":Id},
            success:function(result){
                if(result=="yes"){
                    location.href="../cart/userCart.do";
                }
                else{

                }
            }
        	});
        }

    </script>
</body>
</html>
