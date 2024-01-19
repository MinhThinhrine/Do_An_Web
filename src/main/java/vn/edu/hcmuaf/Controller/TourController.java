package vn.edu.hcmuaf.Controller;

import vn.edu.hcmuaf.DAO.TourDao;
import vn.edu.hcmuaf.bean.Tour;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "TourController", urlPatterns = {"/tour"})
public class TourController  extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
       doPost(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Lấy dữ liệu từ cơ sở dữ liệu
        TourDao tourDao = new TourDao();
        ArrayList<Tour> tours = (ArrayList<Tour>) tourDao.getAllTourForIndex();

        // Đặt danh sách vào yêu cầu
        request.setAttribute("data", tours);


        // Chuyển hướng đến trang JSP
        request.getRequestDispatcher("test.jsp").forward(request, response);
    }
}
