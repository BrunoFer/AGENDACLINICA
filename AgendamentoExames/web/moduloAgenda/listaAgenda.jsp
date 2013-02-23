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
        <title>Lista de Agendamentos</title>
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
                width: 40px;
                text-align: center;
                background-color: #ffffff;
            }
        </style>
    </head>
    <body>
        <f:view>

            <h:form>

                <h:dataTable value="#{Agenda.listaAgendamentos()}" var="agenda" id="listaAgendamentos" border="2"
                             width="70%" columnClasses="colunas, colunas, colunas, colunas, colunas, colunas, colunaBotoes, colunaBotoes"
                             headerClass="cabecalho">
                    <f:facet name="header">
                        <h:outputText value="Tabela de Agendamentos" />
                    </f:facet>

                    <h:column>
                        <f:facet name="header">
                            <h:outputText value="Data/Hora"/>
                        </f:facet>
                        <h:outputText value="#{agenda.dataHora}">
                            <f:convertDateTime pattern="dd/MM/yyyy hh:mm:ss"/>
                        </h:outputText>
                    </h:column>

                    <h:column>
                        <f:facet name="header">
                            <h:outputText value="Paciente"/>
                        </f:facet>
                        <h:outputFormat value="#{agenda.pacienteBean.nome}"/>
                    </h:column>
                    
                    <h:column>
                        <f:facet name="header">
                            <h:outputText value="Exame"/>
                        </f:facet>
                        <h:outputText value="#{agenda.exameBean.nome}"/>
                    </h:column>

                    <h:column>
                        <f:facet name="header">
                            <h:outputText value="Medico"/>
                        </f:facet>
                        <h:outputText value="#{agenda.medicoBean.nome}"/>
                    </h:column>

                    <h:column>
                        <f:facet name="header">
                            <h:outputText value="Observações"/>
                        </f:facet>
                        <h:outputText value="#{agenda.obs}"/>
                    </h:column>

                    <h:column>
                        <f:facet name="header">
                            <h:outputText value="resultado"/>
                        </f:facet>
                        <h:outputText value="#{agenda.resultado}"/>
                    </h:column>

                    <h:column>
                        <h:commandButton action="#{Agenda.remove()}" value="Excluir">
                            <f:param name="dataHora" value="#{agenda.dataHora}"/>
                            <f:param name="idPaciente" value="#{agenda.idPaciente}"/>
                            <f:param name="idExame" value="#{agenda.idExame}"/>
                            <f:param name="idMedico" value="#{agenda.idMedico}"/>
                        </h:commandButton>
                    </h:column>

                    <h:column>
                        <h:commandButton action="#{Agenda.loadAgendamento()}" value="Alterar">
                            <f:param name="dataHora" value="#{agenda.dataHora}"/>
                            <f:param name="idPaciente" value="#{agenda.idPaciente}"/>
                            <f:param name="idExame" value="#{agenda.idExame}"/>
                            <f:param name="idMedico" value="#{agenda.idMedico}"/>
                        </h:commandButton>
                    </h:column>
                </h:dataTable>

                <br/><br/>
                <a href="../index.jsp">Página inicial</a>

            </h:form>

        </f:view>
    </body>
</html>
