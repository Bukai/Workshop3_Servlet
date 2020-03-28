package pl.coderslab.controller;

import pl.coderslab.daos.SolutionDao;
import pl.coderslab.model.Solution;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/details")
public class Details extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int solutionId = Integer.parseInt(request.getParameter("solutionId"));
        request.setAttribute("solutions", loadById(solutionId));

        getServletContext().getRequestDispatcher("/lib/details.jsp").forward(request,response);
    }

    private Solution loadById(int id){
        SolutionDao solutionDao = new SolutionDao();
        return solutionDao.read(id);
    }
}
