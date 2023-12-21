<!doctype html>
<%@ page contentType="text/html; charset=UTF-8" %>

<html class="no-js" lang="vi">

<%--head--%>
<%@include file="common/head.jsp" %>
<title>Phiếu Thanh toán</title>
<link rel="stylesheet" href="assets/css/bill.css">
<%--End head--%>
<body>
<body>
<div id="fb-root">
</div>
<header class="header">
    <nav class="navbar navbar-expand-lg fixed-top">
    </nav>
    <section class="sale-notice d-none">
        <div class="container">
            <div class="row">
                <div class="center">
                </div>
            </div>
        </div>
    </section>
</header>
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
            <ul class="breadcrumbs__wrapper d-flex align-items-center" itemscope itemtype="http://schema.org/BreadcrumbList">
                <a href="index.jsp">Quay về Trang Chủ</a>
            </ul>
        </div>
    </div>
    <main class="find-booking" role="main">
        <section>
            <div class="container">
                <div class="row py-4 flex-md-row flex-column-reverse">
                    <div class="col-md-8 col-12 left">
                        <section>
                            <div class="contact-info p-4 mb-4">
                                <div class="heading">
                                    <h5 class="fw-bold tieude">THÔNG TIN LIÊN LẠC</h5>
                                </div>
                                <div class="row">
                                    <div class="col-12 col-md-6">
                                        <span class="label">Họ tên</span>
                                        <p class="info">Võ Minh Thịnh</p>
                                    </div>
                                    <div class="col-md-6 col-12">
                                        <span class="label">Email</span>
                                        <p class="info"><a href="/cdn-cgi/l/email-protection" class="__cf_email__" data-cfemail="087b6e7b6e6e486f65696164266b6765"><span style="color: #2d4271">2113062@st.hcmuaf.edu.vn</span></a></p>
                                    </div>
                                    <div class="col-md-6 col-12">
                                        <span class="label">Địa chỉ</span>
                                        <p class="info">
                                            Đông Hòa, Dĩ An , Bình Dương
                                        </p>
                                    </div>
                                    <div class="col-md-3 col-6">
                                        <span class="label">Di động</span>
                                        <p class="info">091245415454</p>
                                    </div>
                                    <div class="col-md-3 col-6">
                                        <span class="label">Di động khác</span>
                                        <p class="info">0946154574</p>
                                    </div>
                                    <div class="col-md-3 col-12 d-none">
                                        <span class="label">Số khách</span>
                                        <p class="info">
                                            1 Người lớn
                                        </p>
                                    </div>
                                    <div class="col-12">
                                        <span class="label">Ghi chú</span>
                                        <p class="info">
                                            Booking từ TourNest
                                        </p>
                                    </div>
                                </div>
                            </div>
                            <div class="booking-detail p-4 mb-4">
                                <div class="heading">
                                    <h5 class="fw-bold tieude">CHI TIẾT BOOKING</h5>
                                </div>
                                <div class="row item">
                                    <div class="col-md-3 col-12 label">Số booking</div>
                                    <div class="col-md-9 col-12 text">
                                        <span class="text-primary fw-bold">231112815769</span> (Quý khách vui lòng nhớ số booking để thuận tiện cho các giao dịch sau này)
                                    </div>
                                </div>
                                <div class="row item">
                                    <div class="col-md-3 col-12 label">Trị giá booking</div>
                                    <div class="col-md-9 col-12 text">6,490,000₫</div>
                                </div>
                                <div class="row item">
                                    <div class="col-md-3 col-12 label">Số tiền đã thanh toán</div>
                                    <div class="col-md-9 col-12 text">6,490,000₫</div>
                                </div>
                                <div class="row item">
                                    <div class="col-md-3 col-12 label">Số tiền còn lại</div>
                                    <div class="col-md-9 col-12 text">3,000,000₫</div>
                                </div>
                                <div class="row item">
                                    <div class="col-md-3 col-12 label">Ngày đăng ký</div>
                                    <div class="col-md-9 col-12 text">
                                        12/11/2023 23:29:59
                                    </div>
                                </div>
                                <div class="row item">
                                    <div class="col-md-3 col-12 label">
                                        Hình thức thanh toán
                                    </div>
                                    <div class="col-md-9 col-12 text">
                                        Thẻ t&#237;n dụng - Thanh to&#225;n đảm bảo qua cổng TourNest-VietinBank (VISA/MASTER/JCB)<br/>
                                        <a href="#" class="btn btn-primary" id="btnChangePayment" onclick="ChoosePayment();" data-toggle="modal" data-target="#ReChoosePayment">Thay đổi</a>
                                    </div>
                                </div>
                                <div class="row item">
                                    <div class="col-md-3 col-12 label">Tình trạng</div>
                                    <div class="col-md-9 col-12 text">
                                        Booking của quý khách đã được chúng tôi xác nhận thành công
                                    </div>
                                </div>
                                <div class="row item">
                                    <div class="col-md-3 col-12 label">Thời gian thanh toán</div>
                                    <div class="col-md-9 col-12 text">
                                        <span class="text-primary fw-bold">13/11/23 23:29:59</span> (Theo giờ Việt Nam)
                                    </div>
                                </div>
                            </div>
                        </section>
                    </div>
                    <div class="col-md-4 col-12 right">
                        <div class="group-checkout">
                            <div class="heading">
                                <h5 class="fw-bold tieude">PHIẾU XÁC NHẬN BOOKING</h5>
                            </div>
                            <div class="product">
                                <div class="product-image">
                                    <a href="#">
                                        <img src="assets/images/item/1.jpg" class="img-fluid" alt="image" />
                                    </a>
                                </div>
                                <div class="product-content">
                                    <p class="title">
                                        Ph&#250; Quốc: H&#242;n Thơm Nature Park (Bao Gồm V&#233; C&#225;p Treo 3 D&#226;y Vượt Biển D&#224;i Nhất Thế Giới) - 26 Tết
                                    </p>
                                    <span>
