<!DOCTYPE html>
<html lang="en">
<head>
    <%@ page contentType="text/html; charset=UTF-8" %>

    <meta charset="UTF-8">
    <title>Đổi mật khẩu</title>
    <link rel="stylesheet" href="assets/css/csslogin.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
    <link rel="shortcut icon" type="image/icon" href="assets/logo/favicon.png"/>

</head>
<body>
    <div id="container">
        <div id="content">
            <div class="signin" style="padding: 37px 77px 50px;"><b style="font-size: 28px;">Đổi mật khẩu</b></div>
            <div class="user" style="margin-bottom: 30px;">
                <input id="oldpassword" type="password" name="oldpassword" placeholder="Nhập lại mật khẩu cũ" required autocomplete="on" autofocus >
                <p id="result"></p>
            </div>
            <div class="pass">
                <input id="newpass1" name="newpass1" type="password" placeholder="Nhập mật khẩu mới" minlength="6" maxlength="20" >
            </div>
            <div class="pass" style="margin-top: 30px;">
                <input id="newpass2" type="password" id="newpass2" placeholder="Nhập lại mật khẩu mới" minlength="6" maxlength="20" >
            </div>
            <div class="button"><button type="submit" name="submit" id="submit"><a>XÁC NHẬN</a>
            </button>
            </div>

            <div class="forget"><a href="forgetpass.jsp">Quên mật khẩu ?</a></div>
            <div class="ques">Bạn muốn trải nghiệm
                <a href="index.jsp">TourNest</a>?
            </div>
            <div class="signup">
                <a href="register.jsp">ĐĂNG KÝ</a>
            </div>
        </div>
    </div>

        </div>

    <script src="assets/js/login.js"></script>

</body>

</html>