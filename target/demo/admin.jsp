<%@ page contentType="text/html; charset=UTF-8" %>

<!DOCTYPE html>
<head>
<title>Admin</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Visitors Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template,
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<!-- bootstrap-css -->
    <link rel="shortcut icon" type="image/icon" href="assets/logo/favicon.png"/>
<link rel="stylesheet" href="admin/css/bootstrap.min.css" >
    <link rel="stylesheet" href="admin/css/admin.css">
<!-- //bootstrap-css -->
<!-- Custom CSS -->
<link href="admin/css/style.css" rel='stylesheet' type='text/css' />
<link href="admin/css/style-responsive.css" rel="stylesheet"/>
<!-- font CSS -->
<!--<link href='//fonts.googleapis.com/css?family=Roboto:400,100,100italic,300,300italic,400italic,500,500italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'>-->
<!-- font-awesome icons-->
<!--<link rel="stylesheet" href="admin/css/font.css" type="text/css"/>-->
<!--<link href="admin/css/font-awesome.css" rel="stylesheet">-->
<!--<link rel="stylesheet" href="admin/css/morris.css" type="text/css"/>-->
<!-- calendar -->
<link rel="stylesheet" href="admin/css/monthly.css"><link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.0.0/css/font-awesome.css" integrity="sha512-72McA95q/YhjwmWFMGe8RI3aZIMCTJWPBbV8iQY3jy1z9+bi6+jHnERuNrDPo/WGYEzzNs4WdHNyyEr/yXJ9pA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<!-- //calendar -->
<!-- //font-awesome icons -->
<!--    <link rel="shortcut icon" type="image/icon" href="assets/logo/favicon.png"/>-->
    <link
            href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css"
            rel="stylesheet"
    />
<!--     // Google Fonts-->
<!--    <link-->
<!--            href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap"-->
<!--            rel="stylesheet"-->
<!--    />-->
<!--     MDB-->
<!--    <link-->
<!--            href="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/6.4.2/mdb.min.css"-->
<!--            rel="stylesheet"-->
<!--    />-->

<script src="admin/js/jquery2.0.3.min.js"></script>
<script src="admin/js/raphael-min.js"></script>
<script src="admin/js/morris.js"></script>

</head>
<body>
<section id="container">
<!--header start-->
<header class="header fixed-top clearfix">
<!--logo start-->
<div class="brand">
    <a href="admin.jsp" class="logo">
        ADMIN
    </a>
    <div class="sidebar-toggle-box">
        <div class="fa fa-bars"></div>
    </div>
</div>
<!--logo end-->

<div class="top-nav clearfix">
    <!--search & user info start-->
    <ul class="nav pull-right top-menu">

        <!-- user login dropdown start-->
        <li class="dropdown">
            <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                <img alt="" src="admin/images/3.png">
                <span class="username">admin</span>
                <b class="caret"></b>
            </a>
            <ul class="dropdown-menu extended logout">

                <li><a href="login.jsp"><i class="fa fa-key"></i> Log Out</a></li>
            </ul>
        </li>
        <!-- user login dropdown end -->

    </ul>
    <!--search & user info end-->
</div>
</header>
<!--header end-->
<!--sidebar start-->
<aside>
    <div id="sidebar" class="nav-collapse">
        <!-- sidebar menu start-->
        <div class="leftside-navigation">
            <ul class="sidebar-menu" id="nav-accordion">
                <li>
                    <a class="active" href="admin.jsp">
                        <i class="fa fa-list-alt"></i>
                        <span>Quản lí sản phẩm</span>
                    </a>
                </li>

                <li class="sub-menu">
                    <a href="order.jsp">
                        <i class="fa fa-book"></i>
                        <span>Quản lí đơn hàng</span>
                    </a>

                </li>
                <li>
                    <a href="user.jsp">
                        <i class="fa fa-user"></i>
                        <span>Quản lí khách hàng</span>
                    </a>
                </li>

                <li class="sub-menu">
                    <a href="bank.jsp">
                        <i class="fa fa-tasks"></i>
                        <span>Quản lý hệ thống thanh toán</span>
                    </a>

                </li>


                </li>
                <li class="sub-menu">
                    <a href="statistical.jsp">
                        <i class=" fa fa-bar-chart-o"></i>
                        <span>Thống kê và báo cáo</span>
                    </a>

                </li>
                <li class="sub-menu">
                    <a href="customerContact.jsp">
                        <i class="fa fa-comment"></i>
                        <span>Quản lý đánh giá và hỗ trợ</span>
                    </a>

                </li>

                <li>
                    <a href="index.jsp">
                        <i class="fa fa-home"></i>
                        <span>Trang chủ</span>
                    </a>
                </li>
            </ul>            </div>
        <!-- sidebar menu end-->
    </div>