Số booking:
<span class="text-primary fw-bold">231112815769</span>
                                        </span>
                                </div>
                            </div>
                            <div class="detail">
                                <div class="row item">
                                    <div class="col-4 fw-bold">Mã tour</div>
                                    <div class="col-8 text-end">NDSGN858-003-050224VU-V</div>
                                </div>
                                <div class="row item">
                                    <div class="col-4 fw-bold">Hành trình</div>
                                    <div class="col-8 text-end">HCM - PQC - HCM</div>
                                </div>
                                <div class="row item">
                                    <div class="col-4 fw-bold">Ngày đi</div>
                                    <div class="col-8 text-end">05/02/2024</div>
                                </div>
                                <div class="row item">
                                    <div class="col-4 fw-bold">Ngày về</div>
                                    <div class="col-8 text-end">07/02/2024</div>
                                </div>
                                <div class="row item">
                                    <div class="col-4 fw-bold">Nơi khởi hành</div>
                                    <div class="col-8 text-end">TP. Hồ Ch&#237; Minh</div>
                                </div>
                            </div>
                            <div class="qr-code">
                                <div class="image">
                                    <div class="wrapper">
                                        <img src="https://chart.googleapis.com/chart?chs=300x300&amp;cht=qr&amp;chl=https://travel.com.vn/du-lich/track-booking-no-231112815769/tra-cuu-booking.aspx?utm_source=BookingSearch%26utm_medium=referral%26utm_campaign=qrcode&amp;choe=UTF-8">
                                    </div>
                                </div>
                                <div>

                                    <p>
                                       Nếu có thay đổi xin vui lòng liên hệ chúng tôi
                                    </p>
                                </div>
                            </div>
                            <button class="btn btn-primary btn-order" id="btnPayment" style="width:100%" data-toggle="modal" data-target="#ConfirmPayment">
                                Liên Hệ
                            </button>
                        </div>
                    </div>
                </div>
                <div class="d-none d-lg-block">
                    <div class="passenger-list p-4 mb-4">
                        <div class="heading">
                            <h5 class="fw-bold tieude">DANH SÁCH HÀNH KHÁCH</h5>
                        </div>
                        <table class="table booking-table">
                            <thead>
                            <tr class="fw-bold">
                                <td>Họ tên</td>
                                <td class="d-none">Giảm giá?</td>
                                <td>Ngày sinh</td>
                                <td>Giới tính</td>
                                <td>Địa chỉ</td>
                                <td>Độ tuổi</td>
                                <td>Phòng đơn</td>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <td>Minh Thinh</td>
                                <td class="d-none">Giảm giá?</td>
                                <td>17/02/2003</td>
                                <td>Nam</td>
                                <td></td>
                                <td>Người lớn</td>
                                <td>Có</td>
                            </tr>
                            </tbody>
                            <tfoot>
                            <tr>
                                <td colspan="11" class="text-end">
                                    <span>Tổng cộng:</span>
                                    <span class="price text-primary fw-bold">6,490,000₫</span>
                                </td>
                            </tr>
                            </tfoot>
                        </table>
                    </div>
                </div>
                <div class="d-none d-lg-block2">
                    <div class="passenger-list p-4 mb-4">
                        <div class="heading">
                            <h5 class="fw-bold">DANH S&#193;CH PHIẾU THU</h5>
                        </div>
                        <div id="divLoadShowBookingReceipt">
                        </div>
                    </div>
                </div>
            </div>
        </section>
<!--        <script data-cfasync="false" src="/cdn-cgi/scripts/5c5dd728/cloudflare-static/email-decode.min.js"></script>-->
<!--        <script type="text/javascript">-->
<!--            $(document).ready(function() {-->
<!--                CheckAccountInfo();-->
<!--            });-->

<!--            $("#btnkichhoat").click(function() {-->
<!--                event.preventDefault();-->
<!--                var btnchodangnhap = $('#btnchodangnhap');-->
<!--                btnchodangnhap.prop('disabled', true);-->
<!--                btnchodangnhap.removeClass("hardCode");-->
<!--                $("#btnkichhoat").addClass("hardCode");-->
<!--                $.ajax({-->
<!--                    type: 'GET',-->
<!--                    url: '/Booking/PostActiveAcountByTelephone',-->
<!--                    data: {-->
<!--                        bookingId: "5098aa74-c5d7-4ebb-a669-536afc5a9488"-->
<!--                    },-->
<!--                    success: function(data, textStatus, XMLHttpRequest) {-->
<!--                        if (data.status == 1) {-->
<!--                            $("#titlekichhoat").addClass('hardCode');-->
<!--                            btnchodangnhap.addClass("hardCode");-->
<!--                            alert("Kích hoạt thành công");-->
<!--                        } else {-->
<!--                            alert(data.message);-->
<!--                            btnchodangnhap.addClass("hardCode");-->
<!--                            $("#btnkichhoat").removeClass("hardCode");-->
<!--                        }-->
<!--                    },-->
<!--                    dataType: "json"-->

<!--                });-->

<!--            });-->

<!--            function switchVisible() {-->
<!--                $.ajax({-->
<!--                    type: 'POST',-->
<!--                    url: '/Coupon/GetPromotionCodeByReceiptNo',-->
<!--                    data: {-->
<!--                        AmountReceiptView: "1",-->
<!--                        ReceiptNo: ""-->
<!--                    },-->
<!--                    success: function(data, textStatus, XMLHttpRequest) {-->
<!--                        let voucherCode = data.VoucherCode;-->
<!--                        let ReceiptNo = data.ReceiptNo-->

<!--                        $("#textPromotionCode").text(voucherCode);-->
<!--                        document.getElementById('booking-text').style.display = 'none';-->
<!--                        document.getElementById('booking-code').style.display = 'block';-->

<!--                    },-->
<!--                    dataType: "json"-->
<!--                });-->

<!--            }-->


<!--            function CopyVoucher() {-->
<!--                var copyText = document.getElementById("myVoucher");-->
<!--                copyText.select();-->
<!--                copyText.setSelectionRange(0, 99999);-->
<!--                document.execCommand("copy");-->
<!--                alert("Đã sao chép mã giảm giá: " + copyText.value);-->
<!--            }-->

