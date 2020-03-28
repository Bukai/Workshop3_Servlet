package pl.coderslab.controller.Admin.group;

import pl.coderslab.daos.GroupDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/adminGroup")
public class AdminGroup extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        GroupDao groupDao = new GroupDao();
        request.setAttribute("allGroups", groupDao.findAll());

        request.getRequestDispatcher("/lib/admin/group/groupList.jsp").forward(request, response);
    }
}
