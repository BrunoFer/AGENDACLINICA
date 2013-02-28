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
        <link href="css/style.css" rel="stylesheet"/>
        <link href="css/bootstrap.min.css" rel="stylesheet" media="screen"/>
    </head>
    <body>

        <f:view>

            <div class="wrapper">
                <div class="container-fluid">
                    <%@include file="header.jsp"%>
                </div>
            </div>

            <div class="container-fluid">

                <h:form>

                    <h:dataTable value="#{Paciente.listaPacientes()}" var="paciente" id="listaPacientes" 
                                 border="2" styleClass="table table-striped" columnClasses=",span5,,span4,,,span3,,">
                        <f:facet name="header">
                            <h:outputText value="Pacientes" styleClass="lead"/>
                        </f:facet>

                        <h:column headerClass="colunas">
                            <f:facet name="header">
                                <h:outputText value="ID"/>
                            </f:facet>
                            <h:outputText value="#{paciente.id}"/>
                        </h:column>

                        <h:column headerClass="colunas">
                            <f:facet name="header">
                                <h:outputText value="Nome"/>
                            </f:facet>
                            <h:outputText value="#{paciente.nome}"/>
                        </h:column>

                        <h:column headerClass="colunas">
                            <f:facet name="header">
                                <h:outputText value="Data de Nascimento"/>
                            </f:facet>
                            <h:outputText value="#{paciente.dataNasc}">
                                <f:convertDateTime pattern="dd/MM/yyyy HH:mm"/>
                            </h:outputText>
                        </h:column>

                        <h:column headerClass="colunas">
                            <f:facet name="header">
                                <h:outputText value="Logradouro"/>
                            </f:facet>
                            <h:outputText value="#{paciente.logradouro}"/>  
                        </h:column>

                        <h:column headerClass="colunas">
                            <f:facet name="header">
                                <h:outputText value="Número"/>
                            </f:facet>
                            <h:outputText value="#{paciente.numero}"/>  
                        </h:column>

                        <h:column headerClass="colunas">
                            <f:facet name="header">
                                <h:outputText value="Bairro"/>
                            </f:facet>
                            <h:outputText value="#{paciente.bairro}"/>  
                        </h:column> 

                        <h:column headerClass="colunas">
                            <f:facet name="header">
                                <h:outputText value="Cidade"/>
                            </f:facet>
                            <h:outputText value="#{paciente.cidade}"/>  
                        </h:column>

                        <h:column headerClass="colunas">
                            <f:facet name="header">
                                <h:outputText value="UF"/>
                            </f:facet>
                            <h:outputText value="#{paciente.uf}"/>  
                        </h:column>

                        <h:column headerClass="colunas">
                            <h:commandButton action="#{Paciente.loadPaciente()}" value="Alterar" styleClass="btn btn-info">
                                <f:param name="idPaciente" value="#{paciente.id}"/>
                            </h:commandButton>
                        </h:column>
                        
                        <h:column headerClass="colunas">
                            <h:commandButton action="#{Paciente.remove()}" value="Excluir" styleClass="btn btn-inverse">
                                <f:param name="idPaciente" value="#{paciente.id}"/>
                            </h:commandButton>
                        </h:column>

                    </h:dataTable>

                    <br/><br/>
                    <a href="index.jsp">Página inicial</a>
                    <br/><br/><br/><br/>

                </h:form>

            </div>
        </f:view>

        <%@include file="footer.jsp"%>

    </body>
</html>
