
<%@ page import="vn.edu.hcmuaf.bean.Tour" %>

<%@ page import="java.util.List" %>
<!doctype html>

<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@include file="common/tablib.jsp" %>
<%--<% List<Tour> data = (List<Tour>) request.getAttribute("data");%>--%>

<html class="no-js" lang="vi">

<%--head--%>
<%@include file="common/head.jsp" %>
<title>TourNest</title>
<%--End head--%>
<body>
<!--[if lte IE 9]>
<p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="https://browsehappy.com/">upgrade
    your browser</a> to improve your experience and security.</p>
<![endif]-->

<!-- main-menu Start -->
<%@include file="common/header.jsp" %>
<!-- main-menu End -->


<!--about-us start -->
<section id="home" class="about-us">
    <div class="container">
        <div class="about-us-content">
            <div class="row">
                <div class="col-sm-12">
                    <div class="single-about-us">
                        <div class="about-us-txt">
                            <h2>
                                Khám phá vẻ đẹp của Việt Nam chúng ta

                            </h2>
                            <div class="about-btn">
                                <button class="about-view">
                                    <a href="#pack" style="width: 200px; padding: 20px;height: 60px;">Khám phá ngay</a>
                                </button>
                            </div><!--/.about-btn-->
                        </div><!--/.about-us-txt-->
                    </div><!--/.single-about-us-->
                </div><!--/.col-->
                <div class="col-sm-0">
                    <div class="single-about-us">

                    </div><!--/.single-about-us-->
                </div><!--/.col-->
            </div><!--/.row-->
        </div><!--/.about-us-content-->
    </div><!--/.container-->

</section><!--/.about-us-->
<!--about-us end -->

