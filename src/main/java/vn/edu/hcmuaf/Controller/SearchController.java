package vn.edu.hcmuaf.Controller;

import vn.edu.hcmuaf.DAO.TourDao;
import vn.edu.hcmuaf.bean.tour;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.LinkedList;
import java.util.List;
import java.util.Scanner;

@WebServlet(name = "SearchController", value = "/SearchController")
public class SearchController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=utf-8");

        String startInput = request.getParameter("dxp");
        String endInput = request.getParameter("diemden");
        System.out.println("dxp " + startInput);
        System.out.println("diemden " + endInput);
        System.out.println("--------------------------------------");

        List<tour> searchResults = new TourDao().findAll();
        int size = searchResults.size();
        System.out.println(size);

        List<tour> kqtimkiem = new LinkedList<>();

        for (tour t : searchResults) {
            String input = t.getName();

//...

// Nếu cả hai điểm đều không được nhập
            if ((startInput == null || startInput.isEmpty()) && (endInput == null || endInput.isEmpty())) {
                kqtimkiem.add(t);
            } else {
                int firstDash = input.indexOf("-");
                int lastDash = input.lastIndexOf("-");

                if (firstDash != -1 && lastDash != -1) {
                    String startPoint = input.substring(0, firstDash).trim();
                    String endPoint = input.substring(lastDash + 1).trim();

                    // Nếu không nhập điểm cuối, chỉ kiểm tra điểm đầu
                    if ((endInput == null || endInput.isEmpty()) && startPoint.equals(startInput)) {
                        kqtimkiem.add(t);
                    }
                    // Nếu không nhập điểm đầu, chỉ kiểm tra điểm cuối
                    else if ((startInput == null || startInput.isEmpty()) && endPoint.equals(endInput)) {
                        kqtimkiem.add(t);
                    }
                    // Nếu cả hai đều được nhập, kiểm tra cả điểm đầu và cuối
                    else if (startPoint.equals(startInput) && endPoint.equals(endInput)) {
                        kqtimkiem.add(t);
                    }
                } else {
                    // Nếu không có dấu "-" trong chuỗi, so sánh nguyên chuỗi với điểm đầu nhập vào
                    if ((endInput == null || endInput.isEmpty()) && startInput != null && startInput.equals(input)) {
                        kqtimkiem.add(t);
                    }
                    if ((startInput == null || startInput.isEmpty()) && endInput != null && endInput.equals(input)) {
                        kqtimkiem.add(t);
                    }
                }
            }
        }
            System.out.println("kqtk: " + kqtimkiem.size());
            request.setAttribute("tours", kqtimkiem);
            request.getRequestDispatcher("catelogy.jsp").forward(request, response);
        }
    }


