<%@ page import="vn.edu.hcmuaf.bean.User" %>
<!DOCTYPE html>
<html lang="vi">
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<head>
    <meta charset="UTF-8">
    <title>Thông tin</title>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" rel="stylesheet"/>
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap" rel="stylesheet"/>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/6.4.2/mdb.min.css" rel="stylesheet"/>
    <link rel="shortcut icon" type="image/icon" href="assets/logo/favicon.png"/>

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/sweetalert2@10.16.3/dist/sweetalert2.min.css">
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@10.16.3/dist/sweetalert2.min.js"></script>
    <style>
        .return {
            font-size: 28px;
            color: #00d8fe;
        }

        section {
            height: 820px;
        }

        .row {
            margin-top: 50px;
        }

        .hidden {
            display: none;
        }

    </style>
<<<<<<< Updated upstream
=======
<<<<<<< HEAD
    <script>


        function enableEdit() {

            const phone = document.getElementById("phone");
            const address = document.getElementById("address");
            const date = document.getElementById("date");
            const username = document.getElementById("username")

            const userNameInput = document.createElement("input");
           userNameInput.style.width = "200px";
           userNameInput.style.height = "40px";
           userNameInput.style.border = "1px solid #ccc";
           userNameInput.style.borderRadius = "5px";
           userNameInput.style.padding = "10px";
           userNameInput.style.fontSize = "16px";
           userNameInput.style.marginBottom = "10px";


            // Tạo các input elements và gán giá trị từ phần text ban đầu
            const phoneInput = document.createElement("input");
            phoneInput.style.width = "200px";
            phoneInput.style.height = "40px";
            phoneInput.style.border = "1px solid #ccc";
            phoneInput.style.borderRadius = "5px";
            phoneInput.style.padding = "10px";
            phoneInput.style.fontSize = "16px";
            phoneInput.style.marginBottom = "10px";

            phoneInput.value = phone.textContent.trim();

            const dateInput = document.createElement('input');
            dateInput.type = 'date';
            dateInput.type = 'date';
            dateInput.style.width = '200px';
            dateInput.style.height = '40px';
            dateInput.style.border = '1px solid #ccc';
            dateInput.style.borderRadius = '5px';
            dateInput.style.padding = '10px';
            dateInput.style.fontSize = '16px';
            dateInput.style.marginBottom = '10px';

            dateInput.value = date.textContent.trim();

            const addressInput = document.createElement("input");
            addressInput.style.width = "400px";
            addressInput.style.height = "40px";
            addressInput.style.border = "1px solid #ccc";
            addressInput.style.borderRadius = "5px";
            addressInput.style.padding = "10px";
            addressInput.style.fontSize = "16px";

            addressInput.value = address.textContent.trim();
            // Thay thế phần text ban đầu bằng input elements
            phone.innerHTML = '';
            phone.appendChild(phoneInput);

            date.innerHTML = '';
            date.appendChild(dateInput);

            address.innerHTML = '';
            address.appendChild(addressInput);
        }

        function togglePasswordChange() {
            const navlinkuser = document.querySelector(".nav-link.user");
            const navlinkpassword = document.querySelector(".nav-link.change-password");
            const cardBody = document.getElementById("card-body");
            const customCardBody = document.getElementById("custom-card-body");
            const buttonuser = document.getElementById("buttonuser");
            const buttonforgotpassword = document.getElementById("buttonforgotpassword");

                navlinkpassword.classList.add("active");
                navlinkuser.classList.remove("active");
                cardBody.classList.add("hidden");
                customCardBody.classList.remove("hidden");
                buttonuser.classList.add("hidden");
                buttonforgotpassword.classList.remove("hidden");
        }

        function toggleUser() {
            const navlinkuser = document.querySelector(".nav-link.user");
            const navlinkpassword = document.querySelector(".nav-link.change-password");
            const cardBody = document.getElementById("card-body");
            const customCardBody = document.getElementById("custom-card-body");
            const buttonuser = document.getElementById("buttonuser");
            const buttonforgotpassword = document.getElementById("buttonforgotpassword");

            navlinkpassword.classList.remove("active");
            navlinkuser.classList.add("active");
            cardBody.classList.remove("hidden");
            customCardBody.classList.add("hidden");
            buttonuser.classList.remove("hidden");
            buttonforgotpassword.classList.add("hidden");

        }

        let phoneInputValue;
        let addressInputValue;
        let dateInputvalue;

        function done() {
            Swal.fire({
                title: 'Hoàn tất',
                html: 'Đã hoàn tất thanh toán.<br>Chúng tôi sẽ liên hệ bạn sớm nhất.',
                icon: 'success',
                confirmButtonText: 'Đóng'
            });
            window.location.href = "bill.jsp";
        }
    </script>
=======
>>>>>>> 12ae44791deae007d2ec308a64eed7a74368068a
>>>>>>> Stashed changes
</head>
<%
    String error = request.getAttribute("error") + "";
    error = (error == null || error.equals("null")) ? "" : error;
