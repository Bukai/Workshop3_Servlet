package pl.coderslab.controller.Admin.exercise;

import pl.coderslab.daos.ExerciseDao;
import pl.coderslab.model.Exercise;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/editexercise")
public class EditExercie extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        String title = request.getParameter("title");
        String description = request.getParameter("description");

        ExerciseDao exerciseDao = new ExerciseDao();

        if (!title.isEmpty() && !description.isEmpty()) {
            exerciseDao.update(new Exercise(id, title, description));

            response.sendRedirect("/adminExercises");
        } else {
            response.getWriter().println("Musisz wypelnic kazde z pol! Wroc i zrob to jeszcze razs");
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if (request.getParameter("exerciseId") != null) {
            int exerciseId = Integer.parseInt(request.getParameter("exerciseId"));
            ExerciseDao exerciseDao = new ExerciseDao();
            request.setAttribute("exercise", exerciseDao.read(exerciseId));
        }

        request.getRequestDispatcher("/lib/admin/exercise/adminEditExercise.jsp").forward(request, response);
    }
}
