<%-- 
    Document   : ListClientes
    Created on : 08/02/2013, 13:43:40
    Author     : aluno
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@taglib prefix="h" uri="http://java.sun.com/jsf/html"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lista de Médicos</title>
        <link href="../css/bootstrap.min.css" rel="stylesheet" media="screen">
        <link href="../css/style.css" rel="stylesheet"/>
    </head>
    <body>
        <%@include file="../header2.jsp"%>

        <f:view>
            <div class="body">

                <h:form>

                    <h:dataTable value="#{Medico.listaMedicos()}" var="medico" id="listaMedicos" 
                                 border="1" styleClass="table table-striped">
                        <f:facet name="header">
                            <h:outputText value="Tabela de Médicos" />
                        </f:facet>

                        <h:column headerClass="colunas">
                            <f:facet name="header">
                                <h:outputText value="ID"/>
                            </f:facet>
                            <h:outputText value="#{medico.idMedico}"/>
                        </h:column>

                        <h:column headerClass="colunas">
                            <f:facet name="header">
                                <h:outputText value="Nome"/>
                            </f:facet>
                            <h:outputText value="#{medico.nome}"/>
                        </h:column>

                        <h:column headerClass="colunas">
                            <f:facet name="header">
                                <h:outputText value="CRM"/>
                            </f:facet>
                            <h:outputText value="#{medico.crm}"/>
                        </h:column>

                        <h:column headerClass="colunas">
                            <h:commandButton action="#{Medico.remove(medico.idMedico)}" value="Excluir" styleClass="btn"/>
                        </h:column>

                        <h:column headerClass="colunas">
                            <h:commandButton action="#{Medico.loadMedico(medico.idMedico)}" value="Alterar" styleClass="btn"/>
                        </h:column>
                    </h:dataTable>

                    <br/><br/>
                    <a href="../index.jsp">Página inicial</a>

                </h:form>
            </div>
        </f:view>

        <script src="js/jquery.js"></script>
        <script src="js/bootstrap.min.js"></script>
    </body>
</html>
