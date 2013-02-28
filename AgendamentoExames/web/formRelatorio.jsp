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
        <title>Relatórios</title>
        <link href="css/bootstrap.min.css" rel="stylesheet" media="screen">
        <link href="css/style.css" rel="stylesheet"/>
    </head>
    <body>
        <f:view>
            <div class="wrapper">
                <div class="container-fluid">
                    <%@include file="header2.jsp"%>
                </div>
            </div>

            <div class="container">

                <h:form id="cadastro" prependId="false" styleClass="form-actions">

                    <h2>Relatórios</h2>

                    Data Início: <h:inputText id="dataHoraInicio" value="#{Relatorio.dataInicio}">
                                                
                    </h:inputText>

                    Data Fim: <h:inputText id="dataHoraFinal" value="#{Relatorio.dataFinal}">
                        
                    </h:inputText><br>

                    <h:panelGrid columns="2">
                        <h:selectBooleanCheckbox id="decisao" value="#{Relatorio.decisao}"/>Valor
                    </h:panelGrid>

                    <br>
                    <h:commandButton action="#{Relatorio.gerar()}" value="Gerar Relatório" styleClass="btn btn-primary"/>

                    <div id=”relatorio”></div>
                
                </h:form>

            </div>
        </f:view>

        <%@include file="footer.jsp"%>

    </body>
</html>
