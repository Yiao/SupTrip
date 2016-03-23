package com.supinfo.suptrip.dao;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.Query;
import java.util.List;

/**
 * Created by sya on 3/6/2016.
 */
public interface GenericDAO {
    Object search(String usernameSelected);
    default void  create(Object o)
    {
        EntityManager em = PersistenceManager.getEntityManagerFactory().createEntityManager();
        EntityTransaction t = em.getTransaction();
        try
        {
            t.begin();
            em.persist(o);
            t.commit();
        }
        finally
        {
            if (t.isActive()) t.rollback();
            em.close();
        }
    }
    List read();
    void delete(Long idin);

    default void saveUpdateChange(EntityManager em , Query query, EntityTransaction entityTransaction)
    {
        try
        {
            //   em.persist(thisUser);
            entityTransaction.begin();
            query.executeUpdate();
            entityTransaction.commit();
        }
        finally
        {
            if (entityTransaction.isActive()) entityTransaction.rollback();
            em.close();
        }
    }
}
