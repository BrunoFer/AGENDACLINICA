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
        <link href="css/bootstrap.min.css" rel="stylesheet" media="screen">
        <link href="css/style.css" rel="stylesheet"/>
    </head>
    <body>

        <f:view>
            
            <div class="wrapper">
                <div class="container-fluid">
                    <%@include file="header2.jsp"%>
                </div>
            </div>

            <div class="container">

                <h:form id="altera" prependId="false" styleClass="form-actions">

                    <h2>Alterar agendamento</h2>
                    Data: <h:inputText id="dataHora" value="#{Agenda.dataHora}" disabled="true">
                        <f:convertDateTime pattern="dd/MM/yyyy HH:mm"/>
                    </h:inputText><br>

                    Médico: <h:inputText value="#{Agenda.medicoBean.nome}" id="nomeMedico" disabled="true"/><br>

                    Exame: <h:inputText value="#{Agenda.exameBean.nome}" id="idExame" disabled="true"/><br>

                    Paciente: <h:inputText value="#{Agenda.pacienteBean.nome}" id="idPaciente" disabled="true"/><br>

                    Obs.: <h:inputText value="#{Agenda.obs}" id="obs"/><br>
                    Resultado: <h:inputTextarea value="#{Agenda.resultado}" rows="6" cols="40" id="resultado"/><br><br>

                    <h:commandButton action="#{Agenda.alterar()}" value="Alterar" styleClass="btn"/>

                    <br>
                    <div id="box">
                        <h:messages for="agendamento"/>
                    </div>
                    
                    <br/><br/>
                    <h:commandLink action="listaAgenda.jsp" value="Lista de agendamentos"/>

                </h:form>
            </div>
        </f:view>

        <%@include file="footer.jsp"%>

    </body>
</html>
