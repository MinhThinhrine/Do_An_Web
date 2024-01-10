package vn.edu.hcmuaf.Controller;


import vn.edu.hcmuaf.DAO.UserDAO;
import vn.edu.hcmuaf.bean.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "RegisterController", value = "/register")
public class RegisterController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        // Lấy thông tin từ form đăng ký
//        String username = request.getParameter("userName");
//        String email = request.getParameter("email");
//        String password = request.getParameter("pass1");
//        String confirmPassword = request.getParameter("pass2");
//
//        // Kiểm tra mật khẩu và xác nhận mật khẩu có khớp nhau hay không
//        if (!password.equals(confirmPassword)) {
//            // Mật khẩu không khớp, có thể hiển thị thông báo lỗi hoặc chuyển hướng đến trang đăng ký
//            response.sendRedirect("register.jsp");
//            return;
//        }
//
//        // Tạo đối tượng User
//        User user = new User(username, email, password);
//
//        // Thêm người dùng vào cơ sở dữ liệu
//        UserDAO userDAO = new UserDAO();
//
//        // Kiểm tra email và thêm người dùng
//        if (userDAO.isEmailExists(email)) {
//            // Email đã tồn tại, có thể hiển thị thông báo lỗi hoặc chuyển hướng đến trang đăng ký
//            response.sendRedirect("register.jsp");
//        } else {
//            userDAO.addUser(user);
//
//            // Chuyển hướng đến trang đăng nhập hoặc trang đăng ký thành công
//            response.sendRedirect("login.jsp");
//        }
        doPost(request,response);
    }



    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Lấy thông tin từ form đăng ký
        String username = request.getParameter("userName");
        String email = request.getParameter("email");
        String password = request.getParameter("pass1");
        String confirmPassword = request.getParameter("pass2");


        // Kiểm tra mật khẩu và xác nhận mật khẩu có khớp nhau hay không
        if (!password.equals(confirmPassword)) {
            // Mật khẩu không khớp, có thể hiển thị thông báo lỗi hoặc chuyển hướng đến trang đăng ký
            response.sendRedirect("register.jsp");
            return;
        }
//
//        // Tạo đối tượng User
//        User user = new User(username, email, password);
//
//        // Thêm người dùng vào cơ sở dữ liệu
//        UserDAO userDAO = new UserDAO();
//
//        // Kiểm tra email và thêm người dùng
//        if (userDAO.isEmailExists(email)) {
//            // Email đã tồn tại, có thể hiển thị thông báo lỗi hoặc chuyển hướng đến trang đăng ký
//            response.sendRedirect("register.jsp");
//        } else {
//            userDAO.addUser(user);
//
//            // Chuyển hướng đến trang đăng nhập hoặc trang đăng ký thành công
//            response.sendRedirect("login.jsp");
//        }
    }
}