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

@WebServlet("/addnewuser")
public class AddUser extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String group = request.getParameter("group");
        int groupId = Integer.parseInt(group.split("-")[0].replaceAll("\\s", ""));

        UserDao userDao = new UserDao();

        if (!name.isEmpty() && !email.isEmpty() && !password.isEmpty()) {
            userDao.create(new User(name, email, password, groupId));
            response.sendRedirect("/adminusers");

        } else {
            response.getWriter().println("Nie wypelniles wszystkich danych! Wroc na strone i wypelnij je wszystkie!");
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        GroupDao groupDao = new GroupDao();
        request.setAttribute("groups", groupDao.findAll());

        request.getRequestDispatcher("/lib/admin/user/addNewUser.jsp").forward(request, response);
    }
}
