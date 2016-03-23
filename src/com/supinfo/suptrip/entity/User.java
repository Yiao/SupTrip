package com.supinfo.suptrip.entity;


import javax.persistence.*;
import java.io.Serializable;
import java.util.List;

/**
 * Created by User on 10/03/2016.
 */
@Entity
public class User implements Serializable {
    @Id
    @GeneratedValue( strategy = GenerationType.AUTO)
    private  long idUser ;
    private  String account;
    private  String password;
    private  String firstName ;
    private  String lastName;
    private  String email;
    private  int age;
    // 1 campus * etudiants
    @ManyToOne
    private Campus campus;
//    // 1 user * reservation
    @OneToMany(mappedBy = "user")
   private List <Reservation> userReservation;


    //getter setter

    public long getIdUser() {
        return idUser;
    }

    public void setIdUser(int idUser) {
        this.idUser = idUser;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }


    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public String getAccount() {
        return account;
    }

    public void setAccount(String account) {
        this.account = account;
    }


    public Campus getCampus() {
        return campus;
    }public void setCampus(Campus campus) {
        this.campus = campus;
    }




}
