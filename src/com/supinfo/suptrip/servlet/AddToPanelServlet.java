package com.supinfo.suptrip.servlet;
import com.supinfo.suptrip.dao.ReservationDAO;
import com.supinfo.suptrip.dao.TripDAO;
import com.supinfo.suptrip.dao.UserDAO;
import com.supinfo.suptrip.entity.Trip;
import com.supinfo.suptrip.entity.User;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

/**
 * Created by User on 21/03/2016.
 */
@WebServlet(name = "AddToPanelServlet" ,urlPatterns = "/auth/AddToPanel")
public class AddToPanelServlet extends HttpServlet {


    //long idTrip;
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {



    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        TripDAO myTripDAO = new TripDAO();
        UserDAO myUserDAO = new UserDAO();
        ReservationDAO myReservationDAO = new ReservationDAO();
        User thisUser = new User();
        Trip thisTrip = new Trip();
        HttpServletRequest httpRequest = (HttpServletRequest) request;
        //associer une trip a un utilisateur
        //recuperer le voyage selectionné
        String tripId = request.getParameter("thisTrip");
        thisTrip=myTripDAO.search(Long.valueOf(tripId));
        //recuperer l'campusbooster de user connecté
        HttpSession sessionIn =  httpRequest.getSession();
        String myUserAccount = (String)sessionIn.getAttribute("account");
        thisUser= myUserDAO.search(myUserAccount);
        //update la table Trip
        myReservationDAO.addReservation(thisUser,thisTrip);
       // MyTripDAO.updateTrip(thisUser,thisTrip);
        response.sendRedirect("/auth/myTravels");

    }
}
