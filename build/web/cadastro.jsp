<%-- 
    Document   : cadastro
    Created on : 21/09/2011, 20:37:21
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
                        <li><a href='".$commonPath."logout.php'>Sair</a></li> 
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
            <div id='sidebar'>
                <ul>
                    <li><a href='funcionarios.jsp'>Funcionários</a></li>
                    <li><a href='produto.jsp'>Produtos</a></li>
                    <li><a href='pesquisaProduto.jsp'>Pesquisa</a></li>
                </ul>
            </div> 
            <div id='mainContent'> 
                <h2> Cadastros</h2> 

                <p> Selecione uma opção ao lado para realizar cadastros.
            </div>
            <br class='clearfloat' />
            <div id='footer'> 
                <p>Padaria Doce Pães - Av: Onze de Agosto , 378  - Tel (031) 3663-4885</p>
            </div>
        </div> 

    </body>
</html>
