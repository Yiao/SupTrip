package com.supinfo.suptrip.dao;

import com.supinfo.suptrip.entity.Trip;
import com.supinfo.suptrip.entity.User;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.Query;
import java.util.List;

/**
 * Created by User on 17/03/2016.
 */
public class TripDAO implements GenericDAO {
    //lister un voyage selon campus d'arriveé
    @Override
    public Trip search(String s) {
        /*EntityManager em = PersistenceManager.getEntityManagerFactory().createEntityManager();
        Query query = em.createQuery("SELECT trip from Trip AS trip where trip.arrivalCampus = :tripNameSelected ");
        query.setParameter("tripNameSelected", s);
        return (Trip) query.getSingleResult();*/
        return  null;


    }
    public Trip search(long idTrip)
    {
        EntityManager em = PersistenceManager.getEntityManagerFactory().createEntityManager();
        Query query = em.createQuery("SELECT trip from Trip AS trip where trip.id = :tripIdSelected ");
        query.setParameter("tripIdSelected", idTrip);
        return (Trip) query.getSingleResult();
    }

    @Override
    public List read() {
        return null;
    }
    //chercher les voyages d'un compus darrivé
    public List<Trip> searchMyTripsList(String arrivalCampus)
    {
        //
        EntityManager em = PersistenceManager.getEntityManagerFactory().createEntityManager();
        Query query = em.createQuery("SELECT trip from Trip AS trip where trip.arrivalCampus = :arrivalCampus ");
        query.setParameter("arrivalCampus", arrivalCampus);
        List<Trip> tripList = (List<Trip>) query.getResultList();
        return tripList;
    }


    // lister les voyage selon compus de depart et campus d'arrivé
    public List<Trip> searchList(String arrivalCampus, String departureCampus)
    {
        if (departureCampus =="")
        {
            EntityManager em = PersistenceManager.getEntityManagerFactory().createEntityManager();
            Query query = em.createQuery("SELECT trip from Trip AS trip where trip.arrivalCampus= :aCampus");
            query.setParameter("aCampus",arrivalCampus);
            List<Trip> tripList = (List<Trip>) query.getResultList();
            return tripList;

        }
        else if(arrivalCampus=="")
        {
            EntityManager em = PersistenceManager.getEntityManagerFactory().createEntityManager();
            Query query = em.createQuery("SELECT trip from Trip AS trip where trip.departureCampus= :dcampus");
            query.setParameter("dcampus",departureCampus);
            List<Trip> tripList = (List<Trip>) query.getResultList();
            return tripList;

        }
        else
        {
            EntityManager em = PersistenceManager.getEntityManagerFactory().createEntityManager();
            Query query = em.createQuery("SELECT trip from Trip AS trip where trip.arrivalCampus= :aCampus and  trip.departureCampus= :dcampus");
            query.setParameter("aCampus",arrivalCampus);
            query.setParameter("dcampus",departureCampus);

            List<Trip> tripList = (List<Trip>) query.getResultList();
            return tripList;

        }

    }

    public long getTripNumber()
    {
        EntityManager em = PersistenceManager.getEntityManagerFactory().createEntityManager();
        Query query  = em.createQuery("SELECT tripsCollection FROM Trip AS tripsCollection");
        return query.getResultList().size();
    }

    @Override
    public void delete(Long idin) {

    }

    //associer un voyage a un utilisateur
    public void updateTrip (User thisUser,long tripID)

    {
       /* EntityManager em = PersistenceManager.getEntityManagerFactory().createEntityManager();
        EntityTransaction t = em.getTransaction();
        Query query = em.createQuery("UPDATE Trip trip  SET trip.user = :user where trip.idTrip= :tripID ");

        query.setParameter("user",thisUser);
        query.setParameter("tripID",tripID);

        saveUpdateChange(em,query,t);*/
    }

    public void suppTripFromUser(long tripID)
    {
       /* EntityManager em = PersistenceManager.getEntityManagerFactory().createEntityManager();
        EntityTransaction transaction = em.getTransaction();
        Query query = em.createQuery("UPDATE Trip trip  SET trip.user = :user where trip.idTrip= :tripID ");

        query.setParameter("user",null);
        query.setParameter("tripID",tripID);
        saveUpdateChange(em,query,transaction);*/

    }
}
