<%-- 
    Document   : formPaciente
    Created on : 14/02/2013, 10:34:26
    Author     : bruno
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@taglib prefix="h" uri="http://java.sun.com/jsf/html"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastro de Paciente</title>
        <link href="css/bootstrap.min.css" rel="stylesheet" media="screen">
        <link href="css/style.css" rel="stylesheet"/>
    </head>
    <body>

        <f:view>

            <div class="wrapper">
                <div class="container-fluid">
                    <%@include file="header2.jsp"%>
                </div>
            </div>

            <div class="wrapper">

                <h:form id="cadastro" prependId="false" styleClass="form-actions">

                    <h2>Cadastro de Paciente:</h2>

                    Nome: <h:inputText id="nome" value="#{Paciente.nome}" required="true" 
                                 immediate="true">
                    </h:inputText>
                    <h:message for="nome"/><br>
                    Data de nascimento: <h:inputText id="dataNasc" value="#{Paciente.dataNasc}" 
                                 required="true" immediate="true">
                        <f:convertDateTime pattern="dd/MM/yyyy HH:mm"/>
                    </h:inputText><br>
                    Logradouro: <h:inputText id="logradouro" value="#{Paciente.logradouro}"/><br>
                    Número: <h:inputText id="numero" value="#{Paciente.numero}"/><br>
                    Bairro: <h:inputText id="bairro" value="#{Paciente.bairro}"/><br>
                    Cidade: <h:inputText id="cidade" value="#{Paciente.cidade}"/><br>
                    UF: <h:selectOneMenu value="#{Paciente.uf}">  
                        <f:selectItem itemValue="AC" itemLabel="Acre"/> 
                        <f:selectItem itemValue="AL" itemLabel="Alagoas"/>  
                        <f:selectItem itemValue="AP" itemLabel="Amapá"/>  
                        <f:selectItem itemValue="AM" itemLabel="Amazonas"/>  
                        <f:selectItem itemValue="BA" itemLabel="Bahia"/>  
                        <f:selectItem itemValue="CE" itemLabel="Ceará"/>  
                        <f:selectItem itemValue="DF" itemLabel="Distrito Federal"/>  
                        <f:selectItem itemValue="ES" itemLabel="Espírito Santo"/>
                        <f:selectItem itemValue="GO" itemLabel="Goiais"/>
                        <f:selectItem itemValue="MA" itemLabel="Maranhão"/>  
                        <f:selectItem itemValue="MT" itemLabel="Mato Grosso"/> 
                        <f:selectItem itemValue="MS" itemLabel="Mato Grosso do Sul"/> 
                        <f:selectItem itemValue="MG" itemLabel="Minas Gerais"/>
                        <f:selectItem itemValue="PR" itemLabel="Paraná"/>
                        <f:selectItem itemValue="PB" itemLabel="Paraíba"/>  
                        <f:selectItem itemValue="PA" itemLabel="Pará"/>  
                        <f:selectItem itemValue="PE" itemLabel="Pernambuco"/>  
                        <f:selectItem itemValue="PI" itemLabel="Piauí"/> 
                        <f:selectItem itemValue="RJ" itemLabel="Rio de Janeiro"/>  
                        <f:selectItem itemValue="RN" itemLabel="Rio Grande do Norte"/>  
                        <f:selectItem itemValue="RS" itemLabel="Rio Grande do Sul"/>  
                        <f:selectItem itemValue="RO" itemLabel="Rondonia"/>  
                        <f:selectItem itemValue="RR" itemLabel="Roraima"/>  
                        <f:selectItem itemValue="SC" itemLabel="Santa Catarina"/>
                        <f:selectItem itemValue="SE" itemLabel="Sergipe"/>                            
                        <f:selectItem itemValue="SP" itemLabel="São Paulo"/>
                        <f:selectItem itemValue="TO" itemLabel="Tocantis"/>      
                    </h:selectOneMenu><br><br>

                    <h:commandButton action="#{Paciente.cadastrar()}" value="Cadastrar" styleClass="btn"/>
                    <br><br>
                </h:form>

            </div>
        </f:view>

        <%@include file="footer.jsp"%>

    </body>
</html>
