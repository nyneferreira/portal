/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package model;

import java.io.Serializable;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

/**
 *
 * @author RAFAELA Classe de Vendas
 */

@Entity
public class Venda implements Serializable {
    @Id @GeneratedValue
    private int numVenda;
    private int codFunc;
    private String dtaVenda;
    private double totalVenda;
   // private ItensVenda[] itens;

    public int getCodFunc() {
        return codFunc;
    }

    public void setCodFunc(int codFunc) {
        this.codFunc = codFunc;
    }

    public String getDtaVenda() {
        return dtaVenda;
    }

    public void setDtaVenda(String dtaVenda) {
        this.dtaVenda = dtaVenda;
    }

    public int getNumVenda() {
        return numVenda;
    }

    public void setNumVenda(int numVenda) {
        this.numVenda = numVenda;
    }

    public double getTotalVenda() {
        return totalVenda;
    }

    public void setTotalVenda(double totalVenda) {
        this.totalVenda = totalVenda;
    }

   
}
