package com.supinfo.suptrip.dao;
import com.supinfo.suptrip.entity.Reservation;
import com.supinfo.suptrip.entity.Trip;
import com.supinfo.suptrip.entity.User;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.Query;
import java.util.List;

/**
 * Created by User on 23/03/2016.
 */
public class ReservationDAO implements GenericDAO {
    @Override
    public Object search(String usernameSelected) {
        return null;
    }

    @Override
    public List read() {
        return null;
    }
    //chercher le panel  d'un utilisateur
    public List<Reservation> getMyReservations(Long idUser)
    {
        //
        EntityManager em = PersistenceManager.getEntityManagerFactory().createEntityManager();
        Query query = em.createQuery("SELECT reservation from Reservation AS reservation where reservation.user.idUser = :useridSelected ");
        query.setParameter("useridSelected", idUser);
        List<Reservation> resultList = (List<Reservation>) query.getResultList();
        return resultList;
    }
    @Override
    public void delete(Long idReservation) {
        EntityManager em = PersistenceManager.getEntityManagerFactory().createEntityManager();
        EntityTransaction transaction = em.getTransaction();
        Query query = em.createQuery("delete Reservation  where idReservation= :reservationID ");

        query.setParameter("reservationID",idReservation);
        saveUpdateChange(em,query,transaction);
    }
    // rejouter une reservation
    public void addReservation (User thisUser,Trip trip)
    {
        Reservation reservation = new Reservation();
        reservation.setUser(thisUser);
        reservation.setTrip(trip);
        create(reservation);

    }

}
