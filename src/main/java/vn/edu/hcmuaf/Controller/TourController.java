package vn.edu.hcmuaf.Controller;

import vn.edu.hcmuaf.DAO.TourDao;
import vn.edu.hcmuaf.DAO.UserDAO;
import vn.edu.hcmuaf.bean.Tour;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

public class TourController  extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
       doPost(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        TourDao tourDao = new TourDao();
        List<Tour> all = tourDao.getAllTourForIndex();
        request.setAttribute("data", all);
        request.getRequestDispatcher("index.jsp").forward(request,response);
    }
}
