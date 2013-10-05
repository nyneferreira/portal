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
                <html:form action="/ProdutoAction" >    
                   <h2>CADASTRO DE PRODUTO</h2><br/>
                    
                    <bean:write name="ProdutoForm" property="mensagem" />
                    <TABLE border='0' cellpadding='2' cellspacing='0' width='60%' class='tabela2'>

                        <tr>
                            <td >Descrição: </td><td ><html:text property="descricao" maxlength="50" size="50"/>
                        </tr>
                        
                        <tr>
                            <td >UN</td>
                            <td >
                                
                                <html:select  property="UN">
                                    <html:option value="Nulo">--</html:option>
                                    <html:option value='UN'>UNIDADE</html:option>
                                    <html:option value='KG'>KILO</html:option>
                                    <html:option value='LT'>LATA</html:option>
                                    <html:option value='PT'>PACOTE</html:option>
                                    <html:option value='PT'>LITRO</html:option>
                                 </html:select>
                             </td>
                        </tr>
                        
                        <tr>
                            <td >Preço Custo: </td><td >
                                <html:text property="preco_custo" maxlength="50" size="50"/>

                            </td>
                        </tr>
                       
                        <tr>
                            <td >Preço Venda: </td><td >
                                <html:text property="preco_venda" maxlength="50" size="30"/>                         
                            </td>
                        </tr>
                        
                    </table>		

                    <td  align='right'><html:submit property="funcao" value="Incluir" /></td>
                    <td ></td></tr>
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

