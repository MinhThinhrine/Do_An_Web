package vn.edu.hcmuaf.Controller;

<<<<<<< HEAD:src/main/java/vn/edu/hcmuaf/Controller/BillServlet.java
import vn.edu.hcmuaf.DAO.TourDao;
import vn.edu.hcmuaf.bean.Tour;
=======
import vn.edu.hcmuaf.DAO.FeebackDAO;
import vn.edu.hcmuaf.DAO.UserDAO;
import vn.edu.hcmuaf.DAO.indexDao;
import vn.edu.hcmuaf.bean.*;
>>>>>>> 8a0f11ecda2e63adb18c17928e31967d4a21e238:src/main/java/vn/edu/hcmuaf/Controller/FeedServlet.java

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet("/BillServlet")
public class BillServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
<<<<<<< HEAD:src/main/java/vn/edu/hcmuaf/Controller/BillServlet.java
        int id = Integer.parseInt(request.getParameter("id"));
        TourDao tourDao = new TourDao();
        Tour tour = tourDao.findtourbyid(id);
        request.setAttribute("tour", tour);
        request.getRequestDispatcher("./bill.jsp").forward(request, response);
=======

>>>>>>> 8a0f11ecda2e63adb18c17928e31967d4a21e238:src/main/java/vn/edu/hcmuaf/Controller/FeedServlet.java
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        indexDao indx = new indexDao();
        User user = (User) session.getAttribute("user");
        String text = request.getParameter("danhgia");
        System.out.println("noi dung text trong svlr"+text);
        String error = "";
        if (user == null) {
            error = "Bạn phải đăng nhập để gửi đánh gá";
        } else if (text.isEmpty()) {
            error = "Hãy nhập nộp dung đánh giá";
        }

        if (!error.isEmpty()) {
            System.out.println("noi dung err trong svlr"+error);

            session.setAttribute("errorfeed", error);
            response.sendRedirect("index.jsp");
        } else {

            boolean kq = FeebackDAO.addFeedback(user.getId(), text);
            if (kq) {
                error = "Thành công";
                System.out.println("kq" + kq);
                session.setAttribute("errorfeed", error);
                response.sendRedirect("index.jsp");
            } else {
                error = "Xảy ra lỗi";
                session.setAttribute("errorfeed", error);
                response.sendRedirect("index.jsp");
            }
        }
    }
}
