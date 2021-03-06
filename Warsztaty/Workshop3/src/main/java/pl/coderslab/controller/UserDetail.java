package pl.coderslab.controller;

import pl.coderslab.daos.SolutionDao;
import pl.coderslab.daos.UserDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/userDetails")
public class UserDetail extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        UserDao userDao = new UserDao();
        SolutionDao solutionDao = new SolutionDao();

        int userId = Integer.parseInt(request.getParameter("userId"));
        request.setAttribute("user", userDao.read(userId));
        request.setAttribute("solutions", solutionDao.findAllUserSolutions(userId));

        request.getRequestDispatcher("/lib/userDetails.jsp").forward(request, response);
    }
}
