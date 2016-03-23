package com.supinfo.suptrip.entity;
import java.io.Serializable;
import java.util.Date;
import javax.persistence.*;

/**
 * Created by User on 10/03/2016.
 */
@Entity
public class Trip implements Serializable {

    @Id
    @GeneratedValue( strategy = GenerationType.AUTO)
    private  long idTrip;
    //date depart
    private Date departureDate;
    //heure depart
    private  float departureHour;
    //date arriv�e
    private  Date arrivalDate;
    //ville depart
    private  String departureCampus;
    //ville arriv�e
    private  String arrivalCampus;

    private  int price ;
    //moyen de transport
    private String transport;



    // * trips 1 campus
    @ManyToOne
    private Campus campus;
    //1 user * trip
    @ManyToOne
    private  User user;


    //getter setter
    public String getTransport() {
        return transport;
    }

    public void setTransport(String transport) {
        this.transport = transport;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }
    public long getIdTrip() {
        return idTrip;
    }

    public void setIdTrip(long idTrip) {
        this.idTrip = idTrip;
    }

    public Date getDepartureDate() {
        return departureDate;
    }

    public void setDepartureDate(Date departureDate) {
        this.departureDate = departureDate;
    }

    public float getDepartureHour() {
        return departureHour;
    }

    public void setDepartureHour(float departureHour) {
        this.departureHour = departureHour;
    }

    public Date getArrivalDate() {
        return arrivalDate;
    }

    public void setArrivalDate(Date arrivalDate) {
        this.arrivalDate = arrivalDate;
    }

    public String getDepartureCampus() {
        return departureCampus;
    }

    public void setDepartureCampus(String departureTown) {
        this.departureCampus = departureTown;
    }

    public String getArrivalCampus() {
        return arrivalCampus;
    }

    public void setArrivalCampus(String arrivalTown) {
        this.arrivalCampus = arrivalTown;
    }





    public Campus getCampus() {
        return campus;
    }

    public void setCampus(Campus campus) {
        this.campus = campus;
    }


}
