<%-- 
    Document   : formMedico
    Created on : 14/02/2013, 10:34:39
    Author     : bruno
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@taglib prefix="h" uri="http://java.sun.com/jsf/html"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastro de Médico</title>
    </head>
    <body>
        <f:view>
            <h:form id="cadastro">

                <h1>Cadastro de Médico</h1><br>

                Nome: <h:inputText value="#{Medico.nome}" id="nome"/><br>
                CRM: <h:inputText value="#{Medico.crm}" id="crm"/><br><br>

                <h:commandButton action="#{Medico.cadastrar()}" value="Cadastrar"/>

            </h:form>
        </f:view>
    </body>
</html>
