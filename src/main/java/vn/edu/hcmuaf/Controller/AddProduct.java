package vn.edu.hcmuaf.Controller;

import vn.edu.hcmuaf.DAO.TourDao;
import vn.edu.hcmuaf.bean.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
@WebServlet(name = "addProduct", value = "/demo/add")
public class AddProduct extends HttpServlet {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        String pregion = request.getParameter("region");
        String pname = request.getParameter("name");
        String pimage = request.getParameter("image");
        String pstartTime = request.getParameter("image");
        String pschedule = request.getParameter("schedule");




        String pprice = request.getParameter("price");
        int price = Integer.parseInt(pprice);
        String pduration = request.getParameter("duration");
        String pdescription = request.getParameter("description");

        HttpSession session = request.getSession();


        TourDao dao = new TourDao();
        dao.addProduct(pregion,1,pname,pimage,price,pstartTime,pduration,pschedule,pdescription);
        request.setAttribute("mess", "Product Added!");
        request.getRequestDispatcher("managerProduct").forward(request, response);
    }
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        processRequest(req,resp);
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
       processRequest(req,resp);
    }
}
