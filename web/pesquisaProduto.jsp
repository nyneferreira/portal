<%-- 
    Document   : produto
    Created on : 20/09/2011, 20:49:28
    Author     : Mimi
--%>

<%@page contentType="text/html" pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
    <head>
        <%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
        <%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
        <%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Doces Pães</title>
        <link rel='stylesheet' type='text/css' href='css/style1.css' />

    </head>
    <body>
        <div id='container'> 
            <div id='header'>
                <div id='pessoal'>
                    <ul id='pessoal'> 
                        <li><a href='../wamp/www/sistema/&quot;.$commonPath.&quot;logout.php'>Sair</a></li> 
                    </ul> 
                </div> 
                <div id='menu'> 
                    <ul>
                        <li><a href='index.jsp'>Tela Inicial</a></li>
                        <li><a href='cadastro.jsp'>Cadastros</a></li>
                        <li><a href='#'>Administração</a></li>
                        <li><a href='#'>Estoque</a></li>
                        <li><a href='#'>Produção</a></li>
                        <li><a href='venda.jsp'>Vendas</a></li>
                        <li><a href='#'>Relatórios</a></li>
                    </ul> 
                </div> 
            </div>

            <div id='mainContent'> 

                <div id='breadcrumbmenu'>

                </div>
                <html:form action="/PesquisaProdutoAction">   
                    <h2>Pesquisa de Produto</h2><br/>
                      
                    <bean:write name="PesquisaProdutoForm" property="mensagem" />
                  

                    <TABLE border='0' cellpadding='2' cellspacing='0' width='60%' class='tabela2'>
                        <tr>
                            <td >Pesquisa por Descrição: </td>
                            <td><html:text property="pesquisaDesc" maxlength="50" size="50"/></td>
                            <td align='right'><html:submit property="funcao" value="pesquisar" /></td>
                        </tr>
                    </TABLE>		
            <!--aki era o encerramento da tag Form -->
              <br></br>
            
            <table border="0" cellpadding="1" cellspacing="0" width="40%" class="tabela2">
                <logic:notEmpty name="PesquisaProdutoForm" property="listProdutos">
                    <tr><th><center>Codigo</center></th><th><center>Descricao</center></th><th><center>Preço</center></th><th><center>Visualizar</center></th><th><center>Excluir</center></th></tr>
                    <logic:iterate id="loop"  name="PesquisaProdutoForm" property="listProdutos" >
                            <td><bean:write name="loop" property="codigos"/></td>
                            <td><bean:write name="loop" property="descricao"/></td>
                            <td><bean:write name="loop" property="preco_venda"/></td>
                             <td><a href="editarProduto.jsp"><center><img height="16" width="16" src="images/search.png" title="Visualizar Produto"></img></center></a></td>
                             <td><a href="/PesquisaProdutoAction?funcao=remover&id=<bean:write name="loop" property="codigos"/>"><center><img height="16" width="16" src="images/drop.png" title="Excluir Produto"></img></center></a></td>
                        </tr></tr>
                    </logic:iterate>
                       
                </logic:notEmpty>
                      </tr>
            </table>
          
            
         </html:form>
      

            </div>
            <br class='clearfloat' />
            <div id='footer'> 
                <p>Padaria Doce Pães - Av: Onze de Agosto , 378  - Tel (031) 3663-4885</p>
            </div>
        </div> 

    </body>
</html>

