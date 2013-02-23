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
        <link href="../css/bootstrap.min.css" rel="stylesheet" media="screen">
        <link href="../css/style.css" rel="stylesheet"/>
    </head>
    <body>
        <%@include file="../header2.jsp"%>

        <f:view>
            <div class="body">
                <h:form id="altera">

                    <h2>Alterar agendamento</h2>
                    Data: <h:outputText id="dataHora" value="#{Agenda.dataHora}">
                        <f:convertDateTime pattern="dd/MM/yyyy hh:mm:ss"/>
                    </h:outputText><br>

                    Médico: <h:outputText value="#{Agenda.medicoBean.nome}" id="nomeMedico"/><br>

                    Exame: <h:outputText value="#{Agenda.exameBean.nome}" id="idExame"/><br>

                    Paciente: <h:outputText value="#{Agenda.pacienteBean.nome}" id="idPaciente"/><br>

                    Obs.: <h:inputText value="#{Agenda.obs}" id="obs"/><br>
                    Resultado: <h:inputTextarea value="#{Agenda.resultado}" rows="6" cols="40" id="resultado"/><br><br>

                    <h:commandButton action="#{Agenda.alterar()}" value="Alterar" styleClass="btn"/>

                    <br/><br/>
                    <h:commandLink action="listaAgenda.jsp" value="Lista de agendamentos"/>

                </h:form>
            </div>
        </f:view>

        <script src="js/jquery.js"></script>
        <script src="js/bootstrap.min.js"></script>
    </body>
</html>
