<%-- 
    Document   : formExame
    Created on : 14/02/2013, 10:35:10
    Author     : bruno
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@taglib prefix="h" uri="http://java.sun.com/jsf/html"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastro de Exame</title>
    </head>
    <body>
        <f:view>

            <h:form>

                <h1>Cadastro de Exames</h1><br>
                Nome: <h:inputText id="nome" value="#{Exame.nome}"/><br>
                Valor: <h:inputText id="valor" value="#{Exame.valor}"/><br><br>
                
                <h:commandButton action="#{Exame.cadastrar()}" value="Cadastrar"/>

            </h:form>

        </f:view>
    </body>
</html>
