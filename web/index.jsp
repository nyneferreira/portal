<%-- 
    Document   : index
    Created on : 21/09/2011, 20:42:57
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
        <title>Universidade Federal Tangamandapio</title>
        <link rel='stylesheet' type='text/css' href='css/style1.css' />
    </head>
    <body>
        <div id='container'>
            <div id='header'>
                <div id='pessoal'> 
                    <ul id='pessoal'>
                        <li><a href='#'>Sair</a></li>
                    </ul>
                </div> 
                <div id='menu'>  
                    <ul> 
                        <li><a href='index.jsp'>Tela Inicial</a></li>
                        <li><a href='cadastro.jsp'>Cadastros</a></li>
                        <li><a href='#'>Administração</a></li>
                        <li><a href='#'>Cursos</a></li>
                        <li><a href='venda.jsp'>Acesso Alunos</a></li>
                    </ul> 
                </div>
            </div>
            <div id='sidebar'>
            </div> 
            <div id='mainContent'>
                <div id='breadcrumbmenu'>
                    <h2> Acesso rápido</h2> 
                    <p> Seja bem vindo ao sistema da Universidade Federal Tangamandapio, para acessar os dados que deseja utilize o menu acima.</p> 
                </div> 
            </div> 
            <br class='clearfloat' /> 
            <div id='footer'> 
                <p>Universidade Federal Tangamandapio - Av: Carteiro Jaimim , 158  - Tel (031) 8541-7912</p>
            </div>
        </div> 

    </body>
</html>
