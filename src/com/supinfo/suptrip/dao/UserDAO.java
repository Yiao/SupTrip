package com.supinfo.suptrip.dao;

import com.supinfo.suptrip.entity.Campus;
import com.supinfo.suptrip.entity.User;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.Query;
import java.util.List;
import java.util.Objects;

/**
 * Created by sya on 3/10/2016.
 */
public class UserDAO implements GenericDAO{
    @Override
    public User search(String usernameSelected) {
        EntityManager em = PersistenceManager.getEntityManagerFactory().createEntityManager();
        Query query = em.createQuery("SELECT user From User AS user where user.account = :userSelected");
        query.setParameter("userSelected",usernameSelected);
        return (User) query.getSingleResult();
    }

    @Override
    public List read() {
        return null;
    }


    public void update(String campusid ,String newfirstname,String newlastname,int newage,String newemail,String newcampus,String newpassword) {
        EntityManager em = PersistenceManager.getEntityManagerFactory().createEntityManager();
        EntityTransaction t = em.getTransaction();

//      Pour trouver campus avec nom de campus
        CampusDAO campusDAO = new CampusDAO();
        Campus campus = new Campus();
        campus = campusDAO.search(newcampus);

        User oldUser = new User();
        oldUser = search(campusid);



        newfirstname = GetTestFirstName(newfirstname,oldUser);



        newlastname = GetTestLastName(newlastname,oldUser);


        newemail = GetTestEmail(newemail,oldUser);


        newpassword = GetTestPassword(newpassword,oldUser);

        newage   = GetTestage(newage,oldUser);


        Query query = em.createQuery("UPDATE User u  SET firstName = :userfirstname , lastName = :userlastname,age = :userage,u.email = :usermail,u.campus = :usecampus,password = :userpassword where account = :usercampusid");

        query.setParameter("userfirstname",newfirstname);
        query.setParameter("userlastname",newlastname);
        query.setParameter("userage",newage);
        query.setParameter("usermail",newemail);
        query.setParameter("usecampus",campus);
        query.setParameter("userpassword",newpassword);
        query.setParameter("usercampusid",campusid);

        saveUpdateChange(em,query,t);
    }

    @Override
    public void delete(Long idin) {

    }

    private int GetTestage(int agein,User oldinfo)
    {
        if (agein!=oldinfo.getAge())
        {
            return agein;
        }
        return oldinfo.getAge();
    }
    private String GetTestFirstName(String firstNamein,User oldinfo)
    {
        if (Objects.equals(firstNamein, ""))
        {
            return oldinfo.getFirstName();
        }
        return firstNamein;
    }

    private String GetTestLastName(String lastNamein,User oldinfo)
    {
        if (Objects.equals(lastNamein, ""))
        {
            return oldinfo.getLastName();
        }
        return lastNamein;
    }

    private String GetTestEmail(String emailin,User oldinfo)
    {
        if (Objects.equals(emailin, ""))
        {
            return oldinfo.getEmail();
        }
        return emailin;
    }
    private String GetTestPassword(String passWordin,User oldinfo)
    {
        if (Objects.equals(passWordin, ""))
        {
            return oldinfo.getPassword();
        }
        return passWordin;
    }
}
