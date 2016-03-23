package com.supinfo.suptrip.servlet;

import com.supinfo.suptrip.dao.ReservationDAO;
import com.supinfo.suptrip.dao.UserDAO;
import com.supinfo.suptrip.entity.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;


@WebServlet(name = "MyTravelsServlet", urlPatterns = "/auth/myTravels")
public class MyTravelsServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ReservationDAO reservationDAO =new ReservationDAO();
        UserDAO userDAO =new UserDAO();
        User myUser =new User();
        //chercher lutilisateur
        HttpSession session = request.getSession();
        String account  = (String) session.getAttribute("account");
        //recuperer les voyages de lutilisateur
         myUser = userDAO.search(account);
        List myReservations =reservationDAO.getMyReservations(myUser.getIdUser());
        request.setAttribute("myReservationPanel",myReservations);
        this.getServletContext().getRequestDispatcher("/myTravels.jsp").forward(request, response);
    }
}
