package pl.coderslab.controller.Admin.user;

import pl.coderslab.daos.UserDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/usersAdmin")
public class UsersAdmin extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        UserDao userDao = new UserDao();
        int groupId = Integer.parseInt(request.getParameter("groupId"));
        request.setAttribute("usersdetails", userDao.findAllByGroupId(groupId));

        request.getRequestDispatcher("/lib/admin/user/usersAdmin.jsp").forward(request, response);

    }
}
