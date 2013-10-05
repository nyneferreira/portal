/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import model.Funcionario;
import model.HibernateUtil;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;


        

/**
 *
 * @author RAFAELA
 */
public class FuncionarioDAO {
   private SessionFactory factory;
   public FuncionarioDAO(){
    factory = HibernateUtil.getSessionFactory();
   }
   
    public void altera(Funcionario funcionario)throws Exception{

        Session session = factory.openSession();
        Transaction tx = session.beginTransaction();
        session.update(funcionario);
        tx.commit();
    }
  public void remove(Funcionario funcionario) throws Exception{

        Session session = factory.openSession();
        Transaction tx = session.beginTransaction();
        session.delete(funcionario);
        tx.commit();
    }
    public Funcionario pesquisa(int id) throws Exception {

        Session session = factory.openSession();
        
        Funcionario Usuario = (Funcionario) session.load(Funcionario.class, id);
        return Usuario;
    }
  public void salva(Funcionario funcionario) throws Exception {

        Session session = factory.openSession();
        Transaction tx = session.beginTransaction();
        session.save(funcionario);
        tx.commit();
        session.close();
    }
    
}
