/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package controller.action;

import DAO.ProdutoDAO;
import controller.form.ProdutoForm;
import controller.form.editarProdutoForm;
import controller.form.PesquisaProdutoForm;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Produto;
import org.apache.commons.beanutils.BeanUtils;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.actions.DispatchAction;

/**
 *
 * @author RAFAELA
 */
public class ProdutoAction extends DispatchAction {

    /* forward name="success" path="" */
    private static final String SUCCESS = "success";
    private static final String EDITAR = "editar";

    public ActionForward Incluir(ActionMapping mapping, ActionForm form,
            HttpServletRequest request, HttpServletResponse response)
            throws Exception {

        ProdutoForm prodForm = (ProdutoForm) form;

        Produto prod = new Produto();

        prod.setDescricao(prodForm.getDescricao());
        prod.setUN(prodForm.getUN());
        prod.setPreco_custo(prodForm.getPreco_custo());
        prod.setPreco_venda(prodForm.getPreco_venda());

        ProdutoDAO Pdao = new ProdutoDAO();

        Pdao.salva(prod);

        prodForm.setMensagem("O Produto " + prodForm.getDescricao() + " foi inserido no BD!");
        return mapping.findForward(SUCCESS);
    }
    
    public ActionForward pesquisar(ActionMapping mapping,ActionForm form,
		HttpServletRequest request,HttpServletResponse response) 
        throws Exception {
 
		ArrayList<Produto> listUsers = new ArrayList<Produto>();
               
                ProdutoForm formpesProd = (ProdutoForm)form;
                String pesq = formpesProd.getPesquisaDesc();
                
                ProdutoDAO produtoDAO = new ProdutoDAO();
                
                List listProdutos = produtoDAO.pesquisar(pesq);
                

		request.setAttribute("listProdutos", listProdutos);
                
                
                formpesProd.setListProdutos(listProdutos);
              
		return mapping.findForward("success");
	}

        public ActionForward editar(ActionMapping mapping,ActionForm form,
		HttpServletRequest request,HttpServletResponse response) 
        throws Exception {
 
		editarProdutoForm ediForm = (editarProdutoForm) form;
                ProdutoDAO proddao = new ProdutoDAO();
                
                //Recupera o id da consulta realizada;
                String id_produto = request.getParameter("id");
                
                Produto prorecebe = proddao.pesquisa(new Integer(id_produto.trim()));
                
                //Produto produto = new Produto();
                BeanUtils.copyProperties(ediForm, prorecebe);
               /* ediForm.setDescricao(prorecebe.getDescricao());
                ediForm.setUN(prorecebe.getDescricao());
                ediForm.setPreco_custo(prorecebe.getPreco_custo());
                ediForm.setPreco_venda(prorecebe.getPreco_venda());*/
                return mapping.findForward(EDITAR);
                
	}
        
        public ActionForward recuperar(ActionMapping mapping, ActionForm form,
            HttpServletRequest request, HttpServletResponse response)
            throws Exception {
        
        editarProdutoForm prodForm = (editarProdutoForm) form;
        
        //OBTEM O ID QUE QUER PESQUISAR NO BANCO DE DADOS
        String idprodAlt = request.getParameter("id");
        
        //RECUPERA O REGISTRO NO BANCO DE DADOS
        Produto produto;
       // produto = this.retornaClienteFicticio(Long.parseLong(idprodAlt.trim()));
        
        
        int teste = Integer.parseInt("id");// + Integer.parseInr(b) ; 
        
        produto = this.retornaClienteFicticio(teste);
        
        //COPIA OS ATRIBUTOS RECUPERADO NO BD PARA OS ATRIBUTOS DO FORMULARIO
        BeanUtils.copyProperties(prodForm, produto);
        
        //RETORNA MENSAGEM DE SUCESSO
        prodForm.setMensagem("RECUPERAR CLIENTE: " + idprodAlt);
        return mapping.findForward(SUCCESS);
    }
     
      private Produto retornaClienteFicticio(int id){
        Produto prodRandom = new Produto();
        
        prodRandom.setCodigos(id);
        prodRandom.setDescricao("dESCRI");
        prodRandom.setPreco_custo(10);
        prodRandom.setPreco_venda(12);
        prodRandom.setUN("UN");
        
        
        /*clientRandom.setId(id);
        clientRandom.setName("ALEATORIO "+id.toString());
        clientRandom.setEndereco("ENDERECO ALEATORIO" + id.toString());
        clientRandom.setCpf(123123456);*/
        
        return prodRandom;
    }
     

}
