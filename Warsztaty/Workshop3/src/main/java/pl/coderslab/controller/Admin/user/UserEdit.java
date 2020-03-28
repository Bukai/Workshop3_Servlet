package pl.coderslab.controller.Admin.user;

import pl.coderslab.daos.GroupDao;
import pl.coderslab.daos.UserDao;
import pl.coderslab.model.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/adminUserEdit")
public class UserEdit extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        int userId = Integer.parseInt(request.getParameter("id"));
        String group = request.getParameter("group");
        int groupId = Integer.parseInt(group.split("-")[0].replaceAll("\\s", ""));

        UserDao userDao = new UserDao();


        if (!name.isEmpty() && !email.isEmpty() && !password.isEmpty()) {
            userDao.update(new User(userId, name, email, password, groupId));
            response.sendRedirect("/adminusers");

        } else {
            response.getWriter().println("Nie wypelniles wszystkich danych! Wroc na strone i wypelnij je wszystkie!");
        }

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int userId = Integer.parseInt(request.getParameter("userId"));
        UserDao userDao = new UserDao();
        GroupDao groupDao = new GroupDao();
        request.setAttribute("user", userDao.read(userId));

        request.setAttribute("groups", groupDao.findAll());

        request.getRequestDispatcher("/lib/admin/user/adminEditUser.jsp").forward(request, response);
    }
}
