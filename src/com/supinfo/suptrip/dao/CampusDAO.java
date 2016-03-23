package com.supinfo.suptrip.dao;

import com.supinfo.suptrip.entity.Campus;

import javax.persistence.EntityManager;
import javax.persistence.Query;
import java.util.List;

/**
 * Created by User on 11/03/2016.
 */
public class CampusDAO implements GenericDAO {


    @Override
    public Campus search(String s)
    {
        EntityManager em = PersistenceManager.getEntityManagerFactory().createEntityManager();
        Query query = em.createQuery("SELECT campus from Campus AS campus where campus.name = :campusNameSelected ");
        query.setParameter("campusNameSelected",s);
        return (Campus) query.getSingleResult();
    }


    @Override
    public List read() {
        EntityManager em = PersistenceManager.getEntityManagerFactory().createEntityManager();
        Query query = em.createQuery("SELECT  campus From Campus AS campus ");
        @SuppressWarnings("unchecked")
        List<Campus> campusList = (List<Campus>) query.getResultList();
        return campusList;

    }
/*    @Override

    public void update() {

    }*/

    @Override
    public void delete(Long idin) {

    }
}
