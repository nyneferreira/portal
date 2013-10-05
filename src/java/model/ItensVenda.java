/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.io.Serializable;


/**
 *
 * @author RAFAELA classe Itens da Venda
 */
public class ItensVenda implements Serializable {
    private int numVenda;
    private int codProd;
    private String descricaoProd;
    private double precoVendaPr;

    public int getnumVenda() {
        return numVenda;
    }

    public void setnumVenda(int numVenda) {
        this.numVenda = numVenda;
    }

    
    public int getCodProd() {
        return codProd;
    }

    public void setCodProd(int codProd) {
        this.codProd = codProd;
    }

    public String getDescricaoProd() {
        return descricaoProd;
    }

    public void setDescricaoProd(String descricaoProd) {
        this.descricaoProd = descricaoProd;
    }

    public double getPrecoVendaPr() {
        return precoVendaPr;
    }

    public void setPrecoVendaPr(double precoVendaPr) {
        this.precoVendaPr = precoVendaPr;
    }
    
}
