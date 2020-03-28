package pl.coderslab.controller.Admin;

import pl.coderslab.daos.ExerciseDao;
import pl.coderslab.daos.GroupDao;
import pl.coderslab.daos.SolutionDao;
import pl.coderslab.daos.UserDao;
import pl.coderslab.model.Group;
import pl.coderslab.model.Solution;
import pl.coderslab.model.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/delete")
public class AdminDelete extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String equal = request.getParameter("equal");
        int id = Integer.parseInt(request.getParameter("id"));


        switch (equal) {
            case "exercise":
                ExerciseDao exerciseDao = new ExerciseDao();
                exerciseDao.delete(id);
                response.sendRedirect("/adminExercises");
                break;
            case "user":
                UserDao userDao = new UserDao();
                userDao.delete(id);
                response.sendRedirect("/usersAdmin");
                break;
            case "group":
                GroupDao groupDao = new GroupDao();
                groupDao.delete(id);
                response.sendRedirect("/adminGroup");
                break;
            case "solution":
                SolutionDao solutionDao = new SolutionDao();
                solutionDao.delete(id);
                response.sendRedirect("/admindetails");
                break;
        }
    }
}