</aside>
<!--sidebar end-->
<!--main content start-->
<section id="main-content">
	<section class="wrapper">
		<!-- //market-->
            <div class="market-updates">
                <div class="col-md-3 market-update-gd">
                    <div class="market-update-block clr-block-2">
                        <div class="col-md-4 market-update-right">
                            <i class="fa fa-eye"> </i>
                        </div>
                         <div class="col-md-8 market-update-left">
                         <h4>Người xem </h4>
                        <h3>13,500</h3>
                        <p>Hãy đến với chúng tôi !</p>
                      </div>
                      <div class="clearfix"> </div>
                    </div>
                </div>
                <div class="col-md-3 market-update-gd">
                    <div class="market-update-block clr-block-1">
                        <div class="col-md-4 market-update-right">
                            <i class="fa fa-users" ></i>
                        </div>
                        <div class="col-md-8 market-update-left">
                        <h4>Khách hàng</h4>
                            <h3>1,250</h3>
                            <p>Thật tuyệt vời !</p>
                        </div>
                      <div class="clearfix"> </div>
                    </div>
                </div>
                <div class="col-md-3 market-update-gd">
                    <div class="market-update-block clr-block-3">
                        <div class="col-md-4 market-update-right">
                            <i class="fa fa-usd"></i>
                        </div>
                        <div class="col-md-8 market-update-left">
                            <h4>Tour đã giảm giá</h4>
                            <h3>199</h3>
                            <p>Giá cả hợp lí !</p>
                        </div>
                      <div class="clearfix"> </div>
                    </div>
                </div>
                <div class="col-md-3 market-update-gd">
                    <div class="market-update-block clr-block-4">
                        <div class="col-md-4 market-update-right">
                            <i class="fa fa-shopping-cart" aria-hidden="true"></i>
                        </div>
                        <div class="col-md-8 market-update-left">
                            <h4>Tour đã bán</h4>
                            <h3>1,500</h3>
                            <p>Tuyệt vời Việt Nam !</p>
                        </div>
                      <div class="clearfix"> </div>
                    </div>
                </div>
               <div class="clearfix"> </div>
            </div>