<!--travel-box start-->
<section class="travel-box">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="single-travel-boxes">
                    <div id="desc-tabs" class="desc-tabs">

                        <ul class="nav nav-tabs" role="tablist">

                            <li role="presentation" class="active">
                                <a href="#tours" aria-controls="tours" role="tab" data-toggle="tab">
                                    <i class="fa fa-map-marker"></i>
                                    tours
                                </a>
                            </li>
                        </ul>

                        <!-- Tab panes -->
                        <form action="SearchController" method="post"> <!-- form search-->
                            <div class="tab-content">

                                <div role="tabpanel" class="tab-pane active fade in" id="tours">
                                    <div class="tab-para">

                                        <div class="row">
                                            <div class="col-lg-6 col-md-4 col-sm-12">
                                                <div class="single-tab-select-box">

                                                    <h2>Điểm đi</h2>

                                                    <div class="travel-select-icon">
                                                        <select class="form-control" name="dxp">
                                                            <option value="">Chọn địa điểm xuất phát</option>
                                                            <!-- Nam -->
                                                            <option name="dxp" value="Tp Hồ Chí Minh">Tp Hồ Chí Minh
                                                            </option>
                                                            <option name="dxp" value="Hà Nội">Hà Nội</option>
                                                            <option disabled value="nam"><-- Nam --></option>

                                                            <option name="dxp" value="An Giang">An Giang</option>
                                                            <option name="dxp" value="Bạc Liêu">Bạc Liêu</option>
                                                            <option name="dxp" value="Bến Tre">Bến Tre</option>
                                                            <option name="dxp" value="Bình Định">Bình Định</option>
                                                            <option name="dxp" value="Bình Phước">Bình Phước</option>
                                                            <option name="dxp" value="Bình Thuận">Bình Thuận</option>
                                                            <option name="dxp" value="Cà Mau">Cà Mau</option>
                                                            <option name="dxp" value="Cần Thơ">Cần Thơ</option>
                                                            <!-- Các tỉnh khác ở Nam -->

                                                            <!-- Trung -->
                                                            <option disabled value="trung"><-- Trung --></option>

                                                            <option name="dxp" value="Đà Nẵng">Đà Nẵng</option>
                                                            <option name="dxp" value="Hà Tĩnh">Hà Tĩnh</option>
                                                            <option name="dxp" value="Nghệ An">Nghệ An</option>
                                                            <option name="dxp" value="Quảng Bình">Quảng Bình</option>
                                                            <option name="dxp" value="Quảng Nam">Quảng Nam</option>
                                                            <option name="dxp" value="Quảng Ngãi">Quảng Ngãi</option>
                                                            <option name="dxp" value="Quảng Trị">Quảng Trị</option>
                                                            <option name="dxp" value="Thanh Hóa">Thanh Hóa</option>
                                                            <!-- Các tỉnh khác ở Trung -->

                                                            <!-- Bắc -->
                                                            <option disabled value="bac"><-- Bắc --></option>

                                                            <option name="dxp" value="Bắc Giang">Bắc Giang</option>
                                                            <option name="dxp" value="Bắc Kạn">Bắc Kạn</option>
                                                            <option name="dxp" value="Cao Bằng">Cao Bằng</option>
                                                            <option name="dxp" value="Hà Giang">Hà Giang</option>
                                                            <option name="dxp" value="Lai Châu">Lai Châu</option>
                                                            <option name="dxp" value="Lạng Sơn">Lạng Sơn</option>
                                                            <option name="dxp" value="Nam Định">Nam Định</option>
                                                            <option name="dxp" value="Phú Thọ">Phú Thọ</option>
                                                            <option name="dxp" value="Quảng Ninh">Quảng Ninh</option>
                                                            <option name="dxp" value="Thái Bình">Thái Bình</option>
                                                            <option name="dxp" value="Thái Nguyên">Thái Nguyên</option>
                                                            <option name="dxp" value="Tuyên Quang">Tuyên Quang</option>
                                                            <option name="dxp" value="Yên Bái">Yên Bái</option>
                                                        </select><!-- /.select-->

                                                    </div><!-- /.travel-select-icon -->
                                                    <h2>Điểm đến</h2>
                                                    <div class="travel-select-icon">
                                                        <select class="form-control" name="diemden">
                                                            <option value="">Chọn điểm đến</option>
                                                            <!-- Nam -->
                                                            <option name="diemden" value="Tp Hồ Chí Minh">Tp Hồ Chí
                                                                Minh
                                                            </option>
                                                            <option name="diemden" value="Hà Nội">Hà Nội</option>
                                                            <option disabled value="nam"><-- Nam --></option>

                                                            <option name="diemden" value="An Giang">An Giang</option>
                                                            <option name="diemden" value="Bạc Liêu">Bạc Liêu</option>
                                                            <option name="diemden" value="Bến Tre">Bến Tre</option>
                                                            <option name="diemden" value="Bình Định">Bình Định</option>
                                                            <option name="diemden" value="Bình Phước">Bình Phước
                                                            </option>
                                                            <option name="diemden" value="Bình Thuận">Bình Thuận
                                                            </option>
                                                            <option name="diemden" value="Cà Mau">Cà Mau</option>
                                                            <option name="diemden" value="Cần Thơ">Cần Thơ</option>
                                                            <option name="diemden" value="Đồng Nai">Đồng Nai</option>
                                                            <option name="diemden" value="Đồng Tháp">Đồng Tháp</option>
                                                            <option name="diemden" value="Hậu Giang">Hậu Giang</option>
                                                            <option name="diemden" value="Kiên Giang">Kiên Giang
                                                            </option>
                                                            <option name="diemden" value="Long An">Long An</option>
                                                            <option name="diemden" value="Sóc Trăng">Sóc Trăng</option>
                                                            <option name="diemden" value="Tây Ninh">Tây Ninh</option>
                                                            <option name="diemden" value="Trà Vinh">Trà Vinh</option>
                                                            <option name="diemden" value="Vĩnh Long">Vĩnh Long</option>
                                                            <option name="diemden" value="Vĩnh Phúc">Vĩnh Phúc</option>
                                                            <option name="diemden" value="Vũng Tàu">Vũng Tàu</option>
                                                            <!-- Trung -->
                                                            <option disabled name="diemden" value="trung"><-- Trung
                                                                -->
                                                            </option>

                                                            <option name="diemden" value="Đà Nẵng">Đà Nẵng</option>
                                                            <option name="diemden" value="Hà Tĩnh">Hà Tĩnh</option>
                                                            <option name="diemden" value="Nghệ An">Nghệ An</option>
                                                            <option name="diemden" value="Quảng Bình">Quảng Bình
                                                            </option>
                                                            <option name="diemden" value="Quảng Nam">Quảng Nam</option>
                                                            <option name="diemden" value="Quảng Ngãi">Quảng Ngãi
                                                            </option>
                                                            <option name="diemden" value="Quảng Trị">Quảng Trị</option>
                                                            <option name="diemden" value="Thanh Hóa">Thanh Hóa</option>
                                                            <!-- Bắc -->
                                                            <option disabled value="bac"><-- Bắc --></option>

                                                            <option name="diemden" value="Bắc Giang">Bắc Giang</option>
                                                            <option name="diemden" value="Bắc Kạn">Bắc Kạn</option>
                                                            <option name="diemden" value="Cao Bằng">Cao Bằng</option>
                                                            <option name="diemden" value="Hà Giang">Hà Giang</option>
                                                            <option name="diemden" value="Lai Châu">Lai Châu</option>
                                                            <option name="diemden" value="Lạng Sơn">Lạng Sơn</option>
                                                            <option name="diemden" value="Nam Định">Nam Định</option>
                                                            <option name="diemden" value="Phú Thọ">Phú Thọ</option>
                                                            <option name="diemden" value="Quảng Ninh">Quảng Ninh
                                                            </option>
                                                            <option name="diemden" value="Thái Bình">Thái Bình</option>
                                                            <option name="diemden" value="Thái Nguyên">Thái Nguyên
                                                            </option>
                                                            <option name="diemden" value="Tuyên Quang">Tuyên Quang
                                                            </option>
                                                            <option name="diemden" value="Yên Bái">Yên Bái</option>
                                                        </select><!-- /.select -->

                                                    </div><!-- /.travel-select-icon -->

                                                </div><!--/.single-tab-select-box-->
                                            </div><!--/.col-->

                                            <!--												<div class="col-lg-2 col-md-3 col-sm-4">-->
                                            <!--													<div class="single-tab-select-box">-->
                                            <!--														<h2>Ngày Đi</h2>-->
                                            <!--														<div class="travel-check-icon">-->
                                            <!--															<form action="#">-->
                                            <!--																<input type="text" name="check_in" class="form-control" data-toggle="datepicker" placeholder="19/10/2023">-->
                                            <!--															</form>-->
                                            <!--														</div>&lt;!&ndash; /.travel-check-icon &ndash;&gt;-->
                                            <!--													</div>&lt;!&ndash;/.single-tab-select-box&ndash;&gt;-->
                                            <!--												</div>&lt;!&ndash;/.col&ndash;&gt;-->

                                            <!--												<div class="col-lg-2 col-md-3 col-sm-4">-->
                                            <!--													<div class="single-tab-select-box">-->
                                            <!--														<h2>Ngày Về</h2>-->
                                            <!--														<div class="travel-check-icon">-->
                                            <!--															<form action="#">-->
                                            <!--																<input type="text" name="check_out" class="form-control"  data-toggle="datepicker" placeholder="20/10/2023">-->
                                            <!--															</form>-->
                                            <!--														</div>&lt;!&ndash; /.travel-check-icon &ndash;&gt;-->
                                            <!--													</div>&lt;!&ndash;/.single-tab-select-box&ndash;&gt;-->
                                            <!--												</div>&lt;!&ndash;/.col&ndash;&gt;-->

                                            <div class="col-lg-6 col-md-1 col-sm-4" style="display: none">
                                                <div class="single-tab-select-box">
                                                    <h2>Số Ngày Đi</h2>
                                                    <div class="travel-select-icon">
                                                        <select class="form-control ">
                                                            <option value="null">2 ngày 1 đêm</option>
                                                            <option value="2">2 ngày 1 đêm</option><!-- /.option-->
                                                            <option value="3">3 ngày 2 đêm</option><!-- /.option-->
                                                            <option value="4">4 ngày 3 đêm</option><!-- /.option-->
                                                            <option value="5">5 ngày 4 đêm</option><!-- /.option-->
                                                            <option value="6">6 ngày trở lên</option><!-- /.option-->

                                                        </select><!-- /.select-->
                                                    </div><!-- /.travel-select-icon -->
                                                </div><!--/.single-tab-select-box-->
                                            </div><!--/.col-->

                                            <!--												<div class="col-lg-2 col-md-1 col-sm-4">-->
                                            <!--													<div class="single-tab-select-box">-->
                                            <!--														<h2>Thành Viên</h2>-->
                                            <!--														<div class="travel-select-icon">-->
                                            <!--															<select class="form-control ">-->

                                            <!--															  	<option value="default">1</option>&lt;!&ndash; /.option&ndash;&gt;-->

                                            <!--															  	<option value="2">2</option>&lt;!&ndash; /.option&ndash;&gt;-->
                                            <!--															  	<option value="2">3 - 5</option>&lt;!&ndash; /.option&ndash;&gt;-->
                                            <!--															  	<option value="2">5 - 7</option>&lt;!&ndash; /.option&ndash;&gt;-->
                                            <!--															  	<option value="2">7 - 10</option>&lt;!&ndash; /.option&ndash;&gt;-->
                                            <!--															  	<option value="4">10 - 12</option>&lt;!&ndash; /.option&ndash;&gt;-->
                                            <!--															  	<option value="8">12 ++</option>&lt;!&ndash; /.option&ndash;&gt;-->

                                            <!--															</select>&lt;!&ndash; /.select&ndash;&gt;-->
                                            <!--														</div>&lt;!&ndash; /.travel-select-icon &ndash;&gt;-->
                                            <!--													</div>&lt;!&ndash;/.single-tab-select-box&ndash;&gt;-->
                                            <!--												</div>&lt;!&ndash;/.col&ndash;&gt;-->

                                        </div><!--/.row-->

                                        <div class="row">
                                            <div class="col-sm-5">
                                                <!--													<div class="travel-budget">-->
                                                <!--														<div class="row">-->
                                                <!--															<div class="col-md-3 col-sm-4">-->
                                                <!--																<h3>Ngân Sách: </h3>-->
                                                <!--															</div>&lt;!&ndash;/.col&ndash;&gt;-->
                                                <!--															<div class="co-md-9 col-sm-8">-->
                                                <!--																<div class="travel-filter">-->
                                                <!--																	<div class="info_widget">-->
                                                <!--																		<div class="price_filter">-->

                                                <!--																			<div id="slider-range"></div>&lt;!&ndash;/.slider-range&ndash;&gt;-->

                                                <!--																			<div class="price_slider_amount">-->
                                                <!--																				<input type="text" id="amount" name="price"  placeholder="Add Your Price" />-->
                                                <!--																			</div>&lt;!&ndash;/.price_slider_amount&ndash;&gt;-->
                                                <!--																		</div>&lt;!&ndash;/.price-filter&ndash;&gt;-->
                                                <!--																	</div>&lt;!&ndash;/.info_widget&ndash;&gt;-->
                                                <!--																</div>&lt;!&ndash;/.travel-filter&ndash;&gt;-->
                                                <!--															</div>&lt;!&ndash;/.col&ndash;&gt;-->
                                                <!--														</div>&lt;!&ndash;/.row&ndash;&gt;-->
                                                <!--													</div>&lt;!&ndash;/.travel-budget&ndash;&gt;-->
                                            </div>
                                            <!--/.col-->
                                            <div class="clo-sm-7">
                                                <div class="about-btn travel-mrt-0 pull-right">
                                                    <button id="searchButton" type="submit"
                                                            class="about-view travel-btn">
                                                        <a
                                                                style="text-decoration: none; text-transform: uppercase;width: 180px; padding: 20px;height: 60px;">tìm
                                                            kiếm
                                                            <i class="fa-solid fa-magnifying-glass"></i>
                                                        </a>
                                                    </button>
                                                    <!--/.travel-btn-->
                                                </div><!--/.about-btn-->
                                            </div><!--/.col-->

                                        </div><!--/.row-->

                                    </div><!--/.tab-para-->

                                </div><!--/.tabpannel-->

                            </div><!--/.tab content-->
                        </form><!--/.form search-->
                    </div><!--/.desc-tabs-->
                </div><!--/.single-travel-box-->
            </div><!--/.col-->
        </div><!--/.row-->
    </div><!--/.container-->

