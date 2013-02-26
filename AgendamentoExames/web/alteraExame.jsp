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
        <title>Altera Exame</title>
        <link href="css/bootstrap.min.css" rel="stylesheet" media="screen">
        <link href="css/style.css" rel="stylesheet"/>
    </head>
    <body>

        <f:view>
            <div class="container">
                <%@include file="header2.jsp"%>

                <h:form id="altera" prependId="false" styleClass="form-actions">

                    <h2>Alterar Exame</h2>
                    Nome: <h:inputText value="#{Exame.nome}" id="nome"/><br>
                    Valor: <h:inputText value="#{Exame.valor}" id="valor"/><br>

                    <h:commandButton action="#{Exame.alterar()}" value="Alterar" styleClass="btn"/><br><br>

                    <h:commandLink action="listaExames.jsp" value="Lista de exames"/>

                </h:form>
            </div>
        </f:view>

        <%@include file="footer.jsp"%>

    </body>
</html>
