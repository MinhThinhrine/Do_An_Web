<!DOCTYPE html>
<html lang="en">
<head>
    <%@ page contentType="text/html; charset=UTF-8" %>

    <meta charset="UTF-8">
    <title>Đăng nhập</title>
    <link rel="stylesheet" href="assets/css/csslogin.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
    <link rel="shortcut icon" type="image/icon" href="assets/logo/favicon.png"/>

</head>
<body>
    <div id="container">
        <div id="content">
            <div class="signin"><b>ĐĂNG NHẬP</b></div>
            <div class="user">
                <input id="email" type="email" placeholder="Email" required autocomplete="on" autofocus >
                <p id="result"></p>
            </div>
            <div class="pass">
                <input id="pass" type="password" placeholder="Mật khẩu từ 6 - 20 kí tự" minlength="6" maxlength="20" >
            </div>
            <div class="button"><button type="submit" name="btn" id="btn"><a>ĐĂNG NHẬP</a>
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