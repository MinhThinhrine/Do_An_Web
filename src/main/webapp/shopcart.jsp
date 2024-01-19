<!doctype html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored= "false"%>
<%@ page contentType="text/html; charset=UTF-8" %>

<%@ page import="vn.edu.hcmuaf.bean.Tour" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="vn.edu.hcmuaf.DAO.TourDao" %>
<%@ page import="vn.edu.hcmuaf.bean.valies" %>
<%@ page import="vn.edu.hcmuaf.bean.User" %>
<%@ page import="java.text.DecimalFormat" %>
<%
    User user = (User) session.getAttribute("user");
    ArrayList<valies> vali_List = (ArrayList<valies>) session.getAttribute("vali-List");
    List<valies> toursVali = null;
        TourDao tDao = new TourDao();
    if(vali_List != null) {
        toursVali = tDao.getValiTour(vali_List);

        request.setAttribute("vali_List",vali_List);
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
                                if(vali_List!=null){
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
                                        <img src="assets/images/item/<%=t.getImage()%>" class="img-fluid rounded-3"
                                             style="width: 120px;" title = "Chi tiết" alt="Book" >
                                        </a>
                                        <div class="flex-column ms-4">
                                            <p class="mb-0"><%=t.getName()%></p>
                                            <p class="mb-2"><%=t.getDuration()%></p>
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
                                    <p class="mb-0" id="donGia1" style="font-weight: 500;">
                                        <span class="pull-right" style="margin-top: 25px;">
                                <% int number = t.getPrice();
                                DecimalFormat decimalFormat = new DecimalFormat("#,###");
                                String formattedString = decimalFormat.format(number);%>
                                <%=formattedString%>
                                        </p>
                                </td>
                                <td class="align-middle">
                                    <div class="col-md-1 col-lg-1 col-xl-1">
                                        <a href="RemoveFromValiServlet?id=<%=t.getId()%>" class="text-danger" onclick="dele(1)"><i
                                                class="fas fa-trash fa-lg"></i></a>
                                    </div>
                                </td>
                            </tr>
                            <% } } %>
                            </tbody>
                        </table>
                    </div>

                    <div class="card shadow-2-strong mb-5 mb-lg-0" style="border-radius: 16px;">
                        <div class="card-body p-4">

                            <div class="row">
                                <div class="col-lg-4 col-xl-4"></div>
                                <div class="col-lg-4 col-xl-4"></div>
                                <div class="col-lg-4 col-xl-4">
                                    <div class="d-flex justify-content-between" style="font-weight: 500;">
                                        <p class="mb-2">Tạm tính</p>
                                        <p class="mb-2" id="tamTinh">0đ</p>
                                    </div>

                                    <div class="d-flex justify-content-between" style="font-weight: 500;">
                                        <p class="mb-0">Dịch vụ khác</p>
                                        <p class="mb-0">0đ</p>
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