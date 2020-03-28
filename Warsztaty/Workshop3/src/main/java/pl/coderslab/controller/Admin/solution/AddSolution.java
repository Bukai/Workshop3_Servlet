package pl.coderslab.controller.Admin.solution;

import pl.coderslab.daos.ExerciseDao;
import pl.coderslab.daos.SolutionDao;
import pl.coderslab.daos.UserDao;
import pl.coderslab.model.Solution;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

@WebServlet("/addnewsolution")
public class AddSolution extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String updated = request.getParameter("updated");
        String description = request.getParameter("description");
        String exercise = request.getParameter("exercise");
        String user = request.getParameter("user");
        int exerciseId = Integer.parseInt(exercise.split("-")[0].replaceAll("\\s", ""));
        int userId = Integer.parseInt(user.split("-")[0].replaceAll("\\s", ""));

        SolutionDao solutionDao = new SolutionDao();

        if (!description.isEmpty()) {
            Date dt = new Date();
            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
            String currentTime = sdf.format(dt);
            solutionDao.create(new Solution(currentTime, updated, description, exerciseId, userId));

            response.sendRedirect("/admindetails");
        } else {
            response.getWriter().println("Musisz wypelnic kazde z pol! Wroc i zrob to jeszcze razs");
        }

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ExerciseDao exerciseDao = new ExerciseDao();
        UserDao userDao = new UserDao();

        request.setAttribute("exercises", exerciseDao.findAll());
        request.setAttribute("users", userDao.findAll());
        request.getRequestDispatcher("/lib/admin/solution/addNewSolution.jsp").forward(request,response);
    }
}
