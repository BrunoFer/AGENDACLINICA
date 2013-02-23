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
                
                <h:dataTable value="#{Paciente.listaPacientes()}" var="paciente" id="listaPacientes" border="2"
                             width="50%" columnClasses="colunas, colunas, colunas, colunas, colunas, 
                                                colunas, colunas, colunas, colunaBotoes, colunaBotoes"
                             headerClass="cabecalho">
                    <f:facet name="header">
                        <h:outputText value="Tabela de Pacientes" />
                    </f:facet>

                    <h:column>
                        <f:facet name="header">
                            <h:outputText value="ID"/>
                        </f:facet>
                        <h:outputText value="#{paciente.id}"/>
                    </h:column>

                    <h:column>
                        <f:facet name="header">
                            <h:outputText value="Nome"/>
                        </f:facet>
                        <h:outputText value="#{paciente.nome}"/>
                    </h:column>

                    <h:column>
                        <f:facet name="header">
                            <h:outputText value="Data de Nascimento"/>
                        </f:facet>
                        <h:outputText value="#{paciente.dataNasc}">
                            <f:convertDateTime pattern="dd/MM/yyyy"/>
                        </h:outputText>
                    </h:column>

                    <h:column>
                        <f:facet name="header">
                            <h:outputText value="Logradouro"/>
                        </f:facet>
                        <h:outputText value="#{paciente.logradouro}"/>  
                    </h:column>
                    
                    <h:column>
                        <f:facet name="header">
                            <h:outputText value="Número"/>
                        </f:facet>
                        <h:outputText value="#{paciente.numero}"/>  
                    </h:column>
                    
                    <h:column>
                        <f:facet name="header">
                            <h:outputText value="Bairro"/>
                        </f:facet>
                        <h:outputText value="#{paciente.bairro}"/>  
                    </h:column> 
                    
                    <h:column>
                        <f:facet name="header">
                            <h:outputText value="Cidade"/>
                        </f:facet>
                        <h:outputText value="#{paciente.cidade}"/>  
                    </h:column>
                    
                    <h:column>
                        <f:facet name="header">
                            <h:outputText value="UF"/>
                        </f:facet>
                        <h:outputText value="#{paciente.uf}"/>  
                    </h:column>
                    
                    <h:column>
                        <h:commandButton action="#{Paciente.remove(paciente.id)}" value="Excluir"/>
                    </h:column>

                    <h:column>
                        <h:commandButton action="#{Paciente.loadPaciente(paciente.id)}" value="Alterar"/>
                    </h:column>
                </h:dataTable>
                

                <br/><br/>
                <h:commandLink action="../index.jsp" value="Página inicial"/>

            </h:form>
                
        </f:view>
    </body>
</html>
