package vn.edu.hcmuaf.Controller;

import vn.edu.hcmuaf.DB.ConnectToDatabase;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

@WebServlet(name = "NewPassword", value = "/NewPassword")
public class NewPassword extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        String email = (String) session.getAttribute("email");
        String newpass1 = request.getParameter("newpass1");
        String newpass2 = request.getParameter("newpass2");
        String error = "";
        RequestDispatcher dispatcher = null;

        if (newpass1 == null || newpass1.equals("")) {
            error = "Vui lòng nhập mật khẩu mới";
        } else if (newpass2 == null || newpass2.equals("")) {
            error = "Vui lòng nhập lại mật khẩu mới";
        } else if (newpass1.length() < 6) {
            error = "Mật khẩu mới phải có ít nhất 6 kí tự";
        } else if (!newpass1.equals(newpass2)) {
            error = "Mật khẩu nhập lại không giống với mật khẩu mới";
        }

        if (!error.equals("")) {
            request.setAttribute("error", error);
            dispatcher = request.getRequestDispatcher("newpassword.jsp");
            dispatcher.forward(request,response);
        } else {
            try {
                Connection conn = ConnectToDatabase.getConnect();
                PreparedStatement pst = conn.prepareStatement("update users set password = ? where email = ? ");
                pst.setString(1, newpass1);
                pst.setString(2, email);
                int rowCount = pst.executeUpdate();
                if(rowCount >0){
                    request.setAttribute("status","Thay đổi mật khẩu thành công");
                    dispatcher = request.getRequestDispatcher("login.jsp");
                }else{
                    request.setAttribute("error","Thay đổi mật khẩu không thành công. Xin vui lòng thực hiện lại");
                    dispatcher = request.getRequestDispatcher("newpassword.jsp");
                }
                dispatcher.forward(request,response);
            } catch (Exception e) {
                System.out.println("Lỗi"+e.getMessage());
                e.printStackTrace();
                throw new RuntimeException(e);
            }

        }
        System.out.print(error);
    }
}
