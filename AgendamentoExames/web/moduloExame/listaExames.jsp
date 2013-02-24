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
        <link href="../css/bootstrap.min.css" rel="stylesheet" media="screen">
        <link href="../css/style.css" rel="stylesheet"/>
    </head>
    <body>

        <f:view>
            <div class="container">
                <%@include file="../header2.jsp"%>
                <h:form>

                    <h:dataTable value="#{Exame.listaExames()}" var="exame" id="listaExames" 
                                 border="2" styleClass="table table-striped">
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
                                <h:outputText value="Valor"/>
                            </f:facet>
                            <h:outputText value="#{exame.valor}"/>
                        </h:column>

                        <h:column headerClass="colunas">
                            <h:commandButton action="#{Exame.remove(exame.idExame)}" value="Excluir" styleClass="btn"/>
                        </h:column>

                        <h:column headerClass="colunas">
                            <h:commandButton action="#{Exame.loadExame(exame.idExame)}" value="Alterar" styleClass="btn"/>
                        </h:column>
                    </h:dataTable>

                    <br/><br/>
                    <a href="../index.jsp">Página inicial</a>

                </h:form>

            </div>
        </f:view>

        <%@include file="../footer.jsp"%>

        <script src="js/jquery.js"></script>
        <script src="js/bootstrap.min.js"></script>
    </body>
</html>
