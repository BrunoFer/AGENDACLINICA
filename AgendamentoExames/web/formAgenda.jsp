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
        
        <script type="text/javascript">
            $(document).ready(function() {
                $("#agendamento\\:dataHora").mask("99/99/9999 99:99");
            });
        </script>
    </head>
    <body>
        <f:view>
            <div class="wrapper">
                <div class="container-fluid">
                    <%@include file="header.jsp"%>
                </div>
            </div>

            <div class="container-fluid">

                <h:form id="agendamento" prependId="false" styleClass="form-actions">

                    <h2>Agendamento de exame</h2><br/>

                    <h:panelGrid columns="3" width="45%">
                        <h:outputLabel value="* Data"/>
                        <h:inputText styleClass="dataHora" id="dataHora" value="#{Agenda.dataHora}" required="true" 
                                     immediate="true" requiredMessage="Data obrigatória">
                            <f:convertDateTime pattern="dd/MM/yyyy HH:mm"/>
                        </h:inputText>
                        <h:message for="dataHora" styleClass="alert alert-danger"/>

                        <h:outputLabel value="Médico "/>
                        <h:selectOneMenu value="#{Agenda.idMedico}" id="medico">
                            <f:selectItems value="#{Medico.medicosBean}" var="med" itemLabel="#{med.nome}" itemValue="#{med.idMedico}"/>
                        </h:selectOneMenu><br>

                        <h:outputLabel value="Exame "/>
                        <h:selectOneMenu value="#{Agenda.idExame}" id="exame">
                            <f:selectItems value="#{Exame.examesBean}" var="exa" itemLabel="#{exa.nome}" itemValue="#{exa.idExame}"/>
                        </h:selectOneMenu><br>

                        <h:outputLabel value="Paciente "/>
                        <h:selectOneMenu value="#{Agenda.idPaciente}" id="paciente">
                            <f:selectItems value="#{Paciente.pacientesBean}" var="pac" itemLabel="#{pac.nome}" itemValue="#{pac.id}"/>
                        </h:selectOneMenu><br>

                        <h:outputLabel value="Observações "/>
                        <h:inputText value="#{Agenda.obs}" id="obs"/><br>

                        <h:outputLabel value="Resultado "/>
                        <h:inputTextarea value="#{Agenda.resultado}" rows="6" cols="40" id="resultado"/><br>
                        <br/><br/>

                        <h:commandButton action="#{Agenda.cadastrar()}" value="Cadastrar" styleClass="btn"/>

                    </h:panelGrid>
                    <br>
                    <div id="box">
                        <h:message for="agendamento" styleClass="alert alert-success"/>
                    </div>

                    <br/>
                    <h:outputLabel value="* Campos obrigatórios" style="color: #f00"/>

                </h:form>

            </div>
        </f:view>

        <%@include file="footer.jsp"%>

        <script src="js/jquery-1.9.1.min.js"/>
        <script src="js/jquery.js"/>
        <script src="js/jquery.maskedinput.min.js"/>
    </body>
</html>
