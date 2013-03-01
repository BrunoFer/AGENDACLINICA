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
        <script src="js/jquery.js" type="text/javascript"></script>
        <script src="js/jquery.maskedinput.min.js" type="text/javascript"></script>
        <script type="text/javascript">  
            $(document).ready(function() {  
                $("#dataInicial").mask("99/99/9999").click();
                $("#dataFinal").mask("99/99/9999").click();
            });
        </script>
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

                    <h2>Relatórios</h2><br/>

                    <h:panelGrid columns="3" width="45%">

                        <h:outputLabel value="* Data Início " for="dataInicio"/>
                        <h:inputText id="dataInicio" value="#{Relatorio.dataInicio}" required="true" 
                                     immediate="true" requiredMessage="Data obrigatória"/>
                        <h:message for="dataInicio" styleClass="alert alert-danger"/>

                        <h:outputLabel value="* Data Fim " for="dataFinal"/>
                        <h:inputText id="dataFinal" value="#{Relatorio.dataFinal}" required="true" 
                                     immediate="true" requiredMessage="Data obrigatória"/>
                        <h:message for="dataInicio" styleClass="alert alert-danger"/>
                        
                    </h:panelGrid>

                    <br/>
                    <h:selectBooleanCheckbox id="decisao" value="#{Relatorio.decisao}"/>Incluir valor


                    <br/><br/><br/>
                    <h:commandButton action="#{Relatorio.gerar()}" value="Gerar Relatório" styleClass="btn btn-primary"/>

                    <br/><br/><br/>
                    <h:outputLabel value="* Campos obrigatórios" style="color: #f00"/>

                </h:form>

            </div>
        </f:view>

        <%@include file="footer.jsp"%>

    </body>
</html>