</section><!--/.travel-box-->
<!--travel-box end-->
<!--special-offer start-->
<section id="spo" class="special-offer" style="margin-top: 50px">
    <div class="container">
        <div class="special-offer-content">
            <div class="row">
                <div class="col-sm-8">
                    <div class="single-special-offer">
                        <div class="single-special-offer-txt">
                            <h2>Đà Lạt</h2>
                            <div class="packages-review special-offer-review">
                                <p>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star-half"></i>
                                    <span>1344 review</span>
                                </p>
                            </div><!--/.packages-review-->
                            <div class="packages-para special-offer-para">
                                <p>
											<span>
												<i class="fa-regular fa-calendar"></i> 4 ngày 3 đêm
											</span>
                                    <br>
                                    <br>
                                    <span>
												<i class="fa-solid fa-users"></i> 2 - 3 người
											</span>
                                    <br>
                                    <br>
                                    <span>
												<i class="fa-solid fa-check"></i>  lượt đánh giá 5 sao
											</span>
                                </p>

                                <p>
											<span>
												<i class="fa-solid fa-house"></i> HomeStay 3 star
											</span>
                                    <br>
                                    <br>
                                    <span>
												<i class="fa-solid fa-bus"></i> Xe du lịch khứ hồi
											</span>
                                </p>

                                <p class="offer-para">
                                    Một thành phố mộng mơ,với vẻ đẹp lãng mạn không kém phần mơ mộng.<br>
                                    Hành trình: Đà Lạt - Đồi Chè Cầu Đất - Cafe Mê Linh - Nông Trại Cún Puppy -
                                    Fairytale Land. </p>
                            </div><!--/.packages-para-->
                            <div class="offer-btn-group">
                                <!--/.about-btn-->
                                <div class="about-btn">
                                    <button class="about-view packages-btn">
                                        Đặt Tour
                                    </button>
                                </div><!--/.about-btn-->
                            </div><!--/.offer-btn-group-->
                        </div><!--/.single-special-offer-txt-->
                    </div><!--/.single-special-offer-->
                </div><!--/.col-->
                <div class="col-sm-4">
                    <div class="single-special-offer">
                        <div class="single-special-offer-bg">
                            <img src="assets/images/offer/offer-shape.png" alt="offer-shape">
                        </div><!--/.single-special-offer-bg-->
                        <div class="single-special-shape-txt">
                            <h3>Ưu đãi đặc biệt</h3>
                            <h4>Giảm giá <br><span>31%</span></h4>
                            <p><span>4,400,000 đ</span>
                                <br>
                                <span style="text-decoration:red line-through">Giá gốc <br> 6,299,000 đ</span></p>
                        </div><!--/.single-special-shape-txt-->
                    </div><!--/.single-special-offer-->
                </div><!--/.col-->
            </div><!--/.row-->
        </div><!--/.special-offer-content-->
    </div><!--/.container-->

