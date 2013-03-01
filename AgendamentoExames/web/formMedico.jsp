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
        <link href="css/bootstrap.min.css" rel="stylesheet" media="screen">
        <link href="css/style.css" rel="stylesheet"/>
    </head>
    <body>

        <f:view>
            <div class="wrapper">
                <div class="container-fluid">
                    <%@include file="header.jsp"%>
                </div>
            </div>

            <div class="container-fluid">

                <h:form id="cadastro" prependId="false" styleClass="form-actions">

                    <h2>Cadastro de Médico</h2><br>

                    <h:panelGrid columns="5" width="40%">

                        <h:outputLabel value="* Nome "/>
                        <h:inputText value="#{Medico.nome}" id="nome"/>
                        <div id="nome">
                            <h:messages for="nome"/>
                        </div>

                        <h:outputLabel value="* CRM "/>
                        <h:inputText value="#{Medico.crm}" id="crm"/>
                        <div id="crm">
                            <h:messages for="crm"/>
                        </div>

                        <br/><br/><br/>

                        <h:commandButton action="#{Medico.cadastrar()}" value="Cadastrar" styleClass="btn"/>

                    </h:panelGrid>

                    <br/>
                    <div id="box">
                        <h:messages for="cadastro"/>
                    </div>

                    <br/>
                    <h:outputLabel value="* Campos obrigatórios" style="color: #f00"/>

                </h:form>

            </div>
        </f:view>

        <%@include file="footer.jsp"%>

    </body>
</html>
