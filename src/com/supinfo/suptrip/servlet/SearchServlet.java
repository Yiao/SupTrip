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
 * Created by User on 17/03/2016.
 */
@WebServlet(name = "SearchServlet",urlPatterns ="/SearchTrip")
public class SearchServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        TripDAO MyTripDAO = new TripDAO();
        Trip MyTrip =new Trip();
        String campusDeparture="";
        String campusDestination="";

        HttpServletRequest httpRequest = (HttpServletRequest) request;

        // recherche rentré par l'utilisateur
        campusDeparture =request.getParameter("departure");
        campusDestination =request.getParameter("destination");


// a revoir le critéére de recherches depart / arrivé ect ...searchlist


        List<Trip> myTripList= MyTripDAO.searchList(campusDestination,campusDeparture);
        request.setAttribute("tripSearch", myTripList);
        this.getServletContext().getRequestDispatcher("/results.jsp").forward(request, response);



    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpServletRequest httpRequest = (HttpServletRequest) request;




    }
}
