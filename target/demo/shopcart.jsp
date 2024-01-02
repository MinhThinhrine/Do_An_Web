<!doctype html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored= "false"%>
<%@ page contentType="text/html; charset=UTF-8" %>

<%@ page import="vn.edu.hcmuaf.bean.tour" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="vn.edu.hcmuaf.DAO.TourDao" %>
<%@ page import="vn.edu.hcmuaf.bean.valies" %>
<%
    ArrayList<valies> vali_list = (ArrayList<valies>) session.getAttribute("vali-list ");
    List<valies> toursVali = null;
    if(vali_list == null) {
        TourDao tDao = new TourDao();
        toursVali = tDao.getValiTour(vali_list);
        request.setAttribute("vali_list",vali_list);
    };
%>
<html class="no-js" lang="vi">
<%@ page contentType="text/html; charset=UTF-8" %>

<head>
    <meta charset="UTF-8">
    <!-- Font Awesome -->
    <link rel="shortcut icon" type="image/icon" href="assets/logo/favicon.png"/>

    <link
            href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css"
            rel="stylesheet"
    />
    <!-- Google Fonts -->
    <link
            href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap"
            rel="stylesheet"
    />
    <!-- MDB -->
    <link
            href="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/6.4.2/mdb.min.css"
            rel="stylesheet"
    />
    <style>
        .img-fluid{
            cursor: pointer;
        }
        .return {
            font-size: 20px;
            color: #00d8fe;
        }

        #num {
            color: black !important;
        }
    </style>
    <title>VALI</title>
