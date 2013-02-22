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
        <title>Altera Agenda</title>
    </head>
    <body>
        <f:view>
            <h1>Alterar Agendamento</h1>

            <h:form id="altera">

                Data/Hora: <h:inputText value="#{Agenda.dataHora}" id="nome"/><br>
                
                <h:commandButton action="#{Agenda.alterar()}" value="Alterar"/><br><br>
                
                <h:commandLink action="listaAgenda.jsp" value="Lista de agendamentos"/>
                
            </h:form>
                
        </f:view>
    </body>
</html>
