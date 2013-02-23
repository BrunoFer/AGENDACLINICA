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
                
                Data: <h:inputText id="dataHora" value="#{Agenda.dataHora}">
                    <f:convertDateTime pattern="dd/MM/yyyy"/>
                </h:inputText><br>
                
                Médico: <h:selectOneMenu value="#{Agenda.idMedico}" id="medico">
                    <f:selectItems value="#{Medico.medicosBean}" var="med" itemLabel="#{med.nome}" itemValue="#{med.idMedico}"/>
                </h:selectOneMenu><br>
                
                Exame: <h:selectOneMenu value="#{Agenda.idExame}" id="exame">
                    <f:selectItems value="#{Exame.examesBean}" var="exa" itemLabel="#{exa.nome}" itemValue="#{exa.idExame}"/>
                </h:selectOneMenu><br>
                
                Paciente: <h:selectOneMenu value="#{Agenda.idPaciente}" id="paciente">
                    <f:selectItems value="#{Paciente.pacientesBean}" var="pac" itemLabel="#{pac.nome}" itemValue="#{pac.id}"/>
                </h:selectOneMenu><br>
                
                Obs.: <h:inputText value="#{Agenda.obs}" id="obs"/><br>
                Resultado: <h:inputTextarea value="#{Agenda.resultado}" rows="6" cols="40" id="resultado"/><br><br>
                
                <h:commandButton action="#{Agenda.alterar()}" value="Alterar"/>
                
            </h:form>
                
        </f:view>
    </body>
</html>