</section><!--/.special-offer end-->
<!--special-offer end-->
<!--galley start-->
<section id="gallery" class="gallery">
    <div class="container">
        <div class="gallery-details">
            <div class="gallary-header text-center">
                <h2>
                    Các Tour Hấp Dẫn
                </h2>
                <p>
                    Chúng tôi đề xuất cho bạn các gợi ý dựa trên đánh giá khách hàng và trải nghiệm người dùng.
                </p>
            </div><!--/.gallery-header-->
            <div class="gallery-box">
                <div class="gallery-content">
                    <div class="filtr-container">
                        <div class="row">

                            <div class="col-md-6">
                                <div class="filtr-item" style="height: 310px;width: 555px;">
                                    <img src="assets/images/item/2.jpg" alt="portfolio image"/>
                                    <div class="item-title">
                                        <a href="detail.jsp">
                                            Phú Quốc
                                        </a>
                                        <p><span>tours hằng ngày</span><br><span>7 địa điểm</span></p>
                                    </div><!-- /.item-title -->
                                </div><!-- /.filtr-item -->
                            </div><!-- /.col -->

                            <div class="col-md-6">
                                <div class="filtr-item" style="height: 310px;width: 555px;">
                                    <img src="assets/images/item/193.png" alt="portfolio image"/>
                                    <div class="item-title">
                                        <a href="detail.jsp">
                                            Sapa
                                        </a>
                                        <p><span>tours hằng ngày</span><br><span>4 địa điểm</span></p>
                                    </div> <!-- /.item-title-->
                                </div><!-- /.filtr-item -->
                            </div><!-- /.col -->

                            <div class="col-md-4">
                                <div class="filtr-item">
                                    <img src="assets/images/gallary/hoi-an-tren-cao-1%20(1).jpg" alt="portfolio image"/>
                                    <div class="item-title">
                                        <a href="detail.jsp">
                                            Hội An
                                        </a>
                                        <p>Tour Hàng Ngày </br>
                                            <span>10 Địa Điểm</span></p>
                                    </div><!-- /.item-title -->
                                </div><!-- /.filtr-item -->
                            </div><!-- /.col -->

                            <div class="col-md-4">
                                <div class="filtr-item" style="height: 310px;width: 360px;">
                                    <img src="assets/images/item/70.jpg" alt="portfolio image"/>
                                    <div class="item-title">
                                        <a href="detail.jsp" style="width: 215px">
                                            Chợ Nổi Cái Răng
                                        </a>
                                        <p><span>tours hằng ngày</span><br><span>7 địa điểm</span></p>
                                    </div> <!-- /.item-title-->
                                </div><!-- /.filtr-item -->
                            </div><!-- /.col -->

                            <div class="col-md-4">
                                <div class="filtr-item" style="height: 310px;width: 360px;">
                                    <img src="assets/images/item/204.png" alt="portfolio image"/>
                                    <div class="item-title">
                                        <a href="detail.jsp">
                                            Hạ Long
                                        </a>
                                        <p><span>tours hằng ngày</span><br><span>12 địa điểm</span></p>
                                    </div> <!-- /.item-title-->
                                </div><!-- /.filtr-item -->
                            </div><!-- /.col -->

                            <div class="col-md-8">
                                <div class="filtr-item" style="height: 310px;width: 750px;">
                                    <img src="assets/images/item/14.jpg" alt="portfolio image"/>
                                    <div class="item-title">
                                        <a href="detail.jsp">
                                            Vũng Tàu
                                        </a>
                                        <p><span>tours hằng ngày</span><br><span>6 địa điểm </span></p>
                                    </div> <!-- /.item-title-->
                                </div><!-- /.filtr-item -->
                            </div><!-- /.col -->

                        </div><!-- /.row -->

                    </div><!-- /.filtr-container-->
                </div><!-- /.gallery-content -->
            </div><!--/.galley-box-->
        </div><!--/.gallery-details-->
    </div><!--/.container-->

