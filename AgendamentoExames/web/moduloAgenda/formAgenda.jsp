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
                Médico: <h:selectManyCheckbox value="#{Medico.listar()}" id="medico"/><br>
                Paciente: <h:selectManyCheckbox value="#{Paciente.listar()}" id="paciente"/><br><br>
                
                <h:commandButton action="#{Agenda.cadastrar(0)}" value="Cadastrar"/>

            </h:form>
        </f:view>
    </body>
</html>
