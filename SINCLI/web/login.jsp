<%-- 
    Document   : login
    Created on : 14/02/2013, 23:01:33
    Author     : bruno
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Agendamento de exames</title>
        <link href="css/bootstrap.min.css" rel="stylesheet" media="screen">
        <link href="css/style.css" rel="stylesheet"/>
    </head>
    <body>

        <div class="container">

            <div class="control-group">
                
                <form action="j_spring_security_check" method="post" class="form-signin">

                    <h2>Faça o login</h2><br>
                    <%
                        if (request.getParameter("error") != null) {
                            if (request.getParameter("error").equals("invalido")) {
                    %>
                    <p>
                        <span style="color:red">
                            Usuário ou Senha inválidos
                        </span>
                    </p>
                    <%        } //fim do if equals
                        }//fim do if null
                    %>
                    
                    <div class="controls">
                        <input type="text" name="j_username" id="j_username" placeholder="Digite o nome"
                               value="${not empty login_error ? SPRING_SECURITY_LAST_USERNAME : ''}"/><br>
                        <input type="password" name="j_password" id="j_password" placeholder="Digite a senha"/><br><br>
                        <input type="submit" value="Logar" class="btn"/><br>
                    </div>
                </form>
            </div>

        </div>

    </body>
</html>