</section><!--/.gallery-->
<!--gallery end-->


<!--packages start-->
<section id="pack" class="packages">
    <div class="container">
        <div class="gallary-header text-center">
            <h2>
                Tour của chúng tôi
            </h2>
            <p>
                Các tour được chắt chiu chọn lọc kĩ lưỡng đem cho khách hàng sự hài lòng và tin tưởng.
            </p>
        </div><!--/.gallery-header-->
        <div class="packages-content" id="item-container">
            <div class="row">
            
<%--                        <%--%>
<%--                            List<Tour> t = (List<Tour>) request.getAttribute("data");--%>
<%--                            for (Tour tour : t) {--%>
<%--                        %>--%>
<%--                <p><%=tour.getName()%></p>--%>
<%--    <%--%>
<%--    }--%>
<%--                            %>--%>

            </div><!--/.row-->
            <div class="pagination">
                <nav class="pagination-container">
                    <div class="pagination">
                        <a class="pagination-newer" href="#pack" onclick="previousPage()">
                            <i class="fa-solid fa-chevron-left"></i></a>
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
							</span>
                        <a class="pagination-older" href="#pack" onclick="nextPage()">
                            <i class="fa-solid fa-chevron-right"></i>
                        </a>
                    </div>
                </nav>
            </div>

        </div>
    </div>
</section>
<!--/.packages-->
<!--packages end-->


<!--blog start-->
<section id="blog" class="blog">
    <div class="container">
        <div class="blog-details">
            <div class="gallary-header text-center">
                <h2>
                    Tin tức gần đây
                </h2>
                <p>
                    Các dữ liệu mới nhất được thu thập về tình hình du lịch.
                </p>
            </div>
            <!--/.gallery-header-->
            <div class="blog-content">
                <div class="row">

                    <div class="col-sm-4 col-md-4">
                        <div class="thumbnail">
                            <h2>tin mới <span> tháng 11 - 2023</span></h2>
                            <div class="thumbnail-img">
                                <img src="assets/images/blog/b1.jpg" alt="blog-img" style="height:220px">
                                <div class="thumbnail-img-overlay"></div><!--/.thumbnail-img-overlay-->

                            </div><!--/.thumbnail-img-->

                            <div class="caption">
                                <div class="blog-txt">
                                    <h3>
                                        <a href="https://www.gso.gov.vn/du-lieu-va-so-lieu-thong-ke/2023/08/doanh-thu-dich-vu-tang-manh-trong-mua-cao-diem-du-lich-he-2023/"
                                           style="color: #00d8fe!important;" target="_blank">
                                            Lượng khách du lịch trong nước tăng mạnh.
                                        </a>
                                    </h3>
                                    <p>
                                        Theo số liệu thống kê của Tổng cục Du lịch, lượng khách du lịch nội địa trong
                                        tháng 11 năm 2023 đạt 7,5 triệu lượt, tăng 20% so với cùng kỳ năm trước.
                                        <br>
                                        Trong đó, khách nội địa đến các điểm du lịch biển, đảo tăng mạnh, đặc biệt là
                                        Nha Trang, Phú Quốc, Đà Nẵng,...
                                    </p>
                                    <a href="#">Read More</a>
                                </div><!--/.blog-txt-->
                            </div><!--/.caption-->
                        </div><!--/.thumbnail-->

                    </div><!--/.col-->

                    <div class="col-sm-4 col-md-4">
                        <div class="thumbnail">
                            <h2>tin mới <span> tháng 11 - 2023</span></h2>
                            <div class="thumbnail-img">
                                <img src="assets/images/item/70.jpg" alt="blog-img" style="height:220px; width: 110%;">
                                <div class="thumbnail-img-overlay"></div><!--/.thumbnail-img-overlay-->

                            </div><!--/.thumbnail-img-->
                            <div class="caption">
                                <div class="blog-txt">
                                    <h3>
                                        <a href="https://vinpearl.com/vi/tron-bo-kinh-nghiem-du-lich-mien-tay-nam-bo-day-du-nhat"
                                           style="color: #00d8fe!important;" target="_blank">
                                            Các tour du lịch miền Tây Nam Bộ được nhiều du khách lựa chọn.
                                        </a>
                                    </h3>
                                    <p>
                                        Là một trong những điểm đến du lịch nổi tiếng của Việt Nam,
                                        với những cảnh đẹp sông nước, những món ăn ngon đặc sản và con người thân thiện.
                                        <br>
                                        Du lịch miền Tây được nhiều du khách lựa chọn, đặc biệt là các tour khám phá
                                        rừng tràm Trà Sư, Chợ nổi Cái Răng,...
                                    </p>
                                    <a href="#">Read More</a>
                                </div><!--/.blog-txt-->
                            </div><!--/.caption-->
                        </div><!--/.thumbnail-->

                    </div><!--/.col-->

                    <div class="col-sm-4 col-md-4">
                        <div class="thumbnail">
                            <h2>tin mới <span> tháng 11 - 2023</span></h2>
                            <div class="thumbnail-img">
                                <img src="assets/images/item/14.jpg" alt="blog-img" style="height:220px; width: 110%;">
                                <div class="thumbnail-img-overlay"></div><!--/.thumbnail-img-overlay-->

                            </div><!--/.thumbnail-img-->
                            <div class="caption">
                                <div class="blog-txt">
                                    <h3>
                                        <a href="https://vinpearl.com/vi/du-lich-bien-diem-danh-10-bai-bien-dep-bac-nhat-viet-nam"
                                           style="color: #00d8fe!important;" target="_blank">
                                            Các tour du lịch nghỉ dưỡng biển được ưu tiên.
                                        </a></h3>
                                    <p>
                                        Với thời tiết mát mẻ, dễ chịu, các tour du lịch nghỉ dưỡng biển được nhiều du
                                        khách ưu tiên lựa chọn trong tháng 11 năm 2023.
                                        <br>
                                        Các điểm du lịch biển nổi tiếng như Nha Trang, Vũng Tàu, Phú Quốc, Đà Nẵng,...
                                        <br>đều có lượng khách tăng cao trong tháng này.
                                    </p>
                                    <a href="#">Read More</a>
                                </div><!--/.blog-txt-->
                            </div><!--/.caption-->
                        </div><!--/.thumbnail-->

                    </div><!--/.col-->

                </div><!--/.row-->
            </div><!--/.blog-content-->
        </div><!--/.blog-details-->
    </div><!--/.container-->

