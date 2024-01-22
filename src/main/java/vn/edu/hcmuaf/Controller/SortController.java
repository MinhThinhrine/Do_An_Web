package vn.edu.hcmuaf.Controller;

import vn.edu.hcmuaf.bean.Tour;
import vn.edu.hcmuaf.serice.SortTour;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet(name = "SortController", value = "/SortController")
public class SortController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        ArrayList<Tour> ListTour = (ArrayList<Tour>) session.getAttribute("ListTour");
        String action = request.getParameter("action");
        ArrayList<Tour> Listsort = null;

        if(action.equals("sortbypriceAscending")){
             Listsort = SortTour.SortByPriceAscending(ListTour);
        } else if(action.equals("sortbypriceDescending")){
            Listsort = SortTour.SortByPriceDescending(ListTour);
        }



        session.setAttribute("ListTour",Listsort);
        request.getRequestDispatcher("catelogy.jsp").forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
