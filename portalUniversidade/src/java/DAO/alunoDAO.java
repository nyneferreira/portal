/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import org.hibernate.SessionFactory;
import org.hibernate.Session;
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
public class alunoDAO {

    private SessionFactory factory;
    
    public void listar() { 
        Session session = factory.openSession();
        try {         
                        // Abre-se uma transação        
                        // Cria-se uma lista de clientes a partir do BD
                    List<Aluno> listaClientes = session.createQuery("From Cliente").list();
                    
                    for (Aluno aluno: listaClientes){ 
                        // Para cada cliente             
                        // Imprime no console os dados dos clientes            
                        System.out.println("Nome do cliente: " + aluno.getNome());             
                    }
                    //JOptionPane.showMessageDialog(null, "Clientes listados com sucesso");     
        } catch (Exception ex) {      
           // JOptionPane.showMessageDialog(null, ex);  
        }    
    }
}
