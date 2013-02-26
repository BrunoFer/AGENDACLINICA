<%-- 
    Document   : formExamePaciente
    Created on : 14/02/2013, 10:36:02
    Author     : bruno
--%>

<%@taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@taglib prefix="h" uri="http://java.sun.com/jsf/html"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastro de Exames de Paciente</title>
        <link href="css/bootstrap.min.css" rel="stylesheet" media="screen">
        <link href="css/style.css" rel="stylesheet"/>
    </head>
    <body>
        <f:view>
            <div class="container">
                <%@include file="header2.jsp"%>
                
                <h:form id="cadastro" prependId="false" styleClass="form-actions">

                    <h2>Agendamento de exame:</h2>

                        Data: <h:inputText id="dataHora" value="#{Agenda.dataHora}">
                            <f:convertDateTime pattern="dd/MM/yyyy HH:mm"/>
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

                        Obs.:<h:inputText value="#{Agenda.obs}" id="obs"/><br>
                        Resultado: <br>
                        <h:inputTextarea value="#{Agenda.resultado}" rows="6" cols="40" id="resultado"/><br><br>

                        <h:commandButton action="#{Agenda.cadastrar()}" value="Cadastrar" styleClass="btn"/>

                </h:form>
            
           </div>
        </f:view>

        <%@include file="footer.jsp"%>

    </body>
</html>
