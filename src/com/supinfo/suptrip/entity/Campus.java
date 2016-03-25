package com.supinfo.suptrip.entity;

import javax.persistence.*;
import java.io.Serializable;
import java.util.List;


/**
 * Created by User on 10/03/2016.
 */
@Entity
public class Campus implements Serializable {

    @Id
    @GeneratedValue( strategy = GenerationType.AUTO)
    private  long idCampus ;
    private String name;


 // 1 compus * etudiants
    @OneToMany(mappedBy = "campus")
    private List<User> myUsers;

//    //1 campus * trips
    @OneToMany(mappedBy = "campus")
    private  List<Trip> myTrips;

    //getter setter

    public long getIdCampus() {
        return idCampus;
    }

    public void setIdCampus(long idCampus) {
        this.idCampus = idCampus;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
//
    public List<User> getMyUsers() {
        return myUsers;
    }
    public void setMyUsers(List<User> myUsers) {
        this.myUsers = myUsers;
    }
    public List<Trip> getMyTrips() {
        return myTrips;
    }
    public void setMyTrips(List<Trip> myTrips) {
        this.myTrips = myTrips;
    }

}