</section><!--/.blog-->
<!--blog end-->


<!-- testemonial Start -->
<section id="feedback" class="testemonial">
    <div class="container">

        <div class="gallary-header text-center">
            <h2>Đánh giá khách hàng</h2>
            <p>
                Đánh giá của khách hàng là tiêu chí quan trọng nhất để cải thiện dịch vụ.
            </p>

        </div><!--/.gallery-header-->

        <div class="owl-carousel owl-theme" id="testemonial-carousel">

            <div class="home1-testm item">
                <div class="home1-testm-single text-center">
                    <div class="home1-testm-img">
                        <img src="assets/images/client/testimonial1.jpg" alt="img"/>
                    </div><!--/.home1-testm-img-->
                    <div class="home1-testm-txt">
								<span class="icon section-icon">
									<i class="fa fa-quote-left" aria-hidden="true"></i>
								</span>
                        <p>
                            Tôi rất hài lòng với chuyến tour này và sẽ khuyên bạn bè và người thân tham gia.
                            Tôi muốn cảm ơn đội ngũ tổ chức tour đã tạo ra một kỷ niệm đáng nhớ.
                        </p>
                        <h3>
                            <a href="#" style="color: #00d8fe!important;">
                                Chị Kiều
                            </a>
                        </h3>
                        <h4>Mỹ Tho, Tiền Giang</h4>
                    </div><!--/.home1-testm-txt-->
                </div><!--/.home1-testm-single-->

            </div><!--/.item-->

            <div class="home1-testm item">
                <div class="home1-testm-single text-center">
                    <div class="home1-testm-img">
                        <img src="assets/images/client/testimonial2.jpg" alt="img"/>
                    </div><!--/.home1-testm-img-->
                    <div class="home1-testm-txt">
								<span class="icon section-icon">
									<i class="fa fa-quote-left" aria-hidden="true"></i>
								</span>
                        <p>
                            Tôi không thể hài lòng hơn với chuyến tour này. Từ đầu đến cuối, mọi thứ đều vượt quá mong
                            đợi của tôi.
                            Tôi đã có một trải nghiệm tuyệt vời và không thể quên.
                        </p>
                        <h3>
                            <a href="#" style="color: #00d8fe!important;">
                                Nguyễn Thanh Hằng
                            </a>
                        </h3>
                        <h4>Hà Nội, Việt Nam</h4>
                    </div><!--/.home1-testm-txt-->
                </div><!--/.home1-testm-single-->

            </div><!--/.item-->

            <div class="home1-testm item">
                <div class="home1-testm-single text-center">
                    <div class="home1-testm-img">
                        <img src="assets/images/client/7.jpg" alt="img"/>
                    </div><!--/.home1-testm-img-->
                    <div class="home1-testm-txt">
								<span class="icon section-icon">
									<i class="fa fa-quote-left" aria-hidden="true"></i>
								</span>
                        <p>
                            Hướng dẫn viên của chúng tôi là người tuyệt vời. Anh ấy không chỉ am hiểu về địa điểm mà còn
                            rất nhiệt tình và cởi mở.
                            Tôi rất thích chuyến đi.
                        </p>
                        <h3>
                            <a href="#" style="color: #00d8fe!important;">
                                Trần Minh Tuấn
                            </a>
                        </h3>
                        <h4>Đà Lạt, Việt Nam</h4>
                    </div><!--/.home1-testm-txt-->
                </div><!--/.home1-testm-single-->

            </div><!--/.item-->

            <div class="home1-testm item">
                <div class="home1-testm-single text-center">
                    <div class="home1-testm-img">
                        <img src="assets/images/client/8.png" alt="img"/>
                    </div><!--/.home1-testm-img-->
                    <div class="home1-testm-txt">
								<span class="icon section-icon">
									<i class="fa fa-quote-left" aria-hidden="true"></i>
								</span>
                        <p>
                            Các địa điểm du lịch mà chúng tôi đã thăm đều rất độc đáo và đẹp mắt.
                            Tôi đã có cơ hội khám phá những di sản văn hóa và thiên nhiên tuyệt vời.
                        </p>
                        <h3>
                            <a href="#" style="color: #00d8fe!important;">
                                Lê Thị Mai Anh
                            </a>
                        </h3>
                        <h4>Phú Quốc, Việt Nam</h4>
                    </div><!--/.home1-testm-txt-->
                </div><!--/.home1-testm-single-->

            </div><!--/.item-->

            <div class="home1-testm item">
                <div class="home1-testm-single text-center">
                    <div class="home1-testm-img">
                        <img src="assets/images/client/5.png" alt="img"/>
                    </div><!--/.home1-testm-img-->
                    <div class="home1-testm-txt">
								<span class="icon section-icon">
									<i class="fa fa-quote-left" aria-hidden="true"></i>
								</span>
                        <p>
                            Chất lượng dịch vụ trong chuyến tour này rất ấn tượng. Từ các nhà hàng đến chỗ ở và phương
                            tiện di chuyển,
                            mọi thứ đều rất chuyên nghiệp và đáng tin cậy.
                        </p>
                        <h3>
                            <a href="#" style="color: #00d8fe!important;">
                                Hoàng Văn Trường
                            </a>
                        </h3>
                        <h4>Nha Trang, Việt Nam</h4>
                    </div><!--/.home1-testm-txt-->
                </div><!--/.home1-testm-single-->

            </div><!--/.item-->

            <div class="home1-testm item">
                <div class="home1-testm-single text-center">
                    <div class="home1-testm-img">
                        <img src="assets/images/client/3.png" alt="img"/>
                    </div><!--/.home1-testm-img-->
                    <div class="home1-testm-txt">
								<span class="icon section-icon">
									<i class="fa fa-quote-left" aria-hidden="true"></i>
								</span>
                        <p>
                            Mặc dù chuyến tour tổ chức tốt. Tuy nhiên,
                            việc cung cấp thêm thông tin chi tiết về các hoạt động tùy chọn sẽ giúp khách hàng lựa chọn
                            tốt hơn.
                        </p>
                        <h3>
                            <a href="#" style="color: #00d8fe!important;">
                                Ngô Thị Hương Lan
                            </a>
                        </h3>
                        <h4>Huế, Việt Nam</h4>
                    </div><!--/.home1-testm-txt-->
                </div><!--/.home1-testm-single-->

            </div><!--/.item-->

            <div class="home1-testm item">
                <div class="home1-testm-single text-center">
                    <div class="home1-testm-img">
                        <img src="assets/images/client/testimonial1.jpg" alt="img"/>
                    </div><!--/.home1-testm-img-->
                    <div class="home1-testm-txt">
								<span class="icon section-icon">
									<i class="fa fa-quote-left" aria-hidden="true"></i>
								</span>
                        <p>
                            Tôi rất hài lòng với cách mà công ty tổ chức tour du lịch này đã liên lạc và giao tiếp với
                            khách hàng.
                            Điều này tạo ra sự tin tưởng cho chúng tôi trong suốt chuyến đi.
                        </p>
                        <h3>
                            <a href="#" style="color: #00d8fe!important;">
                                Trần Đức Minh
                            </a>
                        </h3>
                        <h4>Sapa, Việt Nam</h4>
                    </div><!--/.home1-testm-txt-->
                </div><!--/.home1-testm-single-->

            </div><!--/.item-->

            <div class="home1-testm item">
                <div class="home1-testm-single text-center">
                    <div class="home1-testm-img">
                        <img src="assets/images/client/3.png" alt="img"/>
                    </div><!--/.home1-testm-img-->
                    <div class="home1-testm-txt">
								<span class="icon section-icon">
									<i class="fa fa-quote-left" aria-hidden="true"></i>
								</span>
                        <p>
                            Chuyến tour này mang lại cho tôi một giá trị tuyệt vời. Với mức giá mà tôi trả, tôi thực sự
                            cảm thấy hài lòng về những gì chúng tôi nhận được.
                        </p>
                        <h3>
                            <a href="#" style="color: #00d8fe!important;">
                                Phạm Thị Linh
                            </a>
                        </h3>
                        <h4> Hội An, Việt Nam</h4>
                    </div><!--/.home1-testm-txt-->
                </div><!--/.home1-testm-single-->

            </div><!--/.item-->

            <div class="home1-testm item">
                <div class="home1-testm-single text-center">
                    <div class="home1-testm-img">
                        <img src="assets/images/client/4.png" alt="img"/>
                    </div><!--/.home1-testm-img-->
                    <div class="home1-testm-txt">
								<span class="icon section-icon">
									<i class="fa fa-quote-left" aria-hidden="true"></i>
								</span>
                        <p>
                            Mọi thứ đã được sắp xếp một cách rõ ràng và thông minh.
                            Tôi không phải lo lắng về bất kỳ chi tiết nào và có thể tận hưởng một chuyến đi trọn vẹn.
                        </p>
                        <h3>
                            <a href="#" style="color: #00d8fe!important;">
                                Võ Minh Hải
                            </a>
                        </h3>
                        <h4> Đà Nẵng, Việt Nam</h4>
                    </div><!--/.home1-testm-txt-->
                </div><!--/.home1-testm-single-->

            </div><!--/.item-->

        </div><!--/.testemonial-carousel-->
    </div><!--/.container-->

