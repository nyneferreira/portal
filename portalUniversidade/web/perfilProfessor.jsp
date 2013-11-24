<%@ taglib  uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@ taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c"  %>

<sql:query var="ds" dataSource="jdbc/portalUniversidade">
    SELECT * FROM professor
</sql:query>

<html>
    <head>
        <link rel='stylesheet' type='text/css' href='css/style1.css' />
        <title>UFT</title>
    </head>
    <body>
        <div id='container'> 
            <div id='header'>
                <!--   <div id='pessoal'>
                       <ul id='pessoal'> 
                           <li><a href='../wamp/www/sistema/&quot;.$commonPath.&quot;logout.php'>Sair</a></li> 
                       </ul> 
                   </div> -->
                <div id='menu'> 
                    <ul>
                        <li><a href='index.jsp'>Tela Inicial</a></li>
                    </ul> 
                </div> 
            </div>

            <div id='mainContent'> 

                <div id='breadcrumbmenu'>

                </div>
                
                 <div><font style="color: #ba0a0a; font-size: 20px; font-weight: bolder">Olá, Caro Professor</div>
                            <br><br>
                <TABLE border='0' cellpadding='2' cellspacing='0' width='60%' class='tabela2'>
                   
                    <tr><td colspan="5"><center><b>Quadro de Turno</td></tr>
                            <tr>
                                <td colspan="2"><center><b>Informações do Profissional</td>
                                <td colspan="3"><center><b>Turno</td>
                            </tr>
                            
                            
                            <tr>
                                <td align="center" rowspan="2">Código </td>
                                <td align="center" rowspan="2">Nome </td>
                                </tr>
                            <tr>    
                                <td align="center" >Manha </td>
                                <td align="center">Tarde </td>
                                <td align="center">Noite </td>
                            </tr>        
                         
                            <c:forEach  var="row" items="${ds.rows}">


                                <tr>
                                    <td align="center">${row.id_professor}</td>
                                    <td align="left">${row.nome}</td>
                                    <td align="center">${row.manha}</td>
                                    <td align="center">${row.tarde}</td>
                                    <td align="center">${row.noite}</td>
                                </tr>


                            </c:forEach>


                            </table>   
                            </body>
                            </html>