<!--            function CheckAccountInfo() {-->
<!--                $.ajax({-->
<!--                    type: 'GET',-->
<!--                    url: '/Booking/GetCheckActiveAcountByTelephone',-->
<!--                    data: {-->
<!--                        Telephone: "32323232"-->
<!--                    },-->
<!--                    success: function(data, textStatus, XMLHttpRequest) {-->
<!--                        if (data == 0) {-->
<!--                            $("#titlekichhoat").removeClass('hardCode');-->
<!--                        } else {-->
<!--                            $("#titlekichhoat").addClass('hardCode');-->

<!--                        }-->
<!--                    },-->
<!--                    dataType: "json"-->

<!--                });-->
<!--            }-->
<!--        </script>-->
        <div class="thanks">
            <h1>Cảm ơn quý khách đã lựa chọn dịch vụ của chúng tôi</h1>
        </div>
        <div>
            <div id="ConfirmPayment" class="modal fade" role="dialog">
                <div class="modal-dialog" style="height:500px">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h4 class="modal-title font500">X&#193;C NHẬN THANH TO&#193;N ONLINE</h4>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close">&times;</button>
                        </div>
                        <div class="modal-body">
                            <div class="radio">
                                <label><input type="checkbox" id="cbAgree" onclick="CheckPayment();" /><label class="lb_r">T&#244;i đ&#227; đọc v&#224; hiểu r&#245; c&#225;c nội dung sau</label></label>
                            </div>
                            <div id="divPayment" style="display: none;">
                                <div class="text-center" style="padding-bottom:15px;">
                                    <a class="btn btn-default" style="background-color:red" href="/Payment/Payment?tourtypeID=1&amp;booking_id=5098aa74-c5d7-4ebb-a669-536afc5a9488&amp;paymentID=15">Thanh to&#225;n</a>
                                </div>
                            </div>
                            <div style="height:500px;overflow:auto;">
                                <html>

                                <head>
                                    <title></title>
                                </head>

                                <body>
                                <p align="center">
                                    Vietravel sẽ xuất h&oacute;a đơn GTGT theo đ&uacute;ng quy định hiện h&agrave;nh trong v&ograve;ng 7 ng&agrave;y l&agrave;m việc sau khi tour kết th&uacute;c. Sau thời gian tr&ecirc;n Vietravel sẽ từ chối xuất h&oacute;a đơn cho kh&aacute;ch h&agrave;ng
                                    v&agrave; tiến h&agrave;nh xuất h&oacute;a đơn kh&aacute;ch lẻ kh&ocirc;ng lấy h&oacute;a đơn.</p>
                                <p>
                                    <strong>Cam kết đ&atilde; biết v&agrave; hiểu r&otilde; tour giảm gi&aacute; khi đặt v&agrave; thanh to&aacute;n trực tuyến : kh&ocirc;ng ho&agrave;n, kh&ocirc;ng hủy, kh&ocirc;ng đổi h&agrave;nh tr&igrave;nh.</strong></p>
                                <p>
                                    &nbsp;Cam kết đ&atilde; hiểu r&otilde; v&agrave; đồng &yacute; với c&aacute;c nội dung li&ecirc;n quan đến chương tr&igrave;nh tour v&agrave; điều kiện b&aacute;n tour như sau :</p>
                                <p>
                                    1.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Đồng &yacute; với to&agrave;n bộ Nội dung quy định trong Điều kiện b&aacute;n v&eacute; c&aacute;c chương tr&igrave;nh du lịch trong nước (V&eacute; du lịch) k&egrave;m theo.</p>
                                <p>
                                    2.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Đồng &yacute; gi&aacute; tour ngay thời điểm đăng k&yacute; v&agrave; biết c&oacute; nhiều mức gi&aacute; tr&ecirc;n một chương tr&igrave;nh tour. Những chi ph&iacute; bao gồm v&agrave; kh&ocirc;ng bao
                                    gồm trong chương tr&igrave;nh.</p>
                                <p>
                                    3.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Dịch vụ ph&ograve;ng kh&aacute;ch sạn c&oacute; thể xảy ra trường hợp ph&ograve;ng kh&ocirc;ng cạnh nhau, ph&ograve;ng kh&ocirc;ng c&ugrave;ng tầng cho cả gia đ&igrave;nh, loại ph&ograve;ng một giường
                                    đ&ocirc;i/ hai giường đơn kh&ocirc;ng theo y&ecirc;u cầu,... t&ugrave;y theo điều kiện thực tế của từng đối t&aacute;c kh&aacute;ch sạn. Vietravel sẽ cố gắng hỗ trợ thương lượng với đối t&aacute;c để sắp xếp
                                    ph&ograve;ng ph&ugrave; hợp nhất.</p>
                                <p>
                                    4.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Giờ bay v&agrave; chương tr&igrave;nh c&oacute; thể linh hoạt thay đổi theo điều kiện thực tế của h&atilde;ng H&agrave;ng Kh&ocirc;ng. Trường hợp chuyến bay bị hủy, ho&atilde;n, thay đổi chuyến kh&ocirc;ng
                                    thuộc tr&aacute;ch nhiệm của Vietravel. T&ugrave;y v&agrave;o t&igrave;nh h&igrave;nh thực tế, chương tr&igrave;nh v&agrave; điểm tham quan c&oacute; thể linh động thay đổi thứ tự c&aacute;c điểm ph&ugrave;
                                    hợp điều kiện giờ bay v&agrave; thời tiết thực tế. Vietravel c&oacute; tr&aacute;ch nhiệm li&ecirc;n lạc với h&atilde;ng H&agrave;ng Kh&ocirc;ng v&agrave; th&ocirc;ng tin sớm nhất cho kh&aacute;ch h&agrave;ng.</p>
                                <p>
                                    5. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Đ&atilde; cung cấp t&ecirc;n ch&iacute;nh x&aacute;c đầy đủ tr&ecirc;n CMND/ Hộ chiếu/Giấy khai sinh (trẻ em dưới 14 tuổi). Kh&aacute;ch h&agrave;ng chịu tr&aacute;ch nhiệm ho&agrave;n to&agrave;n đối với
                                    c&aacute;c vấn đề xảy ra do việc cung cấp sai th&ocirc;ng tin. Qu&yacute; kh&aacute;ch khi đăng k&yacute; cung cấp t&ecirc;n theo giấy tờ t&ugrave;y th&acirc;n n&agrave;o, khi đi tour phải mang theo giấy tờ
                                    t&ugrave;y th&acirc;n đ&oacute;.</p>
                                <p>
                                    6. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Quy định giấy tờ tuỳ th&acirc;n khi đi tour: Đối với Kh&aacute;ch Quốc tịch Việt Nam: Khi đi tour Trẻ em từ 14 tuổi trở l&ecirc;n v&agrave; người lớn cần đem theo CMND/Hộ chiếu bản ch&iacute;nh c&ograve;n
                                    hạn sử dụng, h&igrave;nh ảnh r&otilde; (CMND c&oacute; thời hạn sử dụng kh&ocirc;ng qu&aacute; 15 năm, t&iacute;nh từ ng&agrave;y cấp)/ Giấy khai sinh bản ch&iacute;nh (trẻ em dưới 14 tuổi). Trường hợp trẻ em
                                    đủ 14 tuổi chưa c&oacute; CMND hoặc Hộ Chiếu th&igrave; Qu&yacute; kh&aacute;ch phải l&agrave;m giấy x&aacute;c nhận nh&acirc;n th&acirc;n tại ch&iacute;nh quyền địa phương nơi lưu tr&uacute; theo mẫu quy định.
                                    Kh&aacute;ch Nước ngo&agrave;i/Việt Kiều: Khi đi tour phải mang theo đầy đủ Hộ Chiếu bản ch&iacute;nh c&ograve;n hạn sử dụng hoặc thẻ xanh k&egrave;m theo Visa v&agrave; giấy t&aacute;i xuất nhập Việt Nam.</p>
                                <p>
                                    7.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Qu&yacute; kh&aacute;ch dưới 18 tuổi phải c&oacute; Bố/Mẹ hoặc người nh&agrave; tr&ecirc;n 18 tuổi đi c&ugrave;ng. Trường hợp qu&yacute; kh&aacute;ch dưới 18 tuổi đi c&ugrave;ng người th&acirc;n th&igrave;
                                    Bố v&agrave; Mẹ phải ủy quyền (c&oacute; x&aacute;c nhận của ch&iacute;nh quyền địa phương) cho người th&acirc;n.</p>
                                <p>
                                    8.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Hướng dẫn vi&ecirc;n trong tour chỉ thuyết minh bằng tiếng Việt, đặt ăn theo thực đơn kh&aacute;ch Việt,&hellip;</p>
                                <p>
                                    9.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Vietravel sẽ kh&ocirc;ng chịu tr&aacute;ch nhiệm bảo đảm c&aacute;c điểm tham quan trong trường hợp: C&aacute;c điểm tham quan đ&oacute;ng cửa/ sửa chữa/ bảo tr&igrave; hoặc xảy ra thi&ecirc;n tai: b&atilde;o
                                    lụt, hạn h&aacute;n, động đất, dịch bệnh&hellip;Sự cố về an ninh: khủng bố, biểu t&igrave;nh. Sự cố về h&agrave;ng kh&ocirc;ng: trục trặc kỹ thuật, an ninh, dời, hủy, ho&atilde;n chuyến bay v&agrave; c&aacute;c
                                    sự kiện bất khả kh&aacute;ng kh&aacute;ng theo quy định ph&aacute;p luật. Trường hợp tr&ecirc;n xảy ra, Vietravel sẽ xem x&eacute;t để ho&agrave;n trả chi ph&iacute; kh&ocirc;ng tham quan cho kh&aacute;ch trong
                                    điều kiện c&oacute; thể (sau khi đ&atilde; trừ lại c&aacute;c dịch vụ đ&atilde; thực hiện&hellip;.v&agrave; kh&ocirc;ng chịu tr&aacute;ch nhiệm bồi thường th&ecirc;m bất kỳ chi ph&iacute; n&agrave;o kh&aacute;c).Trường
                                    hợp hủy to&agrave;n bộ chuyến đi với c&aacute;c l&yacute; do bất khả kh&aacute;ng tr&ecirc;n, thời gian ho&agrave;n tiền dịch vụ sẽ được ho&agrave;n tất trong v&ograve;ng 60 &ndash; 90 ng&agrave;y phụ thuộc
                                    điều kiện c&aacute;c đối t&aacute;c cung ứng dịch vụ.</p>
                                <p>
                                    10.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Cam kết kh&ocirc;ng t&aacute;ch đo&agrave;n trong suốt qu&aacute; tr&igrave;nh tham quan c&ugrave;ng Vietravel.</p>
                                <p>
                                    11.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Cam kết chỉ tham gia du lịch thuần t&uacute;y, kh&ocirc;ng truyền b&aacute; những vấn đề li&ecirc;n quan đến t&ocirc;n gi&aacute;o, ch&iacute;nh trị trong thời gian tham gia tour;</p>
                                <p>
                                    12.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Trường hợp kh&aacute;ch c&oacute; dấu hiệu vi phạm tại Mục 11 hoặc c&oacute; khả năng kh&ocirc;ng về c&ugrave;ng đo&agrave;n th&igrave; C&ocirc;ng ty c&oacute; quyền ngưng phục vụ kh&aacute;ch tr&ecirc;n c&aacute;c
                                    chương tr&igrave;nh v&agrave; dịch vụ đ&atilde; v&agrave; đang thực hiện đồng thời th&ocirc;ng b&aacute;o cho cơ quan c&oacute; thẩm quyền hoặc thực hiện c&aacute;c biện ph&aacute;p ngăn chặn cần thiết theo
                                    quy định m&agrave; kh&ocirc;ng phải g&aacute;nh chịu bất kỳ tr&aacute;ch nhiệm ph&aacute;p l&yacute; n&agrave;o. C&aacute;c chi ph&iacute; sẽ được C&ocirc;ng ty xem x&eacute;t ho&agrave;n trả kh&aacute;ch sau
                                    khi khấu trừ c&aacute;c chi ph&iacute; đ&atilde; sử dụng;</p>
                                <p>
                                    13.&nbsp;&nbsp; Cam kết chịu tr&aacute;ch nhiệm trước cơ quan nh&agrave; nước c&oacute; thẩm quyền tại nơi đến tham quan đối với mọi h&agrave;nh vi vi phạm ph&aacute;p luật của ch&iacute;nh h&agrave;nh kh&aacute;ch g&acirc;y ra.</p>
                                <p>
                                    14.&nbsp;&nbsp; Chương tr&igrave;nh đo&agrave;n l&agrave; du lịch trọn g&oacute;i, Vietravel kh&ocirc;ng chịu tr&aacute;ch nhiệm ho&agrave;n trả chi ph&iacute; ch&ecirc;nh lệch cho c&aacute;c kh&aacute;ch h&agrave;ng thuộc diện miễn giảm hoặc đối tượng
                                    ưu ti&ecirc;n kh&aacute;c&hellip; hoặc c&aacute;c chi ph&iacute; kh&ocirc;ng sử dụng trong tour.</p>
                                <p>
                                    15.&nbsp;&nbsp; Cam kết hiểu v&agrave; đồng &yacute; miễn trừ mọi tr&aacute;ch nhiệm ph&aacute;p l&yacute;; kh&ocirc;ng khiếu nại v&agrave; y&ecirc;u cầu bồi thường mọi thiệt hại, mất m&aacute;t, hư hỏng, chi ph&iacute; ph&aacute;t sinh, hậu quả xảy ra
                                    trực tiếp hoặc gi&aacute;n tiếp đối với Vietravel, c&aacute;c nh&acirc;n vi&ecirc;n, đơn vị trực thuộc v&agrave; những đối t&aacute;c của Vietravel về những rủi ro (t&agrave;i sản, sức khỏe, &hellip;) c&oacute;
                                    thể xảy ra trước, trong hoặc sau khi tham gia tour.</p>
                                <p>
                                    II.&nbsp;&nbsp; Cam kết đ&atilde; hiểu r&otilde; v&agrave; đồng &yacute; c&aacute;c quy định li&ecirc;n quan về điều kiện sức khỏe khi tham gia chương tr&igrave;nh du lịch</p>
                                <p>
                                    1.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Kh&aacute;ch nữ từ 55 tuổi trở l&ecirc;n v&agrave; kh&aacute;ch nam từ 60 trở l&ecirc;n: n&ecirc;n c&oacute; người th&acirc;n dưới 55 tuổi (đầy đủ sức khỏe) đi c&ugrave;ng. Ri&ecirc;ng kh&aacute;ch từ
                                    70 tuổi trở l&ecirc;n: Bắt buộc phải c&oacute; người th&acirc;n dưới 55 tuổi (đầy đủ sức khỏe) đi c&ugrave;ng. Hạn chế kh&ocirc;ng nhận kh&aacute;ch từ 80 tuổi trở l&ecirc;n. Kh&aacute;ch từ 80 tuổi kh&ocirc;ng
                                    c&oacute; chế độ bảo hiểm.</p>
                                <p>
                                    2.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Qu&yacute; kh&aacute;ch mang thai vui l&ograve;ng b&aacute;o cho nh&acirc;n vi&ecirc;n b&aacute;n tour ngay tại thời điểm đăng k&yacute;. Phải c&oacute; &yacute; kiến của b&aacute;c sĩ trước khi đi tour,
                                    tự chịu tr&aacute;ch nhiệm về sức khỏe của m&igrave;nh v&agrave; thai nhi trong suốt thời gian tham gia chương tr&igrave;nh du lịch. Khi đi tour phải mang theo sổ kh&aacute;m thai v&agrave; giấy tờ t&ugrave;y
                                    th&acirc;n theo quy định h&atilde;ng h&agrave;ng kh&ocirc;ng. Tuần thai từ 28 tuần trở đi phải mang theo giấy kh&aacute;m thai trong v&ograve;ng 7 ng&agrave;y trở lại.&nbsp;</p>
                                <p>
                                    3.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Cam kết bản th&acirc;n v&agrave; người th&acirc;n ho&agrave;n to&agrave;n c&oacute; đủ sức khỏe để đi du lịch theo chương tr&igrave;nh. Đồng &yacute; miễn trừ to&agrave;n bộ tr&aacute;ch nhiệm ph&aacute;p
                                    l&yacute;; kh&ocirc;ng khiếu nại; kh&ocirc;ng y&ecirc;u cầu bồi thường đối với Vietravel n&oacute;i chung v&agrave; nh&acirc;n vi&ecirc;n Vietravel n&oacute;i ri&ecirc;ng về tất cả c&aacute;c vấn đề xảy ra li&ecirc;n
                                    quan đến t&igrave;nh trạng sức khỏe của kh&aacute;ch h&agrave;ng khi tham gia tour hoặc sử dụng c&aacute;c dịch vụ do Vietravel cung cấp. Kh&aacute;ch h&agrave;ng cam kết tự chịu mọi chi ph&iacute; ph&aacute;t
                                    sinh ngo&agrave;i chương tr&igrave;nh tour li&ecirc;n quan đến việc giải quyết c&aacute;c rủi ro về sức khỏe (lưu tr&uacute;, vận chuyển, chi ph&iacute; kh&aacute;m chữa bệnh...) &ndash; ngoại trừ c&aacute;c
                                    chi ph&iacute; thuộc hạng mục bảo hiểm sẽ do C&ocirc;ng ty Bảo hiểm ho&agrave;n trả theo quy định.</p>
                                <p>
                                    III.&nbsp; Cam kết đ&atilde; hiểu r&otilde; v&agrave; đồng &yacute; c&aacute;c quy định về bảo hiểm du lịch  (vui l&ograve;ng đ&aacute;nh dấu chọn):&nbsp;</p>
                                <p>
                                    1.&nbsp;&nbsp;&nbsp;&nbsp; Bảo hiểm sức khỏe</p>
                                <p>
                                    1.1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Cam kết bản th&acirc;n v&agrave; người th&acirc;n c&ugrave;ng tham gia tour kh&ocirc;ng mắc hoặc bị c&aacute;c vấn đề li&ecirc;n quan đến c&aacute;c bệnh được liệt k&ecirc; tại Mục 2 Phần III Bảng đăng k&yacute;
                                    n&agrave;y.</p>
                                <p>
                                    1.2&nbsp;&nbsp; Trong trường hợp ph&aacute;t sinh c&aacute;c vấn đề li&ecirc;n quan đến c&aacute;c bệnh hoặc gặp tai nạn trong qu&aacute; tr&igrave;nh đi tour v&agrave; ph&aacute;t sinh chi ph&iacute; th&igrave; những hạng mục liệt k&ecirc; dưới đ&acirc;y
                                    sẽ kh&ocirc;ng được bồi thường theo quy tắc bảo hiểm Bảo Minh:</p>
                                <p>
                                    -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Chi ph&iacute; sử dụng dịch vụ chăm s&oacute;c theo y&ecirc;u cầu đặc biệt hay chăm s&oacute;c ri&ecirc;ng.</p>
                                <p>
                                    -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Chi ph&iacute; điều trị thẩm mỹ, dụng cụ hỗ trợ th&iacute;nh v&agrave; thị lực, thuốc được k&ecirc; theo đơn cho những trường hợp n&agrave;y trừ khi những việc đ&oacute; l&agrave; cần thiết
                                    để điều trị một thương tật ph&aacute;t sinh duy nhất từ một thương tật th&acirc;n thể do tai nạn từ b&ecirc;n ngo&agrave;i xảy ra trong thời hạn bảo hiểm.</p>
                                <p>
                                    -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Chi ph&iacute; điều trị bệnh t&acirc;m thần, rối loạn t&acirc;m l&yacute; v&agrave; mất tr&iacute;.</p>
                                <p>
                                    -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Việc điều trị hay dịch vụ y tế được thực hiện m&agrave; kh&ocirc;ng c&oacute; sự chỉ dẫn của B&aacute;c sĩ; việc kh&aacute;m sức khỏe hay kiểm tra sức khỏe định kỳ m&agrave; kh&ocirc;ng li&ecirc;n
                                    quan g&igrave; đến việc điều trị hay chẩn đo&aacute;n cho thương tật, bệnh tật được bảo hiểm.</p>
                                <p>
                                    -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Lắp bộ phận giả, thiết bị hiệu chỉnh v&agrave; thiết bị hỗ trợ y tế trừ khi l&agrave; thiết yếu trực tiếp cho một ca phẫu thuật.</p>
                                <p>
                                    -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Cấy gh&eacute;p nội tạng.</p>
                                <p>
                                    -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Bệnh tật hay tổn thương c&oacute; sẵn, bệnh, khuyết tật bẩm sinh, bệnh l&acirc;y qua đường t&igrave;nh dục.</p>
                                <p>
                                    -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Bệnh m&atilde;n t&iacute;nh cho d&ugrave; ph&aacute;t hiện trước hay trong thời gian bảo hiểm bao gồm: bệnh trĩ, chứng tho&aacute;t vị, amidan dẫn đến phẫu thuật, dị tật v&aacute;ch ngăn mũi
                                    hoặc xương xoắn mũi, cường tuyến gi&aacute;p, đục nh&acirc;n mắt, bệnh xoang phải phẫu thuật, bệnh lạc m&agrave;ng trong tử cung, bệnh lao, d&ograve; hậu m&ocirc;n, vi&ecirc;m t&uacute;i mật, sỏi c&aacute;c
                                    loại, dị tật hay bệnh về b&agrave;ng quang hoặc niệu đạo, cao huyết &aacute;p hoặc bệnh tim mạch, u dạ d&agrave;y hoặc t&aacute; tr&agrave;ng, tật vẹo ng&oacute;n ch&acirc;n ra ngo&agrave;i, tất cả c&aacute;c
                                    loại u th&ocirc;ng thường hay u &aacute;c t&iacute;nh, ung thư, rối loạn m&aacute;u hay tủy xương, bệnh đ&aacute;i th&aacute;o đường.</p>
                                <p>
                                    -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Bị tai nạn khi tham gia chương tr&igrave;nh tham quan c&oacute; leo l&ecirc;n tới độ cao tr&ecirc;n 5.000 m&eacute;t so với mực nước biển hoặc sử dụng b&igrave;nh dưỡng kh&iacute; lặn s&acirc;u
                                    hơn 20 m&eacute;t so với mặt nước biển.</p>
                                <p>
                                    -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Tự s&aacute;t, cố gắng tự s&aacute;t hay cố &yacute; g&acirc;y thương t&iacute;ch tr&ecirc;n th&acirc;n thể, bệnh t&acirc;m thần, rối loạn t&acirc;m l&yacute;, sẩy thai, ph&aacute; thai, sinh
                                    đẻ, bệnh hoa liễu, sử dụng đồ uống c&oacute; cồn, chất k&iacute;ch th&iacute;ch hay c&aacute;c dung m&ocirc;i m&agrave; kh&ocirc;ng c&oacute; sự chỉ định của B&aacute;c sĩ h&agrave;nh nghề hợp ph&aacute;p, điều
                                    trị răng trừ khi điều trị những răng tự nhi&ecirc;n c&ograve;n tốt do hậu quả của tai nạn.</p>
                                <p>
                                    2.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Bảo hiểm t&agrave;i sản</p>
                                <p>
                                    Những loại t&agrave;i sản sau đ&acirc;y sẽ kh&ocirc;ng thuộc phạm vi bảo hi&ecirc;̉m:</p>
                                <p>
                                    -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Hoa quả, những đ&ocirc;̀ dễ hư hỏng, những đ&ocirc;̀ c&oacute; th&ecirc;̉ ăn được, đ&ocirc;̀ cổ, t&aacute;c ph&acirc;̉m nghệ thuật, tranh vẽ, sản ph&acirc;̉m mỹ thuật, phần mềm v&agrave;
                                    c&aacute;c trang thi&ecirc;́t bị đi k&egrave;m (trừ m&aacute;y t&iacute;nh x&aacute;ch tay), m&aacute;y t&iacute;nh x&aacute;ch tay v&agrave; điện thoại di động đ&atilde; sử dụng v&agrave; gửi h&agrave;nh
                                    lý k&iacute; gửi, bản thảo, đ&ocirc;̀ trang sức, đ&aacute; quý, đ&ocirc;̀ng h&ocirc;̀, k&iacute;nh &aacute;p tr&ograve;ng, chứng kho&aacute;n, đ&ocirc;̀ lưu niệm, nhạc cụ, cầu răng, răng giả. .</p>
                                <p>
                                    -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Mất m&aacute;t hoặc hư hỏng đ&ocirc;́i với trang thi&ecirc;́t bị đi thu&ecirc; hoặc cho thu&ecirc;,&nbsp; việc thu giữ hay ti&ecirc;u hủy đ&ocirc;̀ vật theo c&aacute;c quy định về ki&ecirc;̉m
                                    dịch hay hải quan; tịch thu theo lệnh của ch&iacute;nh phủ hay cơ quan c&ocirc;ng quyền, nguy cơ h&agrave;ng giả hay mua b&aacute;n, vận chuy&ecirc;̉n tr&aacute;i phép.</p>
                                <p>
                                    -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Mất m&aacute;t hoặc thiệt hại đ&ocirc;́i với t&agrave;i sản đ&atilde; được bảo hi&ecirc;̉m theo bất kỳ hợp đ&ocirc;̀ng bảo hi&ecirc;̉m n&agrave;o kh&aacute;c hay đ&atilde; được h&atilde;ng
                                    vận chuy&ecirc;̉n, kh&aacute;ch sạn hay c&aacute;c b&ecirc;n kh&aacute;c b&ocirc;̀i ho&agrave;n.</p>
                                <p>
                                    -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Mất m&aacute;t hoặc thiệt hại đ&ocirc;́i với h&agrave;nh lý của Người đựợc bảo hi&ecirc;̉m đ&ecirc;̉ ở nơi c&ocirc;ng cộng v&agrave; thi&ecirc;́u sự tr&ocirc;ng coi/gi&aacute;m s&aacute;t
                                    hoặc kh&ocirc;ng giải th&iacute;ch được lý do.</p>
                                <p>
                                    -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Tổn thất hoặc thiệt hại hoặc x&aacute;o trộn hoặc nứt vỡ đ&ocirc;́i với đ&ocirc;̀ vật dễ vỡ hoặc dễ g&atilde;y</p>
                                <p>
                                    3.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Cam kết đ&atilde; được nh&acirc;n vi&ecirc;n Vietravel tư vấn v&agrave; hiểu r&otilde; c&aacute;c vấn đề li&ecirc;n quan đến bảo hiểm du lịch v&agrave; biết rằng kh&ocirc;ng c&oacute; chế độ bảo hiểm
                                    đối với kh&aacute;ch từ 80 tuổi trở l&ecirc;n.</p>
                                <p>
                                    4.&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Số hotline tư vấn về c&aacute;c điều kiện, điều khoản bảo hiểm 0938 30 1234</p>
                                <p>
                                    Lưu &yacute;:&nbsp; Việc x&eacute;t bồi thường sẽ do đơn vị bảo hiểm trực tiếp x&eacute;t hồ sơ theo Quy tắc Bảo hiểm du lịch trong nước.</p>
                                <p>
                                    Bằng văn bản n&agrave;y, đề nghị C&ocirc;ng ty Vietravel tiến h&agrave;nh l&agrave;m c&aacute;c thủ tục cần thiết để t&ocirc;i v&agrave; người nh&agrave; (nếu c&oacute;) tham gia chương tr&igrave;nh du lịch do Vietravel tổ chức.&nbsp; &nbsp;</p>
                                <p>
                                    <strong>CAM KẾT&nbsp; Sử dụng dịch vụ ph&ograve;ng khu Villa hệ thống Vinpearl Resort</strong></p>
                                <p>
                                    1. Vietravel mở b&aacute;n dịch vụ gh&eacute;p ph&ograve;ng khu Villa tại hệ thống Vinpearl Resort (Đ&agrave; Nẵng, Nha Trang, Ph&uacute; Quốc). Khu Villa gồm c&oacute; 2,3,4 ph&ograve;ng ngủ t&ugrave;y theo series Vietravel đặt booking.</p>
                                <p>
                                    2. Ph&ograve;ng ngủ tại khu Villa phần lớn l&agrave; ph&ograve;ng giường double, chỉ c&oacute; 01 ph&ograve;ng twin. Việc ph&acirc;n ph&ograve;ng twin hay double, tầng trệt hay tầng 1, hướng ph&ograve;ng&hellip; sẽ do đơn vị tổ chức sắp xếp ngẫu nhi&ecirc;n
                                    theo tr&igrave;nh tự đăng k&yacute; trước sau. C&aacute;c ph&ograve;ng trong khu Villa kh&ocirc;ng đặt được giường extra bed. Mỗi ph&ograve;ng quy định 02 người lớn chỉ k&egrave;m 01 trẻ em dưới 11 tuổi.&nbsp;</p>
                                <p>
                                    3. Trong khu Villa chỉ c&oacute; 01 ph&ograve;ng Master, những ph&ograve;ng c&ograve;n lại l&agrave; ph&ograve;ng standard. Ph&ograve;ng Master sẽ c&oacute; k&eacute;t sắt, nội thất v&agrave; g&oacute;c nh&igrave;n đẹp hơn c&aacute;c ph&ograve;ng standard.</p>
                                <p>
                                    4. Do cấu tr&uacute;c x&acirc;y dựng của khu Villa d&agrave;nh cho gia đ&igrave;nh chỉ c&oacute; 01 ch&igrave;a kh&oacute;a chung. V&igrave; vậy những ph&ograve;ng trong khu Villa sẽ kh&ocirc;ng c&oacute; ch&igrave;a kh&oacute;a ri&ecirc;ng cho từng ph&ograve;ng
                                    b&ecirc;n ngo&agrave;i, chỉ c&oacute; chốt cửa b&ecirc;n trong.V&igrave; vậy để đảm bảo an to&agrave;n khi ra khỏi ph&ograve;ng, Qu&yacute; kh&aacute;ch vui l&ograve;ng tự giữ g&igrave;n tư trang, tiền bạc hoặc
                                    gửi k&eacute;t sắt tại lễ t&acirc;n. Vietravel kh&ocirc;ng chịu tr&aacute;ch nhiệm giải quyết hay đền b&ugrave; về việc kh&aacute;ch h&agrave;ng bị mất tư trang hoặc vật dụng c&aacute; nh&acirc;n.</p>
                                <p>
                                    5. Khu vực sử dụng chung trong khu Villa gồm ph&ograve;ng kh&aacute;ch, bếp, hồ bơi gia đ&igrave;nh, b&igrave;nh đun nước, ly, t&aacute;ch, tủ lạnh... Trong tủ lạnh sẽ kh&ocirc;ng để đồ uống. Trong trường hợp Qu&yacute; kh&aacute;ch muốn sử dụng sẽ li&ecirc;n
                                    hệ lễ t&acirc;n hoặc nh&agrave; h&agrave;ng b&aacute;o r&otilde; họ t&ecirc;n cụ thể, số điện thoại v&agrave; số ph&ograve;ng Villa. Đề nghị khi trả ph&ograve;ng Qu&yacute; kh&aacute;ch chịu tr&aacute;ch nhiệm
                                    thanh to&aacute;n đầy đủ c&aacute;c dịch vụ đ&atilde; sử dụng kh&ocirc;ng bao gồm trong chương tr&igrave;nh.</p>
                                <p>
                                    6. Kh&aacute;ch h&agrave;ng cam kết c&oacute; tr&aacute;ch nhiệm truyền đạt nội dung cam kết đến từng th&agrave;nh vi&ecirc;n trong gia đ&igrave;nh m&agrave; m&igrave;nh đại diện đăng k&yacute;.</p>
                                <p>
                                    Đề nghị Qu&yacute; kh&aacute;ch đọc kỹ c&aacute;c điều kiện trong cam kết khi quyết định mua tour sử dụng c&aacute;c ph&ograve;ng gh&eacute;p trong Villa. Vietravel sẽ kh&ocirc;ng chịu tr&aacute;ch nhiệm giải quyết bất cứ khiếu nại li&ecirc;n quan đến
                                    những điều đ&atilde; cam kết ph&iacute;a tr&ecirc;n.</p>
                                <p>
                                    &nbsp;</p>
                                </body>

                                </html>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
