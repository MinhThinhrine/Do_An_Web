package vn.edu.hcmuaf.Controller;

import vn.edu.hcmuaf.DAO.TourDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
@WebServlet(name = "ADD", urlPatterns = {"/admin/add"})
public class AddTour extends HttpServlet {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");



        String pname = request.getParameter("name");
        String pimage = request.getParameter("image");
        String pstartTime = request.getParameter("startTime"); // Sửa tên tham số này
        String pschedule = request.getParameter("schedule");

        String pprice = request.getParameter("price");
        int price = 0; // Giá trị mặc định hoặc giá trị khác tùy thuộc vào yêu cầu của bạn
        if (pprice != null && !pprice.isEmpty()) {
            try {
                price = Integer.parseInt(pprice);
            } catch (NumberFormatException e) {
                // Xử lý nếu chuỗi không chứa một số nguyên hợp lệ
                e.printStackTrace(); // Hoặc xử lý theo cách phù hợp với ứng dụng của bạn
            }
        }
        String pduration = request.getParameter("duration");
        String pdescription = request.getParameter("description");

        HttpSession session = request.getSession();
        String pregion = request.getParameter("region");

// Kiểm tra nếu giá trị của region là null hoặc rỗng
        if (pregion == null || pregion.trim().isEmpty()) {
            // Xử lý khi giá trị của region không hợp lệ
            // Ví dụ: Hiển thị thông báo lỗi cho người dùng
            request.setAttribute("errorMessage", "Region cannot be null or empty");
            request.getRequestDispatcher("order.jsp").forward(request, response);
        } else {
            // Tiếp tục thực hiện công việc cần thiết
            // ...
            TourDao dao = new TourDao();
            dao.addTour(pregion, 1, pname, pimage, price, pstartTime, pduration, pschedule, pdescription);
            request.getRequestDispatcher("/admin/managerProduct").forward(request, response);
            // Chuyển hướng hoặc xử lý tiếp theo nếu cần
        }





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
