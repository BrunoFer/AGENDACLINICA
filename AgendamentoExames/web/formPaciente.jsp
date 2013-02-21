<%-- 
    Document   : formPaciente
    Created on : 14/02/2013, 10:34:26
    Author     : bruno
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@taglib prefix="h" uri="http://java.sun.com/jsf/html"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastro de Paciente</title>
    </head>
    <body>
        <f:view>

            <h1>Cadastro de Pacientes</h1><br>

            <h:form id="cadastro" prependId="false">

                Nome: <h:inputText id="nome" value="#{Paciente.nome}"/><br>
                Data de nascimento: <h:inputText id="dataNasc" value="#{Paciente.dataNasc}">
                    <f:convertDateTime pattern="dd/MM/yyyy"/>
                </h:inputText><br>
                Logradouro: <h:inputText id="logradouro" value="#{Paciente.logradouro}"/><br>
                Número: <h:inputText id="numero" value="#{Paciente.numero}"/><br>
                Bairro: <h:inputText id="bairro" value="#{Paciente.bairro}"/><br>
                Cidade: <h:inputText id="cidade" value="#{Paciente.cidade}"/><br>
                UF: <h:inputText id="uf" value="#{Paciente.uf}"/><br><br>

                <h:commandButton action="#{Paciente.cadastrar()}" value="Cadastrar"/>

            </h:form>

        </f:view>
    </body>
</html>
