/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package controller.form;

import java.util.List;
import javax.servlet.http.HttpServletRequest;

import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionMessage;

/**
 *
 * @author RAFAELA
 */
public class ProdutoForm extends org.apache.struts.action.ActionForm {
    
   private int codigos;
   private String descricao;
   private String UN;
   private double preco_custo;
   private double preco_venda;
   private String mensagem;
   
   private String pesquisaDesc;
   private List listProdutos;

    public List getListProdutos() {
        return listProdutos;
    }

    public void setListProdutos(List listProdutos) {
        this.listProdutos = listProdutos;
    }

    public String getPesquisaDesc() {
        return pesquisaDesc;
    }

    public void setPesquisaDesc(String pesquisaDesc) {
        this.pesquisaDesc = pesquisaDesc;
    }

    public String getUN() {
        return UN;
    }

    public void setUN(String UN) {
        this.UN = UN;
    }

    public int getCodigos() {
        return codigos;
    }

    public void setCodigos(int codigos) {
        this.codigos = codigos;
    }

    public String getDescricao() {
        return descricao;
    }

    public void setDescricao(String descricao) {
        this.descricao = descricao;
    }

    public String getMensagem() {
        return mensagem;
    }

    public void setMensagem(String mensagem) {
        this.mensagem = mensagem;
    }

    public double  getPreco_custo() {
        return preco_custo;
    }

    public void setPreco_custo(double  preco_custo) {
        this.preco_custo = preco_custo;
    }

    public double  getPreco_venda() {
        return preco_venda;
    }

    public void setPreco_venda(double preco_venda) {
        this.preco_venda = preco_venda;
    }

}  