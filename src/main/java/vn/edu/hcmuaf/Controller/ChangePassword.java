package vn.edu.hcmuaf.Controller;

import vn.edu.hcmuaf.DB.ConnectToDatabase;
import vn.edu.hcmuaf.bean.User;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.text.Normalizer;
import java.util.regex.Pattern;

@WebServlet(name = "ChangePassword", value = "/ChangePassword")
public class ChangePassword extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            HttpSession session = request.getSession();
            User user = (User) session.getAttribute("user");
            String passuser = user.getPassword();
            String oldpass = request.getParameter("oldpassword");
            String newpass1 = request.getParameter("newpass1");
            String newpass2 = request.getParameter("newpass2");
            String erroldpass = "";
            String errnewpass1 = "";
            String errnewpass2 = "";
            RequestDispatcher dispatcher = null;

            if (oldpass == null || oldpass.trim().isEmpty()) {
                erroldpass = "Vui lòng nhập mật khẩu cũ";
//                 error = "oldpassnull";
            }
            if (oldpass != null && passuser != null && !oldpass.equals(passuser)) {
               erroldpass = "Mật khẩu cũ không đúng";
              // mã khác
            }
            if (newpass1 == null || newpass1.trim().isEmpty()) {
                errnewpass1 = "Vui lòng nhập mật khẩu mới";
//                error = "newpass1null";
            }
            
            if (oldpass != null && newpass1 != null && oldpass.equals(newpass1)) {
            // Báo lỗi "Mật khẩu cũ không được giống mật khẩu mới"
                errnewpass1 = "Mật khẩu cũ không được giống mật khẩu mới";
             }

             if (newpass2 == null || newpass2.trim().isEmpty()) {
                errnewpass2 = "Vui lòng nhập lại mật khẩu mới";
//                error = "newpass2null";
            }
            if (newpass1 != null && newpass1.length() < 6) {
                errnewpass1 = "Mật khẩu mới phải có ít nhất 6 kí tự";
//                error = "minnewpass";
            }
            if (newpass1 != null && newpass2 != null && !newpass1.equals(newpass2)) {
               errnewpass2 = "Mật khẩu nhập lại không giống với mật khẩu mới";
            }

            if (newpass1 != null && containsWhitespace(newpass1)) {
               errnewpass2 = "Mật khẩu mới không được chứa khoảng trắng";
            // mã khác
            }

            if (checkSpecialCharacters(newpass1)) {
                errnewpass1 = "Mật khẩu mới không được chứa các chữ cái có dấu";
//                error = "vietnamese";
            }
            if (!newpass1.matches("^[a-zA-Z0-9!@#$]*$")) {
                errnewpass1 = "Mật khẩu mới không được chứa các ký tự đặc biệt ngoại trừ !@#$";
//                error = "kitu";
            }

            if (!erroldpass.isEmpty() || !errnewpass2.isEmpty() || errnewpass1.isEmpty()) {
                request.setAttribute("erroldpass", erroldpass);
                request.setAttribute("errnewpass2", errnewpass2);
                request.setAttribute("errnewpass1", errnewpass1);
                request.setAttribute("showQuenmkTab", "show");
                dispatcher = request.getRequestDispatcher("infor.jsp#quenmk");
                dispatcher.forward(request, response);
            } else {
                try {
                    Connection conn = ConnectToDatabase.getConnect();
                    PreparedStatement pst = conn.prepareStatement("UPDATE users SET password = ? where users.id = ? ");
                    pst.setString(1, newpass1);
                    pst.setInt(2, user.getId());

                    int roundCount = pst.executeUpdate();
                    if (roundCount > 0) {
                        request.setAttribute("status", "Thay đổi mật khẩu thành công");
                        //                    dispatcher = request.getRequestDispatcher("login.jsp");
                        // Xóa session
                        request.getSession().invalidate();

                        response.sendRedirect("login.jsp");
                    } else {
                        request.setAttribute("error", "Thay đổi mật khẩu không thành công. Xin vui lòng thực hiện lại");
                        dispatcher = request.getRequestDispatcher("infor.jsp");
                    }
                } catch (Exception e) {
                    System.out.println("lỗi" + e.getMessage());
                    e.printStackTrace();
                    throw new RuntimeException(e);
                }
            }

        }

    //---------------------------------------------------------------------------------------------------
    // Kiểm tra xem chuỗi có chứa khoảng trắng không
    private static boolean containsWhitespace (String str){
        return str.contains(" ");
    }

    //không được chứa các ký tự đặc biệt ngoại trừ !@#$" và khoảng trắng
    private boolean containsSpecialCharacters (String str){
        return !str.matches("^[!@#$]*$");
    }

    //không được chứa các kí tự có dấu
    public static boolean checkSpecialCharacters (String string){
        String normalizedString = Normalizer.normalize(string, Normalizer.Form.NFD);
        Pattern pattern = Pattern.compile("\\p{InCombiningDiacriticalMarks}+");
        String withoutDiacritics = pattern.matcher(normalizedString).replaceAll("");

        return !string.equals(withoutDiacritics);
    }

    // Loại bỏ khoảng trắng ở hai đầu chuỗi và so sánh với chuỗi gốc
    private static boolean hasLeadingTrailingWhitespace (String str){
        return !str.equals(str.trim());
    }
    }


