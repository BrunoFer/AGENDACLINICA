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
        <title>Altera Médico</title>
    </head>
    <body>
        <f:view>
            <h1>Alterar Médico</h1>

            <h:form id="altera">

                Nome: <h:inputText value="#{Medico.nome}" id="nome"/><br>
                CRM: <h:inputText value="#{Medico.crm}" id="crm"/><br>
                
                <h:commandButton action="#{Medico.alterar()}" value="Alterar"/><br><br>
                
                <h:commandLink action="listaMedicos.jsp" value="Lista de médicos"/>
                
            </h:form>
        </f:view>
    </body>
</html>
