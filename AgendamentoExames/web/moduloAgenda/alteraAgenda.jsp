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
                
                Data: <h:outputText id="dataHora" value="#{Agenda.dataHora}">
                    <f:convertDateTime pattern="dd/MM/yyyy hh:mm:ss"/>
                </h:outputText><br>
                
                Médico: <h:outputText value="#{Agenda.idMedico}" id="idMedico"/><br>
                
                Exame: <h:outputText value="#{Agenda.idExame}" id="idExame"/><br>
                
                Paciente: <h:outputText value="#{Agenda.idPaciente}" id="idPaciente"/><br>
                
                Obs.: <h:inputText value="#{Agenda.obs}" id="obs"/><br>
                Resultado: <h:inputTextarea value="#{Agenda.resultado}" rows="6" cols="40" id="resultado"/><br><br>
                
                <h:commandButton action="#{Agenda.alterar()}" value="Alterar"/>
                
                <br/><br/>
                <h:commandLink action="listaAgenda.jsp" value="Lista de agendamentos"/>
                
            </h:form>
                
        </f:view>
    </body>
</html>
