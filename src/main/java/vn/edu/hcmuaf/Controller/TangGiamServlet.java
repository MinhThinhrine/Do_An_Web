package vn.edu.hcmuaf.Controller;

import vn.edu.hcmuaf.DAO.TourDao;
import vn.edu.hcmuaf.bean.valies;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

@WebServlet("/TangGiamServlet")
public class TangGiamServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
{
            HttpSession sesion = request.getSession();
            response.setContentType("text/html;charset=UTF-8");
            try (PrintWriter out = response.getWriter()) {
                String action = request.getParameter("action");
                int id = Integer.parseInt(request.getParameter("id"));
                TourDao td = new TourDao();
                valies c = null;
                try {
                    c = td.findvalibyid(id);
                } catch (SQLException e) {
                    throw new RuntimeException(e);
                }
                out.println("đã link");
                int i = c.getNumChildren() + 1;
//                out.println(c.getNumAdult() + " " + c.getNumChildren() + " " + i);
                c.setNumChildren(i);
//                out.println(c.getNumAdult() + " " + c.getNumChildren() + " " + i);

                if (action != null && id >= 1) {
                    if (action.equals("inc")) {
//                        out.println(c.getNumAdult() + " " + c.getNumChildren() + " " + i);
                        int quatity = (int) sesion.getAttribute("quatity");

                        quatity++;
                       int result =  quatity;
                         sesion.setAttribute("quatity",quatity);
                        request.setAttribute("id",id);
//                        request.getRequestDispatcher( "ServiceServlet?id=" + (id)).forward(request, response);
//                        out.println(" quali" +quantity);
                        response.sendRedirect("ServiceServlet?id=" +id);
//                        out.println(" numx" + td.numAldul(quantity));

                    }
//
//                    if (action.equals("dec")) {
//                            if ( c.getNumAdult() > 1) {
//                                int quantity = c.getNumAdult();
//                                quantity--;
//                                c.setNumAdult(quantity);
//                            }
//                        response.sendRedirect(x);
//
//                    }
//                    if (action.equals("incc")) {
//
//                                int quantity = c.getNumChildren();
//                                quantity++;
//                                c.setNumChildren(quantity);
//                                response.sendRedirect(x);
//
//
//                    }
//
//                    if (action.equals("decc")) {
//                            if (c.getNumChildren() > 1) {
//                                int quantity = c.getNumChildren();
//                                quantity--;
//                                c.setNumChildren(quantity);
//                            }
//                        response.sendRedirect(x);
//
//                    }
//                } else {
//                    response.sendRedirect(x);
//                }
                }
            }
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
