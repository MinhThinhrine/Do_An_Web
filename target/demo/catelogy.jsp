<!doctype html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored= "false"%>
<%@ page contentType="text/html; charset=UTF-8" %>

<%@ page import="java.util.List" %>
<%@ page import="vn.edu.hcmuaf.bean.tour" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="vn.edu.hcmuaf.DAO.TourDao" %>
<%@ page import="vn.edu.hcmuaf.bean.User" %>
<%@ page import="java.util.Objects" %>
<%@include file="common/tablib.jsp" %>
<%
TourDao td = new TourDao();
List<tour> tourss = (List<tour>) request.getAttribute("tours");
%>
<!DOCTYPE html>
<html class="no-js" lang="vi">
<head>
    <meta charset="UTF-8">

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.bundle.min.js">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
          integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
            integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
            crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"
            integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
            crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"
            integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
            crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/sweetalert2@10.16.3/dist/sweetalert2.min.css">
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@10.16.3/dist/sweetalert2.min.js" defer></script>
    <!-- favicon img -->
    <link rel="shortcut icon" type="image/icon" href="assets/logo/favicon.png"/>

    <!--font-awesome.min.css-->
    <link rel="stylesheet" href="assets/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css">

    <!--animate.css-->
    <link rel="stylesheet" href="assets/css/animate.css"/>

    <link rel="stylesheet" href="assets/css/style.css">

    <link rel="stylesheet" href="assets/css/catelogy.css">
    <!--hover.css-->
    <link rel="stylesheet" href="assets/css/hover-min.css">

    <title>Sản Phẩm</title>
