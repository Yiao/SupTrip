package com.supinfo.suptrip.servlet;

import com.supinfo.suptrip.dao.CampusDAO;
import com.supinfo.suptrip.dao.UserDAO;
import com.supinfo.suptrip.entity.Campus;
import com.supinfo.suptrip.entity.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.rmi.server.ExportException;

/**
 * Created by sya on 3/10/2016.
 */
@WebServlet(name = "RegisterUserServlet" , urlPatterns = "/registerUser")
public class RegisterUserServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        String account = "";
        String password = "";
        String firstname ="";
        String lastname ="";
        String email = "";
        String campus ="";
        int age;


        account= request.getParameter("newaccount");

        try
        {
            UserDAO userDAO = new UserDAO();
            userDAO.search(account);
            response.sendRedirect("/errorAccount.jsp");
        }
        catch (Exception ex)
        {
            password = request.getParameter("newpassword");
            firstname = request.getParameter("newfirstname");
            lastname = request.getParameter("newlastname");
            email = request.getParameter("newemail");
            campus = request.getParameter("campus");
            age = Integer.parseInt(request.getParameter("newage").toString());

            User newUser = new User();
            newUser.setAccount(account);
            newUser.setPassword(password);
            newUser.setFirstName(firstname);
            newUser.setLastName(lastname);
            newUser.setEmail(email);
            newUser.setAge(age);

            CampusDAO campusDAO = new CampusDAO();
            Campus campusIn = new Campus();
            campusIn=campusDAO.search(campus);

            newUser.setCampus(campusIn);

            UserDAO usersDAO = new UserDAO();
            usersDAO.create(newUser);

            response.sendRedirect("/index.jsp");
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
