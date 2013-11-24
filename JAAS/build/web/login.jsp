<%-- 
    Document   : login
    Created on : 15/10/2013, 22:00:31
    Author     : Janine
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>UFT</title>
    </head>
    <body style="
    background: #FFFAFA;
    text-align: center;
    margin: 0px;
    padding: 80px;
    color: #000000;
    font-size:30px;
    background-image:url(../images/fundo_login.jpg);
    background-repeat: no-repeat;
    background-position: 0px 0px;
    background-position: left bottom;
    background-attachment: fixed;
    -moz-background-size: 100% 100%;
   -webkit-background-size: 100% 100%;
   background-size: 100% 100%;">
        <div> 
            <div> 
                <form action="j_security_check" method="POST">    
                    <h2>Login:</h2><br/>
                    <TABLE border='0' cellpadding='2' cellspacing='0' width='60%' style="margin-left: 380px">
                        <tr>
                            <td style="position:absolute;left:600px;">Usuario:</td><td>
                                <input type="text" name="j_username"><br>
                            </td>
                        </tr>
                        <tr>
                            <td style="position:absolute;left:600px;">Senha: </td><td >
                                <input type="password" name="j_password">
                            </td>
                        </tr>
                    </table>		

                    <td  align='right'> <input  style="width: 80px;font-size:20px;" type="submit" value="Login"></td>
                    <td ></td></tr>
                    </table>
                </form>

            </div>
            <br/>
            <br/>
            <br/>
            <br/>
            <hr style="background-color: #63abe9"/>            
            <div style="font-size: 18px; font-style: italic;color: #FFFAFA"> 
                <p>Universidade Federal Tangamandapio , 158  - Tel (031) 3663-3663</p>
            </div>
        </div> 

      <!-- <form action="j_security_check" method="POST">
        Usuario:<input type="text" name="j_username"><br>
        Senha:<input type="password" name="j_password">
   <input type="submit" value="Login">
</form>-->
    </body>
</html>
