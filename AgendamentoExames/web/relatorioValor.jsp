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
        <link href="../css/bootstrap.min.css" rel="stylesheet" media="screen">
        <link href="../css/style.css" rel="stylesheet"/>
    </head>
    <body>

        <f:view>
            <div class="container">
                <%@include file="../header2.jsp"%>
                <h:form>

                    <h:dataTable value="#{Agenda.listaAgendamentos()}" var="agenda" id="listaAgendamentos" 
                                 border="1" styleClass="table table-striped">
                        <f:facet name="header">
                            <h:outputText value="Tabela de Agendamentos" />
                        </f:facet>

                        <h:column headerClass="colunas">
                            <f:facet name="header">
                                <h:outputText value="Data/Hora"/>
                            </f:facet>
                            <h:outputText value="#{agenda.dataHora}">
                                <f:convertDateTime pattern="dd/MM/yyyy HH:mm"/>
                            </h:outputText>
                        </h:column>

                        <h:column headerClass="colunas">
                            <f:facet name="header">
                                <h:outputText value="Paciente"/>
                            </f:facet>
                            <h:outputFormat value="#{agenda.pacienteBean.nome}"/>
                        </h:column>

                        <h:column headerClass="colunas">
                            <f:facet name="header">
                                <h:outputText value="Exame"/>
                            </f:facet>
                            <h:outputText value="#{agenda.exameBean.nome}"/>
                        </h:column>

                        <h:column headerClass="colunas">
                            <f:facet name="header">
                                <h:outputText value="Medico"/>
                            </f:facet>
                            <h:outputText value="#{agenda.medicoBean.nome}"/>
                        </h:column>

                        <h:column headerClass="colunas">
                            <f:facet name="header">
                                <h:outputText value="Observações"/>
                            </f:facet>
                            <h:outputText value="#{agenda.obs}"/>
                        </h:column>

                        <h:column headerClass="colunas">
                            <f:facet name="header">
                                <h:outputText value="resultado"/>
                            </f:facet>
                            <h:outputText value="#{agenda.resultado}"/>
                        </h:column>

                        <h:column headerClass="colunas">
                            <h:commandButton action="#{Agenda.remove()}" value="Excluir" styleClass="btn">
                                <f:param name="dataHora" value="#{agenda.dataHora}"/>
                                <f:param name="idPaciente" value="#{agenda.idPaciente}"/>
                                <f:param name="idExame" value="#{agenda.idExame}"/>
                                <f:param name="idMedico" value="#{agenda.idMedico}"/>
                            </h:commandButton>
                        </h:column>

                        <h:column headerClass="colunas">
                            <h:commandButton action="#{Agenda.loadAgendamento()}" value="Alterar" styleClass="btn">
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

            </div>
        </f:view>

        <%@include file="../footer.jsp"%>

        <script src="js/jquery.js"></script>
        <script src="js/bootstrap.min.js"></script>
    </body>
</html>
