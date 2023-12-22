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
        String newpass1 = (String) request.getAttribute("newpass1");
        String newpass2 = (String) request.getAttribute("newpass2");
        String error = "";
        RequestDispatcher dispatcher = null;

        if ((newpass1 != null && newpass1.length() < 6)) {
            error = "Mật khẩu mới phải lớn hơn 6 kí tự";
            request.setAttribute("error1", error);
        } else if (newpass1 == null || newpass1.equals("")) {
            error = "Vui lòng nhập mật khẩu mới";
            request.setAttribute("error1", error);
        } else if (newpass2 == null || newpass2.equals("")) {
            error = "Vui lòng nhập lại mật khẩu mới";
            request.setAttribute("error2", error);
        } else if (newpass1 != newpass2 || !newpass1.equals(newpass2)) {
            error = "Vui lòng nhập lại mật khẩu mới";
            request.setAttribute("error2", error);
        }

        if (error != "" || !error.equals(null)) {
            dispatcher = request.getRequestDispatcher("newpassword.jsp");
            dispatcher.forward(request,response);
        } else {
            try {
                PreparedStatement pst = ConnectToDatabase.executeUpdate("UPDATE user SET password= ? " + "WHERE email=?");
                pst.setString(1, newpass1);
                pst.setString(2, email);

                int rowCount = pst.executeUpdate();
                if(rowCount >0){
                    request.setAttribute("status","Thay đổi mật khẩu thành công");
                    dispatcher = request.getRequestDispatcher("login.jsp");
                }else{
                    request.setAttribute("status","Thay đổi mật khẩu không thành công");
                    dispatcher = request.getRequestDispatcher("newpassword.jsp");
                }
                dispatcher.forward(request,response);
            } catch (Exception e) {
                e.printStackTrace();
                throw new RuntimeException(e);
            }

        }
    }
}
