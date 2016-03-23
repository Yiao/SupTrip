package com.supinfo.suptrip.servlet;

import com.supinfo.suptrip.dao.UserDAO;
import com.supinfo.suptrip.entity.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

/**
 * Created by sya on 3/10/2016.
 */
@WebServlet(name = "LoginServlet" , urlPatterns = "/login")
public class LoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String account = request.getParameter("account");
        String password = request.getParameter("password");

        UserDAO rearchUser = new UserDAO();
        try {
            User userLogin = rearchUser.search(account);
            if (userLogin.getAccount().equals(account)  && userLogin.getPassword().equals(password))
            {
                //on recupere ce que on a entre dans username et password
                //on les met dans un session
                HttpSession loginSession = request.getSession();
                loginSession.setAttribute("account",account);
                loginSession.setAttribute("password",password);
                response.sendRedirect("/index.jsp");
            }
            else
            {
                response.sendRedirect("/index.jsp");
            }
        }
        catch (Exception ex)
        {
            response.sendRedirect("/login.jsp");
            //Todo génere exception quand on arrive pas trouver le utilisateur
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
