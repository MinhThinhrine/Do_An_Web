<%@ page import="vn.edu.hcmuaf.bean.User" %>
<%@ page import="java.util.Objects" %>
<%@ page import="vn.edu.hcmuaf.DAO.indexDao" %>
<%@ page import="vn.edu.hcmuaf.bean.*" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.text.DecimalFormat" %>
<%@ page import="javax.swing.*" %>
<%@ page import="vn.edu.hcmuaf.DAO.TourDao" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%!
    private int numberOfClasses;
%><%
    indexDao indx = new indexDao();
    TourDao tdao = new TourDao();
//service_tours sv = (service_tours) request.getAttribute("service");
    Tour t = (Tour) request.getAttribute("tour");
    ArrayList<service_tours> sv_list = (ArrayList<service_tours>) indx.service();
    StringBuilder serList = new StringBuilder();
    valies v = tdao.findvalibyid(t.getId());

//    options op = indx.option();
%>
<html lang="en">
<head>
    <meta charset="utf-8"/>
    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css?display=swap"
          integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>
    <title>Thông tin và dịch vụ</title>
    <link rel="shortcut icon" type="image/icon" href="../assets/logo/favicon.png"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">

    <link rel="stylesheet" href="../assets/css/payment.css">

    <!-- range css-->
    <link rel="stylesheet" href="../assets/css/jquery-ui.min.css"/>

    <!--bootstrap.min.css-->
    <link rel="stylesheet" href="../assets/css/bootstrap.min.css"/>

    <!-- bootsnav -->
    <link rel="stylesheet" href="../assets/css/bootsnav.css"/>

    <!--style.css-->
    <link rel="stylesheet" href="../assets/css/style.css"/>

    <!--responsive.css-->
    <link rel="stylesheet" href="../assets/css/responsive.css"/>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    <style>
        /* CSS */
        .customer-notice-right .btn-primary {
            background-color: #00d8fe;
            color: #fff;
            padding: 10px 150px;
            border: none;
        }

        .customer-notice-right .btn-primary:hover {
            background: linear-gradient(90deg, #0077fe 0, #f600a8 100%);
        }

        .customer-notice-right .dropdown-toggle::after {
            content: "";
            display: inline-block;
            width: 0;
            height: 0;
            margin-left: .255em;
            vertical-align: .255em;
            border-top: .3em solid;
            border-right: .3em solid transparent;
            border-bottom: 0;
            border-left: .3em solid transparent;
        }

        .customer-notice-right .dropdown-menu {
            background-color: #f8f9fa;
            border: 1px solid rgba(0, 0, 0, 0.15);
            /*padding: 10px;*/
            width: 360.6px;
        }

        .customer-notice-right .dropdown-item {
            display: flex;
            align-items: center;
            padding: 4px 10px;
            cursor: pointer;
        }

        .customer-notice-right .dropdown-item input {
            font-size: 30px;
            height: 20px;
            width: 20px;
        }

        .customer-notice-right .dropdown-item p {
            padding-left: 10px;
            font-size: 15px;
        }

        .customer-notice-right .dropdown-item:hover {
            background-color: #e9ecef;
        }
    </style>
    <script>
        var dropdownButton = document.getElementById("dropdownButton");
        var dropdownMenu = document.querySelector(".dropdown-menu");
        var checkboxes = dropdownMenu.getElementsByTagName("input");

        var dateInput = document.querySelector("#date input");
        dateInputvalue = dateInput.value;
        var [year, month, day] = dateInputvalue.split("-");
        var newDateValue = `${day}-${month}-${year}`;
        var date = document.getElementById("date");
        date.innerHTML = newDateValue;

        dropdownButton.addEventListener("click", function () {
            dropdownMenu.classList.toggle("show");
        });

        for (var i = 0; i < checkboxes.length; i++) {
            checkboxes[i].addEventListener("click", function (event) {
                event.stopPropagation();
            });
        }

    </script>
</head>

<body>
<div id="root">
    <div class="row head" style="background-color: #4d4e53">
        <div class="col-sm-1"></div>

        <div class="col-sm-3">
            <div class="logo">
                <a href="index.jsp">
                    tour<span>Nest</span>
                </a>
            </div><!-- /.logo-->
        </div><!-- /.col-->
        <div class="col-sm-8">
            <div class="main-menu">
                <ul class="nav" style="text-align: right;color: black!important;">
                    <li><a href="index.html">Trang Chủ</a></li>
                    <li><a href="index.html#spo">Ưu Đãi</a></li>
                    <li><a href="index.html#gallery">Tour Hot</a></li>
                    <li><a href="CategorieServlet">Sản Phẩm</a></li>
                    <li><a href="index.html#blog">Tin Tức</a></li>
                    <li><a href="index.html#feedback">Đánh Giá</a></li>
                    <li><a href="index.html#service">Liên Hệ</a></li>
                    <%
                        User user = (User) session.getAttribute("user");
                        String url = request.getContextPath().trim();
                    %>
                    <% if (Objects.nonNull(user)) { %>
                    <li class="navbar-toggle"><a href="vali.jsp" id="myTour"><i
                            class="fa fa-suitcase-rolling fa-2x"
                            style="margin-top: -10px;color: #00d8fe"></i></a>
                    </li>
                    <li id="icon-user" class="smooth-menu">
                        <i class="fa fa fa-user-circle fa-2x" style="color: #ffffff;"></i>
                        <span class="username"><%= user.getUserName() %></span>
                        <ul id="service_account">
                            <li style="text-align: left"><a id="myInfor" href="infor.jsp">Tài Khoản</a></li>
                            <li style="text-align: left"><a id="bill" href="bill.jsp">Hóa Đơn </a></li>
                            <li style="text-align: left">
                                <form action="login" method="get">
                                    <button type="submit" name="action" id="logout" value="logout">Đăng Xuất</button>
                                </form>
                            </li>
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
            </div><!-- /.navbar-collapse -->
        </div><!-- /.main-menu-->
    </div><!-- /.col-->

    <div class="container">
        <div class="row">
        </div>

    </div>
    <div class="booking-tour">
        <section class="checkout-head d-block d-lg-block">
            <div class="container">
                <div class="row">
                    <ul class="head col-12">
                        <li class="checked"><a href="#" style="color: #00d8fe!important;">1. Dịch vụ và thông tin</a>
                        </li>
                        <li class="checked"><i class="fa-solid fa-arrow-right"></i></li>
                        <li class="checked"><a href="" style="color: #bbbbbb!important;">2. Hình thức thanh toán</a>
                        <li class="checked"><i class="fa-solid fa-arrow-right"></i></li>
                        <li class="checked"><a href="#" style="color: #bbbbbb!important;">3. Hóa đơn</a>
                        </li>
                    </ul>
                </div>
            </div>
        </section>
        <section class="checkout-main order-tour animate__fadeIn animate__animated">
<%--            <form method="post" action="ServiceServlet?id=<%=t.getId()%>">  --%>
            <div class="container">
                <div class="row">
                    <h2 class="d-none d-lg-block">Tổng quan về chuyến đi</h2>
                    <div class="col-md-8 col-12 left" style="border: 1px solid #d5d5d5;border-radius: 5px">
                        <h3 style="padding: 20px">Dịch vụ</h3>
                        <div class="customer-notice">
                            <div class="customer-notice-left">
                                <h4>Chọn các dịch vụ đi kèm ( nếu muốn )</h4>
                                * Có chi phí phát sinh
                            </div>
                            <div class="customer-notice-right">
                                <button type="button" class="btn btn-primary dropdown-toggle"
                                        id="dropdownButton" data-bs-toggle="dropdown" aria-expanded="false">Dịch vụ
                                </button>
                                <ul  id="tourList"  class="dropdown-menu" aria-labelledby="dropdownButton">
                                    <%
                                        for (service_tours s: sv_list) {
                                        int number = (int) s.getPrice();
                                        DecimalFormat decimalFormat = new DecimalFormat("#,###");
                                        String formattedString = decimalFormat.format(number) ;
                                    %>
                                    <li><label class="dropdown-item"><input type="checkbox" name="<%=s.getId()%>" value="<%=s.getId()%>" title="<%=s.getDescription()%>">
                                        <p><%=s.getName()%></p><p> (<%=formattedString%>đ)</p></label></li>
                                    <!-- Thêm các mục khác -->
                                    <% } %>
                                </ul>
                            </div>
                        </div>
                        <h3 style="padding: 0px 20px 20px">Thông tin liên lạc</h3>
                        <div class="customer-contact mb-3">
                            <form class="customer-contact-inner" action="#" method="get" id="form">
                                <div class="name">
                                    <label>Họ và Tên <b>*</b></label><input autocomplete="off" type="text"
                                                                            class="form-control" name="fullName"
                                                                            value=""/>
                                </div>
                                <div class="mail">
                                    <label>Email <b>*</b></label><input type="email" class="form-control" name="email"
                                                                        value=""/>
                                </div>
                                <div class="phone">
                                    <label>Số điện thoại <b>*</b></label><input type="number" class="form-control"
                                                                                name="phone" value=""/>
                                </div>
                                <div class="addess"><label>Địa chỉ</label><input type="text" class="form-control"
                                                                                 name="address" value=""/></div>
                            </form>
                        </div>
                        <div class="customer">
                            <h3 style="padding: 20px">Hành khách</h3>
                            <div class="change">
                                <div class="change-title">
                                    <h4>Người lớn</h4>
                                    <p>Từ 12 tuổi</p>
                                </div>
                                <div class="change-number">
                                    <span class="minus btn-click">
<%--                                        <a href="TangGiamServlet?action=inc&id=<%=t.getId()%>">--%>
                                            <button class="btn btn-link px-lg-2 btn-lg" id="adultMinus">
                                            <i class="fal fa-minus-circle" ></i></button>
<%--                                        </a>--%>
                                    </span>
                                    <span class="number" id="adult">
                                         <%=v.getNumAdult()%>
                                    </span>
                                    <span class="plus btn-click">
                                        <button class="btn btn-link px-lg-2 btn-lg" id="adultPlus">
                                            <i class="fal fa-plus-circle" ></i></button></span>
                                </div>
                            </div>
                            <div class="change">
                                <div class="change-title">
                                    <h4>Trẻ em</h4>
                                    <p>Từ 4 - 12 tuổi</p>
                                </div>
                                <div class="change-number">
                                    <span class="minus btn-click">
                                        <button class="btn btn-link px-lg-2 btn-lg" id="childrenMinus">
                                        <i class="fal fa-minus-circle"></i>
                                        </button></span>
                                    <span class="number" id="children">0</span>
                                    <span class="plus btn-click">
                                        <button class="btn btn-link px-lg-2 btn-lg" id="childrenPlus">
                                        <i class="fal fa-plus-circle" ></i>
                                        </button></span>
                                </div>
                            </div>
                        </div>
                        <div class="customer-notice">
                            <div class="customer-notice-left">
                                * Người lớn từ 12 tuổi trở lên
                            </div>
                            <div class="customer-notice-right">
                                * Trẻ em dưới 12 tuổi ( trẻ dưới 4 tuổi được miễn phí )
                            </div>
                        </div>
                        <div class="mb-4">
                            <div class="form-check checkbox-input-search d-inline-flex align-items-center">
                                <input class="form-check-input me-3" id="rad" type="radio" name="input-list-customer" value="yes"
                                       checked=""/><label class="form-check-label mt-1 small">Nhập danh sách khách
                                hàng</label>
                            </div>
                            <div class="form-check checkbox-input-search d-inline-flex align-items-center">
                                <input class="form-check-input me-3" type="radio" id="radSupport"
                                       name="input-list-customer" value="no"/>
                                <div class="col-11"><label class="form-check-label mt-1 small">Tôi cần được nhân viên tư
                                    vấn Vietravel trợ giúp nhập thông tin đăng ký dịch vụ</label></div>
                            </div>
                        </div>
                        <section class="wrap-info-customer-number-person-details mt-4 wrapper-new-input" id="sessionContainer">
<%--                            <form action="" method="post">--%>
                            <div class="title-section mb-3 title-hotel-flight-infor"
                                 style="font-weight: 700;font-size: 22px;line-height: 28px;color: #2d4271;padding: 20px">
                                Thông tin hành khách
                            </div>
                            <div class="group-fields-input-contact-adult group-fields-input-contact-wrapper mb-3">
                                <div class="title-persona"><i class="fa-solid fa-user-tie"></i> Người lớn</div>
                                <div class="row">
                                    <div class="col-lg-4 col-12">
                                        <div class="form-group">
                                            <label class="pb-1 font-700">Họ và tên <span
                                                    class="text-danger">*</span></label>
                                            <input type="text" class="form-control fullName hotel-flight-input"
                                                   placeholder="Nhập họ tên" name="fullName"/>
                                            <div class="errorform error-notes">Vui lòng nhập thông tin</div>
                                        </div>
                                    </div>
                                    <div class="col-lg-2 col-12">
                                        <div class="form-group select-custom-icon">
                                            <label class="pb-1 white-space-nowrap">Giới tính <span
                                                    class="text-danger">*</span></label>
                                            <select class="form-control title title-gender hotel-flight-input"
                                                    name="gender">
                                                <option value="1">Nam</option>
                                                <option value="0">Nữ</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-lg-5 col-12">
                                        <div class="row">
                                            <div class="col-sm-4 col-4 mt-sm-0 mt-4">
                                                <div class="form-group select-custom-icon">
                                                    <label class="pb-1 white-space-nowrap font-700">Ngày sinh <span
                                                            class="text-danger">*</span></label>
                                                        <input type="text" class="form-control fullName hotel-flight-input"
                                                               placeholder="Ngày">
                                                </div>
                                            </div>
                                            <div class="col-sm-4 col-4 mt-sm-0 mt-4">
                                                <div class="form-group select-custom-icon">
                                                    <label class="pb-1">&nbsp;</label>

                                                        <input type="text" class="form-control fullName hotel-flight-input"
                                                               placeholder="Tháng">
                                                </div>
                                            </div>
                                            <div class="col-sm-4 col-4 mt-sm-0 mt-4">
                                                <div class="form-group select-custom-icon">
                                                    <label class="pb-1">&nbsp;</label>
                                                        <input type="text" class="form-control fullName hotel-flight-input"
                                                               placeholder="Năm">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-1 col-12"></div>

                                </div>
                                <div id="if1" style="display: none;" class="row">
                                    <div class="col-lg-4 col-12">
                                        <div class="form-group">
                                            <label class="pb-1 font-700">Họ và tên <span
                                                    class="text-danger">*</span></label>
                                            <input type="text" class="form-control fullName hotel-flight-input"
                                                   placeholder="Nhập họ tên" name="fullName"/>
                                            <div class="errorform error-notes">Vui lòng nhập thông tin</div>
                                        </div>
                                    </div>
                                    <div class="col-lg-2 col-12">
                                        <div class="form-group select-custom-icon">
                                            <label class="pb-1 white-space-nowrap">Giới tính <span
                                                    class="text-danger">*</span></label>
                                            <select class="form-control title title-gender hotel-flight-input"
                                                    name="gender">
                                                <option value="1">Nam</option>
                                                <option value="0">Nữ</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-lg-5 col-12">
                                        <div class="row">
                                            <div class="col-sm-4 col-4 mt-sm-0 mt-4">
                                                <div class="form-group select-custom-icon">
                                                    <label class="pb-1 white-space-nowrap font-700">Ngày sinh <span
                                                            class="text-danger">*</span></label>
                                                        <input type="text" class="form-control fullName hotel-flight-input"
                                                               placeholder="Ngày">
                                                </div>
                                            </div>
                                            <div class="col-sm-4 col-4 mt-sm-0 mt-4">
                                                <div class="form-group select-custom-icon">
                                                    <label class="pb-1">&nbsp;</label>

                                                        <input type="text" class="form-control fullName hotel-flight-input"
                                                               placeholder="Tháng">
                                                </div>
                                            </div>
                                            <div class="col-sm-4 col-4 mt-sm-0 mt-4">
                                                <div class="form-group select-custom-icon">
                                                    <label class="pb-1">&nbsp;</label>
                                                        <input type="text" class="form-control fullName hotel-flight-input"
                                                               placeholder="Năm">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-1 col-12"></div>

                                </div>
                                <div id="if2" style="display: none;" class="row">
                                    <div class="col-lg-4 col-12">
                                        <div class="form-group">
                                            <label class="pb-1 font-700">Họ và tên <span
                                                    class="text-danger">*</span></label>
                                            <input type="text" class="form-control fullName hotel-flight-input"
                                                   placeholder="Nhập họ tên" name="fullName"/>
                                            <div class="errorform error-notes">Vui lòng nhập thông tin</div>
                                        </div>
                                    </div>
                                    <div class="col-lg-2 col-12">
                                        <div class="form-group select-custom-icon">
                                            <label class="pb-1 white-space-nowrap">Giới tính <span
                                                    class="text-danger">*</span></label>
                                            <select class="form-control title title-gender hotel-flight-input"
                                                    name="gender">
                                                <option value="1">Nam</option>
                                                <option value="0">Nữ</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-lg-5 col-12">
                                        <div class="row">
                                            <div class="col-sm-4 col-4 mt-sm-0 mt-4">
                                                <div class="form-group select-custom-icon">
                                                    <label class="pb-1 white-space-nowrap font-700">Ngày sinh <span
                                                            class="text-danger">*</span></label>
                                                        <input type="text" class="form-control fullName hotel-flight-input"
                                                               placeholder="Ngày">
                                                </div>
                                            </div>
                                            <div class="col-sm-4 col-4 mt-sm-0 mt-4">
                                                <div class="form-group select-custom-icon">
                                                    <label class="pb-1">&nbsp;</label>

                                                        <input type="text" class="form-control fullName hotel-flight-input"
                                                               placeholder="Tháng">
                                                </div>
                                            </div>
                                            <div class="col-sm-4 col-4 mt-sm-0 mt-4">
                                                <div class="form-group select-custom-icon">
                                                    <label class="pb-1">&nbsp;</label>
                                                        <input type="text" class="form-control fullName hotel-flight-input"
                                                               placeholder="Năm">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-1 col-12"></div>

                                </div>
                                <div id="if3" style="display: none;" class="row">
                                    <div class="col-lg-4 col-12">
                                        <div class="form-group">
                                            <label class="pb-1 font-700">Họ và tên <span
                                                    class="text-danger">*</span></label>
                                            <input type="text" class="form-control fullName hotel-flight-input"
                                                   placeholder="Nhập họ tên" name="fullName"/>
                                            <div class="errorform error-notes">Vui lòng nhập thông tin</div>
                                        </div>
                                    </div>
                                    <div class="col-lg-2 col-12">
                                        <div class="form-group select-custom-icon">
                                            <label class="pb-1 white-space-nowrap">Giới tính <span
                                                    class="text-danger">*</span></label>
                                            <select class="form-control title title-gender hotel-flight-input"
                                                    name="gender">
                                                <option value="1">Nam</option>
                                                <option value="0">Nữ</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-lg-5 col-12">
                                        <div class="row">
                                            <div class="col-sm-4 col-4 mt-sm-0 mt-4">
                                                <div class="form-group select-custom-icon">
                                                    <label class="pb-1 white-space-nowrap font-700">Ngày sinh <span
                                                            class="text-danger">*</span></label>
                                                        <input type="text" class="form-control fullName hotel-flight-input"
                                                               placeholder="Ngày">
                                                </div>
                                            </div>
                                            <div class="col-sm-4 col-4 mt-sm-0 mt-4">
                                                <div class="form-group select-custom-icon">
                                                    <label class="pb-1">&nbsp;</label>

                                                        <input type="text" class="form-control fullName hotel-flight-input"
                                                               placeholder="Tháng">
                                                </div>
                                            </div>
                                            <div class="col-sm-4 col-4 mt-sm-0 mt-4">
                                                <div class="form-group select-custom-icon">
                                                    <label class="pb-1">&nbsp;</label>
                                                        <input type="text" class="form-control fullName hotel-flight-input"
                                                               placeholder="Năm">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-1 col-12"></div>

                                </div>
                                <div id="if4" style="display: none;" class="row">
                                    <div class="col-lg-4 col-12">
                                        <div class="form-group">
                                            <label class="pb-1 font-700">Họ và tên <span
                                                    class="text-danger">*</span></label>
                                            <input type="text" class="form-control fullName hotel-flight-input"
                                                   placeholder="Nhập họ tên" name="fullName"/>
                                            <div class="errorform error-notes">Vui lòng nhập thông tin</div>
                                        </div>
                                    </div>
                                    <div class="col-lg-2 col-12">
                                        <div class="form-group select-custom-icon">
                                            <label class="pb-1 white-space-nowrap">Giới tính <span
                                                    class="text-danger">*</span></label>
                                            <select class="form-control title title-gender hotel-flight-input"
                                                    name="gender">
                                                <option value="1">Nam</option>
                                                <option value="0">Nữ</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-lg-5 col-12">
                                        <div class="row">
                                            <div class="col-sm-4 col-4 mt-sm-0 mt-4">
                                                <div class="form-group select-custom-icon">
                                                    <label class="pb-1 white-space-nowrap font-700">Ngày sinh <span
                                                            class="text-danger">*</span></label>
                                                        <input type="text" class="form-control fullName hotel-flight-input"
                                                               placeholder="Ngày">
                                                </div>
                                            </div>
                                            <div class="col-sm-4 col-4 mt-sm-0 mt-4">
                                                <div class="form-group select-custom-icon">
                                                    <label class="pb-1">&nbsp;</label>

                                                        <input type="text" class="form-control fullName hotel-flight-input"
                                                               placeholder="Tháng">
                                                </div>
                                            </div>
                                            <div class="col-sm-4 col-4 mt-sm-0 mt-4">
                                                <div class="form-group select-custom-icon">
                                                    <label class="pb-1">&nbsp;</label>
                                                        <input type="text" class="form-control fullName hotel-flight-input"
                                                               placeholder="Năm">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-1 col-12"></div>

                                </div>
                                <div id="if5" style="display: none;" class="row">
                                    <div class="col-lg-4 col-12">
                                        <div class="form-group">
                                            <label class="pb-1 font-700">Họ và tên <span
                                                    class="text-danger">*</span></label>
                                            <input type="text" class="form-control fullName hotel-flight-input"
                                                   placeholder="Nhập họ tên" name="fullName"/>
                                            <div class="errorform error-notes">Vui lòng nhập thông tin</div>
                                        </div>
                                    </div>
                                    <div class="col-lg-2 col-12">
                                        <div class="form-group select-custom-icon">
                                            <label class="pb-1 white-space-nowrap">Giới tính <span
                                                    class="text-danger">*</span></label>
                                            <select class="form-control title title-gender hotel-flight-input"
                                                    name="gender">
                                                <option value="1">Nam</option>
                                                <option value="0">Nữ</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-lg-5 col-12">
                                        <div class="row">
                                            <div class="col-sm-4 col-4 mt-sm-0 mt-4">
                                                <div class="form-group select-custom-icon">
                                                    <label class="pb-1 white-space-nowrap font-700">Ngày sinh <span
                                                            class="text-danger">*</span></label>
                                                        <input type="text" class="form-control fullName hotel-flight-input"
                                                               placeholder="Ngày">
                                                </div>
                                            </div>
                                            <div class="col-sm-4 col-4 mt-sm-0 mt-4">
                                                <div class="form-group select-custom-icon">
                                                    <label class="pb-1">&nbsp;</label>

                                                        <input type="text" class="form-control fullName hotel-flight-input"
                                                               placeholder="Tháng">
                                                </div>
                                            </div>
                                            <div class="col-sm-4 col-4 mt-sm-0 mt-4">
                                                <div class="form-group select-custom-icon">
                                                    <label class="pb-1">&nbsp;</label>
                                                        <input type="text" class="form-control fullName hotel-flight-input"
                                                               placeholder="Năm">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-1 col-12"></div>

                                </div >
                                <div id="if6" style="display: none;" class="row">
                                    <div class="col-lg-4 col-12">
                                        <div class="form-group">
                                            <label class="pb-1 font-700">Họ và tên <span
                                                    class="text-danger">*</span></label>
                                            <input type="text" class="form-control fullName hotel-flight-input"
                                                   placeholder="Nhập họ tên" name="fullName"/>
                                            <div class="errorform error-notes">Vui lòng nhập thông tin</div>
                                        </div>
                                    </div>
                                    <div class="col-lg-2 col-12">
                                        <div class="form-group select-custom-icon">
                                            <label class="pb-1 white-space-nowrap">Giới tính <span
                                                    class="text-danger">*</span></label>
                                            <select class="form-control title title-gender hotel-flight-input"
                                                    name="gender">
                                                <option value="1">Nam</option>
                                                <option value="0">Nữ</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-lg-5 col-12">
                                        <div class="row">
                                            <div class="col-sm-4 col-4 mt-sm-0 mt-4">
                                                <div class="form-group select-custom-icon">
                                                    <label class="pb-1 white-space-nowrap font-700">Ngày sinh <span
                                                            class="text-danger">*</span></label>
                                                        <input type="text" class="form-control fullName hotel-flight-input"
                                                               placeholder="Ngày">
                                                </div>
                                            </div>
                                            <div class="col-sm-4 col-4 mt-sm-0 mt-4">
                                                <div class="form-group select-custom-icon">
                                                    <label class="pb-1">&nbsp;</label>

                                                        <input type="text" class="form-control fullName hotel-flight-input"
                                                               placeholder="Tháng">
                                                </div>
                                            </div>
                                            <div class="col-sm-4 col-4 mt-sm-0 mt-4">
                                                <div class="form-group select-custom-icon">
                                                    <label class="pb-1">&nbsp;</label>
                                                        <input type="text" class="form-control fullName hotel-flight-input"
                                                               placeholder="Năm">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-1 col-12"></div>

                                </div >
                                <div  id="if7" style="display: none;" class="row">
                                    <div class="col-lg-4 col-12">
                                        <div class="form-group">
                                            <label class="pb-1 font-700">Họ và tên <span
                                                    class="text-danger">*</span></label>
                                            <input type="text" class="form-control fullName hotel-flight-input"
                                                   placeholder="Nhập họ tên" name="fullName"/>
                                            <div class="errorform error-notes">Vui lòng nhập thông tin</div>
                                        </div>
                                    </div>
                                    <div class="col-lg-2 col-12">
                                        <div class="form-group select-custom-icon">
                                            <label class="pb-1 white-space-nowrap">Giới tính <span
                                                    class="text-danger">*</span></label>
                                            <select class="form-control title title-gender hotel-flight-input"
                                                    name="gender">
                                                <option value="1">Nam</option>
                                                <option value="0">Nữ</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-lg-5 col-12">
                                        <div class="row">
                                            <div class="col-sm-4 col-4 mt-sm-0 mt-4">
                                                <div class="form-group select-custom-icon">
                                                    <label class="pb-1 white-space-nowrap font-700">Ngày sinh <span
                                                            class="text-danger">*</span></label>
                                                        <input type="text" class="form-control fullName hotel-flight-input"
                                                               placeholder="Ngày">
                                                </div>
                                            </div>
                                            <div class="col-sm-4 col-4 mt-sm-0 mt-4">
                                                <div class="form-group select-custom-icon">
                                                    <label class="pb-1">&nbsp;</label>

                                                        <input type="text" class="form-control fullName hotel-flight-input"
                                                               placeholder="Tháng">
                                                </div>
                                            </div>
                                            <div class="col-sm-4 col-4 mt-sm-0 mt-4">
                                                <div class="form-group select-custom-icon">
                                                    <label class="pb-1">&nbsp;</label>
                                                        <input type="text" class="form-control fullName hotel-flight-input"
                                                               placeholder="Năm">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-1 col-12"></div>

                                </div>
                                <div id="if8" style="display: none;" class="row">
                                    <div class="col-lg-4 col-12">
                                        <div class="form-group">
                                            <label class="pb-1 font-700">Họ và tên <span
                                                    class="text-danger">*</span></label>
                                            <input type="text" class="form-control fullName hotel-flight-input"
                                                   placeholder="Nhập họ tên" name="fullName"/>
                                            <div class="errorform error-notes">Vui lòng nhập thông tin</div>
                                        </div>
                                    </div>
                                    <div class="col-lg-2 col-12">
                                        <div class="form-group select-custom-icon">
                                            <label class="pb-1 white-space-nowrap">Giới tính <span
                                                    class="text-danger">*</span></label>
                                            <select class="form-control title title-gender hotel-flight-input"
                                                    name="gender">
                                                <option value="1">Nam</option>
                                                <option value="0">Nữ</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-lg-5 col-12">
                                        <div class="row">
                                            <div class="col-sm-4 col-4 mt-sm-0 mt-4">
                                                <div class="form-group select-custom-icon">
                                                    <label class="pb-1 white-space-nowrap font-700">Ngày sinh <span
                                                            class="text-danger">*</span></label>
                                                        <input type="text" class="form-control fullName hotel-flight-input"
                                                               placeholder="Ngày">
                                                </div>
                                            </div>
                                            <div class="col-sm-4 col-4 mt-sm-0 mt-4">
                                                <div class="form-group select-custom-icon">
                                                    <label class="pb-1">&nbsp;</label>

                                                        <input type="text" class="form-control fullName hotel-flight-input"
                                                               placeholder="Tháng">
                                                </div>
                                            </div>
                                            <div class="col-sm-4 col-4 mt-sm-0 mt-4">
                                                <div class="form-group select-custom-icon">
                                                    <label class="pb-1">&nbsp;</label>
                                                        <input type="text" class="form-control fullName hotel-flight-input"
                                                               placeholder="Năm">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-1 col-12"></div>

                                </div>
                                <div id="if9" style="display: none;" class="row">
                                    <div class="col-lg-4 col-12">
                                        <div class="form-group">
                                            <label class="pb-1 font-700">Họ và tên <span
                                                    class="text-danger">*</span></label>
                                            <input type="text" class="form-control fullName hotel-flight-input"
                                                   placeholder="Nhập họ tên" name="fullName"/>
                                            <div class="errorform error-notes">Vui lòng nhập thông tin</div>
                                        </div>
                                    </div>
                                    <div class="col-lg-2 col-12">
                                        <div class="form-group select-custom-icon">
                                            <label class="pb-1 white-space-nowrap">Giới tính <span
                                                    class="text-danger">*</span></label>
                                            <select class="form-control title title-gender hotel-flight-input"
                                                    name="gender">
                                                <option value="1">Nam</option>
                                                <option value="0">Nữ</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-lg-5 col-12">
                                        <div class="row">
                                            <div class="col-sm-4 col-4 mt-sm-0 mt-4">
                                                <div class="form-group select-custom-icon">
                                                    <label class="pb-1 white-space-nowrap font-700">Ngày sinh <span
                                                            class="text-danger">*</span></label>
                                                        <input type="text" class="form-control fullName hotel-flight-input"
                                                               placeholder="Ngày">
                                                </div>
                                            </div>
                                            <div class="col-sm-4 col-4 mt-sm-0 mt-4">
                                                <div class="form-group select-custom-icon">
                                                    <label class="pb-1">&nbsp;</label>

                                                        <input type="text" class="form-control fullName hotel-flight-input"
                                                               placeholder="Tháng">
                                                </div>
                                            </div>
                                            <div class="col-sm-4 col-4 mt-sm-0 mt-4">
                                                <div class="form-group select-custom-icon">
                                                    <label class="pb-1">&nbsp;</label>
                                                        <input type="text" class="form-control fullName hotel-flight-input"
                                                               placeholder="Năm">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-1 col-12"></div>

                                </div>
                                <div id="if10" style="display: none;" class="row">
                                    <div class="col-lg-4 col-12">
                                        <div class="form-group">
                                            <label class="pb-1 font-700">Họ và tên <span
                                                    class="text-danger">*</span></label>
                                            <input type="text" class="form-control fullName hotel-flight-input"
                                                   placeholder="Nhập họ tên" name="fullName"/>
                                            <div class="errorform error-notes">Vui lòng nhập thông tin</div>
                                        </div>
                                    </div>
                                    <div class="col-lg-2 col-12">
                                        <div class="form-group select-custom-icon">
                                            <label class="pb-1 white-space-nowrap">Giới tính <span
                                                    class="text-danger">*</span></label>
                                            <select class="form-control title title-gender hotel-flight-input"
                                                    name="gender">
                                                <option value="1">Nam</option>
                                                <option value="0">Nữ</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-lg-5 col-12">
                                        <div class="row">
                                            <div class="col-sm-4 col-4 mt-sm-0 mt-4">
                                                <div class="form-group select-custom-icon">
                                                    <label class="pb-1 white-space-nowrap font-700">Ngày sinh <span
                                                            class="text-danger">*</span></label>
                                                        <input type="text" class="form-control fullName hotel-flight-input"
                                                               placeholder="Ngày">
                                                </div>
                                            </div>
                                            <div class="col-sm-4 col-4 mt-sm-0 mt-4">
                                                <div class="form-group select-custom-icon">
                                                    <label class="pb-1">&nbsp;</label>

                                                        <input type="text" class="form-control fullName hotel-flight-input"
                                                               placeholder="Tháng">
                                                </div>
                                            </div>
                                            <div class="col-sm-4 col-4 mt-sm-0 mt-4">
                                                <div class="form-group select-custom-icon">
                                                    <label class="pb-1">&nbsp;</label>
                                                        <input type="text" class="form-control fullName hotel-flight-input"
                                                               placeholder="Năm">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-1 col-12"></div>

                                </div>
                            </div>

<%--                        </form>--%>
                        </section>
                    </div>
                    <div class="col-md-4 col-12 right">
                        <div class="group-checkout">
                            <h3>Tóm tắt</h3>
                            <p class="package-title"><span>Mã Tour</span> # <%=t.getId()%></p>
                            <div class="product">
                                <div class="product-image">
                                    <img src="assets/images/item/<%=t.getImage()%>"
                                         class="img-fluid" alt="image">
                                </div>
                                <div class="product-content">
                                    <p class="title"><%=t.getName()%></p>
                                </div>
                            </div>
                            <div class="go-tour">
                                <div class="start">
                                    <i class="fa-regular fa-calendar"></i>
                                    <div class="start-content">
                                        <h4>Bắt đầu chuyến đi</h4>
                                            <p class="time" style="font-size: 15px;">
                                                <input type="date" id="date" name="date">
                                            </p>
                                        <p class="from"></p>
                                    </div>
                                </div>
                                <div class="end">
                                    <i class="fa-solid fa-calendar-days"></i>
                                    <div class="start-content">
                                        <h4>Kết thúc chuyến đi</h4>
                                        <p class="time" style="font-size: 15px;">CN, 3 Tháng 12, 2023</p>
                                        <p class="from"></p>
                                    </div>
                                </div>
                            </div>
                            <div class="detail">
                                <table style="width: 100%">
                                    <tbody>
                                    <tr>
                                        <th class="l1">Hành khách</th>

                                    </tr>
                                    <tr>
                                        <td> Người lớn</td>
                                        <td class="t-price text-right lonnum">1</td>
                                    </tr>
                                    <tr>
                                        <td>Trẻ em ( giảm 40%) </td>
                                        <td class="t-price text-right trenum">0</td>
                                    </tr>
                                    <tr class="total">
                                        <td>Tổng cộng</td>
                                        <td class="t-price text-right" id="TotalPrice">1,090,000₫</td>
                                    </tr>
                                    </tbody>
                                </table>
                                <div>
                                    <%=serList.toString()%>

                                        <button type="submit" class="btn btn-primary btn-order" style="width:100%" onclick="send()">
                                            Thanh Toán
                                        </button>
                                </div>
                                <div>
                                    <a href="mailto:thinh913011@gmail.com?subject=LIÊN HỆ" style="width: 100%">
                                    <button class="btn btn-primary btn-order"
                                            style="width:100%;background-color: #f9f9f9!important;color: black ">
                                        Liên Hệ
                                    </button>
                                        </a>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
                </div>
            </form>
        </section>
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
                                <p><a href="https://www.traveloka.com/vi-vn/">traveloka</a></p>
                                <p><a href="https://www.ivivu.com/">ivivu</a></p>
                                <p><a href="https://www.saigontourist.net/">saigon tourist</a></p>
                                <p><a href="https://travel.com.vn/">travel</a></p>
                                <p><a href="https://www.vietnambooking.com/">vietnam booking</a></p>
                                <p><a href="https://dulichviet.com.vn/" target=”_blank”>dulichviet</a></p>
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
                                <p>(+84) 249999 6916</p>
                                <p class="foot-email" style="text-transform:none;">
                                    <a href="#">21130549@st.hcmuaf.edu.vn</a></p>
                                <p>Võ Minh Thịnh</p>
                                <p class="foot-email" style="text-transform:none;">
                                    <a href="#">21130558@st.hcmuaf.edu.vn</a></p>
                                <p>Mai Xuân Thức</p>
                                <p class="foot-email" style="text-transform:none;">
                                    <a href="#">21130615@st.hcmuaf.edu.vn</a></p>
                                <p>Trần Quang Vũ</p>
                            </div><!--/.single-footer-txt-->
                        </div><!--/.single-footer-item-->
                    </div><!--/.col-->

                </div><!--/.row-->

            </div><!--/.footer-content-->
            <hr>
            <div class="foot-icons ">
                <ul class="footer-social-links list-inline list-unstyled">
                    <li><a href="https://www.facebook.com/TourNest.org" target="_blank" class="foot-icon-bg-1"><i
                            class="fa-brands fa-facebook fa-xl"
                            style="margin-top: 30px"
                    ></i></a>
                    </li>
                    <li><a href="https://twitter.com/tournest_io" target="_blank" class="foot-icon-bg-2"><i
                            class="fa-brands fa-twitter fa-xl"
                            style="margin-top: 30px"
                    ></i></a>
                    </li>
                    <li><a href="https://www.instagram.com/tournest.io/" target="_blank" class="foot-icon-bg-3"><i
                            class="fa-brands fa-instagram fa-xl"
                            style="margin-top: 30px"
                    ></i></a>
                    </li>
                </ul>
                <p>&copy; 2023-2024 <a href="https://github.com/MinhThinhrine/Do_An_Web">Nhóm 18</a>. All Right
                    Reserved.
                </p>

            </div><!--/.foot-icons-->
            <div id="scroll-Top">
                <i class="fa fa-angle-double-up return-to-top" id="scroll-top 1" data-toggle="tooltip"
                   data-placement="top"
                   title="" data-original-title="Back to Top" aria-hidden="true"></i>
            </div><!--/.scroll-Top-->
        </div><!-- /.container-->

    </footer>


    <!-- /.footer-copyright-->
    <!-- footer-copyright end -->
    <div id="fb-customer-chat" class="fb-customerchat" page_id="181053065281290" attribution="biz_inbox"></div>
</div>
</body>
<script>
    function send() {
        var checkboxes = document.querySelectorAll('input[type="checkbox"]:checked');
        var service = "";

        checkboxes.forEach(function(checkbox) {
            var checkboxValue = checkbox.value;
            if (service.length > 0) {
                service += "-";
            }

            service += checkboxValue;
        });

        var inputDate = document.getElementById("date").value;
        var dateObj = new Date(inputDate);

        var day = dateObj.getDate();
        var month = dateObj.getMonth() + 1; // Tháng trong JavaScript bắt đầu từ 0
        var year = dateObj.getFullYear();

        // Định dạng thành "dd-mm-yyyy"
        var formattedDate = (day < 10 ? '0' + day : day) + '-' + (month < 10 ? '0' + month : month) + '-' + year;

        window.location.href  ="PaymentServlet?id=" + <%=t.getId()%> +"&date=" + formattedDate +"&service=" +service.toString();
    }
        // document.querySelector(".time").textContent = formattedDate;
    </script>
<script>
        // Lấy các phần tử cần thao tác
        var adultMinusBtn = document.getElementById("adultMinus");
        var adultPlusBtn = document.getElementById("adultPlus");
        var adultNumber = document.getElementById("adult");

        var childrenMinusBtn = document.getElementById("childrenMinus");
        var childrenPlusBtn = document.getElementById("childrenPlus");
        var childrenNumber = document.getElementById("children");

        var adultPriceElement = document.querySelector(".lonnum");
        var childrenPriceElement = document.querySelector(".trenum");

        var totalPrice = document.getElementById("TotalPrice");

        // Hàm tính giá tổng cộng
        function calculateTotalPrice() {
            var adultCount = parseInt(adultNumber.textContent);
            var childrenCount = parseInt(childrenNumber.textContent);

            var adultPrice = parseInt(<%=t.getPrice()%>); // Giá người lớn
            var childrenPrice = adultPrice * 0.6; // Giá trẻ em (60% giá người lớn)

            var total = adultCount * adultPrice + childrenCount * childrenPrice;
            totalPrice.textContent = total.toLocaleString() + "₫";

        }

        // Thêm trình xử lý sự kiện cho nút giảm người lớn
        adultMinusBtn.addEventListener("click", function() {
            var currentValue = parseInt(adultNumber.textContent);
            if (currentValue > 0) {
                adultNumber.textContent =(currentValue - 1).toString();
                adultPriceElement.textContent =(currentValue - 1).toString();
                calculateTotalPrice();
                inforRe(currentValue-1);
            }
        });


        // Thêm trình xử lý sự kiện cho nút giảm trẻ em
        childrenMinusBtn.addEventListener("click", function() {
            var currentValue = parseInt(childrenNumber.textContent);
            if (currentValue > 0) {
                childrenNumber.textContent =(currentValue - 1).toString();
                childrenPriceElement.textContent =(currentValue - 1).toString();
                calculateTotalPrice();
            }
        });
        // Thêm trình xử lý sự kiện cho nút tăng người lớn
        adultPlusBtn.addEventListener("click", function() {
            var currentValue = parseInt(adultNumber.textContent);
            adultNumber.textContent = (currentValue + 1).toString();
            adultPriceElement.textContent = (currentValue + 1).toString();
            calculateTotalPrice();
            infor(currentValue+1);
        });

        // Thêm trình xử lý sự kiện cho nút tăng trẻ em
        childrenPlusBtn.addEventListener("click", function() {
            var currentValue = parseInt(childrenNumber.textContent);
            childrenNumber.textContent = (currentValue + 1).toString();
            childrenPriceElement.textContent = (currentValue + 1).toString();
            calculateTotalPrice();
        });
        // Tính giá tổng cộng khi trang web được tải lần đầu
        calculateTotalPrice();
        //
        function infor(value) {
            for (let i = 1; i < value; i++) {
                var id = "if" + i;
                var element = document.getElementById(id);
                if (element) {
                    element.style.display = "block";
                }
            }
        }
        function inforRe(value) {
                var id = "if" + value;
                var element = document.getElementById(id);
                if (element) {
                    element.style.display = "none";
                }
        }

</script>
<script>
    var radSupport = document.getElementById("radSupport");
    var rad = document.getElementById("rad");
    var inforElement = document.getElementById("sessionContainer");
    radSupport.addEventListener("click", function () {
            inforElement.style.display = "none";
    });
    rad.addEventListener("click", function () {
            inforElement.style.display = "block";
    });
</script>
</html>
