/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package controller.action;

import DAO.FuncionarioDAO;
import controller.form.FuncionarioForm;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Funcionario;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.actions.DispatchAction;

/**
 *
 * @author RAFAELA
 */
public class FuncionarioAction extends DispatchAction {

    /* forward name="success" path="" */
    private static final String SUCCESS = "success";

    public ActionForward Incluir(ActionMapping mapping, ActionForm form,
            HttpServletRequest request, HttpServletResponse response)
            throws Exception {

        FuncionarioForm funcForm = (FuncionarioForm) form;

        Funcionario func = new Funcionario();
        func.setNome(funcForm.getNome());
        func.setCPF(funcForm.getCPF());
        func.setCidade(funcForm.getCidade());
        func.setUF(funcForm.getUF());
        func.setBairro(funcForm.getBairro());
        func.setSalario(funcForm.getSalario());
        func.setCargo(funcForm.getCargo());
        func.setEndereco(funcForm.getEndereco());
        func.setTelefone(funcForm.getTelefone());
        //func.setEmail(funcForm.getEmail());
        
        

        FuncionarioDAO fdao = new FuncionarioDAO();

        fdao.salva(func);

        funcForm.setMensagem("O funcionario " + funcForm.getNome() + " foi inserido no BD!");
        return mapping.findForward(SUCCESS);
    }
}
