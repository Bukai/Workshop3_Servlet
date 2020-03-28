package pl.coderslab.controller.Admin.group;

import pl.coderslab.daos.GroupDao;
import pl.coderslab.model.Group;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/editgroup")
public class EditGroup extends HttpServlet {

    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String name = req.getParameter("name");
        GroupDao groupDao = new GroupDao();

        if (req.getParameter("groupId") != null) {
            int groupId = Integer.parseInt(req.getParameter("groupId"));
            groupDao.update(new Group(groupId, name));
        }

        resp.sendRedirect("/adminGroup");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        if (request.getParameter("groupId") != null) {
            int groupId = Integer.parseInt(request.getParameter("groupId"));
            GroupDao groupDao = new GroupDao();
            request.setAttribute("group", groupDao.read(groupId));
        }

        request.getRequestDispatcher("/lib/admin/group/adminEditGroup.jsp").forward(request, response);
    }
}