%>
<body>
<section style="background-color: #93949f;">

    <div class="container py-5">
        <th scope="col"><a class="return" href="index.jsp">
            <i class="fa-solid fa-arrow-left"></i>Trang Chủ</a>
        </th>
        <th>
            <a class="return" href="shopcart.jsp" style="float: right"> VALI <i class="fa-solid fa-suitcase-rolling"></i></a>
        </th>

        <div class="row" style="margin-top: 10px">
            <div id="avt" class="col-lg-4" style="margin-top: 50px">
                <div style="height: 490px" class="card mb-4">
                    <div style="margin-top: 90px" class="card-body text-center">
                        <img src="assets/images/client/5.png" alt="avatar"
                             class="rounded-circle img-fluid" style="width: 150px;">
                        <%
                            User user = (User) session.getAttribute("user");
                        %>
                        <h5 class="my-3"><%= user.getUserName() %></h5>
                        <p class="text-muted mb-4"><%=user.getAddress()%>></p>
                    </div>
                </div>
            </div>
            <div class="col-lg-8">
                <nav>
                    <div class="nav nav-tabs" id="nav-tab" role="tablist">
                        <a class="nav-item nav-link user active" id="nav-home-tab" data-toggle="tab" role="tab" aria-controls="nav-home" aria-selected="true" onclick="toggleUser()" style="cursor: pointer">Thông tin người dùng</a>
                        <a class="nav-item nav-link change-password" id="nav-profile-tab" data-toggle="tab" role="tab" aria-controls="nav-profile" aria-selected="false" onclick="togglePasswordChange()" style="cursor: pointer">Thay đổi mật khẩu</a>
                    </div>
                </nav>
<%--                --%>
                <div class="thongtinnguoidung" id="thongtinnguoidung">
                <div class="card mb-4" id="card-body">
                    <div class="card-body">
                        <div class="row">
                            <div class="col-sm-3">
                                <p class="mb-0">Tên người dùng</p>
                            </div>
                            <div class="col-sm-9" id="username">
                                <p class="text-muted mb-0"><%=user.getUserName()%></p>
                            </div>
                        </div>
                        <hr>
                        <div class="row">
                            <div class="col-sm-3">
                                <p class="mb-0">Email</p>
                            </div>
                            <div class="col-sm-9">
                                <p class="text-muted mb-0"><%=user.getEmail()%></p>
                            </div>
                        </div>
                        <hr>
                        <div class="row">
                            <div class="col-sm-3">
                                <p class="mb-0">Số điện thoại</p>
                            </div>
                            <div class="col-sm-9" id="phone">
                                <p class="text-muted mb-0"><%=user.getPhoneNumber()%></p>
                            </div>
                        </div>

                        <hr>
                        <div class="row">
                            <div class="col-sm-3">
                                <p class="mb-0">Địa chỉ</p>
                            </div>
                            <div class="col-sm-9" id="address">
                                <p class="text-muted mb-0"><%=user.getAddress()%></p>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-sm-3">
                                <p class="mb-0"></p>
                            </div>
                            <div class="col-sm-9">
                                <p class="text-muted mb-0"></p>
                            </div>
                        </div>
                    </div>
                </div>
                    <div class="button user" id="buttonuser">
                        <button style="margin-left: 100px; margin-right: 40px" class="btn btn-warning"
                                onclick="enableEdit()">Chỉnh sửa
                        </button>
                        <button class="btn btn-info" style="margin-right: 40px" onclick="saveData()">Lưu</button>
                        <button class="btn btn-danger" style="margin-right: 40px">Hủy</button>
                        <button class="btn btn-success" onclick="done()">Hoàn thành</button>
                    </div>
                </div>
<%--                --%>
                <form action="ChangePassword" method="post">
                    <div class="quenmk" id="quenmk">
                <div class="card mb-4 custom card-body hidden" id="custom-card-body" style="height: 495px">
                    <div class="row">
                        <div class="col-sm-3">
                            <p class="mb-0">Nhập mật khẩu cũ</p>
                        </div>
                        <div class="col-sm-9">
                            <input class="form-control" id="oldpassword" type="password" name="oldpassword" placeholder="" required autocomplete="on" autofocus >
                        </div>
                    </div>
                    <hr>
                    <div class="row">
                        <div class="col-sm-3">
                            <p class="mb-0">Nhập mật khẩu mới</p>
                        </div>
                        <div class="col-sm-9">
                            <input class="form-control" id="newpass1" name="newpass1" type="password" placeholder="Độ dài từ 6 đến 20 kí tự" minlength="6" maxlength="20" >
                        </div>
                    </div>
                    <hr>
                    <div class="row">
                        <div class="col-sm-3">
                            <p class="mb-0">Nhập lại mật khẩu mới</p>
                        </div>
                        <div class="col-sm-9" >
                            <input class="form-control" id="newpass2" name="newpass2" type="password" placeholder="" minlength="6" maxlength="20" >
                        </div>
                        <div>
                            <% if(error!=null || !error.equals("")) { %>
                            <div class="ques" style="width: 250px;margin: 15px auto -15px auto; color: red;text-align: center">
                                <span class="text-primary text-medium"></span><%=error%>
                            </div>
                            <% } %>
                        </div>
                    </div>
                </div>
                <div class="button forgot-password hidden " id="buttonforgotpassword">
                            <button class="btn btn-danger " style="margin-left: 100px;margin-right: 40px" type="reset" onclick="">Hủy
                            </button>
                            <button class="btn btn-success" type="submit" >Hoàn thành</button>
                        </div>
            </div>
          </form>
        </div>
        </div>
    </div>
</section>
</body>
<script src="assets/js/infor.js"></script>
<script type="text/javascript">
    // Lấy giá trị của attribute "stqmk"
    var stqmk = "<%=request.getAttribute("stqmk")%>";
    console.log("Giá trị của stqmk: " + stqmk);
    // Kiểm tra nếu giá trị là "show", thực hiện hàm togglePasswordChange()
    if (stqmk === "show") {
        togglePasswordChange();
    }
</script>


</html>
