package vn.edu.hcmuaf.Controller;


import vn.edu.hcmuaf.DAO.userDAO;
import vn.edu.hcmuaf.DB.ConnectToDatabase;
import vn.edu.hcmuaf.bean.User;
import vn.edu.hcmuaf.bean.User2;
import vn.edu.hcmuaf.serice.UserService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.Connection;

@WebServlet(name = "LoginController", value = "/login")
public class LoginController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }

    /**
     * @param request  an {@link HttpServletRequest} object that
     *                 contains the request the client has made
     *                 of the servlet
     * @param response an {@link HttpServletResponse} object that
     *                 contains the response the servlet sends
     *                 to the client
     * @throws ServletException
     * @throws IOException
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            String email = request.getParameter("email")==null?"":request.getParameter("email");
            String pass = request.getParameter("password")==null?"":request.getParameter("password");





            // Sử dụng hàm getUserByEmail để lấy thông tin người dùng
            userDAO userDao = new userDAO();
            User u = userDAO.checkLogin(email,pass);
            if(u != null){
                HttpSession session = request.getSession();
                session.setAttribute("auth", u);
                response.sendRedirect("./index.jsp");
            } else {
                request.setAttribute("err", "Email or Password is incorrect");
                request.getRequestDispatcher("./login.jsp").forward(request, response);
            }
        } catch (Exception e) {
            e.printStackTrace();
            response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "Internal Server Error");
        }
    }

}
