<%@ page import="vn.edu.hcmuaf.bean.User" %>
<%@ page import="java.util.Objects" %>
<%@ page import="vn.edu.hcmuaf.bean.tour" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@include file="tablib.jsp" %>
<% tour t = (vn.edu.hcmuaf.bean.tour) request.getAttribute("tour");%>

<!DOCTYPE html>
<html lang="en">

<head>
    <%@include file="head.jsp" %>
</head>
<body>
<!-- main-menu Start -->
<header class="top-area" style="background-color: #4d4e53;margin-top: -120px;">
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
                                <li class="smooth-menu"><a href="index.jsp#home">Trang Chủ</a></li>
                                <li class="smooth-menu"><a href="index.jsp#spo">Ưu Đãi</a></li>
                                <li class="smooth-menu"><a href="index.jsp#gallery">Tour Hot</a></li>
                                <li class="smooth-menu"><a href="index.jsp#pack">Gói Du Lịch</a></li>
                                <li class="smooth-menu"><a href="index.jsp#blog">Tin Tức</a></li>
                                <li class="smooth-menu"><a href="index.jsp#feedback">Đánh Giá</a></li>
                                <li class="smooth-menu"><a href="index.jsp#service">Liên Hệ</a></li>
                                <li class="navbar-toggle"><a href="shopcart.jsp" id="myTour"><i
                                        class="fa fa-suitcase-rolling fa-2x"
                                        style="margin-top: -10px;color: #00d8fe"></i></a>
                                </li>
                                <%
                                    User user = (User) session.getAttribute("user");
                                %>
                                <% if (Objects.nonNull(user)) { %>
                                <!-- Hiển thị icon và tên người dùng -->
                                <li id="icon-user" class="smooth-menu">
                                    <i class="fa-regular fa-circle-user" style="color: #ffffff;"></i>
                                    <ul id="service_account">
                                        <li><a id="myInfor" href="../infor.jsp">Thông tin tài khoản</a></li>
                                        <li><a id="bill" href="../bill.jsp">Bill</a></li>
                                        <li><a id="log_out" href="../login.jsp">Đăng xuất</a></li>
                                    </ul>
                                    <span class="username"><%= user.getUserName() %></span>
                                </li>
                                <% } else { %>
                                <!-- Hiển thị nút đăng nhập -->
                                <li>
                                    <button class="book-btn" id="buttonTour" style="margin-top: -2px;">
                                        <a href="../login.jsp">Đăng Nhập</a>
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
</header>
<!-- main-menu End -->
</body>


</html>
