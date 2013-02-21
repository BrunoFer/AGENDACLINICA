<%-- 
    Document   : login
    Created on : 14/02/2013, 23:01:33
    Author     : bruno
--%>

<%
    String user = request.getParameter("user");
    String senha = request.getParameter("senha");

    if (senha != null && user != null) {
        if (user.equals("bruno") && senha.equals("123")) {
            response.sendRedirect("faces/index.jsp");
        }
    }
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Agendamento de exames</title>
    </head>
    <body>
        <h1>Login no sistema</h1><br>
        <form action="faces/login.jsp" method="post">
            Usuário: <input type="text" name="user"/><br>
            Senha: <input type="password" name="senha"/><br><br>
            <input type="submit" value="Logar"/>
        </form>
    </body>
</html>
