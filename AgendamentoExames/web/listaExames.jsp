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
        <title>Lista de clientes</title>
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

            <div class="container">
                <h:form>

                    <h:dataTable value="#{Exame.listaExames()}" var="exame" id="listaExames" 
                                 border="2" styleClass="table table-striped" columnClasses="span1,span5,span3,span1,span1">
                        
                        <f:facet name="header">
                            <h:outputText value="Tabela de Exames" />
                        </f:facet>

                        <h:column headerClass="colunas">
                            <f:facet name="header">
                                <h:outputText value="ID"/>
                            </f:facet>
                            <h:outputText value="#{exame.idExame}"/>
                        </h:column>

                        <h:column headerClass="colunas">
                            <f:facet name="header">
                                <h:outputText value="Nome"/>
                            </f:facet>
                            <h:outputText value="#{exame.nome}"/>
                        </h:column>

                        <h:column headerClass="colunas">
                            <f:facet name="header">
                                <h:outputText value="Valor (R$)"/>
                            </f:facet>
                            <h:outputText value="#{exame.valor}">
                                <f:convertNumber pattern="#,##0.00"/>
                            </h:outputText>
                        </h:column>

                        <h:column headerClass="colunas">
                            <h:commandButton action="#{Exame.loadExame()}" value="Alterar" styleClass="btn btn-info">
                                <f:param name="idExame" value="#{exame.idExame}"/>
                            </h:commandButton>
                        </h:column>
                        
                        <h:column headerClass="colunas">
                            <h:commandButton action="#{Exame.remove()}" value="Excluir" styleClass="btn btn-inverse">
                                <f:param name="idExame" value="#{exame.idExame}"/>
                            </h:commandButton>
                        </h:column>
                        
                    </h:dataTable>

                    <br/><br/>
                    <a href="index.jsp">Página inicial</a>

                </h:form>

            </div>
        </f:view>

        <%@include file="footer.jsp"%>

    </body>
</html>
