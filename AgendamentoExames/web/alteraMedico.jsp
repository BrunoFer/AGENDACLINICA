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
        <title>Altera Médico</title>
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

                <h:form id="altera" prependId="false" styleClass="form-actions">

                    <h2>Editar registro de Médico</h2><br/>

                    <h:panelGrid columns="2" width="40%">

                        <h:outputLabel value="* Nome "/>
                        <h:inputText value="#{Medico.nome}" id="nome"/>
                        <h:outputLabel value="* CRM "/>
                        <h:inputText value="#{Medico.crm}" id="crm"/>
                        <br/><br/><br/>

                        <h:commandButton action="#{Medico.alterar()}" value="Alterar" styleClass="btn"/><br><br>

                    </h:panelGrid>
                        
                    <div id="box">
                        <h:messages for="cadastro"/>
                    </div>
                    
                    <h:outputLabel value="* Campos obrigatórios" style="color: #f00"/>

                    <br/><br/>
                    <h:commandLink action="listaMedicos.jsp" value="Lista de médicos"/>

                </h:form>

            </div>
        </f:view>

        <%@include file="footer.jsp"%>

    </body>
</html>
