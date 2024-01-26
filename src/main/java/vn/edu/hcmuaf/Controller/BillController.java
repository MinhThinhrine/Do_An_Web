package vn.edu.hcmuaf.Controller;

import vn.edu.hcmuaf.DAO.TourDao;
import vn.edu.hcmuaf.bean.tour;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "BillController", value = "/BillController")
public class BillController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        String date = request.getParameter("date");
        String id = request.getParameter("tour");
        String payment = request.getParameter("pay");

        TourDao tourDao = new TourDao();
        request.setAttribute("date",date);
        tour tour = tourDao.findtourbyid(Integer.parseInt(id));
        request.setAttribute("tour", tour);

        request.getRequestDispatcher("bill.jsp").forward(request,response);
    }
}
