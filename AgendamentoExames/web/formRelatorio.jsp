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
            <div class="container">
                <%@include file="header2.jsp"%>

                <h:form id="cadastro" prependId="false" styleClass="form-actions">

                    <h2>Relatórios</h2>

                    Data Início: <h:inputText id="dataHoraInicio" value="#{Relatorio.dataInicio}">
                        <f:convertDateTime pattern="dd/MM/yyyy"/>
                    </h:inputText>

                    Data Fim: <h:inputText id="dataHoraFinal" value="#{Relatorio.dataFinal}">
                        <f:convertDateTime pattern="dd/MM/yyyy"/>
                    </h:inputText><br>

                    Valor: 
                    <h:panelGrid columns="2">
                        <h:selectOneRadio id="valor" value="#{Relatorio.valor}">
                            <f:selectItem id="s" itemValue="s" itemLabel="Sim"/>
                            <f:selectItem id="n" itemValue="n" itemLabel="Não"/>
                        </h:selectOneRadio>
                    </h:panelGrid>

                    <br>
                    <h:commandButton action="#{Relatorio.gerar()}" value="Gerar" styleClass="btn"/>

                    <div id=”relatorio”></div>
                
                </h:form>

            </div>
        </f:view>

        <%@include file="footer.jsp"%>

    </body>
</html>
