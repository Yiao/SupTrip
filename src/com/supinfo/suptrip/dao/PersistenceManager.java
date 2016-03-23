package com.supinfo.suptrip.dao;

import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

/**
 * Created by sya on 3/6/2016.
 */
public class PersistenceManager {
    private static EntityManagerFactory emf;

    // Lazy initialization
    public static EntityManagerFactory getEntityManagerFactory(){
        if(emf == null){
            emf = Persistence.createEntityManagerFactory("My-PU");
        }
        return emf;
    }

    //Private constructor prevent instantiation
    private PersistenceManager(){}

    public static void closeEntityManagerFactory() {
        if(emf != null && emf.isOpen()) emf.close();
    }
}