</head>
<body>
<div id="container" style="height: 100%">
    <section class="h-100 h-custom">
        <div class="container h-100 py-5">
            <div class="row d-flex justify-content-center align-items-center h-100">
                <div class="col">

                    <div class="table-responsive">
                        <table class="table">
                            <thead>
                            <tr>

                                <th scope="col"><a class="return" href="catelogy.jsp">
                                    <i class="fa-solid fa-arrow-left"></i>Quay về</a></th>
                                <th scope="col">Trạng thái</th>
                                <th scope="col" style="width:170px;padding-left: 40px">Người lớn</th>
                                <th scope="col">Trẻ em ( Giảm 40% )</th>
                                <th scope="col">Giá</th>
                                <th scope="col"><a href="index.jsp">
                                    tour<span>Nest</span>
                                </a>
                                </th>

                            </tr>
                            </thead>
                            <tbody>
                            <%
                                if(vali_list!=null){
                                for(valies t : toursVali ) {
                            %>
                            <tr id="<%=t.getId()%>">
                                <th scope="row">
                                    <div class="d-flex align-items-center">
                                        <div class="d-flex align-items-center pe-2">
                                            <input class="form-check-input" type="radio" name="radioNoLabel"
                                                   id="radioItem1" value=""
                                                   aria-label="..."/>
                                        </div>
                                        <a href="${pageContext.request.contextPath}/DetailsServlet?id=<%=t.getId()%>">
                                        <img src="assets/images/item/" class="img-fluid rounded-3"
                                             style="width: 120px;" title = "Chi tiết" alt="Book" >
                                        </a>
                                        <div class="flex-column ms-4">
                                            <p class="mb-2"></p>
                                            <p class="mb-0"></p>
                                        </div>
                                    </div>
                                </th>
                                <td class="align-middle">
                                    <p class="mb-0" style="font-weight: 500;">Chưa thanh toán</p>
                                </td>
                                <td class="align-middle">
                                    <div class="d-flex flex-row">
                                        <button class="btn btn-link px-2" onclick="changeQuantity(this, -1,1)">
                                            <i class="fas fa-minus"></i>
                                        </button>

                                        <input id="form1" min="0" name="quantity" value="1" type="number"
                                               class="form-control form-control-sm" style="width: 55px;"/>

                                        <button class="btn btn-link px-2" onclick="changeQuantity(this, 1,1)">
                                            <i class="fas fa-plus"></i>
                                        </button>
                                    </div>
                                </td>
                                <td class="align-middle">
                                    <div class="d-flex flex-row">
                                        <button class="btn btn-link px-2" onclick="changeQuantity(this, -1,1)">
                                            <i class="fas fa-minus"></i>
                                        </button>

                                        <input id="form1-cop" min="0" name="quantity" value="1" type="number"
                                               class="form-control form-control-sm" style="width: 55px;"/>

                                        <button class="btn btn-link px-2" onclick="changeQuantity(this, 1,1)">
                                            <i class="fas fa-plus"></i>
                                        </button>
                                    </div>
                                </td>
                                <td class="align-middle">
                                    <p class="mb-0" id="donGia1" style="font-weight: 500;"></p>
                                </td>
                                <td class="align-middle">
                                    <div class="col-md-1 col-lg-1 col-xl-1">
                                        <a href="#!" class="text-danger" onclick="dele(1)"><i
                                                class="fas fa-trash fa-lg"></i></a>
                                    </div>
                                </td>
                            </tr>
                            <% }} %>
                            </tbody>
                        </table>
                    </div>

                    <div class="card shadow-2-strong mb-5 mb-lg-0" style="border-radius: 16px;">
                        <div class="card-body p-4">

                            <div class="row">
                                <div class="col-md-6 col-lg-4 col-xl-3 mb-4 mb-md-0">
                                    <form>
                                        <div class="d-flex flex-row pb-3">
                                            <div class="d-flex align-items-center pe-2">
                                                <input class="form-check-input" type="radio" name="radioNoLabel"
                                                       id="radioNoLabel1v"
                                                       value="" aria-label="..." checked/>
                                            </div>
                                            <div class="rounded border w-100 p-3">
                                                <p class="d-flex align-items-center mb-0">
                                                    <i class="fab fa-cc-mastercard fa-2x text-dark pe-2"></i>Credit
                                                    Card
                                                </p>
                                            </div>
                                        </div>
                                        <div class="d-flex flex-row pb-3">
                                            <div class="d-flex align-items-center pe-2">
                                                <input class="form-check-input" type="radio" name="radioNoLabel"
                                                       id="radioNoLabel2v"
                                                       value="" aria-label="..."/>
                                            </div>
                                            <div class="rounded border w-100 p-3">
                                                <p class="d-flex align-items-center mb-0">
                                                    <i class="fab fa-cc-visa fa-2x fa-lg text-dark pe-2"></i>Debit Card
                                                </p>
                                            </div>
                                        </div>
                                        <div class="d-flex flex-row">
                                            <div class="d-flex align-items-center pe-2">
                                                <input class="form-check-input" type="radio" name="radioNoLabel"
                                                       id="radioNoLabel3v"
                                                       value="" aria-label="..."/>
                                            </div>
                                            <div class="rounded border w-100 p-3">
                                                <p class="d-flex align-items-center mb-0">
                                                    <i class="fab fa-cc-paypal fa-2x fa-lg text-dark pe-2"></i>PayPal
                                                </p>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                                <div class="col-md-6 col-lg-4 col-xl-6" id="num">
                                    <div class="row">
                                        <div class="col-12 col-xl-6">
                                            <div class="form-outline mb-4 mb-xl-5">
                                                <input type="text" id="typeName" class="form-control-lg" siez="17"
                                                       placeholder="Name on card"/>
                                            </div>

                                            <div class="form-outline mb-4 mb-xl-5">
                                                <input type="text" id="typeExp" class="form-control-lg"
                                                       placeholder="MM/YY"
                                                       size="7" id="exp" minlength="7" maxlength="7"
                                                       style="width: 217.6px"/>
                                            </div>
                                        </div>
                                        <div class="col-12 col-xl-6">
                                            <div class="form-outline mb-4 mb-xl-5">
                                                <input type="text" id="typeText" class="form-control-lg" siez="17"
                                                       placeholder="Card Number" minlength="19" maxlength="19"/>
                                            </div>

                                            <div class="form-outline mb-4 mb-xl-5">
                                                <input type="password" id="typeText text" class="form-control-lg"
                                                       placeholder="&#9679;&#9679;&#9679;" size="1" minlength="3"
                                                       maxlength="3" style="width: 217.6px"/>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-4 col-xl-3">
                                    <div class="d-flex justify-content-between" style="font-weight: 500;">
                                        <p class="mb-2">Tạm tính</p>
                                        <p class="mb-2" id="tamTinh">0đ</p>
                                    </div>

                                    <div class="d-flex justify-content-between" style="font-weight: 500;">
                                        <p class="mb-0">Dịch vụ khác</p>
                                        <p class="mb-0">50,000đ</p>
                                    </div>

                                    <hr class="my-4">

                                    <div id="tongCong" class="d-flex justify-content-between mb-4"
                                         style="font-weight: 500;">
                                        <p class="mb-2">Tổng cộng</p>
                                        <p class="mb-2" id="ketQua">0đ</p>
                                    </div>

                                    <button type="button" class="btn btn-primary btn-block btn-lg" onclick="link()">
                                        <div class="d-flex justify-content-between">
                                            <a href="" style="color: white">Thanh toán</a>
                                            <span id="thanhToan">0đ</span>
                                        </div>
                                    </button>
                                </div>
                            </div>

                        </div>
                    </div>

                </div>
            </div>
        </div>
    </section>
</div>

<script src="assets/js/cart.js"></script>

</body>

</html>