<%@ taglib  uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@ taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c"  %>

<sql:query var="rs" dataSource="jdbc/portalUniversidade">
    SELECT id_aluno, nome FROM aluno
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

                <TABLE border='0' cellpadding='2' cellspacing='0' width='60%' class='tabela2'> 
                    <c:forEach  var="row" items="${rs.rows}">
                        <div><font style="color: #ba0a0a; font-size: 20px; font-weight: bolder">Olá, ${row.nome}</div>
                        <br><br>    
                        <tr>
                            <td>Matricula </td><td>${row.id_aluno}</td>
                        </tr>
                        <tr>
                            <td>Nome </td><td>${row.nome}</td>
                        </tr>

                    </c:forEach>    
                </table>    

                </table> 

                <TABLE border='0' cellpadding='2' cellspacing='0' width='60%' class='tabela2'>
                    <tr><td colspan="2"><center><b>Resultado Final</td></tr>
                            <tr><td align="center">Disciplina </td><td align="center">Nota </td></tr>        
                            <sql:query var="ds" dataSource="jdbc/portalUniversidade">
                                select * from aluno A inner join nota N
                                on (A.id_aluno = N.id_aluno) inner join disciplina D
                                on (N.id_disciplina = D.id_disciplina) where A.id_aluno = 1;
                            </sql:query> 

                            <c:forEach  var="row" items="${ds.rows}">


                                <tr>
                                    <td>${row.descricao}</td><td align="right">${row.conceito}</td>
                                </tr>


                            </c:forEach>


                            </table>   
                            </body>
                            </html>