<!--            <script type="text/javascript">-->
<!--                function CheckPayment() {-->
<!--                    if ($('#cbAgree').prop('checked')) {-->
<!--                        $('#divPayment').show();-->
<!--                    } else {-->
<!--                        $('#divPayment').hide();-->
<!--                    }-->
<!--                }-->
<!--            </script>;-->
        </div>

        <style>
            .hidden {
                display: none;
            }
        </style>
        <div id="ReChoosePayment" class="modal fade reChoosePayment" role="dialog">
            <div class="modal-dialog">

                <div class="modal-content">
                    <div class="modal-header">
                        <h6 class="modal-title">CHỌN LẠI H&#204;NH THỨC THANH TO&#193;N</h6>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close">&times;</button>
                    </div>
                    <div class="modal-body">
                        <form action="/Booking/ChoosePayment" id="ChoosePayment" method="post"><input name="__RequestVerificationToken" type="hidden" value="wI3D1O9LQa_oz1fxV-5K7_qDaKoi2kZy5eTY6liBq59Sl3g0PfCIOGWs6tDppjkIe9ubZLOF0jP7wmuk9XzzlLfN26bOf0C5JTklbBQf3Is1" /> <input id="pin_codePayment" name="pin_code" type="hidden"
                                                                                                                                                                                                                                                                                     value="5098aa74-c5d7-4ebb-a669-536afc5a9488">
                            <div class="radio">
                                <label style="display:none;"><input type="radio" class="chkPayment" name="paymentID" value="1" /><label class="lb_r">Tiền mặt</label></label>
                            </div>
                            <div class="radio">
                                <label style="display:none;"><input type="radio" class="chkPayment" name="paymentID" value="2" /><label class="lb_r">Chuyển khoản</label></label>
                            </div>
                            <div class="radio">
                                <label><input type="radio" class="chkPayment" name="paymentID" value="9" /><label class="lb_r">ATM / Internet Banking</label></label>
                            </div>
                            <div id="paymenttypeZalo" name="paymentID" value="0" class="hidden">
                                <div class="row d-flex justify-content-between mb-3">
                                    <div class="col-6">
                                        <div class="form-check">
                                            <input class="form-check-input" type="radio" name="flexRadioDefault1" id="flexRadioDefault1">
                                            <input type="hidden" value="qr_zalo" id="Option" />
                                            <label class="form-check-label" for="flexRadioDefault1">
                                                <i class="icon icon--qr-code"></i> &nbsp;QRcode
                                            </label>
                                        </div>
                                    </div>
                                    <div class="col-6">
                                        <div class="form-check">
                                            <input class="form-check-input" type="radio" name="flexRadioDefault1" id="flexRadioDefault2">
                                            <input type="hidden" value="visa_zalo" id="Option" />
                                            <label class="form-check-label" for="flexRadioDefault2">
                                                <i class="icon icon--credit-card"></i>&nbsp; Thẻ nội địa
                                            </label>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="radio">
                                <label><input type="radio" class="chkPayment" name="paymentID" value="0" checked="&#39;checked&#39;" /><label class="lb_r">Thẻ t&#237;n dụng</label></label>
                            </div>
                            <div id="paymenttype" class="hidden">
                                <div class="row d-flex justify-content-between mb-3">
                                    <div class="col-3">
                                        <div class="form-check">
                                            <input class="form-check-input" type="radio" name="choosePaymentType">
                                            <input type="hidden" value="visa" id="Option" />
                                            <label class="form-check-label" for="flexRadioDefault1">
                                                <img src="/Content/Theme/images/thevisa.png" alt="amex" />
                                            </label>
                                        </div>
                                    </div>
                                    <div class="col-3">
                                        <div class="form-check">
                                            <input class="form-check-input" type="radio" name="choosePaymentType">
                                            <input type="hidden" value="mastercard" id="Option" />
                                            <label class="form-check-label" for="flexRadioDefault2">
                                                <img src="/Content/Theme/images/master.png" alt="amex" />
                                            </label>
                                        </div>
                                    </div>
                                    <div class="col-3">
                                        <div class="form-check">
                                            <input class="form-check-input" type="radio" name="choosePaymentType">
                                            <input type="hidden" value="jcb" id="Option" />
                                            <label class="form-check-label" for="flexRadioDefault2">
                                                <img src="/Content/Theme/images/jcb.png" alt="amex" />
                                            </label>
                                        </div>
                                    </div>
                                    <div class="col-3">
                                        <div class="form-check">
                                            <input class="form-check-input" type="radio" name="choosePaymentType">
                                            <input type="hidden" value="amex" id="Option" />
                                            <label class="form-check-label" for="flexRadioDefault2">
                                                <img src="/Content/Theme/images/amex.png" alt="amex" />
                                            </label>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="radio" id="hellradio">
                                <label><input type="radio" class="chkPayment" name="paymentID" value="16" /><label class="lb_r">Thanh To&#225;n VNPAY</label></label>
                            </div>
                            <div class="radio">
                                <label><input type="radio" class="chkPayment" name="paymentID" value="17" /><label class="lb_r">Thanh to&#225;n bằng Momo</label></label>
                            </div>
                            <div class="radio">
                                <label><input type="radio" class="chkPayment" name="paymentID" value="18" /><label class="lb_r">Thanh to&#225;n qua cổng ShopeePay</label></label>
                            </div>
                            <div class="radio Hardcode d-none">
                                <label><input type="radio" class="chkPayment" name="paymentID" value="-1" /><label class="lb_r">Thanh toán bằng cổng MBBank</label></label>
                            </div>
                            <div id="paymenttypeMB" class="hidden">
                                <div class="row d-flex justify-content-between mb-3">
                                    <div class="col-6">
                                        <div class="form-check">
                                            <input class="form-check-input" type="radio" name="choosePaymentType">
                                            <input type="hidden" value="MBbankQR" id="Option" />
                                            <label class="form-check-label" for="flexRadioDefault1">
                                                <i class="icon icon--qr-code"></i> QRcode
                                            </label>
                                        </div>
                                    </div>
                                    <div class="col-6">
                                        <div class="form-check">
                                            <input class="form-check-input" type="radio" name="choosePaymentType">
                                            <input type="hidden" value="MBbankCard" id="Option" />
                                            <label class="form-check-label" for="flexRadioDefault2">
                                                <i class="icon icon--credit-card"></i> Thẻ
                                            </label>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="radio">
                                <label><input type="radio" class="chkPayment" name="paymentID" value="19" /><label class="lb_r">MBbank</label></label>
                            </div>
                            <div class="text-center">
                                <button type="submit" class="btn btn-primary text-uppercase">Thay đổi</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </main>
</main>
</body>
<!-- footer-copyright start -->
<%@include file="common/footer.jsp"%><!-- /.footer-copyright-->
<!-- footer-copyright end -->

</html>