</section><!--/.testimonial-->
<!-- testemonial End -->

<!--service start-->
<section id="service" class="service">
    <div class="container">

        <div class="service-counter text-center">
            <div class="gallary-header text-center" style="margin-bottom: 66px">
                <h2 style="text-transform: none">
                    Vì sao nên chọn TourNest ?
                </h2>
                <p>
                    Chúng tôi có tất cả dịch vụ bạn cần.
                </p>
            </div>
            <div class="col-md-3 col-sm-3">
                <div class="single-service-box">
                    <div class="service-img">
                        <img src="assets/images/service/icons8-map-50.png" alt="service-icon"/>
                    </div><!--/.service-img-->
                    <div class="service-content">
                        <h2>
                            <a href="#">
                                Nhiều tour hấp dẫn
                            </a>
                        </h2>
                        <p>Các điểm đến hot trong nước.</p>
                    </div><!--/.service-content-->
                </div><!--/.single-service-box-->
            </div><!--/.col-->

            <div class="col-md-3 col-sm-3">
                <div class="single-service-box">
                    <div class="service-img">
                        <img src="assets/images/service/icons8-company-50.png" alt="service-icon"/>
                    </div><!--/.service-img-->
                    <div class="service-content">
                        <h2>
                            <a href="#">
                                Đội ngũ nhân viên
                            </a>
                        </h2>
                        <p>Được đào tạo bài bản với trình độ chuyên môn cao.</p>
                    </div><!--/.service-content-->
                </div><!--/.single-service-box-->
            </div><!--/.col-->

            <div class="col-md-3 col-sm-3">
                <div class="single-service-box">
                    <div class="statistics-img">
                        <img src="assets/images/service/icons8-coin-50.png" alt="service-icon"/>
                    </div><!--/.service-img-->
                    <div class="service-content">

                        <h2>
                            <a href="#">
                                Chi phí
                            </a>
                        </h2>
                        <p>Luôn có mức giá tốt nhất với nhiều ưu đãi.</p>
                    </div><!--/.service-content-->
                </div><!--/.single-service-box-->
            </div><!--/.col-->

            <div class="col-md-3 col-sm-3">
                <div class="single-service-box">
                    <div class="statistics-img">
                        <img src="assets/images/service/icons8-service-50.png" alt="service-icon"/>
                    </div><!--/.service-img-->
                    <div class="service-content">
                        <h2>
                            <a href="#">
                                Dịch vụ
                            </a>
                        </h2>
                        <p>Đa dạng – Chất lượng – An toàn.</p>
                    </div><!--/.service-content-->
                </div><!--/.single-service-box-->
            </div><!--/.col-->

        </div><!--/.statistics-counter-->
    </div><!--/.container-->

