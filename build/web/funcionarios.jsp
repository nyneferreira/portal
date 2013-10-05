<%-- 
    Document   : funcionarios
    Created on : 21/09/2011, 20:39:13
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
                <html:form action="/FuncionarioAction" >    
                    <h2>CADASTRO DE FUNCIONÁRIOS</h2><br/>
                    
                    <bean:write name="FuncionarioForm" property="mensagem" />
                    <TABLE border='0' cellpadding='2' cellspacing='0' width='60%' class='tabela2'>

                        <tr>
                            <td >Nome: </td><td ><html:text property="nome" maxlength="50" size="50"/>
                                <!-- <input maxlength='50' type='text'  name='descricao'  size='50' tabindex='2' style='font-family: Tahoma; font-size: 08pt; border: 1px solid #808080; padding-left:5px'></td>-->
                        </tr>
                        <tr>
                            <td >CPF: </td><td ><html:text property="CPF" maxlength="50" size="30"/></td>
                        </tr>
                        <tr>
                            <td >Cidade: </td><td >
                                <html:text property="cidade" maxlength="50" size="50"/>

                            </td>
                        </tr>
                        <tr>
                            <td >UF</td><td >
                                <html:select  property="UF">
                                    <html:option value="Nulo">--</html:option>
                                    <html:option value='AC'>AC - Acre</html:option>
                                    <html:option value='AL'>AL - Alagoas</html:option>
                                    <html:option value='AP'>AP - Amapá¡</html:option>
                                    <html:option value='AM'>AM - Amazonas</html:option>
                                    <html:option value='BA'>BA - Bahia</html:option>
                                    <html:option value='CE'>CE - Ceará¡</html:option>
                                    <html:option value='DF'>DF - Distrito Federal</html:option>
                                    <html:option value='ES'>ES - Espírito Santo</html:option>
                                    <html:option value='GO'>GO - Goiás</html:option>
                                    <html:option value='MA'>MA - MaranhÃ£o</html:option>
                                    <html:option value='MT'>MT - Mato Grosso</html:option>
                                    <html:option value='MS'>MS - Mato Grosso do Sul</html:option>
                                    <html:option value='MG'>MG - Minas Gerais</html:option>
                                    <html:option value='PA'>PA - Pará¡</html:option>
                                    <html:option value='PB'>PB - Paraíba</html:option>
                                    <html:option value='PR'>PR - Paraná¡</html:option>
                                    <html:option value='PE'>PE - Pernambuco</html:option>
                                    <html:option value='PI'>PI - Piauí­</html:option>
                                    <html:option value='RJ'>RJ - Rio de Janeiro</html:option>
                                    <html:option value='RN'>RN - Rio Grande do Norte</html:option>
                                    <html:option value='RS'>RS - Rio Grande do Sul</html:option>
                                    <html:option value='RO'>RO - Rondonia</html:option>
                                    <html:option value='RR'>RR - Roraima</html:option>
                                    <html:option value='SC'>SC - Santa Catarina</html:option>
                                    <html:option value='SP'>SP - São Paulo</html:option>
                                    <html:option value='SE'>SE - Sergipe</html:option>
                                    <html:option value='TO'>TO - Tocantins</html:option>

                                </html:select>


                            </td>
                        </tr>
                        <tr>
                            <td >Bairro: </td><td >
                                <html:text property="bairro" maxlength="50" size="30"/>                         
                            </td>
                        </tr>
                        <tr>
                            <td >Rua/Av: </td><td >
                                <html:text property="endereco" maxlength="50" size="30"/>

                            </td>
                        </tr>
                        <tr>
                            <td >Telefone: </td><td >

                                <html:text property="telefone" maxlength="50" size="30"/>

                            </td>
                        </tr>
                        <tr>
                            <td >Cargo: </td><td >

                                <html:text property="cargo" maxlength="50" size="30"/></td>
                        </tr>
                        <tr>
                            <td >Salário: </td><td >
                                <html:text property="salario" maxlength="50" size="30"/></td>
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
