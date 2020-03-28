package pl.coderslab.controller.Admin.exercise;

import pl.coderslab.daos.ExerciseDao;
import pl.coderslab.model.Exercise;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/addnewexercise")
public class AddExercise extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String title = request.getParameter("title");
        String description = request.getParameter("description");

        ExerciseDao exerciseDao = new ExerciseDao();

        if (!title.isEmpty() && !description.isEmpty()) {
            exerciseDao.create(new Exercise(title,description));
            response.sendRedirect("/adminExercises");
        } else {
            response.getWriter().println("Musisz wypelnic kazde z pol! Wroc i zrob to jeszcze razs");
        }

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/lib/admin/exercise/addNewExercise.jsp").forward(request,response);
    }
}
