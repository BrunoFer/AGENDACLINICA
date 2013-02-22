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
    </head>
    <body>
        <f:view>

            <h:form id="cadastro">

                <h1>Agendamento de exame:</h1><br>
                
                Data: <h:inputText id="dataHora" value="#{Agenda.dataHora}">
                    <f:convertDateTime pattern="dd/MM/yyyy"/>
                </h:inputText><br>
                
                Médico: <h:selectOneMenu value="#{Agenda.idMedico}" id="medico">
                    <f:selectItems value="#{Medico.listaMedicos()}" var="med" itemLabel="#{med.nome}" 
                                   itemValue="#{med.idMedico}"/>
                </h:selectOneMenu><br>
                
                Exame: <h:selectOneMenu value="#{Agenda.idExame}" id="exame">
                    <f:selectItems value="#{Exame.listaExames()}" var="exa" itemLabel="#{exa.nome}" 
                                   itemValue="#{exa.idExame}"/>
                </h:selectOneMenu><br>
                
                Paciente: <h:selectOneMenu value="#{Agenda.idPaciente}" id="paciente">
                    <f:selectItems value="#{Paciente.listaPacientes()}" var="pac" itemLabel="#{pac.nome}" 
                                   itemValue="#{pac.id}"/>
                </h:selectOneMenu><br>
                
                Obs.: <h:inputText value="#{Agenda.obs}" id="obs"/><br>
                Resultado: <h:inputTextarea value="#{Agenda.resultado}" rows="6" cols="40" id="resultado"/><br><br>
                
                <h:commandButton action="#{Agenda.cadastrar()}" value="Cadastrar"/>

            </h:form>
        </f:view>
    </body>
</html>