</section>

    <!--packages start-->
    <section style="margin-top: -125px" id="pack" class="packages">
        <div class="container">
            <div class="gallary-header text-center">
                <h1>
                    Quản lí sản phẩm
                </h1>
                <p style="margin-top: 20px">
                    Các tour được chắt chiu chọn lọc kĩ lưỡng đem cho khách hàng sự hài lòng và tin tưởng.
                </p>
            </div><!--/.gallery-header-->
            <div style="margin-top: 20px" class="packages-content" id="item-container">
                <div class="row">
                    <div class="col-md-3 col-sm-6" id="1">
                        <div class="single-package-item">
                            <img class="packageImage" src="assets/images/item/1.jpg" alt="package-place"
                                 style="cursor: pointer">
                            <div class="single-package-item-txt">
                                <h3>Cần Thơ - Châu Đốc<span class="pull-right" style=";font-size: 15px;">3,000,000 - 4,000,000đ</span>
                                </h3>
                                <div class="packages-para">
                                    <p>
											<span>
												<i class="fa fa-clock-o"></i> 3 ngày 2 đêm
											</span>
                                    </p>
                                    <p>
											<span>
												<i class="fa fa-location-arrow"></i> Cần Thơ - Châu Đốc - Miếu Bà Chúa Xứ
											</span>
                                    </p>
                                    <p>
											<span>
												<i class="fa-solid fa-calendar-days"></i> Hàng Ngày
											</span>
                                    </p>
                                </div><!--/.packages-para-->
                                <div  style="display: flex;margin-top: 35px" class="about-btn">
                                    <button style="background:rgba(255,204,0,0.64);border:none;color: black;width: 150px;padding-right: 15px" class="about-view packages-btn">
                                        Chỉnh sửa
                                    </button>
                                    <button style="background:rgba(0,255,13,0.62);border:none;color: black" class="about-view packages-btn">
                                       Lưu
                                    </button>
                                    <button style="background:rgba(255,0,38,0.68);border:none;color: black" class="about-view packages-btn">
                                        Xóa
                                    </button>
                                </div><!--/.about-btn-->
                            </div><!--/.single-package-item-txt-->
                        </div><!--/.single-package-item-->

                    </div><!--/.col-->

                    <div class="col-md-3 col-sm-6" id="2">
                        <div class="single-package-item">
                            <img style="cursor: pointer" class="packageImage" src="assets/images/item/2.jpg"
                                 alt="package-place">
                            <div class="single-package-item-txt">
                                <h3>Phú Quốc<span class="pull-right" style="font-size: 15px;">4,000,000 - 6,000,000đ</span>
                                </h3>
                                <div class="packages-para">
                                    <p>
											<span>
												<i class="fa fa-clock-o"></i> 4 ngày 3 đêm
											</span>
                                    </p>
                                    <p>
											<span>
												<i class="fa fa-location-arrow"></i> Thành phố Hồ Chí Minh - Phú Quốc
											</span>
                                    </p>
                                    <p>
											<span>
												<i class="fa-solid fa-calendar-days"></i> Hàng Ngày
											</span>
                                    </p>
                                </div><!--/.packages-para-->
                                <div  style="display: flex;margin-top: 35px" class="about-btn">
                                    <button style="background:rgba(255,204,0,0.64);border:none;color: black;width: 150px;padding-right: 15px" class="about-view packages-btn">
                                        Chỉnh sửa
                                    </button>
                                    <button style="background:rgba(0,255,13,0.62);border:none;color: black" class="about-view packages-btn">
                                        Lưu
                                    </button>
                                    <button style="background:rgba(255,0,38,0.68);border:none;color: black" class="about-view packages-btn">
                                        Xóa
                                    </button>
                                </div><!--/.about-btn-->
                            </div><!--/.single-package-item-txt-->
                        </div><!--/.single-package-item-->

                    </div><!--/.col-->

                    <div class="col-md-3 col-sm-6" id="3">
                        <div class="single-package-item">
                            <img style="cursor: pointer" class="packageImage" src="assets/images/item/3.jpg"
                                 alt="package-place">
                            <div class="single-package-item-txt">
                                <h3>Cần Thơ - Cồn Sơn-Cồn Ấu<span class="pull-right"
                                                                  style="font-size: 15px;">3,000,000 - 4,000,000đ</span>
                                </h3>
                                <div class="packages-para">
                                    <p>
											<span>
												<i class="fa fa-clock-o"></i> 3 ngày 2 đêm
											</span>
                                    </p>
                                    <p>
											<span>
												<i class="fa fa-location-arrow"></i> Cần Thơ - KDL Cồn Sơn - Cồn Ấu
											</span>
                                    </p>
                                    <p>
											<span>
												<i class="fa-solid fa-calendar-days"></i> Hàng Ngày
											</span>
                                    </p>
                                </div><!--/.packages-para-->
                                <div  style="display: flex;" class="about-btn">
                                    <button style="background:rgba(255,204,0,0.64);border:none;color: black;width: 150px;padding-right: 15px" class="about-view packages-btn">
                                        Chỉnh sửa
                                    </button>
                                    <button style="background:rgba(0,255,13,0.62);border:none;color: black" class="about-view packages-btn">
                                        Lưu
                                    </button>
                                    <button style="background:rgba(255,0,38,0.68);border:none;color: black" class="about-view packages-btn">
                                        Xóa
                                    </button>
                                </div><!--/.about-btn-->
                            </div><!--/.single-package-item-txt-->
                        </div><!--/.single-package-item-->

                    </div><!--/.col-->

                    <div class="col-md-3 col-sm-6" id="4">
                        <div class="single-package-item">
                            <img style="cursor: pointer" class="packageImage" src="assets/images/item/4.jpg"
                                 alt="package-place">
                            <div class="single-package-item-txt">
                                <h3>Mỹ Tho - Bến Tre<span class="pull-right" style="font-size: 15px;">2,000,000 - 3,000,000đ</span>
                                </h3>
                                <div class="packages-para">
                                    <p>
											<span>
												<i class="fa fa-clock-o"></i> 4 ngày 3 đêm
											</span>
                                    </p>
                                    <p>
											<span>
												<i class="fa fa-location-arrow"></i> Tp Hồ Chí Minh - Mỹ Tho - Bến Tre
											</span>
                                    </p>
                                    <p>
											<span>
												<i class="fa-solid fa-calendar-days"></i> Hàng Ngày
											</span>
                                    </p>
                                </div><!--/.packages-para-->
                                <div  style="display: flex;margin-top: 35px" class="about-btn">
                                    <button style="background:rgba(255,204,0,0.64);border:none;color: black;width: 150px;padding-right: 15px" class="about-view packages-btn">
                                        Chỉnh sửa
                                    </button>
                                    <button style="background:rgba(0,255,13,0.62);border:none;color: black" class="about-view packages-btn">
                                        Lưu
                                    </button>
                                    <button style="background:rgba(255,0,38,0.68);border:none;color: black" class="about-view packages-btn">
                                        Xóa
                                    </button>
                                </div><!--/.about-btn-->
                            </div><!--/.single-package-item-txt-->
                        </div><!--/.single-package-item-->

                    </div><!--/.col-->

                    <div class="col-md-3 col-sm-6" id="5">
                        <div class="single-package-item">
                            <img style="cursor: pointer" class="packageImage" src="assets/images/item/5.jpg"
                                 alt="package-place">
                            <div class="single-package-item-txt">
                                <h3>Củ Chi - Địa đạo<span class="pull-right" style="font-size: 15px;">1,000,000 - 2,000,000đ</span>
                                </h3>
                                <div class="packages-para">
                                    <p>
											<span>
												<i class="fa fa-clock-o"></i> 4 ngày 3 đêm
											</span>
                                    </p>
                                    <p>
											<span>
												<i class="fa fa-location-arrow"></i> Tp Hồ Chí Minh - Củ Chi - Địa đạo Củ Chi
											</span>
                                    </p>
                                    <p>
											<span>
												<i class="fa-solid fa-calendar-days"></i> Hàng Ngày
											</span>
                                    </p>
                                </div><!--/.packages-para-->
                                <div  style="display: flex;" class="about-btn">
                                    <button style="background:rgba(255,204,0,0.64);border:none;color: black;width: 150px;padding-right: 15px" class="about-view packages-btn">
                                        Chỉnh sửa
                                    </button>
                                    <button style="background:rgba(0,255,13,0.62);border:none;color: black" class="about-view packages-btn">
                                        Lưu
                                    </button>
                                    <button style="background:rgba(255,0,38,0.68);border:none;color: black" class="about-view packages-btn">
                                        Xóa
                                    </button>
                                </div><!--/.about-btn-->
                            </div><!--/.single-package-item-txt-->
                        </div><!--/.single-package-item-->

                    </div><!--/.col-->

                    <div class="col-md-3 col-sm-6" id="6">
                        <div class="single-package-item">
                            <img style="cursor: pointer" class="packageImage" src="assets/images/item/6.webp"
                                 alt="package-place">
                            <div class="single-package-item-txt">
                                <h3>Tây Ninh - Núi Bà Đen<span class="pull-right"
                                                               style="font-size: 15px;">1,500,000 - 2,500,000đ</span>
                                </h3>
                                <div class="packages-para">
                                    <p>
											<span>
												<i class="fa fa-clock-o"></i> 4 ngày 3 đêm
											</span>
                                    </p>
                                    <p>
											<span>
												<i class="fa fa-location-arrow"></i> Tp Hồ Chí Minh - Tây Ninh - Núi Bà Đen
											</span>
                                    </p>
                                    <p>
											<span>
												<i class="fa-solid fa-calendar-days"></i> Hàng Ngày
											</span>
                                    </p>
                                </div><!--/.packages-para-->
                                <div  style="display: flex;" class="about-btn">
                                    <button style="background:rgba(255,204,0,0.64);border:none;color: black;width: 150px;padding-right: 15px" class="about-view packages-btn">
                                        Chỉnh sửa
                                    </button>
                                    <button style="background:rgba(0,255,13,0.62);border:none;color: black" class="about-view packages-btn">
                                        Lưu
                                    </button>
                                    <button style="background:rgba(255,0,38,0.68);border:none;color: black" class="about-view packages-btn">
                                        Xóa
                                    </button>
                                </div><!--/.about-btn-->
                            </div><!--/.single-package-item-txt-->
                        </div><!--/.single-package-item-->

                    </div><!--/.col-->

                    <div class="col-md-3 col-sm-6" id="7">
                        <div class="single-package-item">
                            <img src="assets/images/item/7.jpg" alt="package-place">
                            <div class="single-package-item-txt">
                                <h3>Đồng Tháp - Mộc Hóa<span class="pull-right" style="font-size: 15px;">3,000,000 - 5,000,000đ</span>
                                </h3>
                                <div class="packages-para">
                                    <p>
											<span>
												<i class="fa fa-clock-o"></i> 4 ngày 3 đêm
											</span>
                                    </p>
                                    <p>
											<span>
												<i class="fa fa-location-arrow"></i> Tp Hồ Chí Minh - Đồng Tháp - Mộc Hóa
											</span>
                                    </p>
                                    <p>
											<span>
												<i class="fa-solid fa-calendar-days"></i> Hàng Ngày
											</span>
                                    </p>
                                </div><!--/.packages-para-->
                                <div  style="display: flex;" class="about-btn">
                                    <button style="background:rgba(255,204,0,0.64);border:none;color: black;width: 150px;padding-right: 15px" class="about-view packages-btn">
                                        Chỉnh sửa
                                    </button>
                                    <button style="background:rgba(0,255,13,0.62);border:none;color: black" class="about-view packages-btn">
                                        Lưu
                                    </button>
                                    <button style="background:rgba(255,0,38,0.68);border:none;color: black" class="about-view packages-btn">
                                        Xóa
                                    </button>
                                </div><!--/.about-btn-->
                            </div><!--/.single-package-item-txt-->
                        </div><!--/.single-package-item-->

                    </div><!--/.col-->

                    <div class="col-md-3 col-sm-6" id="8">
                        <div class="single-package-item">
                            <img src="assets/images/item/8.png" alt="package-place">
                            <div class="single-package-item-txt">
                                <h3>Long An - Bến Lức<span class="pull-right" style="font-size: 15px;">2,000,000 - 3,000,000đ</span>
                                </h3>
                                <div class="packages-para">
                                    <p>
											<span>
												<i class="fa fa-clock-o"></i> 4 ngày 3 đêm
											</span>
                                    </p>
                                    <p>
											<span>
												<i class="fa fa-location-arrow"></i> Tp Hồ Chí Minh - Long An - Bến Lức
											</span>
                                    </p>
                                    <p>
											<span>
												<i class="fa-solid fa-calendar-days"></i> Hàng Ngày
											</span>
                                    </p>
                                </div><!--/.packages-para-->
                                <div  style="display: flex;" class="about-btn">
                                    <button style="background:rgba(255,204,0,0.64);border:none;color: black;width: 150px;padding-right: 15px" class="about-view packages-btn">
                                        Chỉnh sửa
                                    </button>
                                    <button style="background:rgba(0,255,13,0.62);border:none;color: black" class="about-view packages-btn">
                                        Lưu
                                    </button>
                                    <button style="background:rgba(255,0,38,0.68);border:none;color: black" class="about-view packages-btn">
                                        Xóa
                                    </button>
                                </div><!--/.about-btn-->
                            </div><!--/.single-package-item-txt-->
                        </div><!--/.single-package-item-->

                    </div><!--/.col-->

                    <div class="col-md-3 col-sm-6" id="9">
                        <div style="height: 520px" class="single-package-item">
                            <img src="assets/images/item/9.jpg" alt="package-place">
                            <div style="margin-top: 25px" class="single-package-item-txt">
                                <h3>Tiền Giang - Cai Lậy<span class="pull-right" style="font-size: 15px;">2,500,000 - 4,000,000đ</span>
                                </h3>
                                <div class="packages-para">
                                    <p>
											<span>
												<i class="fa fa-clock-o"></i> 4 ngày 3 đêm
											</span>
                                    </p>
                                    <p>
											<span>
												<i class="fa fa-location-arrow"></i> Tp Hồ Chí Minh - Tiền Giang - Cai Lậy
											</span>
                                    </p>
                                    <p>
											<span>
												<i class="fa-solid fa-calendar-days"></i> Hàng Ngày
											</span>
                                    </p>
                                </div><!--/.packages-para-->
                                <div  style="display: flex;margin-top: 30px" class="about-btn">
                                    <button style="background:rgba(255,204,0,0.64);border:none;color: black;width: 150px;padding-right: 15px" class="about-view packages-btn">
                                        Chỉnh sửa
                                    </button>
                                    <button style="background:rgba(0,255,13,0.62);border:none;color: black" class="about-view packages-btn">
                                        Lưu
                                    </button>
                                    <button style="background:rgba(255,0,38,0.68);border:none;color: black" class="about-view packages-btn">
                                        Xóa
                                    </button>
                                </div><!--/.about-btn-->
                            </div><!--/.single-package-item-txt-->
                        </div><!--/.single-package-item-->

                    </div><!--/.col-->

                    <div class="col-md-3 col-sm-6" id="10">
                        <div style="height: 520px" class="single-package-item">
                            <img src="assets/images/item/10.webp" alt="package-place">
                            <div style="margin-top: 25px" class="single-package-item-txt">
                                <h3>Bình Dương - Suối Tiên<span class="pull-right"
                                                                style="font-size: 15px;">1,500,000 - 2,500,000đ</span>
                                </h3>
                                <div class="packages-para">
                                    <p>
											<span>
												<i class="fa fa-clock-o"></i> 4 ngày 3 đêm
											</span>
                                    </p>
                                    <p>
											<span>
												<i class="fa fa-location-arrow"></i> Tp Hồ Chí Minh - Bình Dương - Suối Tiên
											</span>
                                    </p>
                                    <p>
											<span>
												<i class="fa-solid fa-calendar-days"></i> Hàng Ngày
											</span>
                                    </p>
                                </div><!--/.packages-para-->
                                <div   style="display: flex;margin-top: 30px" class="about-btn">
                                    <button style="background:rgba(255,204,0,0.64);border:none;color: black;width: 150px;padding-right: 15px" class="about-view packages-btn">
                                        Chỉnh sửa
                                    </button>
                                    <button style="background:rgba(0,255,13,0.62);border:none;color: black" class="about-view packages-btn">
                                        Lưu
                                    </button>
                                    <button style="background:rgba(255,0,38,0.68);border:none;color: black" class="about-view packages-btn">
                                        Xóa
                                    </button>
                                </div><!--/.about-btn-->
                            </div><!--/.single-package-item-txt-->
                        </div><!--/.single-package-item-->

                    </div><!--/.col-->

                    <div  class="col-md-3 col-sm-6" id="11">
                        <div style="height: 520px" class="single-package-item">
                            <img src="assets/images/item/11.jpg" alt="package-place">
                            <div class="single-package-item-txt">
                                <h3>Bình Phước - Thác Ma Thiên Lân<span class="pull-right"
                                                                        style="font-size: 15px;">2,000,000 - 3,000,000đ</span>
                                </h3>
                                <div class="packages-para">
                                    <p>
											<span>
												<i class="fa fa-clock-o"></i> 3 ngày 2 đêm
											</span>
                                    </p>
                                    <p>
											<span>
												<i class="fa fa-location-arrow"></i> Tp Hồ Chí Minh - Bình Phước - Thác Ma Thiên Lân
											</span>
                                    </p>
                                    <p>
											<span>
												<i class="fa-solid fa-calendar-days"></i> Hàng Ngày
											</span>
                                    </p>
                                </div><!--/.packages-para-->
                                <div  style="display: flex;" class="about-btn">
                                    <button style="background:rgba(255,204,0,0.64);border:none;color: black;width: 150px;padding-right: 15px" class="about-view packages-btn">
                                        Chỉnh sửa
                                    </button>
                                    <button style="background:rgba(0,255,13,0.62);border:none;color: black" class="about-view packages-btn">
                                        Lưu
                                    </button>
                                    <button style="background:rgba(255,0,38,0.68);border:none;color: black" class="about-view packages-btn">
                                        Xóa
                                    </button>
                                </div><!--/.about-btn-->
                            </div><!--/.single-package-item-txt-->
                        </div><!--/.single-package-item-->
                    </div><!--/.col-->

                    <div class="col-md-3 col-sm-6" id="12">
                        <div style="height: 520px" class="single-package-item">
                            <img src="assets/images/item/12.webp" alt="package-place">
                            <div class="single-package-item-txt">
                                <h3>Đồng Nai - Khu du lịch Bửu Long<span class="pull-right"
                                                                         style="font-size: 15px;">2,500,000 - 4,500,000đ</span>
                                </h3>
                                <div class="packages-para">
                                    <p>
											<span>
												<i class="fa fa-clock-o"></i> 3 ngày 2 đêm
											</span>
                                    </p>
                                    <p>
											<span>
												<i class="fa fa-location-arrow"></i> Tp Hồ Chí Minh - Đồng Nai - Khu du lịch Bửu Long
											</span>
                                    </p>
                                    <p>
											<span>
												<i class="fa-solid fa-calendar-days"></i> Hàng Ngày
											</span>
                                    </p>
                                </div><!--/.packages-para-->
                                <div  style="display: flex;" class="about-btn">
                                    <button style="background:rgba(255,204,0,0.64);border:none;color: black;width: 150px;padding-right: 15px" class="about-view packages-btn">
                                        Chỉnh sửa
                                    </button>
                                    <button style="background:rgba(0,255,13,0.62);border:none;color: black" class="about-view packages-btn">
                                        Lưu
                                    </button>
                                    <button style="background:rgba(255,0,38,0.68);border:none;color: black" class="about-view packages-btn">
                                        Xóa
                                    </button>
                                </div><!--/.about-btn-->
                            </div><!--/.single-package-item-txt-->
                        </div><!--/.single-package-item-->

                    </div><!--/.col-->

                    <div class="col-md-3 col-sm-6" id="13">
                        <div class="single-package-item">
                            <img src="assets/images/item/13.jpg" alt="package-place">
                            <div class="single-package-item-txt">
                                <h3>Vũng Tàu - Hồ Tràm<span class="pull-right" style="font-size: 15px;">3,000,000 - 4,500,000đ</span>
                                </h3>
                                <div class="packages-para">
                                    <p>
											<span>
												<i class="fa fa-clock-o"></i> 3 ngày 2 đêm
											</span>
                                    </p>
                                    <p>
											<span>
												<i class="fa fa-location-arrow"></i> Tp Hồ Chí Minh - Bà Rịa - Vũng Tàu - Hồ Tràm
											</span>
                                    </p>
                                    <p>
											<span>
												<i class="fa-solid fa-calendar-days"></i> Hàng Ngày
											</span>
                                    </p>
                                </div><!--/.packages-para-->
                                <div  style="display: flex;" class="about-btn">
                                    <button style="background:rgba(255,204,0,0.64);border:none;color: black;width: 150px;padding-right: 15px" class="about-view packages-btn">
                                        Chỉnh sửa
                                    </button>
                                    <button style="background:rgba(0,255,13,0.62);border:none;color: black" class="about-view packages-btn">
                                        Lưu
                                    </button>
                                    <button style="background:rgba(255,0,38,0.68);border:none;color: black" class="about-view packages-btn">
                                        Xóa
                                    </button>
                                </div><!--/.about-btn-->
                            </div><!--/.single-package-item-txt-->
                        </div><!--/.single-package-item-->

                    </div><!--/.col-->

                    <div class="col-md-3 col-sm-6" id="14">
                        <div class="single-package-item">
                            <img src="assets/images/item/14.jpeg" alt="package-place">
                            <div class="single-package-item-txt">
                                <h3>Tp Hồ Chí Minh - Vũng Tàu<span class="pull-right"
                                                                   style="margin-top: 18px;;font-size: 15px;">2,000,000 - 3,000,000đ</span>
                                </h3>
                                <div class="packages-para">
                                    <p>
											<span>
												<i class="fa fa-clock-o"></i> 2 ngày 1 đêm
											</span>
                                    </p>
                                    <p>
											<span>
												<i class="fa fa-location-arrow"></i> Thành phố Hồ Chí Minh - Vũng Tàu
											</span>
                                    </p>
                                    <p>
											<span>
												<i class="fa-solid fa-calendar-days"></i> Hàng Ngày
											</span>
                                    </p>
                                </div><!--/.packages-para-->
                                <div  style="display: flex;" class="about-btn">
                                    <button style="background:rgba(255,204,0,0.64);border:none;color: black;width: 150px;padding-right: 15px" class="about-view packages-btn">
                                        Chỉnh sửa
                                    </button>
                                    <button style="background:rgba(0,255,13,0.62);border:none;color: black" class="about-view packages-btn">
                                        Lưu
                                    </button>
                                    <button style="background:rgba(255,0,38,0.68);border:none;color: black" class="about-view packages-btn">
                                        Xóa
                                    </button>
                                </div><!--/.about-btn-->
                            </div><!--/.single-package-item-txt-->
                        </div><!--/.single-package-item-->

                    </div><!--/.col-->

                    <div class="col-md-3 col-sm-6" id="15">
                        <div class="single-package-item">
                            <img src="assets/images/item/15.jpg" alt="package-place">
                            <div class="single-package-item-txt">
                                <h3>Tp Hồ Chí Minh - Côn Đảo<span class="pull-right"
                                                                  style="margin-top:20px;font-size: 15px;">6,000,000 - 7,000,000đ</span>
                                </h3>
                                <div class="packages-para">
                                    <p>
											<span>
												<i class="fa fa-clock-o"></i> 3 ngày 2 đêm
											</span>
                                    </p>
                                    <p>
											<span>
												<i class="fa fa-location-arrow"></i> Thành phố Hồ Chí Minh - Côn Đảo
											</span>
                                    </p>
                                    <p>
											<span>
												<i class="fa-solid fa-calendar-days"></i> Hàng Ngày
											</span>
                                    </p>
                                </div><!--/.packages-para-->
                                <div  style="display: flex;" class="about-btn">
                                    <button style="background:rgba(255,204,0,0.64);border:none;color: black;width: 150px;padding-right: 15px" class="about-view packages-btn">
                                        Chỉnh sửa
                                    </button>
                                    <button style="background:rgba(0,255,13,0.62);border:none;color: black" class="about-view packages-btn">
                                        Lưu
                                    </button>
                                    <button style="background:rgba(255,0,38,0.68);border:none;color: black" class="about-view packages-btn">
                                        Xóa
                                    </button>
                                </div><!--/.about-btn-->
                            </div><!--/.single-package-item-txt-->
                        </div><!--/.single-package-item-->

                    </div><!--/.col-->

                    <div class="col-md-3 col-sm-6" id="16">
                        <div class="single-package-item">
                            <img src="assets/images/item/16.jpg" alt="package-place">
                            <div class="single-package-item-txt">
                                <h3>Đồng Nai - Nam Cát Tiên<span class="pull-right"
                                                                 style="font-size: 15px;margin-top: 25px">3,000,000 - 5,000,000đ</span>
                                </h3>
                                <div class="packages-para">
                                    <p>
											<span>
												<i class="fa fa-clock-o"></i> 2 ngày 1 đêm
											</span>
                                    </p>
                                    <p>
											<span>
												<i class="fa fa-location-arrow"></i> Tp Hồ Chí Minh - Nam Cát Tiên
											</span>
                                    </p>
                                    <p>
											<span>
												<i class="fa-solid fa-calendar-days"></i> Hàng Ngày
											</span>
                                    </p>
                                </div><!--/.packages-para-->
                                <div  style="display: flex;" class="about-btn">
                                    <button style="background:rgba(255,204,0,0.64);border:none;color: black;width: 150px;padding-right: 15px" class="about-view packages-btn">
                                        Chỉnh sửa
                                    </button>
                                    <button style="background:rgba(0,255,13,0.62);border:none;color: black" class="about-view packages-btn">
                                        Lưu
                                    </button>
                                    <button style="background:rgba(255,0,38,0.68);border:none;color: black" class="about-view packages-btn">
                                        Xóa
                                    </button>
                                </div><!--/.about-btn-->
                            </div><!--/.single-package-item-txt-->
                        </div><!--/.single-package-item-->

                    </div><!--/.col-->























                    <!--			End Mb 141-210			-->

                </div><!--/.row-->

            </div>
        </div>
    </section>
    <!--/.packages-->
    <!--packages end-->


 <!-- footer -->
		  <div class="footer">
			<div class="wthree-copyright">
                <p>&copy; 2023-2024 <a href="https://github.com/MinhThinhrine/Do_An_Web">Nhóm 18</a>. All Right Reserved.</p>
            </div>
		  </div>
  <!-- / footer -->
</section>
<!--main content end-->
</section>
<script src="admin/js/bootstrap.js"></script>
<script src="admin/js/jquery.dcjqaccordion.2.7.js"></script>
<script src="admin/js/scripts.js"></script>
<script src="admin/js/jquery.slimscroll.js"></script>
<script src="admin/js/jquery.nicescroll.js"></script>
<!--[if lte IE 8]><script language="javascript" type="text/javascript" src="admin/js/flot-chart/excanvas.min.js"></script><![endif]-->
<script src="admin/js/jquery.scrollTo.js"></script>
<!-- morris JavaScript -->


</body>
</html>