<%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 12/4/2023
  Time: 10:30
  To change this template use File | Settings | File Templates.
--%>
<!doctype html>
<html class="no-js" lang="vi">
<%@ page contentType="text/html; charset=UTF-8" %>
<%@include file="common/tablib.jsp" %><html lang="vi">

<head>
    <meta charset="utf-8">
    <title>Thanh toán - TourNest</title>
    <link rel="stylesheet" href="assets/css/payment.css">
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script src="assets/js/payment.js"></script>
    <script src="assets/js/jquery-3.5.1.slim.min.js"></script>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto">

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">


    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

    <!--font-family-->
    <link href="https://fonts.googleapis.com/css?family=Rufina:400,700" rel="stylesheet"/>

    <link href="https://fonts.googleapis.com/css?family=Poppins:100,200,300,400,500,600,700,800,900" rel="stylesheet"/>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/sweetalert2@10.16.3/dist/sweetalert2.min.css">
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@10.16.3/dist/sweetalert2.min.js"></script>

    <%--head--%>
    <%@include file="common/head.jsp" %>
    <%--End head--%>
    <style>
        .hardCode {
            /*display: block;*/
            background-color: gold;
            display: none !important;
        }
    </style>
</head>

<body>

<main role="main">
    <div class="main-loader d-none">
        <div class="loader loader3">
            <div>
                <div>
                    <div>
                        <div>
                            <div>
                                <div></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="container">
        <div class="row">
            <ul class="breadcrumbs__wrapper d-flex align-items-center" itemscope=""
                itemtype="http://schema.org/BreadcrumbList">
            </ul>
        </div>
    </div>
    <div class="checkout">

        <!-- <section class="checkout-head">
            <div class="container">
                <div class="row">
                    <ul class="head col-12">
                        <li class="checked">1. Nhập thông tin</li>
                        <li class="checked"><i class="icon icon--arrow-right"></i></li>
                        <li class="checked">2. Thanh toán</li>
                    </ul>
                </div>
            </div>
        </section> -->


        <section class="checkout-main">
            <div class="container">
                <div class="row">
                    <div class="col-md-8 col-12 left">
                        <h2>Thanh toán</h2>
                        <div class="payments-warp">
                            <h3>Các hình thức thanh toán</h3>
                            <div class="payments">
                                <!-- tienmat -->
                                <div class="payment-item active">
                                    <div class="pm-head">
                                        <div class="pm-head-icon">
                                            <i class="fa-solid fa-money-bill"></i>
                                            <h4>Tiền mặt</h4>
                                        </div>
                                        <span class="check" id="tienmat" value="tienmat"></span>
                                    </div>
                                    <div class="pm-des">
                                        <p>

                                            <title></title>


                                        </p>
                                        <p style="text-align:justify">Quý khách vui lòng thanh toán tại bất kỳ văn
                                            phòng TourNest trên toàn quốc và các chi nhánh tại nước ngoài. Xem <a style="color: #fc3200;"
                                                                                                                  href="https://www.google.com/maps/place/TourNest/@10.87019,106.787794,17z/data=!3m1!4b1!4m6!3m5!1s0x317527fe80e4040f:0x3219b5b8719573b1!8m2!3d10.87019!4d106.787794!16s%2Fg%2F11vj2n7j70?hl=vi&entry=tts">chi tiết</a>.</p>
                                        <p>&nbsp;</p>


                                        <p></p>
                                    </div>
                                </div>
                                <!-- end tienmat -->
                                <!-- ck -->
                                <div class="payment-item">
                                    <div class="pm-head">
                                        <div class="pm-head-icon">
                                            <i class="fa-solid fa-building-columns"></i>
                                            <h4>Chuyển khoản</h4>
                                        </div>
                                        <span class="check" id="chuyenkhoan"></span>
                                    </div>
                                    <div class="pm-des">
                                        <p>


                                            <title></title>


                                        </p>
                                        <p style="text-align:justify">Quý khách sau khi thực hiện việc chuyển khoản
                                            vui lòng gửi email đến 21130549@TourNest.com&nbsp;hoặc gọi tổng
                                            đài (+84)913415015 để được xác nhận từ công ty chúng tôi.</p>
                                        <div style="text-align:justify">Tên Tài Khoản : Võ Minh Thịnh - TourNest
                                        </div>
                                        <div style="text-align:justify">Tên tài khoản viết tắt : TourNest</div>
                                        <div style="text-align:justify">Số Tài khoản : <strong>039184811</strong></div>
                                        <div style="text-align:justify">Ngân hàng : BIDV - chi nhánh đông Sài Gòn</div>


                                        <div>
                                            &nbsp;
                                        </div>

                                        <div class="qrcode">
                                            <img src="assets/images/detail/qrcode_payment.png" alt="qrcode" srcset="" style="max-width: 60%;margin-left: 55px;">
                                        </div>
                                        <p></p>
                                    </div>
                                </div>
                                <!-- end ck -->
                                <!-- zalopay -->
                                <div class="payment-item" style="max-height:500px; overflow:auto ;display: none;">
                                    <div class="pm-head">
                                        <div class="pm-head-icon">
                                            <i class="icon-ZaloPay"><span class="path1"></span><span
                                                    class="path2"></span><span class="path3"></span><span
                                                    class="path4"></span><span class="path5"></span><span
                                                    class="path6"></span><span class="path7"></span><span
                                                    class="path8"></span><span class="path9"></span></i>
                                            <h4>Thanh toán bằng ZaloPay</h4>
                                        </div>
                                        <span class="check" id="thanhtoanatm"></span>
                                    </div>
                                    <div class="pm-des">
                                        <div class="text">
                                            Chọn hình thức thanh toán:
                                        </div>
                                        <div class="row d-flex justify-content-between mb-3">
                                            <div class="col-6">
                                                <div class="form-check">
                                                    <input class="form-check-input" type="radio"
                                                           name="flexRadioDefault1" id="flexRadioDefault1" checked="">
                                                    <input type="hidden" value="qr_zalo" id="Option">
                                                    <label class="form-check-label" for="flexRadioDefault1">
                                                        <i class="icon icon--qr-code"></i> &nbsp;QRcode
                                                    </label>
                                                </div>
                                            </div>
                                            <div class="col-6">
                                                <div class="form-check">
                                                    <input class="form-check-input" type="radio"
                                                           name="flexRadioDefault1" id="flexRadioDefault2">
                                                    <input type="hidden" value="visa_zalo" id="Option">
                                                    <label class="form-check-label" for="flexRadioDefault2">
                                                        <i class="icon icon--credit-card"></i>&nbsp; Thẻ nội địa
                                                    </label>
                                                </div>
                                            </div>
                                        </div>
                                        <p>


                                            <title></title>


                                        </p>
                                        <p><strong><span style="color:#fc3400">HÌNH THỨC THANH TOÁN BẰNG THẺ ATM/
                                                        INTERNET BANKING</span></strong></p>
                                        <p style="text-align:justify">TourNest chấp nhận thanh toán bằng thẻ ATM
                                            qua cổng thanh toán ZaloPay.</p>
                                        <p style="text-align:justify">Hãy đảm bảo Quý khách đang sử dụng thẻ ATM do
                                            ngân hàng trong nước phát hành và đã được kích hoạt chức năng thanh toán
                                            trực tuyến.</p>
                                        <p style="text-align:justify">Hướng dẫn thanh toán thẻ qua cồng
                                            ZaloPay&nbsp;<a href="https://zalopay.vn/">Tại đây</a></p>


                                        <p></p>
                                    </div>
                                </div>
                                <!-- end zalo pay -->
                                <!-- momo -->
                                <div class="payment-item" style="max-height:500px; overflow:auto ;display: none;">
                                    <div class="pm-head">
                                        <div class="pm-head-icon">
                                            <i class="icon-momo"><span class="path1"></span><span
                                                    class="path2"></span><span class="path3"></span><span
                                                    class="path4"></span><span class="path5"></span></i>
                                            <h4>Thanh toán bằng Momo</h4>
                                        </div>
                                        <span class="check" id="momo"></span>
                                    </div>
                                    <div class="pm-des">
                                        <p>
                                        </p>
                                    </div>
                                </div>
                                <!-- end momo -->
                                <div class="payment-item d-none" style="max-height:500px; overflow:auto ;display: none;">
                                    <div class="pm-head">
                                        <div class="pm-head-icon">
                                            <i class="icon-MSB"><span class="path1"></span><span
                                                    class="path2"></span><span class="path3"></span><span
                                                    class="path4"></span></i>
                                            <h4 id="thanh-toan-qua-msb"> Thanh toán qua Cổng MSB</h4>
                                        </div>
                                        <span class="check" id="thanhtoanmsb"></span>
                                    </div>
                                    <div class="pm-des">
                                        <p>
                                        </p>
                                    </div>
                                </div>
                            </div>
                            <!-- end tienmat -->
                            <div class="payments">
                                <!-- thetindung -->
                                <div class="payment-item"style="max-height:500px; overflow:auto ;display: none;">
                                    <div class="pm-head">
                                        <div class="pm-head-icon">
                                            <i class="icon icon--credit-card"></i>
                                            <h4>Thẻ tín dụng</h4>
                                        </div>
                                        <span class="check" id="thetindung"></span>
                                    </div>
                                    <div class="pm-des">
                                        <div class="text">
                                            Thẻ tín dụng:
                                        </div>
                                        <div class="row d-flex justify-content-between mb-3">
                                            <div class="col-3">
                                                <div class="form-check">
                                                    <input class="form-check-input" type="radio"
                                                           name="flexRadioDefault1" id="flexRadioDefault1">
                                                    <input type="hidden" value="visa" id="Option">
                                                    <label class="form-check-label" for="flexRadioDefault1">
                                                        <img src="/Content/Theme/images/thevisa.png" alt="amex">
                                                    </label>
                                                </div>
                                            </div>
                                            <div class="col-3">
                                                <div class="form-check">
                                                    <input class="form-check-input" type="radio"
                                                           name="flexRadioDefault1" id="flexRadioDefault2">
                                                    <input type="hidden" value="mastercard" id="Option">
                                                    <label class="form-check-label" for="flexRadioDefault2">
                                                        <img src="/Content/Theme/images/master.png" alt="amex">
                                                    </label>
                                                </div>
                                            </div>
                                            <div class="col-3">
                                                <div class="form-check">
                                                    <input class="form-check-input" type="radio"
                                                           name="flexRadioDefault1" id="flexRadioDefault2">
                                                    <input type="hidden" value="jcb" id="Option">
                                                    <label class="form-check-label" for="flexRadioDefault2">
                                                        <img src="/Content/Theme/images/jcb.png" alt="amex">
                                                    </label>
                                                </div>
                                            </div>
                                            <div class="col-3">
                                                <div class="form-check">
                                                    <input class="form-check-input" type="radio"
                                                           name="flexRadioDefault1" id="flexRadioDefault2">
                                                    <input type="hidden" value="amex" id="Option">
                                                    <label class="form-check-label" for="flexRadioDefault2">
                                                        <img src="/Content/Theme/images/amex.png" alt="amex">
                                                    </label>
                                                </div>
                                            </div>
                                        </div>
                                        <p>


                                            <title></title>


                                        </p>
                                        <p><strong><span style="color:#fc3400">THANH TOÁN BẰNG THẺ TÍN DỤNG
                                                    </span></strong></p>
                                        <p style="text-align:justify">Tất cả giao dịch của Quý khách được xử lý bảo
                                            mật theo giao thức SSL tại hệ thống của <em>
                                                <strong>MasterCard</strong></em>. TourNest không lưu giữ bất kì
                                            thông tin nào về thẻ của quý khách tại hệ thống của TourNest. Do đó,
                                            quý khách có thể hoàn toàn an tâm rằng thông tin thẻ của Quý khách sẽ
                                            được bảo đảm an toàn tuyệt đối tại hệ thống của <em>
                                                <strong>MasterCard</strong></em> và Ngân hàng Ngoại Thương Việt Nam
                                            (<strong>Vietcombank</strong>).</p>
                                        <p style="text-align:justify">Hiện tại hệ thống www.travel.com.vn chấp nhận
                                            cho Quý khách thanh toán bằng một trong các loại thẻ sau:
                                            <strong>VISA</strong> (Credit hoặc Debit), <em>
                                                <strong>MasterCard</strong></em> (Credit), <strong>Diners Clup
                                                International</strong> (Credit), <strong>JCB</strong> (Credit) và
                                            <strong>American Express</strong> (Credit) của bất kỳ ngân hàng nào.</p>


                                        <p></p>
                                    </div>
                                </div>
                                <!--end thetindung -->
                                <!-- VNPAY -->
                                <div class="payment-item" >
                                    <div class="pm-head">
                                        <div class="pm-head-icon">
                                            <i class="icon icon--qr-code"></i>
                                            <h4>Chuyển khoản qua MOMO</h4>
                                        </div>
                                        <span class="check" id="vnpay"></span>
                                    </div>
                                    <p class="text-danger mt-2"></p>
                                    <div class="pm-des">
                                        <p>


                                            <title></title>


                                        </p>
                                        <div>
                                            Quý khách sau khi thực hiện việc chuyển khoản vui lòng gửi email đến  21130549@st.hcmuaf.edu.vn hoặc liên hệ chúng tôi qua số điện thoại (+84)913415015 để được xác nhận từ công ty chúng tôi.
                                        </div>
                                        <div>
                                            &nbsp;
                                        </div>
                                        <div>
                                            Tên tài khoản : Võ Minh Thịnh<br>
                                            Số tài khoản 0913415015.&nbsp;

                                        </div>
                                        <div>
                                            &nbsp;
                                        </div>

                                        <div class="qrcode">
                                            <img src="assets/images/detail/qrcode_payment.png" alt="qrcode" srcset="" style="max-width: 60%;margin-left: 55px;">
                                        </div>

                                        <p></p>
                                    </div>
                                </div>
                                <!-- end VNPAY -->
                                <!-- SP pay -->
                                <div class="payment-item" style="max-height:500px; overflow:auto ;display: none;">
                                    <div class="pm-head">
                                        <div class="pm-head-icon">
                                            <i class="icon icon-ShopeePay"><span class="path1"></span><span
                                                    class="path2"></span></i>
                                            <h4>Thanh toán bằng ShopeePay</h4>
                                        </div>
                                        <span class="check" id="shoppepay"></span>
                                    </div>
                                    <div class="pm-des">
                                        <p>
                                        </p>
                                    </div>
                                </div>
                                <!-- end SP pay -->
                                <!-- mb bank -->
                                <div class="payment-item" style="max-height:500px; overflow:auto ;display: none;">
                                    <div class="pm-head">
                                        <div class="pm-head-icon">
                                            <i class="icon-MB_icon"><span class="path1"></span><span
                                                    class="path2"></span><span class="path3"></span><span
                                                    class="path4"></span><span class="path5"></span><span
                                                    class="path6"></span><span class="path7"></span><span
                                                    class="path8"></span><span class="path9"></span><span
                                                    class="path10"></span></i>
                                            <h4>Thanh toán bằng MBBank</h4>
                                        </div>
                                        <span class="check" id="thetindung"></span>
                                    </div>
                                    <div class="pm-des">
                                        <div class="text">
                                            Chọn hình thức thanh toán:
                                        </div>
                                        <div class="row d-flex justify-content-between mb-3">
                                            <div class="col-6">
                                                <div class="form-check">
                                                    <input class="form-check-input" type="radio"
                                                           name="flexRadioDefault1" id="flexRadioDefault1" checked="">
                                                    <input type="hidden" value="MBbankQR" id="Option">
                                                    <label class="form-check-label" for="flexRadioDefault1">
                                                        <i class="icon icon--qr-code"></i> QRcode
                                                    </label>
                                                </div>
                                            </div>
                                            <div class="col-6">
                                            </div>
                                        </div>
                                        <p>
                                        </p>
                                    </div>
                                </div>
                                <!-- end MBBANk -->
                            </div>
                        </div>
                        <div class="terms">
                            <h3>Điều khoản bắt buộc khi đăng ký online</h3>
                            <div class="term-content">


                                <title></title>


                                <p style="text-align:center"><span style="color:#444444"><strong>NỘI DUNG ĐỌC, HIỂU
                                                VÀ ĐỒNG Ý TRƯỚC KHI ĐĂNG KÝ ONLINE&nbsp;CHƯƠNG TRÌNH DU LỊCH TRONG
                                                NƯỚC</strong></span></p>
                                <p style="text-align:justify"><span style="color:#444444"><strong>Tôi đã hiểu rõ và
                                                đồng ý với các nội dung như sau:</strong></span></p>
                                <p style="text-align:justify"><span style="color:#444444"><strong>I. GIÁ VÉ DU
                                                LỊCH</strong></span></p>
                                <p style="text-align:justify"><span style="color:#444444">Giá vé du lịch được tính
                                            theo tiền Đồng (Việt Nam - VNĐ). Trường hợp khách thanh toán bằng USD sẽ
                                            được quy đổi ra VNĐ theo tỉ giá của ngân hàng Đầu Tư và Phát Triển Việt Nam
                                            - Chi nhánh TP.HCM tại thời điểm thanh toán.</span></p>
                                <p style="text-align:justify"><span style="color:#444444">Giá vé chỉ bao gồm những
                                            khoản được liệt kê một cách rõ ràng trong phần “Bao gồm” trong các chương
                                            trình du lịch. TourNest không có nghĩa vụ thanh toán bất cứ chi phí nào
                                            không nằm trong phần “Bao gồm”.</span></p>
                                <p style="text-align:justify"><span style="color:#444444"><strong>II. GIÁ DÀNH CHO
                                                TRẺ EM</strong></span></p>
                                <p style="text-align:justify"><span style="color:#444444">- Trẻ em dưới 5
                                            tuổi:&nbsp; không thu phí dịch vụ, bố mẹ tự lo cho bé và thanh toán các chi
                                            phí phát sinh (đối với các dịch vụ tính phí theo chiều cao…). Hai người lớn
                                            chỉ được kèm 1 trẻ em dưới 5 tuổi, trẻ em thứ 2 sẽ đóng phí theo qui định
                                            dành cho độ tuổi từ 5 đến dưới 12 tuổi và phụ thu phòng đơn. Vé máy bay, tàu
                                            hỏa, phương tiện vận chuyển công cộng mua vé theo qui định của các đơn vị
                                            vận chuyển (nếu có)</span></p>
                                <p style="text-align:justify"><span style="color:#444444">- Trẻ em từ 5 tuổi đến
                                            dưới 12 tuổi:&nbsp; 50% giá tour người lớn đối với tuyến xe, 75% giá tour
                                            người lớn đối với tuyến có vé máy bay (không có chế độ giường riêng). Hai
                                            người lớn chỉ được kèm 1 trẻ em từ 5 - dưới 12 tuổi, em thứ hai trở lên phải
                                            mua 1 suất giường đơn.</span></p>
                                <p style="text-align:justify"><span style="color:#444444">- Trẻ em từ 12 tuổi trở
                                            lên: mua một vé như người lớn.</span></p>
                                <p style="text-align:justify"><span style="color:#444444"><strong>III. THANH
                                                TOÁN</strong></span></p>
                                <p style="text-align:justify"><span style="color:#444444">Khi thanh toán, Quý khách
                                            vui lòng cung cấp đầy đủ thông tin và đặt cọc ít nhất 50% tổng số tiền tour
                                            để giữ chỗ</span></p>
                                <p style="text-align:justify"><span style="color:#444444">Thanh toán bằng tiền mặt
                                            hoặc chuyển khoản tới tài khoản ngân hàng của TourNest.</span></p>
                                <div style="text-align:justify">
                                    <div style="background:#eeeeee; border:1px solid #cccccc; padding:5px 10px">Tên
                                        Tài Khoản : Võ Minh Thịnh – TourNest
                                    </div>
                                    <div style="background:#eeeeee; border:1px solid #cccccc; padding:5px 10px">Tên
                                        tài khoản viết tắt : TourNest
                                    </div>
                                    <div style="background:#eeeeee; border:1px solid #cccccc; padding:5px 10px">Số
                                        Tài khoản : <strong>0314000811</strong></div>
                                    <div style="background:#eeeeee; border:1px solid #cccccc; padding:5px 10px">Ngân
                                        hàng : BIDV - Chi nhánh Đông Sài Gòn
                                    </div>
                                </div>
                                <p style="text-align:justify"><span style="color:#444444">Việc thanh toán được xem
                                            là hoàn tất khi TourNest nhận được đủ tiền vé du lịch trước lúc khởi hành
                                            hoặc theo hợp đồng thỏa thuận giữa hai bên. Bất kỳ sự thanh toán chậm trễ
                                            dẫn đến việc hủy dịch vụ không thuộc trách nhiệm của TourNest.</span></p>
                                <p style="text-align:justify"><span style="color:#444444">Khách hàng có nhu cầu xuất
                                            hóa đơn, vui lòng cung cấp thông tin xuất hóa đơn ngay tại thời điểm đăng
                                            ký. TourNest có trách nhiệm xuất hóa đơn cho khách hàng trong vòng 07 ngày
                                            sau khi tour kết thúc.&nbsp;&nbsp;</span></p>
                                <p style="text-align:justify"><span style="color:#444444">Khi thực hiện việc chuyển
                                            khoản, Quý khách vui lòng ghi rõ tên họ, số điện thoại và nội dung chuyển
                                            khoản cho chương trình du lịch cụ thể đã được Quý khách chọn đăng ký.</span>
                                </p>
                                <p style="text-align:justify"><span style="color:#444444">Sau khi thực hiện việc
                                            chuyển khoản, Quý khách vui lòng gửi ủy nhiệm chi về Công ty TourNest theo
                                            địa chỉ email sales@TourNest.com và liên hệ với nhân viên phụ trách tuyến
                                            để nhận được Vé du lịch chính thức từ Công ty TourNest.</span></p>
                                <p style="text-align:justify"><span style="color:#444444">*<u>Lưu ý</u>: Quý khách
                                            vui lòng điền đầy đủ thông tin theo yêu cầu khi đăng ký tour qua mạng bán
                                            travel.com.vn và chịu trách nhiệm về tính chính xác của những thông tin đã
                                            cung cấp. TourNest sẽ sử dụng những thông tin này để cung cấp cho các đối
                                            tác dịch vụ và tiến hành các thủ tục cần thiết cho chuyến đi. Nếu có sự khác
                                            biệt giữa thông tin mà Quý khách cung cấp so với thực tế dẫn đến việc phải
                                            điều chỉnh thì Quý khách vui lòng thanh toán các khoản chi phí phát sinh
                                            (nếu có).</span></p>
                                <p style="text-align:justify"><span style="color:#444444"><strong>IV. HỦY VÉ VÀ PHÍ
                                                HỦY VÉ DU LỊCH</strong></span></p>
                                <p style="text-align:justify"><span style="color:#444444"><strong>1. Trường hợp bị
                                                hủy bỏ do TourNest:</strong></span></p>
                                <p style="text-align:justify"><span style="color:#444444">Nếu TourNest không thực
                                            hiện được chuyến du lịch, TourNest phải báo ngay cho khách hàng biết và
                                            thanh toán lại cho khách hàng toàn bộ số tiền khách hàng đã đóng trong vòng
                                            3 ngày kể từ lúc việc thông báo hủy chuyến du lịch bằng tiền mặt hoặc chuyển
                                            khoản.</span></p>
                                <p style="text-align:justify"><span style="color:#444444"><strong>2. Trường hợp bị
                                                hủy bỏ do khách hàng:</strong></span></p>
                                <p style="text-align:justify"><span style="color:#444444">Sau khi đóng tiền, nếu Quý
                                            khách muốn chuyển/hủy tour xin vui lòng mang Vé Du Lịch đến văn phòng đăng
                                            ký tour để làm thủ tục chuyển/hủy tour và chịu mất phí theo quy định của
                                            TourNest. Không giải quyết các trường hợp liên hệ chuyển/hủy tour qua điện
                                            thoại.</span></p>
                                <p style="text-align:justify"><span style="color:#444444"><strong>• Đối với ngày
                                                thường:</strong></span></p>
                                <div style="text-align:justify"><span style="color:#444444">- Được chuyển sang các
                                            tuyến du lịch khác trước ngày khởi&nbsp; hành 20 ngày : Không mất chi
                                            phí.&nbsp;</span></div>
                                <p style="text-align:justify"><span style="color:#444444">- Hủy hoặc chuyển sang các
                                            chuyến du lịch khác ngay sau khi đăng ký đến từ 15 - 19 ngày trước ngày khởi
                                            hành: Chi phí chuyển/hủy tour: 50% tiền cọc tour.</span></p>
                                <p style="text-align:justify"><span style="color:#444444"><strong>• Đối với ngày lễ,
                                                Tết:&nbsp; </strong></span></p>
                                <div style="text-align:justify"><span style="color:#444444">- Được chuyển sang các
                                            tuyến du lịch khác trước ngày khởi &nbsp;hành 30 ngày : Không mất chi
                                            phí.</span></div>
                                <p style="text-align:justify"><span style="color:#444444">- Hủy hoặc chuyển sang các
                                            chuyến du lịch khác ngay sau khi đăng ký đến từ 25 - 29 ngày trước ngày khởi
                                            hành: Chi phí chuyển/hủy tour: 50% tiền cọc tour.</span></p>
                                <p style="text-align:justify"><span style="color:#444444">* Các tour ngày lễ, Tết là
                                            các tour có thời gian diễn ra rơi vào một trong các ngày lễ, Tết theo quy
                                            định.</span></p>
                                <p style="text-align:justify"><span style="color:#444444">* Thời gian hủy tour được
                                            tính cho ngày làm việc, không tính Thứ 7, Chủ Nhật và các ngày lễ,
                                            Tết.</span></p>
                                <p style="text-align:justify"><span style="color:#444444">* Khách hàng hủy Vé du
                                            lịch trong thời điểm ngày thường và lễ Tết theo đúng những quy định trên,
                                            trong trường hợp khách thanh toán trực tuyến, nếu hủy Vé du lịch khách hàng
                                            sẽ chịu toàn bộ phí ngân hàng cho việc thanh toán tiền Vé du lịch. Việc hoàn
                                            trả tiền cho khách sẽ được TourNest thực hiện ngay sau khi ngân hàng thông
                                            báo tiền đã vào tài khoản của TourNest.</span></p>
                                <p style="text-align:justify"><span style="color:#444444"><strong>3. Trường hợp bất
                                                khả kháng:</strong></span></p>
                                <p style="text-align:justify"><span style="color:#444444">Nếu chương trình du lịch
                                            bị hủy bỏ hoặc thay đổi bởi một trong hai bên vì một lý do bất khả kháng
                                            (hỏa hoạn, thời tiết, tai nạn, thiên tai, chiến tranh, dịch bệnh, hoãn, dời,
                                            hủy chuyến hoặc thay đổi khác của các phương tiện vận chuyển công cộng hoặc
                                            các sự kiến bất khả kháng khác theo quy định pháp luật…), thì hai bên sẽ
                                            không chịu bất kỳ nghĩa vụ bồi hoàn các tổn thất đã xảy ra và không chịu bất
                                            kỳ trách nhiệm pháp lý nào. Tuy nhiên mỗi bên có trách nhiệm cố gắng tối đa
                                            để giúp đỡ bên bị thiệt hại nhằm giảm thiểu các tổn thất gây ra vì lý do bất
                                            khả kháng. Thời gian hoàn tiền dịch vụ do hủy tour vì trường hợp bất khả
                                            kháng sẽ được hoàn tất trong vòng 60 – 90 ngày phụ thuộc điều kiện các đối
                                            tác cung ứng dịch vụ.</span></p>
                                <p style="text-align:justify"><span style="color:#444444"><strong>4. Thay đổi lộ
                                                trình:&nbsp; </strong></span></p>
                                <p style="text-align:justify"><span style="color:#444444">Tùy theo tình hình thực
                                            tế, TourNest giữ quyền thay đổi lộ trình, sắp xếp lại thứ tự các điểm tham
                                            quan hoặc hủy bỏ chuyến đi du lịch bất cứ lúc nào mà TourNest thấy cần
                                            thiết vì sự thuận tiện hoặc an toàn cho khách hàng.</span></p>
                                <p style="text-align:justify"><span style="color:#444444"><strong>V. NHỮNG YÊU CẦU
                                                ĐẶC BIỆT TRONG CHUYẾN DU LỊCH</strong></span></p>
                                <p style="text-align:justify"><span style="color:#444444">Các yêu cầu đặc biệt của
                                            Quý khách phải được báo trước cho TourNest ngay tại thời điểm đăng ký.
                                            TourNest sẽ cố gắng đáp ứng những yêu cầu này trong khả năng của mình song
                                            sẽ không chịu trách nhiệm về bất kỳ sự từ chối cung cấp dịch vụ từ phía các
                                            nhà vận chuyển, khách sạn, nhà hàng và các nhà cung cấp dịch vụ độc lập
                                            khác.</span></p>
                                <p style="text-align:justify"><span style="color:#444444"><strong>VI. KHÁCH
                                                SẠN</strong></span></p>
                                <p style="text-align:justify"><span style="color:#444444">Khách sạn được cung cấp
                                            trên cơ sở những phòng có hai giường đơn (TWN) hoặc một giường đôi (DBL) tùy
                                            theo cơ cấu phòng của các khách sạn. Khách sạn do TourNest đặt cho các
                                            chương trình tham quan có tiêu chuẩn tương ứng với các mức giá vé mà khách
                                            chọn khi đăng ký đi du lịch. Nếu cần thiết thay đổi về bất kỳ lý do nào,
                                            khách sạn thay thế sẽ tương đương với tiêu chuẩn của khách sạn ban đầu và sẽ
                                            được báo cho du khách trước khi khởi hành. Những yêu cầu đặc biệt của khách
                                            hàng nếu thông báo trước cho TourNest sẽ được đáp ứng tùy theo khả năng
                                            cung cấp của khách sạn và khách hàng phải trả thêm tiền đối với các yêu cầu
                                            này (nếu có). TourNest có quyền không đáp ứng những yêu cầu này nếu khách
                                            sạn từ chối cung cấp dịch vụ. Thời gian nhận phòng theo qui định tại các
                                            khách sạn là sau 14:00 và phải trả phòng trước 12:00. Đối với các trường hợp
                                            khách lưu trú tại hệ thống khách sạn/Resort 5 sao (Vinpearl, FLC, Grand Ho
                                            Tram Strip…) tuân thủ theo điều kiện hủy phạt của khách sạn/Resort cho từng
                                            thời điểm.</span></p>
                                <p style="text-align:justify"><span style="color:#444444"><strong>VII. VẬN
                                                CHUYỂN</strong></span></p>
                                <p style="text-align:justify"><span style="color:#444444">Phương tiện vận chuyển tùy
                                            thuộc theo từng chương trình du lịch.</span></p>
                                <p style="text-align:justify"><span style="color:#444444">Với chương trình đi bằng
                                            xe: xe máy lạnh (4, 7, 15, 25, 35, 45 chỗ) sẽ được TourNest sắp xếp tùy
                                            theo số lượng khách từng đoàn, phục vụ suốt chương trình tham quan.</span>
                                </p>
                                <p style="text-align:justify"><span style="color:#444444">Với chương trình đi bằng
                                            xe lửa - máy bay - tàu cánh ngầm (phương tiện vận chuyển công cộng), trong
                                            một số chương trình các nhà cung cấp dịch vụ có thể thay đổi giờ khởi hành
                                            mà không báo trước, việc thay đổi này sẽ được TourNest thông báo cho khách
                                            hàng nếu thời gian cho phép.</span></p>
                                <p style="text-align:justify"><span style="color:#444444">TourNest không chịu trách
                                            nhiệm bồi hoàn và trách nhiệm pháp lý với những thiệt hại về vật chất lẫn
                                            tinh thần do việc chậm trễ, thay đổi giờ giấc khởi hành của các phương tiện
                                            vận chuyển công cộng hoặc sự chậm trễ do chính hành khách gây ra. TourNest
                                            chỉ thực hiện hành vi giúp đỡ để giảm bớt tổn thất cho hành khách.</span>
                                </p>
                                <p style="text-align:justify"><span style="color:#444444"><strong>VIII. HÀNH
                                                LÝ</strong></span></p>
                                <p style="text-align:justify"><span style="color:#444444">Hành lý gọn nhẹ, với các
                                            chương trình sử dụng dịch vụ hàng không, hành lý miễn cước sẽ do các hãng
                                            hàng không qui định. TourNest không chịu trách nhiệm về sự thất lạc, hư
                                            hỏng hành lý hoặc bất kỳ vật dụng gì của du khách trong suốt chuyến đi, du
                                            khách tự bảo quản hành lý của mình. Nếu khách hàng bị mất hay thất lạc hành
                                            lý thì TourNest sẽ giúp hành khách liên lạc và khai báo với các bộ phận
                                            liên quan truy tìm hành lý bị mất hay thất lạc. Việc bồi thường hành lý bị
                                            mất hay thất lạc sẽ theo qui định của các đơn vị cung cấp dịch vụ hoặc các
                                            đơn vị bảo hiểm (nếu có).</span></p>
                                <p style="text-align:justify"><span style="color:#444444"><strong>IX. BẢO HIỂM DU
                                                LỊCH</strong></span></p>
                                <p style="text-align:justify"><span style="color:#444444">Giá dịch vụ du lịch trọn
                                            gói đã bao gồm bảo hiểm du lịch trong nước với mức đền bù cao nhất là
                                            120.000 VNĐ/khách Việt Nam/vụ cho nhân mạng và 12.000 VNĐ/khách Việt
                                            Nam/vụ cho hành lý.</span></p>
                                <p style="text-align:justify"><span style="color:#444444">Điều kiện, điều khoản bảo
                                            hiểm: Theo quy tắc bảo hiểm khách du lịch trong nước QĐ số: 001321/2006 –
                                            BM/BHCN.</span></p>
                                <p style="text-align:justify"><span style="color:#444444"><strong>Lưu ý: </strong>Vé
                                            du lịch cùng các văn bản kèm theo (biên nhận tour, chương trình tour) được
                                            xem như là bộ Hợp đồng lữ hành có giá trị ràng buộc với các bên và được lập
                                            thành 2 bản, mỗi bên giữ một bản, có giá trị pháp lý như nhau. Do tính chất
                                            tour dành cho khách lẻ (cá nhân / nhóm gia đình) nên khách hàng (người đăng
                                            ký và người đi cùng nhóm) được coi là chấp thuận toàn bộ nội dung trong Vé
                                            du lịch và các văn bản kèm theo kể từ thời điểm đặt cọc, không phụ thuộc vào
                                            việc khách hàng có ký tên trên Vé du lịch, biên nhận tour hay chương trình
                                            tour hay không.</span></p>
                                <div style="text-align:justify"><span style="color:#444444">Trong quá trình thực
                                            hiện, nếu xảy ra tranh chấp sẽ được giải quyết trên cơ sở thương lượng trong
                                            thời hạn 30 ngày kể từ ngày một trong hai bên đưa tranh chấp ra thương
                                            lượng. Hết thời hạn này nếu tranh chấp không được giải quyết hoặc một trong
                                            hai bên không đồng ý với kết quả thương lượng thì có quyền đưa tranh chấp ra
                                            giải quyết tại Tòa án thẩm quyền.</span></div>


                                ;
                            </div>
                            <label class="checker">
                                Tôi đồng ý với các điều kiện trên
                                <input type="checkbox" id="DieuKien">
                                <span class="checkmark"></span>
                            </label>
                        </div>
                    </div>
                    <div class="col-md-4 col-12 right">
                        <div class="group-checkout">
                            <h3>Tóm tắt chuyến đi</h3>
                            <p class="package-title">Tour trọn gói<span>(9 khách)</span></p>
                            <div class="product">
                                <div class="product-image">
                                    <img src="https://media.travel.com.vn/tour/tfd_230302103257_223532.jpg"
                                         class="img-fluid" alt="image">
                                </div>
                                <div class="product-content">
                                    <p class="title">Tây Ninh - Hành trình chinh phục nóc nhà Nam Bộ - Tặng vé tham
                                        quan 3 tuyến cáp treo Chùa Hang - Tâm An - Vân Sơn</p>
                                </div>
                            </div>
                            <div class="go-tour">
                                <div class="start">
                                    <i class="fa-regular fa-calendar"></i>                                    <div class="start-content">
                                    <h4>Bắt đầu chuyến đi</h4>
                                    <p class="time" style="font-size: 15px;">CN, 3 Tháng 12, 2023</p>
                                    <p class="from"></p>
                                </div>
                                </div>
                                <div class="end">
                                    <i class="fa-solid fa-calendar-days"></i>                                    <div class="start-content">
                                    <h4>Kết thúc chuyến đi</h4>
                                    <p class="time" style="font-size: 15px;">CN, 3 Tháng 12, 2023</p>
                                    <p class="from"></p>
                                </div>
                                </div>
                            </div>
                            <div class="detail">
                                <table>
                                    <tbody>
                                    <tr>
                                        <th class="l1">Hành khách</th>
                                        <th class="l2 text-right">
                                            <i class="fa-solid fa-people-group"></i></i> <span>1 người</span>
                                            <p class="add-more">1 người lớn </p>
                                        </th>
                                    </tr>
                                    <tr>
                                        <td> Người lớn</td>
                                        <td class="t-price text-right">1 x 1,190,000₫</td>
                                    </tr>
                                    <tr>
                                        <td>Trẻ em</td>
                                        <td class="t-price text-right">0₫</td>
                                    </tr>
                                    <tr>
                                        <td>Trẻ nhỏ</td>
                                        <td class="t-price text-right">0₫</td>
                                    </tr>
                                    <tr>
                                        <td>Em bé</td>
                                        <td class="t-price text-right">0₫</td>
                                    </tr>
                                    <tr class="pt">
                                        <td> Phụ thu phòng riêng</td>
                                        <td class="t-price text-right">
                                            0₫
                                        </td>
                                    </tr>
                                    <tr class="cuppon d-none">
                                        <td>Mã giảm giá</td>
                                        <td class="cp-form text-right">
                                            <form action="#" method="get">
                                                <input class="form-control" id="DiscountCode"
                                                       name="DiscountCode" placeholder="Thêm mã"
                                                       required="required" type="text" value="">
                                                <input type="hidden" id="hidBooking_id"
                                                       value="ac7ab715-cd61-4053-b3e3-5e0fa5c1f838">
                                                <input type="submit" name="submit" id="btnDiscountCode"
                                                       value="Áp dụng">
                                            </form>
                                        </td>
                                    </tr>
                                    <tr class="cuppon">
                                        <td></td>
                                        <td class="cp-form text-right">
                                            giảm 100,000đ
                                        </td>
                                    </tr>
                                    <tr class="total">
                                        <td>Tổng cộng</td>
                                        <td class="t-price text-right" id="TotalPrice">1,090,000₫</td>
                                    </tr>
                                    </tbody>
                                </table>
                                <div>
                                    <button class="btn btn-primary btn-order" style="width:100% "
                                            onclick="kiemTraDieuKien()">
                                        <a href="../TourNest-master/bill.html"></a> Đặt ngay
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

    </div>

</main>

<script>
    function kiemTraDieuKien() {
        // Kiểm tra xem checkbox đã được chọn chưa
        var dieuKienCheckbox = document.getElementById("DieuKien");
        if (dieuKienCheckbox.checked) {
            // Nếu đã chọn, chuyển hướng đến trang "bill.html"
            window.location.href = "bill.html";
        } else {
            // Nếu chưa chọn, hiển thị thông báo
            alert('Bạn cần đồng ý với điều khoản đăng ký online.');
        }
    }
</script>

</body>

<!-- footer-copyright start -->
<%@include file="common/footer.jsp"%><!-- /.footer-copyright-->
<!-- footer-copyright end -->

</html>
