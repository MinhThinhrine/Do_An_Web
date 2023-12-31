<%@ page import="vn.edu.hcmuaf.bean.User" %>
<%@ page import="java.util.Objects" %>
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
                                <li class="navbar-toggle"><a href="shopcart.jsp"  id="myTour"><i class="fa fa-suitcase-rolling fa-2x"
                                                                       style="margin-top: -10px;color: #00d8fe"></i></a>


                                </li>
                                <%
                                    User user = (User) session.getAttribute("user");
                                %>
                                <% if (Objects.nonNull(user)) { %>
                                <!-- Hiển thị icon và tên người dùng -->
                                <li class="dropdown" id="icon-user" >
                                    <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                        <i class="fa-regular fa-circle-user" style="color: #ffffff;"></i>
                                        <span class="username"><%= user.getUserName() %></span>
                                    </button>
                                    <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                        <a class="dropdown-item" id="myInfor" href="infor.jsp">Thông tin tài khoản</a>
                                        <a class="dropdown-item" id="bill" href="bill.jsp">Bill</a>
                                        <a class="dropdown-item" id="log_out" href="logout">Đăng xuất</a>
                                    </div>
                                </li>
                                <% } else { %>
                                <!-- Hiển thị nút đăng nhập -->
                                <li>
                                    <button class="book-btn" id="buttonTour" style="margin-top: -2px;">
                                        <a href="login.jsp">Đăng Nhập</a>
                                    </button>
                                </li>
                                <% } %>



                            </ul>
                        </div><!-- /.navbar-collapse -->
                    </div><!-- /.main-menu-->
                </div><!-- /.col-->
            </div><!-- /.row -->
            <div class="home-border"></div><!-- /.home-border-->
        </div><!-- /.container-->
    </div><!-- /.header-area -->
<!-- main-menu End -->