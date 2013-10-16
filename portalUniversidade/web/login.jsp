<body>
 
<%@page import="openid.User"%>
 
<% User user = (User) request.getSession().getAttribute("user"); %>
 
<% if ( user == null){ %>
 
<b>Entrar com:
 
<hr/>

 
<a href="Autenticacao">
 <img src="images/google.jpg"> 
</a>

 
<% } else {%>
 
<p> Bem vindo <%= user.getName() %></p>
 
<p><a href="Auth?logout">Logout</a></p>
 
<%} %>
 
</body>