<%@ page import="vn.edu.hcmuaf.bean.User" %>
<%@ page import="java.util.Objects" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@include file="tablib.jsp" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <%@include file="head.jsp" %>
</head>
<body>
<header class="top-area">
<div class="header-area">
    <div class="container">
        <div class="row">
            <div class="col-sm-2">
                <div class="logo">
                    <a href="index.jsp">
                        tour<span>Nest</span>
                    </a>
                </div>
            </div>
            <div class="col-sm-10">
                <div class="main-menu">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle" data-toggle="collapse"
                                data-target=".navbar-collapse">
                            <i class="fa fa-bars"></i>
                        </button>
                    </div>
                    <div class="collapse navbar-collapse">
                        <ul class="nav navbar-nav navbar-right">
                            <li class="smooth-menu"><a href="#home">Trang Chủ</a></li>
                            <li class="smooth-menu"><a href="#spo">Ưu Đãi</a></li>
                            <li class="smooth-menu"><a href="#gallery">Tour Hot</a></li>
                            <li class="smooth-menu"><a href="#pack">Gói Du Lịch</a></li>
                            <li class="smooth-menu"><a href="#blog">Tin Tức</a></li>
                            <li class="smooth-menu"><a href="#feedback">Đánh Giá</a></li>
                            <li class="smooth-menu"><a href="#service">Liên Hệ</a></li>
                            <li class="navbar-toggle"><a href="shopcart.jsp" id="myTour"><i
                                    class="fa fa-suitcase-rolling fa-2x"
                                    style="margin-top: -10px;color: #00d8fe"></i></a>
                            </li>
                            <%
                                User user = (User) session.getAttribute("user");
                               String url = request.getContextPath().trim();
                            %>
                            <% if (Objects.nonNull(user)) { %>
                            <li id="icon-user" class="smooth-menu">
                                <i class="fa-regular fa-circle-user" style="color: #ffffff;"></i>
                                <span class="username"><%= user.getUserName() %></span>
                                <ul id="service_account">
                                    <li><a id="myInfor" href="infor.jsp">Thông tin tài khoản</a></li>
                                    <li><a id="bill" href="bill.jsp">Bill </a></li>
                                    <li>
                                    <form action="login" method="get">
                                        <button type="submit" name="action" id="logout" value="logout" style="
                                                background-color: transparent;
                                                border: none;
                                                color: #fff;
                                                font-size: 14px;
                                                font-weight: bold" >Đăng xuất</button>
                                    </form></li>
                                </ul>
                            </li>
                            <% } else { %>
                            <li>
                                <button class="book-btn" id="buttonTour" style="margin-top: -2px;">
                                    <a href="login.jsp">Đăng Nhập</a>
                                </button>
                            </li>
                            <% } %>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <div class="home-border"></div>
    </div>
</div>
</header>
</body>


</html>
