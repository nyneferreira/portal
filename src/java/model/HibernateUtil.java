/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import org.hibernate.SessionFactory;
import org.hibernate.cfg.AnnotationConfiguration;
import org.hibernate.cfg.Configuration;



/**
 *
 * @author RAFAELA
 */
public class HibernateUtil {

    private static final SessionFactory sessionFactory;

    static {
        try {
            
            //Cria objeto que receberá as configurações  
            Configuration cfg = new AnnotationConfiguration();
            //Informe o arquivo XML que contém a configurações
            cfg.configure("hibernate.cfg.xml");
            //Cria uma fábrica de sessões. 
            //Deve existir apenas uma instância na aplicação
            sessionFactory = cfg.buildSessionFactory();
           
        } catch (Throwable ex) {
            // Log the exception. 
            System.err.println("Initial SessionFactory creation failed." + ex);
            throw new ExceptionInInitializerError(ex);
        }
    }

    public static SessionFactory getSessionFactory() {
        return sessionFactory;
    }
}

