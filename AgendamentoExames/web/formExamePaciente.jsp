<%-- 
    Document   : formExamePaciente
    Created on : 14/02/2013, 10:36:02
    Author     : bruno
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastro de Exames de Paciente</title>
    </head>
    <body>
        <h1>Agendamento de exame:</h1><br>
        <form action="formExamePaciente.jsp" method="post">
            Data: <input type="text" name="nome"/><br>
            CRM: <input type="text" name="crm"/><br><br>
            <input type="submit" value="Cadastrar"/>
        </form>
    </body>
</html>
