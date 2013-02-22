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
        <title>Altera Paciente</title>
    </head>
    <body>
        <f:view>
            <h1>Alterar Paciente</h1>

            <h:form id="altera">

                Nome: <h:inputText value="#{Paciente.nome}" id="nome"/><br>
                Data de nascimento: <h:inputText value="#{Paciente.dataNasc}" id="dataNasc">
                    <f:convertDateTime pattern="dd/MM/yyyy"/>
                </h:inputText><br>
                Logradouro: <h:inputText value="#{Paciente.logradouro}" id="logradouro"/><br>
                Numero: <h:inputText value="#{Paciente.numero}" id="numero"/><br>
                Bairro: <h:inputText value="#{Paciente.bairro}" id="bairro"/><br>
                Cidade: <h:inputText value="#{Paciente.cidade}" id="cidade"/><br>
                UF: <h:selectManyListbox value="#{Paciente.uf}" id="uf"/><br>
                
                <h:commandButton action="#{Paciente.alterar()}" value="Alterar"/><br><br>
                
                <h:commandLink action="listaPacientes.jsp" value="Lista de pacientes"/>
                
            </h:form>
        </f:view>
    </body>
</html>