</section><!--/.service-->
<!--service end-->

<!--subscribe start-->
<section id="subs" class="subscribe">
    <div class="container">

        <div class="service-counter text-center">
            <div class="gallary-header text-center" style="margin-bottom: 66px">
                <h2 style="text-transform: none;color: whitesmoke">
                    Hãy tận hưởng chuyến đi của bạn tại TourNest
                </h2>
                <p>
                    trải nghiệm - tin tưởng - chia sẻ - du lịch
                </p>
            </div>

        </div><!--/.statistics-counter-->

        <form>
            <div class="row">
                <div class="col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
                    <div class="custom-input-group">
                        <input class="form-control" placeholder="Gửi mail cho chúng tôi về góp ý đánh giá">
                        <button class="appsLand-btn subscribe-btn" onclick="sendMail()">Gửi mail</button>
                        <div class="clearfix"></div>
                        <i class="fa fa-envelope"></i>
                    </div>

                </div>
            </div>
        </form>
    </div><!--/.container-->

</section>
<!--subscribe end-->

<!-- footer-copyright start -->
<%@include file="common/footer.jsp"%><!-- /.footer-copyright-->
<!-- footer-copyright end -->


<script src="assets/js/jquery.js"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->

<!--modernizr.min.js-->
<script src="https://cdnjs.cloudflare.com/ajax/libs/modernizr/2.8.3/modernizr.min.js"></script>


<!--bootstrap.min.js-->
<script src="assets/js/bootstrap.min.js"></script>

<!-- bootsnav js -->
<script src="assets/js/bootsnav.js"></script>

<!-- jquery.filterizr.min.js -->
<script src="assets/js/jquery.filterizr.min.js"></script>

<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.4.1/jquery.easing.min.js"></script>

<!--jquery-ui.min.js-->
<script src="assets/js/jquery-ui.min.js"></script>

<!-- counter js -->
<script src="assets/js/jquery.counterup.min.js"></script>
<script src="assets/js/waypoints.min.js"></script>

<!--owl.carousel.js-->
<script src="assets/js/owl.carousel.min.js"></script>

<!-- jquery.sticky.js -->
<script src="assets/js/jquery.sticky.js"></script>

<!--datepicker.js-->
<script src="assets/js/datepicker.js"></script>

<!--Custom JS-->
<script src="assets/js/modify.js"></script>
<script src="assets/js/custom.js"></script>

</body>

</html>