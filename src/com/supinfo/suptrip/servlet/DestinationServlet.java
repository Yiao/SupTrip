package com.supinfo.suptrip.servlet;

import com.supinfo.suptrip.dao.TripDAO;
import com.supinfo.suptrip.entity.Trip;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

/**
 * Created by sya on 3/20/2016.
 */
@WebServlet(name = "DestinationServlet",urlPatterns = "/destination")
public class DestinationServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        TripDAO tripDAO = new TripDAO();
        List listTrips = tripDAO.read();

        request.setAttribute("listTrips", listTrips);

        this.getServletContext().getRequestDispatcher("/destination.jsp").forward(request, response);
    }
}
