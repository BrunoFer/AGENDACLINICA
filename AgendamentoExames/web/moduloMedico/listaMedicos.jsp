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
                
                <h:dataTable value="#{Medico.listaMedicos()}" var="medico" id="listaMedicos" border="2"
                             width="50%" columnClasses="colunas, colunas, colunas, colunaBotoes, colunaBotoes"
                             headerClass="cabecalho">
                    <f:facet name="header">
                        <h:outputText value="Tabela de Médicos" />
                    </f:facet>

                    <h:column>
                        <f:facet name="header">
                            <h:outputText value="ID"/>
                        </f:facet>
                        <h:outputText value="#{medico.idMedico}"/>
                    </h:column>

                    <h:column>
                        <f:facet name="header">
                            <h:outputText value="Nome"/>
                        </f:facet>
                        <h:outputText value="#{medico.nome}"/>
                    </h:column>

                    <h:column>
                        <f:facet name="header">
                            <h:outputText value="CRM"/>
                        </f:facet>
                        <h:outputText value="#{medico.crm}"/>
                    </h:column>
                    
                    <h:column>
                        <h:commandButton action="#{Medico.remove(medico.idMedico)}" value="Excluir"/>
                    </h:column>

                    <h:column>
                        <h:commandButton action="#{Medico.loadMedico(medico.idMedico)}" value="Alterar"/>
                    </h:column>
                </h:dataTable>

                <br/><br/>
                <a href="../index.jsp">Voltar para página inicial...</a>

            </h:form>
                
        </f:view>
    </body>
</html>
