<%@ page import="vn.edu.hcmuaf.bean.User" %>
<!DOCTYPE html>
<html lang="vi">
<%@ page contentType="text/html; charset=UTF-8" %>

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
        .return{
            font-size: 28px;
            color: #00d8fe;
        }
        section {
            height: 820px;
        }
        .row {
            margin-top: 50px ;

        }

    </style>
    <script>
        function enableEdit() {
            // Lấy tham chiếu đến phần "Phone" và "Address"
            const phone = document.getElementById("phone");
            const address = document.getElementById("address");
            const date =document.getElementById("date")

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

            addressInput.value=address.textContent.trim();
            // Thay thế phần text ban đầu bằng input elements
            phone.innerHTML = '';
            phone.appendChild(phoneInput);

            date.innerHTML= '';
            date.appendChild(dateInput);

            address.innerHTML = '';
            address.appendChild(addressInput);



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
            window.location.href ="bill.jsp";
        }
    </script>
</head>
<body>
<section style="background-color: #93949f;">


    <%

        User user = (User) session.getAttribute("user");


    %>
    <div class="container py-5">
        <th scope="col"><a class="return" href="index.jsp">
            <i class="fa-solid fa-arrow-left"></i>Trang Chủ</a>
        </th>
        <th>
            <a class="return" href="shopcart.jsp" style="float: right"> VALI <i class="fa-solid fa-suitcase-rolling" ></i></a>
        </th>

        <div class="row">
            <div id="avt" class="col-lg-4">
                <div style="height: 495px" class="card mb-4">
                    <div style="margin-top: 90px" class="card-body text-center">
                        <img src="assets/images/client/5.png" alt="avatar"
                             class="rounded-circle img-fluid" style="width: 150px;">
                        <h5 class="my-3"><%=user.getUserName()%></h5>
                        <p class="text-muted mb-4"><%=user.getAddress()%>></p>

                    </div>
                </div>

            </div>
            <div class="col-lg-8">
                <div class="card mb-4">
                    <div class="card-body">
                        <div class="row">
                            <div class="col-sm-3">
                                <p class="mb-0">Tên người dùng</p>
                            </div>
                            <div class="col-sm-9">
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
                                <p class="mb-0">Ngày sinh</p>
                            </div>
                            <div class="col-sm-9" >
                                <p class="text-muted mb-0" id="date">30-11-2003</p>
                            </div>
                        </div>
                        <hr>
                        <div class="row">
                            <div class="col-sm-3">
                                <p class="mb-0">Địa chỉ</p>
                            </div>
                            <div class="col-sm-9" id="address">
                                <p class="text-muted mb-0"><%=user.getAddress()%>></p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div >
            <button style="margin-left: 500px;margin-right: 40px" class="btn btn-warning" onclick="enableEdit()">Chỉnh sửa</button>
            <button class="btn btn-info" style="margin-right: 40px" onclick="saveData()">Lưu</button>
            <button class="btn btn-danger" style="margin-right: 40px">Đổi mật khẩu</button>
            <button class="btn btn-success" onclick="done()"> Hoàn thành</button>
        </div>
    </div>
</section>
</body>
</html>
