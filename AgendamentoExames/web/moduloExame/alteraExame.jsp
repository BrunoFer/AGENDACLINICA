<%-- 
    Document   : alteraExame
    Created on : 21/02/2013, 21:32:28
    Author     : bruno
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>


<%@taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@taglib prefix="h" uri="http://java.sun.com/jsf/html"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Altera Exame</title>
    </head>
    <body>
        <f:view>
            <h1>Alterar Exame</h1>

            <h:form id="altera">

                Nome: <h:inputText value="#{Exame.nome}" id="nome"/><br>
                Valor: <h:inputText value="#{Exame.valor}" id="valor"/><br>
                
                <h:commandButton action="#{Exame.alterar()}" value="Alterar"/><br><br>
                
                <h:commandLink action="listaExames.jsp" value="Lista de exames"/>
                
            </h:form>
        </f:view>
    </body>
</html>
