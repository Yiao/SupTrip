package com.supinfo.suptrip.servlet;

import com.supinfo.suptrip.dao.ReservationDAO;
import com.supinfo.suptrip.dao.TripDAO;
import com.supinfo.suptrip.dao.UserDAO;
import com.supinfo.suptrip.entity.Reservation;
import com.supinfo.suptrip.entity.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

/**
 * Created by sya on 3/23/2016.
 */
@WebServlet(name = "SuppFromPanelServlet", urlPatterns = "/auth/suppFromPanel")
public class SuppFromPanelServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {



    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
       // TripDAO MyTripDAO = new TripDAO();
        ReservationDAO MyResrvationDAO = new ReservationDAO();

        String reservationId = request.getParameter("thisReservation");

       // MyTripDAO.suppTripFromUser(Long.valueOf(reservationId));
        MyResrvationDAO.delete(Long.valueOf(reservationId));
        response.sendRedirect("/auth/myTravels");
    }
}
