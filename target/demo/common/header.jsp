<!-- main-menu Start -->
<%@ page contentType="text/html; charset=UTF-8" %>
    <div class="header-area">
        <div class="container">
            <div class="row">
                <div class="col-sm-2">
                    <div class="logo">
                        <a href="index.jsp">
                            tour<span>Nest</span>
                        </a>
                    </div><!-- /.logo-->
                </div><!-- /.col-->
                <div class="col-sm-10">
                    <div class="main-menu">

                        <!-- Brand and toggle get grouped for better mobile display -->
                        <div class="navbar-header">
                            <button type="button" class="navbar-toggle" data-toggle="collapse"
                                    data-target=".navbar-collapse">
                                <i class="fa fa-bars"></i>
                            </button><!-- / button-->
                        </div><!-- /.navbar-header-->
                        <div class="collapse navbar-collapse">
                            <ul class="nav navbar-nav navbar-right">
                                <li class="smooth-menu"><a href="#home">Trang Chủ</a></li>
                                <li class="smooth-menu"><a href="#spo">Ưu Đãi</a></li>
                                <li class="smooth-menu"><a href="#gallery">Tour Hot</a></li>
                                <li class="smooth-menu"><a href="#pack">Gói Du Lịch</a></li>
                                <li class="smooth-menu"><a href="#blog">Tin Tức</a></li>
                                <li class="smooth-menu"><a href="#feedback">Đánh Giá</a></li>
                                <li class="smooth-menu"><a href="#service">Liên Hệ</a></li>
                                <li class="smooth-menu" id="myTour"><a href="/Do_An_Web/shopcart.jsp" >vali<i class="fa fa-suitcase-rolling fa-2x"
                                                                       style="margin-top: -10px;color: #00d8fe"></i></a>


                                </li>
                                <li>
                                    <button class="book-btn" id="buttonTour" style="margin-top: -2px;"><a
                                            href="login.jsp">Đăng Nhập</a>
                                    </button>
                                </li><!--/.project-btn-->
                                <li id="icon-user" class="smooth-menu">
                                    <i class="fa-regular fa-circle-user" style="color: #ffffff;"></i>
                                    <ul id="service_account">
                                        <li><a id="myInfor" href="infor.jsp">Thông tin tài khoản</a></li>
                                        <li><a id="bill" href="bill.jsp">Bill </a></li>
                                        <li><a id="log_out" href="register.jsp">Đăng xuất</a></li>
                                    </ul>
                                </li>


                            </ul>
                        </div><!-- /.navbar-collapse -->
                    </div><!-- /.main-menu-->
                </div><!-- /.col-->
            </div><!-- /.row -->
            <div class="home-border"></div><!-- /.home-border-->
        </div><!-- /.container-->
    </div><!-- /.header-area -->
<!-- main-menu End -->