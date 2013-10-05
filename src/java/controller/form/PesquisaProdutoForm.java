/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package controller.form;

import java.util.List;

/**
 *
 * @author RAFAELA
 */
public class PesquisaProdutoForm extends org.apache.struts.action.ActionForm {

    private String pesquisaDesc;

    
    
    private String mensagem;
    private List listProdutos;

    public String getPesquisaDesc() {
        return pesquisaDesc;
    }

    public void setPesquisaDesc(String pesquisaDesc) {
        this.pesquisaDesc = pesquisaDesc;
    }
    

    public String getMensagem() {
        return mensagem;
    }

    public void setMensagem(String mensagem) {
        this.mensagem = mensagem;
    }
    public List getListProdutos() {
        return listProdutos;
    }

    public void setListProdutos(List listProdutos) {
        this.listProdutos = listProdutos;
    }
    
}