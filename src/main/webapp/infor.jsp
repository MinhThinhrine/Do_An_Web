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
        #custom-card-body{
            height: 408px;
            border-radius:  0.5rem 0px 0.5rem 0.5rem;
        }
        #nav-home-tab{
            cursor: pointer;margin-bottom: -5px;border-radius: 10px 10px 0px 0px;
            padding: 25px;
            width: 50%;
            text-align: center;
            font-size: 1.12rem;
            color: #0dcaf0;
        }#nav-profile-tab{
            cursor: pointer;margin-bottom: -5px;border-radius: 10px 10px 0px 0px;
            width: 50%;
            text-align: center;
            padding: 25px;
                     font-size: 1.12rem;
                     color: #0dcaf0;
        }
        .btn{
            width: 150px;
            text-align: center;
        }
        .return {
            font-size: 26px;
            color: #00d8fe;
        }

        section {
            height: 820px;
        }
        .row{
            padding: 20px 0px 20px 20px;
        }
        .hidden {
            display: none;
        }

    </style>
</head>
<%
    String error = request.getAttribute("error") + "";
    error = (error == null || error.equals("null")) ? "" : error;
%>
<body>
<section style="background-color: #93949f;">

    <div class="container py-5">
        <th scope="col"><a class="return" href="index.jsp">
            <i class="fa-solid fa-arrow-left"></i> Trang Chủ</a>
        </th>

        <div class="row" style="margin-top: 40px">
            <div class="col-lg-2"></div>
            <div class="col-lg-8">
                <nav>
                    <div class="nav nav-tabs" id="nav-tab" role="tablist">
                        <a class="nav-item nav-link user active" id="nav-home-tab" data-toggle="tab" role="tab" aria-controls="nav-home"
                           aria-selected="true" onclick="toggleUser()"
                           >Thông tin người dùng</a>
                        <a class="nav-item nav-link change-password" id="nav-profile-tab"
                           data-toggle="tab" role="tab" aria-controls="nav-profile" aria-selected="false" onclick="togglePasswordChange()"
                           >Thay đổi mật khẩu</a>
                    </div>
                </nav>
<%--                --%>
                <div>
                <div class="card mb-4" id="card-body" style="border-radius: 0px 0.5rem 0.5rem 0.5rem ">
                    <div class="card-body">
                        <div class="row">
                            <%
                                User user = (User) session.getAttribute("user");
                            %>
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

                    </div>
                </div>
                    <div class="button user" id="buttonuser">
                        <button id="edit" style="margin-right: 40px" class="btn btn-danger "
                                >Chỉnh sửa
                        </button>
                        <button id="save" class="btn btn-success" style="display: none">Lưu thay đổi</button>
                    </div>
                </div>
<%--                --%>
                <form action="ChangePassword" method="post">
                    <div class="quenmk" id="quenmk">
                <div class="card mb-4 custom card-body hidden" id="custom-card-body">
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
                    <button class="btn btn-danger " style="margin-right: 40px" type="reset" onclick="toggleUser() ">Hủy
                    </button>
                            <button class="btn btn-success" type="submit" >Lưu thay đổi</button>
                        </div>
            </div>
          </form>
        </div>
            <div class="col-lg-2"></div>

        </div>
    </div>
</section>
</body>
<script src="assets/js/infor.js"></script>
<script>
    // Lấy giá trị của attribute "stqmk"
    var stqmk = "<%=request.getAttribute("stqmk")%>";
    console.log("Giá trị của stqmk: " + stqmk);
    // Kiểm tra nếu giá trị là "show", thực hiện hàm togglePasswordChange()
    if (stqmk === "show") {
        togglePasswordChange();
    }
    // Lấy các phần tử cần thao tác
    var phoneElement = document.getElementById('phone');
    var addressElement = document.getElementById('address');
    var saveButton = document.getElementById('save');
    var editButton = document.getElementById('edit');

    // Xử lý sự kiện khi nút "Chỉnh sửa" được bấm
    editButton.addEventListener('click', function() {
        // Lấy giá trị hiện tại của phone và address
        var currentPhone = phoneElement.innerText.trim();
        var currentAddress = addressElement.innerText.trim();

        // Tạo các ô input để nhập dữ liệu
        var phoneInput = document.createElement('input');
        phoneInput.setAttribute('type', 'text');
        phoneInput.setAttribute('class', 'form-control');
        phoneInput.setAttribute('value', currentPhone);

        var addressInput = document.createElement('input');
        addressInput.setAttribute('type', 'text');
        addressInput.setAttribute('class', 'form-control');
        addressInput.setAttribute('value', currentAddress);

        // Thay thế các phần tử hiện tại bằng các ô input
        phoneElement.innerHTML = '';
        phoneElement.appendChild(phoneInput);

        addressElement.innerHTML = '';
        addressElement.appendChild(addressInput);

        // Ẩn nút "Chỉnh sửa" và hiển thị nút "Lưu thay đổi"
        editButton.style.display = 'none';
        saveButton.style.display = 'inline';
    });

    // Xử lý sự kiện khi nút "Lưu thay đổi" được bấm
    saveButton.addEventListener('click', function() {
        // Lấy giá trị mới từ các ô input
        var newPhone = phoneElement.querySelector('input').value;
        var newAddress = addressElement.querySelector('input').value;

        // Tạo các phần tử paragraph để hiển thị giá trị mới
        var phoneParagraph = document.createElement('p');
        phoneParagraph.setAttribute('class', 'text-muted mb-0');
        phoneParagraph.innerText = newPhone;

        var addressParagraph = document.createElement('p');
        addressParagraph.setAttribute('class', 'text-muted mb-0');
        addressParagraph.innerText = newAddress;

        // Thay thế các ô input bằng các phần tử paragraph
        phoneElement.innerHTML = '';
        phoneElement.appendChild(phoneParagraph);

        addressElement.innerHTML = '';
        addressElement.appendChild(addressParagraph);

        // Ẩn nút "Lưu thay đổi" và hiển thị nút "Chỉnh sửa"
        saveButton.style.display = 'none';
        editButton.style.display = 'inline';
    });
</script>


</html>
