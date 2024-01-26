package vn.edu.hcmuaf.Controller;

import vn.edu.hcmuaf.DAO.TourDao;
import vn.edu.hcmuaf.bean.*;
import vn.edu.hcmuaf.bean.tour;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "ServiceController", value = "/ServiceController")
public class ServiceController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int numadlut = Integer.parseInt(request.getParameter("numadult"));
        String name = request.getParameter("ttllfullName");
        String email = request.getParameter("ttllemail");
        String phone = request.getParameter("ttllphone");
        String address = request.getParameter("ttlladdress");

        System.out.println(numadlut);
        RequestDispatcher res = null;
        List<Customer> lcs = new ArrayList<>();
        for (int i =0;i<numadlut;i++){
            String hoten = request.getParameter("fullName"+i);
            String gioitinh = request.getParameter("gender"+i);
            int ngay = Integer.parseInt(request.getParameter("ngay"+i));
            int thang = Integer.parseInt(request.getParameter("thang"+i));
            int nam = Integer.parseInt(request.getParameter("nam"+i));
            Customer cus = new Customer(hoten,gioitinh,ngay,thang,nam);
            System.out.print(cus);
            lcs.add(cus);
        }
        int id = Integer.parseInt(request.getParameter("id"));
        TourDao tourDao = new TourDao();
        tour tour = tourDao.findtourbyid(id);
        request.setAttribute("tour", tour);
        request.getRequestDispatcher("PaymentServlet" +id).forward(request, response);
    }
}
