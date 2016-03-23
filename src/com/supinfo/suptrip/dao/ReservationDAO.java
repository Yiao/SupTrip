package com.supinfo.suptrip.dao;
import com.supinfo.suptrip.entity.Reservation;
import com.supinfo.suptrip.entity.Trip;
import com.supinfo.suptrip.entity.User;
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

    @Override
    public void delete(Long idin) {

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
