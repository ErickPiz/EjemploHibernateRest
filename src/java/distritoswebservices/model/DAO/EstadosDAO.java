package distritoswebservices.model.DAO;

import distritoswebservices.model.POJOS.Estados;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

/**
    Document    : EstadosDAO
    Description : Clase de accseo para la persistencia de datos de Estados
    Created on  : 19/02/2018
    Author      : Erick Piz
 **/

public class EstadosDAO {

    public static void createEstado(Estados estado) {
        SessionFactory sf=null;
        Session session = null;
        Transaction tx = null;
        try {
            sf = HibernateUtil.getSessionFactory();
            session = sf.openSession();
            tx = session.beginTransaction();
            session.save(estado);
            tx.commit();
            session.close();
        } catch (Exception e) {
            tx.rollback();
            throw new RuntimeException(e.getMessage());
        } 

    }

    public static Estados loadEstado(String est) {
        SessionFactory sf = HibernateUtil.getSessionFactory();
        Session sesson = sf.openSession();
        Query query = sesson.createQuery("from Estados where estado='" + est + "'");
        Estados estado = (Estados) query.list().get(0);
        return estado;
    }
    
    public static Estados loadEstado(int est) {
        SessionFactory sf = HibernateUtil.getSessionFactory();
        Session sesson = sf.openSession();
        Query query = sesson.createQuery("from Estados where id_estado=" + est);
        Estados estado = (Estados) query.list().get(0);
        return estado;
    }

    public static boolean existEstado(String est) {
        SessionFactory sf = HibernateUtil.getSessionFactory();
        Session sesion = sf.openSession();
        Query query = sesion.createQuery("from Estados where estado='" + est + "'");
        if (query.list().size()>0) {
            return true;
        } else {
            return false;
        }
    }
}