</head>
<body>
<!-- main-menu Start -->
<header class="top-area">
    <div class="header-area">
        <div class="container">
            <div class="row head">
                <div class="col-sm-2">
                    <div class="logo">
                        <a href="index.jsp">
                            tour<span>Nest</span>
                        </a>
                    </div><!-- /.logo-->
                </div><!-- /.col-->
                <div class="col-sm-1"></div>
                <div class="col-sm-9">
                    <div class="main-menu">
                        <ul class="nav" style="text-align: right">
                            <li><a href="index.jsp">Trang Chủ</a></li>
                            <li><a href="index.jsp#spo">Ưu Đãi</a></li>
                            <li><a href="index.jsp#gallery">Tour Hot</a></li>
                            <li><a href="index.jsp#pack">Gói Du Lịch</a></li>
                            <li><a href="index.jsp#blog">Tin Tức</a></li>
                            <li><a href="index.jsp#feedback">Đánh Giá</a></li>
                            <li><a href="index.jsp#service">Liên Hệ</a></li>
                            <%
                                User user = (User) session.getAttribute("user");
                                String url = request.getContextPath().trim();
                            %>
                            <% if (Objects.nonNull(user)) { %>
                            <li class="navbar-toggle"><a href="shopcart.jsp" id="myTour"><i
                                    class="fa fa-suitcase-rolling fa-2x"
                                    style="margin-top: -10px;color: #00d8fe"></i></a>
                            </li>
                            <li id="icon-user" class="smooth-menu">
                                <i class="fa fa fa-user-circle fa-2x" style="color: #ffffff;"></i>
                                <span class="username"><%= user.getUserName() %></span>
                                <ul id="service_account">
                                    <li><a id="myInfor" href="infor.jsp">Tài Khoản</a></li>
                                    <li><a id="bill" href="bill.jsp">Hóa Đơn </a></li>
                                    <li>
                                        <form action="login" method="get">
                                            <button type="submit" name="action" id="logout" value="logout">Đăng Xuất</button>
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
                </div><!-- /.main-menu-->
            </div><!-- /.col-->
        </div><!-- /.row -->
    </div><!-- /.container -->
    </div><!-- /.header-area -->
</header><!-- /.top-area --><!-- /.top-area -->

<div class="con">
    <div class="bg-white rounded d-flex align-items-center justify-content-between" id="header">
        <button class="btn btn-hide text-uppercase" type="button" data-toggle="collapse" data-target="#filterbar"
                aria-expanded="false" aria-controls="filterbar" id="filter-btn" onclick="changeBtnTxt()"><span
                class="fas fa-angle-left" id="filter-angle"></span> <span id="btn-txt">Bộ lọc</span></button>
        <nav class="navbar navbar-expand-lg navbar-light pl-lg-0 pl-auto">
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#mynav"
                    aria-controls="mynav" aria-expanded="false" aria-label="Toggle navigation" onclick="chnageIcon()"
                    id="icon"><span class="navbar-toggler-icon"></span></button>
            <div class="collapse navbar-collapse" id="mynav">
                <ul class="navbar-nav d-lg-flex align-items-lg-center">
                    <li class="nav-item active"><select name="sort" id="sort">
                        <option value="" hidden selected>Sort by</option>
                        <option value="price">Giá tiền</option>
                        <option value="popularity">Nổi tiếng</option>
                        <option value="rating">Đánh giá</option>
                    </select></li>
                    <li class="nav-item d-inline-flex align-items-center justify-content-between mb-lg-0 mb-3">
                        <div class="d-inline-flex align-items-center mx-lg-2" id="select2">
                            <div class="pl-2">Products:</div>
                            <select name="pro" id="pro">
                                <option value="18">18</option>
                                <option value="19">19</option>
                                <option value="20">20</option>
                            </select>
                        </div>
                        <div class="font-weight-bold mx-2 result"><span class="nums">9 </span>from 210</div>
                    </li>
                    <li class="nav-item d-lg-none d-inline-flex"></li>
                </ul>
            </div>
        </nav>
    </div>
    <div id="content" class="my-5">
        <div id="filterbar" class="collapse">
            <div class="box border-bottom">
                <div class="form-group text-center">
                    <div class="btn-group" data-toggle="buttons"><label class="btn btn-success form-check-label"> <input
                            class="form-check-input" type="radio"> Reset </label> <label
                            class="btn btn-success form-check-label active"> <input class="form-check-input"
                                                                                    type="radio" checked> Áp Dụng
                    </label>
                    </div>
                </div>
                <div><label class="tick">Hot<input type="checkbox" checked="checked"> <span class="check"></span>
                </label></div>
                <div><label class="tick">Giảm giá<input type="checkbox"> <span class="check"></span> </label></div>
            </div>
            <div class="box border-bottom">
                <div class="box-label text-uppercase d-flex align-items-center">Khu vực
                    <button class="btn ml-auto" type="button" data-toggle="collapse" data-target="#inner-box"
                            aria-expanded="false" aria-controls="inner-box" id="out" ><span
                            class="fas fa-plus"></span></button>
                </div>
                <div id="inner-box" class="collapse mt-2 mr-1">
                    <div class="my-1"><label class="tick">Bắc <input type="checkbox"> <span
                            class="check"></span> </label></div>
                    <div class="my-1"><label class="tick">Trung <input type="checkbox"> <span class="check"></span>
                    </label></div>
                    <div class="my-1"><label class="tick">Nam <input type="checkbox"> <span class="check"></span>
                    </label></div>
                </div>
            </div>
            <div class="box border-bottom">
                <div class="box-label text-uppercase d-flex align-items-center">Tỉnh Thành
                    <button class="btn ml-auto" type="button" data-toggle="collapse" data-target="#inner-box2"
                            aria-expanded="false" aria-controls="inner-box2"><span
                            class="fas fa-plus"></span></button>
                </div>
                <div id="inner-box2" class="collapse mt-2 mr-1">
                    <div class="my-1"><label class="tick">Tp Hồ Chí Minh <input type="checkbox"> <span
                            class="check"></span> </label></div>
                    <div class="my-1"><label class="tick">Hà Nội <input type="checkbox"> <span class="check"></span>
                    </label></div>
                    <div class="my-1"><label class="tick">Đà Lạt <input type="checkbox"> <span
                            class="check"></span> </label></div>
                    <div class="my-1"><label class="tick">Vũng Tàu <input type="checkbox"> <span class="check"></span>
                    </label></div>
                    <div class="my-1"><label class="tick">Phú Quốc <input type="checkbox"> <span class="check"></span>
                    </label></div>
                </div>
            </div>
            <div class="box border-bottom">
                <div class="box-label text-uppercase d-flex align-items-center">Theo Mùa
                    <button class="btn ml-auto" type="button" data-toggle="collapse" data-target="#inner-box3"
                            aria-expanded="false" aria-controls="inner-box3"><span class="fas fa-plus"></span></button>
                </div>
                <div id="inner-box3" class="collapse mt-2 mr-1">
                    <div class="my-1"><label class="tick">Xuân <input type="checkbox"> <span
                            class="check"></span> </label></div>
                    <div class="my-1"><label class="tick">Hạ <input type="checkbox"> <span class="check"></span>
                    </label></div>
                    <div class="my-1"><label class="tick">Thu <input type="checkbox"> <span
                            class="check"></span> </label></div>
                    <div class="my-1"><label class="tick">Đông <input type="checkbox"> <span class="check"></span>
                    </label></div>

                </div>
            </div>
            <div class="box border-bottom">
                <div class="box-label text-uppercase d-flex align-items-center">Giá
                    <button class="btn ml-auto" type="button" data-toggle="collapse" data-target="#price"
                            aria-expanded="false" aria-controls="price"><span class="fas fa-plus"></span></button>
                </div>
                <div class="collapse show" id="price">
                    <div class="middle">
                        <div class="multi-range-slider">
                            <input type="range" id="input-left" min="0" max="100" value="10">
                            <input type="range" id="input-right" min="0" max="100" value="50">
                            <div class="slider">
                                <div class="track"></div>
                                <div class="range"></div>
                                <div class="thumb left"></div>
                                <div class="thumb right"></div>
                            </div>
                        </div>
                    </div>
                    <div class="d-flex align-items-center justify-content-between mt-2">
                        <div class="font-weight-bold"><span id="amount-left"></span>00,000đ</div>
                        <div class="font-weight-bold"><span id="amount-right"></span>00,000đ</div>
                    </div>
                </div>
            </div>
            <div class="box">
                <div class="box-label text-uppercase d-flex align-items-center"> số ngày
                    <button class="btn ml-auto" type="button" data-toggle="collapse" data-target="#size"
                            aria-expanded="false" aria-controls="size"><span class="fas fa-plus"></span></button>
                </div>
                <div id="size" class="collapse show">
                    <div class="btn-group d-flex align-items-center flex-wrap" data-toggle="buttons">
                        <label class="btn btn-success form-check-label"> <input class="form-check-input"
                                                                                type="checkbox"> 1 </label>
                        <label class="btn btn-success form-check-label"> <input class="form-check-input" type="checkbox"
                                                                                checked> 2 </label>
                        <label class="btn btn-success form-check-label"> <input class="form-check-input" type="checkbox"
                                                                                checked> 3 </label>
                        <label class="btn btn-success form-check-label"> <input class="form-check-input" type="checkbox"
                                                                                checked> 4
                        </label>
                        <label class="btn btn-success form-check-label"> <input class="form-check-input" type="checkbox"
                                                                                checked> 5
                        </label>
                        <label class="btn btn-success form-check-label"> <input class="form-check-input" type="checkbox"
                                                                                checked> 6</label>
                        <label class="btn btn-success form-check-label"> <input class="form-check-input" type="checkbox"
                                                                                checked> 7</label>
                        <label class="btn btn-success form-check-label"> <input class="form-check-input" type="checkbox"
                                                                                checked> 8</label>
                        <label class="btn btn-success form-check-label"> <input class="form-check-input" type="checkbox"
                                                                                checked> 9</label>
                        <label class="btn btn-success form-check-label"> <input class="form-check-input" type="checkbox"
                                                                                checked> 10
                            <i class="fa fa-long-arrow-up"></i>
                        </label></div>
                </div>
            </div>
        </div>
        <div id="products">
            <div class="row mx-0">
                <% for(tour t : tourss) { %>
                <div class="col-lg-4 col-md-6 pt-lg-0 pt-md-4 pt-3" id="<%=t.getId() %>">
                    <div class="single-package-item">
                        <a href="${pageContext.request.contextPath}/DetailsServlet?id=<%=t.getId()%>">
                            <img style="cursor: pointer" class="packageImage" src="assets/images/item/<%=t.getImage()%>"
                                 alt="package-place">
                        </a>

                        <div class="single-package-item-txt">
                            <h3><%=t.getName()%><span class="pull-right" style="margin-top: 30px;font-size: 15px;"><%=t.getPrice()%></span>
                            </h3>
                            <div class="packages-para">
                                <p>
											<span>
												<i class="fa fa-clock-o"></i> <%=t.getDuration()%>
											</span>
                                </p>
                                <p>
											<span>
												<i class="fa fa-location-arrow"></i> <%=t.getSchedule()%>
											</span>
                                </p>
                                <p>
											<span>
												<i class="fa fa-calendar"></i> Hàng Ngày
											</span>
                                </p>
                            </div><!--/.packages-para-->
                            <div class="about-btn" style="float: left;width: 120px">
                                <button class="about-view packages-btn" id="btn">
                                    book now
                                </button>
                            </div>
                            <div class="about-btn" style="width: 0px">
                                <a id="fitImg" href="ValiServlet?id=<%=t.getId()%>">
                                    <button class="about-view packages-btn addvali">
                                        <i class="fa fa-plus"></i>
                                        <i class="fa fa-suitcase-rolling" style="padding-left: 6px;" ></i>
                                    </button>
                                </a>
                            </div>
                            <!--/.about-btn-->
                        </div><!--/.single-package-item-txt-->

                    </div><!--/.single-package-item-->

                </div><!--/.col-->
                <% } %>
            </div>
            </div>

                <div class="pagination">
                    <nav class="pagination-container">
                        <div class="pagination">
                            <a class="pagination-newer" href="#pack" onclick="previousPage()">
                                <i class="fa fa-chevron-left"></i></a>
                            <span class="pagination-inner">
								<a class="pagination-active" href="#pack" onclick="changePage(1)">1</a>
								<a href="#pack" onclick="changePage(2)">2</a>
								<a href="#pack" onclick="changePage(3)">3</a>
								<a href="#pack" onclick="changePage(4)">4</a>
								<a href="#pack" onclick="changePage(5)">5</a>
								<a href="#pack" onclick="changePage(6)">6</a>
								<a href="#pack" onclick="changePage(7)">7</a>
								<a href="#pack" onclick="changePage(8)">8</a>
								<a href="#pack" onclick="changePage(9)">9</a>
								<a href="#pack" onclick="changePage(10)">10</a>
								<a href="#pack" onclick="changePage(11)">11</a>
								<a href="#pack" onclick="changePage(12)">12</a>
								<a href="#pack" onclick="changePage(13)">13</a>
								<a href="#pack" onclick="changePage(14)">14</a>
                                <a href="#pack" onclick="changePage(15)">15</a>
                                <a href="#pack" onclick="changePage(16)">16</a>
                                <a href="#pack" onclick="changePage(17)">17</a>
                                <a href="#pack" onclick="changePage(18)">18</a>
                                <a href="#pack" onclick="changePage(19)">19</a>
							</span>
                            <a class="pagination-older" href="#pack" onclick="nextPage()">
                                <i class="fa fa-chevron-right"></i>
                            </a>
                        </div>
                    </nav>
                </div>

            </div>
        </div>
    </div>
</div>

<!-- footer-copyright start -->
<footer class="footer-copyright">
    <div class="container">
        <div class="footer-content">
            <div class="row">
                <div class="col-sm-3">
                    <div class="single-footer-item">
                        <div class="footer-logo">
                            <a href="index.html">
                                tour<span>Nest</span>
                            </a>
                            <p>
                                best travel tour guide
                            </p>
                        </div>
                    </div><!--/.single-footer-item-->
                </div><!--/.col-->

                <div class="col-sm-3">
                    <div class="single-footer-item">
                        <h2>Đối tác hợp tác</h2>
                        <div class="single-footer-txt">
                            <p><a href="https://www.traveloka.com/vi-vn/" target=”_blank”>traveloka</a></p>
                            <p><a href="https://www.ivivu.com/" target=”_blank”>ivivu</a></p>
                            <p><a href="https://www.saigontourist.net/" target=”_blank”>saigon tourist</a></p>
                            <p><a href="https://travel.com.vn/" target=”_blank”>travel</a></p>
                            <p><a href="https://www.vietnambooking.com/" target=”_blank”>vietnam booking</a></p>
                        </div><!--/.single-footer-txt-->
                    </div><!--/.single-footer-item-->

                </div><!--/.col-->

                <div class="col-sm-3">
                    <div class="single-footer-item">
                        <h2>Điểm du lịch nổi tiếng</h2>
                        <div class="single-footer-txt">
                            <p><a href="#">hà nội</a></p>
                            <p><a href="#">tp hồ chí minh</a></p>
                            <p><a href="#">vũng tàu</a></p>
                            <p><a href="#">đà lạt</a></p>
                            <p><a href="#">nha trang</a></p>
                        </div><!--/.single-footer-txt-->
                    </div><!--/.single-footer-item-->
                </div><!--/.col-->

                <div class="col-sm-3">
                    <div class="single-footer-item text-center">
                        <h2 class="text-left">contacts</h2>
                        <div class="single-footer-txt text-left">
                            <p>+84 249999 16</p>
                            <p>Võ Minh Thịnh</p>
                            <p class="foot-email" style="text-transform:none;">
                                <a href="#">21130549@st.hcmuaf.edu.vn</a></p>
                            <p>Mai Xuân Thức</p>
                            <p class="foot-email" style="text-transform:none;">
                                <a href="#">21130558@st.hcmuaf.edu.vn</a></p>
                            <p>Trần Quang Vũ</p>
                            <p class="foot-email" style="text-transform:none;">
                                <a href="#">21130615@st.hcmuaf.edu.vn</a></p>
                        </div><!--/.single-footer-txt-->
                    </div><!--/.single-footer-item-->
                </div><!--/.col-->

            </div><!--/.row-->

            <hr>
            <div class="foot-icons ">
                <ul class="footer-social-links list-inline">
                    <li class="d-inline-block"><a href="#" target="_blank" class="foot-icon-bg-1"><i
                            class="fa fa-facebook fa-xl"></i></a></li>
                    <li class="d-inline-block"><a href="#" target="_blank" class="foot-icon-bg-2"><i
                            class="fa fa-twitter fa-xl"></i></a></li>
                    <li class="d-inline-block"><a href="#" target="_blank" class="foot-icon-bg-3"><i
                            class="fa fa-instagram fa-xl"></i></a></li>
                </ul>
                <p>&copy; 2023-2024 <a href="https://github.com/MinhThinhrine/Do_An_Web">Nhóm 18</a>. All Right Reserved.</p>

            </div><!--/.foot-icons-->
            <div id="scroll-Top">
                <i class="fa fa-angle-double-up return-to-top" id="scroll-top top" data-toggle="tooltip"
                   data-placement="top"
                   title="" data-original-title="Back to Top" aria-hidden="true"></i>
            </div><!--/.scroll-Top-->
        </div><!-- /.container-->
    </div>
</footer><!-- /.footer-copyright-->
<!-- footer-copyright end -->

<script src="assets/js/modify.js"></script>
<script src="assets/js/custom.js"></script>
<script src="assets/js/catelogy.js"></script>


</body>
</html>