<%-- 
    Document   : venda
    Created on : 21/09/2011, 20:46:17
    Author     : Mimi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<!DOCTYPE html>
<html>
    <head>
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
                <form name='incluir' method='post' action='' onsubmit=''>
                    <h2>Venda de Produtos</h2><br/>
                    <TABLE border='0' cellpadding='2' cellspacing='0' width='60%' class='tabela2'>
                         
                        <tr>
                            <td >Produto: </td><td ><input maxlength='50' type='text'  name='descricao'  size='50' tabindex='2' style='font-family: Tahoma; font-size: 08pt; border: 1px solid #808080; padding-left:5px'></td>
                        </tr>

                        <tr>
                            <td >Quantidade: </td><td ><input maxlength='50' type='text'  name='descricao'  size='20' tabindex='2' style='font-family: Tahoma; font-size: 08pt; border: 1px solid #808080; padding-left:5px'></td>
                        </tr>

                    </table>	
                    <td align='right'><input type="image" src="images/imagem1.JPG"/></td>
                    </tr>

                    </table>
                    <br><br>
                    <TABLE border='0' cellpadding='2' cellspacing='0' width='60%' class='tabela2'>
                        <tr>
                            <td><div style='font-family:Tahoma, Arial, Helvetica, sans-serif;font-size:18px;font-weight:bold;color:#006699;'> Total: </div></td>
                            <td><div style='font-family: Tahoma; font-size: 50px; padding-left:150px; font-weight:bold;color:#006699;'>0,00</div></td>
                        </tr> 
                    </table>

                    <h1>Produtos Selecionados</h1>
                    <TABLE  border='0' cellpadding='1' cellspacing='0'  width='40%' class='tabela2'>
                        </tr>
                        <tr><td>Produto</td><td width='20%'>Quantidade</td><td width='5%'>Excluir</td></tr>
                    </table>
                    <input type="image" src="images/icone_pagamento.jpg"/>
                </form>

            </div>
            <br class='clearfloat' />
            <div id='footer'> 
                <p>Padaria Doce Pães - Av: Onze de Agosto , 378  - Tel (031) 3663-4885</p>
            </div>
        </div> 
    </body>
</html>
