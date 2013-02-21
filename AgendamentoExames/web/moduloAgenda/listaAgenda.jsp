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
        <style>
            .cabecalho{
                background-color: #33ff00;
            }
            .coluna1{
                width: 20px;
                background-color: #cccccc;
            }
            .colunas{
                text-align: center;
                width: 100px;
                background-color: #ccccff;
            }
            .colunaBotoes{
                width: 45px;
                text-align: center;
                background-color: #ffffff;
            }
        </style>
    </head>
    <body>
        <f:view>

            <h:form>
                
                <h:dataTable value="#{Cliente.listaCliente()}" var="cli" id="listaClientes" border="2"
                             width="50%" columnClasses="coluna1,colunas, colunas, colunas, colunas, colunaBotoes, colunaBotoes"
                             headerClass="cabecalho">
                    <f:facet name="header">
                        <h:outputText value="Tabela de CLientes" />
                    </f:facet>

                    <h:column>
                        <h:selectBooleanCheckbox value="#{cli.cb}"/>
                    </h:column>

                    <h:column>
                        <f:facet name="header">
                            <h:outputText value="ID"/>
                        </f:facet>
                        <h:outputText value="#{cli.id}"/>
                    </h:column>

                    <h:column>
                        <f:facet name="header">
                            <h:outputText value="Nome"/>
                        </f:facet>
                        <h:outputText value="#{cli.nome}"/>
                    </h:column>

                    <h:column>
                        <f:facet name="header">
                            <h:outputText value="Idade"/>
                        </f:facet>
                        <h:outputText value="#{cli.idade}"/>
                    </h:column>

                    <h:column>
                        <f:facet name="header">
                            <h:outputText value="Data Nascimento"/>
                        </f:facet>
                        <h:outputText value="#{cli.dataHora}">
                            <f:convertDateTime pattern="dd/MM/yyyy"/>
                        </h:outputText>    
                    </h:column>
                    
                    <h:column>
                        <h:commandButton action="#{Cliente.remove(cli.id)}" value="Excluir"/>
                    </h:column>

                    <h:column>
                        <h:commandButton action="#{Cliente.loadCliente2(cli.id)}" value="Alterar"/>
                    </h:column>
                </h:dataTable>

                <br/><br/>
                <h:commandButton value="Editar" action="#{Cliente.loadCliente()}"/>
                <h:commandButton value="Remover" action="#{Cliente.remove2()}"/>
                
                <br/><br/>
                <h:outputText value="#{Cliente.texto}"/>

                <br/><br/>
                <a href="index.jsp">Voltar para página inicial...</a>

            </h:form>
                
        </f:view>
    </body>
</html>
