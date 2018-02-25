package distritoswebservices.model.DAO;

import distritoswebservices.model.POJOS.Distritos;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

/**
    Document    : DistritosDAO
    Description : Clase de accseo para la persistencia de datos de Distritos
    Created on  : 19/02/2018
    Author      : Erick Piz
 **/

public class DistritosDAO {

    public static void createDistrito(Distritos distrito) {
        SessionFactory sf;
        Session session=null;
        Transaction tx = null;
        try {
            sf = HibernateUtil.getSessionFactory();
            session = sf.openSession();
            tx = session.beginTransaction();
            session.save(distrito);
            tx.commit();
            session.close();
        } catch (Exception e) {
            tx.rollback();
            throw new RuntimeException(e.getMessage());
        }finally{
            if(session.isOpen()){
                session.close();
            }
        }
    }
}
