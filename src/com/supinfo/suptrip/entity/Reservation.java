package com.supinfo.suptrip.entity;

import java.io.Serializable;
import javax.persistence.*;


/**
 * Created by User on 23/03/2016.
 */
@Entity
public class Reservation implements Serializable {

    @Id
    @GeneratedValue( strategy = GenerationType.AUTO)
    long idReservation;
    //1 user * trip
    @ManyToOne
    private  User user;

    @ManyToOne
    private Trip trip;

    //getter setter

    public long getIdReservation() {
        return idReservation;
    }

    public void setIdReservation(long idReservation) {
        this.idReservation = idReservation;
    }

    public Trip getTrip() {
        return trip;
    }

    public void setTrip(Trip trip) {
        this.trip = trip;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }
}
