/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;
import org.hibernate.SessionFactory;
import org.hibernate.Session;
import model.Produto;
import model.HibernateUtil;
import org.hibernate.Transaction;


import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import javax.persistence.Query;
import model.*;
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.MatchMode;
import org.hibernate.criterion.Restrictions;



        

/**
 *
 * @author RAFAELA
 */
public class ProdutoDAO {
   private SessionFactory factory;
   public ProdutoDAO(){
    factory = HibernateUtil.getSessionFactory();
   }
   
    public void salva(Produto produto) throws Exception {

        Session session = factory.openSession();
        Transaction tx = session.beginTransaction();
        session.save(produto);
        tx.commit();
        session.close();
    }
   
   
    public void altera(Produto produto)throws Exception{

        Session session = factory.openSession();
        Transaction tx = session.beginTransaction();
        session.update(produto);
        tx.commit();
    }
 /* public void remove(String idProduto) throws Exception{

        Session session = factory.openSession();
        Transaction tx = session.beginTransaction();
        session.delete(idProduto);
        tx.commit();
    }*/
  
   public void remover(String idProduto) throws Exception {
        Session session = factory.openSession();
        session.delete(idProduto);
        session.flush();
        session.close();
    }

  
    public Produto pesquisa(int id) throws Exception {

        Session session = factory.openSession();
        
        Produto P = (Produto) session.load(Produto.class, id);
        return P;
    }
  
  /*REALIZA A CONSULTA NO BANCO PROCURANDO PELO PARAMETRO name DO MODELO
	MATERIAL DE APOIO - http://docs.jboss.org/hibernate/core/3.3/reference/en/html/querycriteria.html*/
    public List pesquisar(String descricao) {
        Session session = factory.openSession();
       Criteria crit = session.createCriteria(Produto.class);
        crit.add( Restrictions.ilike("descricao",descricao, MatchMode.ANYWHERE) );
        crit.setMaxResults(10);
        List produto = crit.list();

        return produto;
        
    
    }

  //  public String remove(String idProduto) {
  //      throw new UnsupportedOperationException("Not yet implemented");
   // }
    

  
    
}
