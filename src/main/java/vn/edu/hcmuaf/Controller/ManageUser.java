package vn.edu.hcmuaf.Controller;

import vn.edu.hcmuaf.DAO.userDAO;
import vn.edu.hcmuaf.bean.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "ManagerUser", urlPatterns = {"/managerUser"})
public class ManageUser extends HttpServlet {



    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        HttpSession session = request.getSession();
        User a = (User) session.getAttribute("user");
        int id = a.getId();
        userDAO dao = new userDAO();

        List<User> list = dao.getAllUser();


        request.setAttribute("listA", list);

        request.getRequestDispatcher("user.jsp").forward(request, response);
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
//        response.setContentType("text/html;charset=UTF-8");
//        HttpSession session = request.getSession();
//        User a = (User) session.getAttribute("user");
//        int id = a.getId();
//        userDAO dao = new userDAO();
//
//        List<User> list = dao.getAllUser();
//
//
//        request.setAttribute("listA", list);
//
//        request.getRequestDispatcher("user.jsp").forward(request, response);
    }
}
