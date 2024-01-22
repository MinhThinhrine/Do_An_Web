package vn.edu.hcmuaf.Controller;

import vn.edu.hcmuaf.DAO.indexDao;
import vn.edu.hcmuaf.bean.*;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet("/FeedServlet")
public class FeedServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        indexDao indx = new indexDao();
        List<feedback> feedslist = indx.getFeedbacks();
        session.setAttribute("feeds", feedslist);
        request.getRequestDispatcher("./index.jsp").forward(request, response);
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
