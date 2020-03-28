package pl.coderslab.controller.Admin.solution;

import pl.coderslab.daos.SolutionDao;
import pl.coderslab.model.Solution;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/admindetails")
public class AdminDetailsSolution extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        SolutionDao solutionDao = new SolutionDao();

        String numberSolutionsStr = getServletContext().getInitParameter("number-solutions");
        Solution[] solutions = solutionDao.findRecent(Integer.parseInt(numberSolutionsStr));
        request.setAttribute("solutions", solutions);

        getServletContext().getRequestDispatcher("/lib/admin/solution/adminDetailSolution.jsp").forward(request,response);
    }
}
