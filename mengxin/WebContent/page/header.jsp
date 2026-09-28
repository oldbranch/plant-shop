<%@page import="xtu.edu.Entity.User"%>
<%@ page pageEncoding="utf-8"%>

    <header>
        <div class="header-container">
            <div class="header-area header-absolute header-sticky pt-30 pb-30">
                    <div class="container-fluid pl-50 pr-50">
                        <div class="row">
                            <!--Header Logo Start-->
                            <div class="col-lg-3 col-md-3">
                                <div class="logo-area">
                                    <a href="../main/index.do">
                                        <img src="../img/logo.png" alt="" style="width:18%;height:18%;"> 
                                         &nbsp;&nbsp;&nbsp;&nbsp;<span style="font-size:18px;">PlantStore</span>      
                                    </a>
                                   
                                </div>
                            </div>
                            <!--Header Logo End-->
                             <%
                               HttpSession session2=request.getSession();
                               User user=(User)session2.getAttribute("user");
                            %>
                            <!--Header Menu And Mini Cart Start-->
                            <div class="col-lg-9 col-md-9 text-lg-right">
                                <!--Main Menu Area Start-->
                                <div class="header-menu">
                                    <nav>
                                        <ul class="main-menu">
                                           <% if(user!=null){%> 
                                            <li><p>欢迎<%=user.getUname()%>登陆！</p></li>
                                            <%} %>
                                            <li><a href="../main/index.do">主页</a></li>
                                            <li><a href="../main/shop.do">商城</a></li>
                                            <li><a href="../user/usercollect.do">收藏</a></li>
                                            <li><a href="../cart/userCart.do">购物车</a></li>
                                        </ul>
                                    </nav>
                                </div>
                                <!--Main Menu Area End-->
                                <!--Header Option Start--> 
                                <div class="header-option">
                                    <div class="mini-cart-search">
                                        <div class="mini-cart">
                                            
                                           <!--Cart Dropdown Start-->
                                          <div class="cart-dropdown">
                                              <ul>
                                                  <li class="single-cart-item">
                                                      <div class="cart-img">
                                                          <a href="single-product.html"><img src="../img/cart/cart1.jpg" alt=""></a>
                                                      </div>
                                                      <div class="cart-content">
                                                          <h5 class="product-name"><a href="single-product.html">Odio tortor consequat</a></h5>
                                                          <span class="cart-price">1 × $90.00</span>
                                                      </div>
                                                      <div class="cart-remove">
                                                          <a title="Remove" href="#"><i class="fa fa-times"></i></a>
                                                      </div>
                                                  </li>
                                                  <li class="single-cart-item">
                                                      <div class="cart-img">
                                                          <a href="single-product.html"><img src="../img/cart/cart2.jpg" alt=""></a>
                                                      </div>
                                                      <div class="cart-content">
                                                          <h5 class="product-name"><a href="single-product.html">Auctor sem</a></h5>
                                                          <span class="cart-price">1 × $100.00</span>
                                                      </div>
                                                      <div class="cart-remove">
                                                          <a title="Remove" href="#"><i class="fa fa-times"></i></a>
                                                      </div>
                                                  </li>
                                               </ul> 
                                              <p class="cart-subtotal"><strong>Subtotal:</strong> <span class="float-right">$190.00</span></p> 
                                              <p class="cart-btn">
                                                  <a href="cart.html">View cart</a>
                                                  <a href="checkout.html">Checkout</a>
                                              </p>
                                          </div>
                                           <!--Cart Dropdown End--> 
                                        </div>
                                        <div class="header-search">
                                            <div class="search-box">
                                                <a href="#"><i class="fa fa-search"></i></a>
                                                <div class="search-dropdown">
                                                    <form action="#">
                                                        <input name="search" id="search" placeholder="" value="Search product..." onblur="if(this.value==''){this.value='Search product...'}" onfocus="if(this.value=='Search product...'){this.value=''}" type="text">
                                                        <button type="submit"><i class="fa fa-search"></i></button>
                                                    </form>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="currency">
                                            <div class="currency-box">
                                                <a href="#"><i class="fa fa-th"></i></a>
                                                <div class="currency-dropdown">
                                                    <ul class="menu-top-menu">
                                                    <%if(user!=null){%>
                                                        <li><a href="../page/my-account.html">我的账户</a></li>
                                                        <li><a href="../user/logout.do">退出</a></li>
                                                        <%} else {%>
                                                        
                                                        <li><a href="../user/loginRegister.do">登录</a></li>
                                                         <%} %>
                                                    </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!--Header Option End--> 
                            </div>
                            <!--Header Menu And Mini Cart End-->
                        </div>
                        <div class="row">
                            <div class="col-12"> 
                                <!--Mobile Menu Area Start-->
                                <div class="mobile-menu d-lg-none"></div>
                                <!--Mobile Menu Area End-->
                            </div>
                        </div>
                    </div>
                </div>
        </div>
    </header>