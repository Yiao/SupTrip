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
import java.util.Objects;

/**
 * Created by sya on 3/11/2016.
 */
@WebServlet(name = "EditePofilServlet",urlPatterns = "/auth/editePofil")
public class EditePofilServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String account = "";
        String newpassword = "";
        String oldpassword = "";
        String confirmpassword = "";
        String firstname ="";
        String lastname ="";
        String email = "";
        String campus = "";
        String password= "";
        int age;

        HttpServletRequest httpRequest = (HttpServletRequest) request;
        HttpSession sessionIn =  httpRequest.getSession();
        account = (String) sessionIn.getAttribute("account");
        password = (String) sessionIn.getAttribute("password");

        firstname  = (String) request.getParameter("newFirstName");
        lastname = (String) request.getParameter("newLastName");
        newpassword = (String) request.getParameter("newPassword");
        if (!Objects.equals(request.getParameter("newAge"), "")){

            age = Integer.parseInt(request.getParameter("newAge"));
        }
        else
        {
            UserDAO userDAO = new UserDAO();
            age = userDAO.search(account).getAge();
        }
        email = (String) request.getParameter("newEmail");
        campus = (String) request.getParameter("newCampus");
        confirmpassword = (String) request.getParameter("newConfirmPassword");
        oldpassword = (String) request.getParameter("oldPassword");


        if (oldpassword.equals(password))
        {

            if (newpassword.equals(confirmpassword))
            {
                UserDAO userDAO = new UserDAO();
                userDAO.update(account,firstname,lastname,age,email,campus,newpassword);
                response.sendRedirect("/index.jsp");
            }
            else
            {
               response.sendRedirect("/errorPassword.jsp");
            }
        }
        else
        {
            response.sendRedirect("/errorPassword.jsp");
        }


    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String account = "";
        HttpServletRequest httpRequest = (HttpServletRequest) request;
        HttpSession sessionIn = httpRequest.getSession();
        account = (String) sessionIn.getAttribute("account");

        UserDAO rearchUser = new UserDAO();
        User userLogin = rearchUser.search(account);


        request.setAttribute("user", userLogin);

        this.getServletContext().getRequestDispatcher("/pofile.jsp").forward(request, response);

    }
}
