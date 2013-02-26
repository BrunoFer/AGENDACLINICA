<%-- 
    Document   : formExame
    Created on : 14/02/2013, 10:35:10
    Author     : bruno
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@taglib prefix="h" uri="http://java.sun.com/jsf/html"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastro de Exame</title>
        <link href="css/bootstrap.min.css" rel="stylesheet" media="screen">
        <link href="css/style.css" rel="stylesheet"/>
    </head>
    <body>

        <f:view>
            <div class="container">
                <%@include file="header2.jsp"%>

                <h:form id="cadastro" prependId="false" styleClass="form-actions">

                    <h2>Cadastro de Exames</h2><br>

                    Nome: <h:inputText id="nome" value="#{Exame.nome}"/><br>
                    Valor: <h:inputText id="valor" value="#{Exame.valor}"/><br><br>

                    <h:commandButton action="#{Exame.cadastrar()}" value="Cadastrar" styleClass="btn"/>

                </h:form>

            </div>
        </f:view>

        <%@include file="footer.jsp"%>

    </body>
</html>
