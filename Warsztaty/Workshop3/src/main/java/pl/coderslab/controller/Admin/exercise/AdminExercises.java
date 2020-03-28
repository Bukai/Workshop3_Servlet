package pl.coderslab.controller.Admin.exercise;

import pl.coderslab.daos.ExerciseDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/adminExercises")
public class AdminExercises extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        ExerciseDao exerciseDao = new ExerciseDao();
        request.setAttribute("exercises", exerciseDao.findAll());

        request.getRequestDispatcher("lib/admin/exercise/exercisesList.jsp").forward(request, response);
    }
}
