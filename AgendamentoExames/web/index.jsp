<%-- 
    Document   : index
    Created on : 14/02/2013, 09:54:02
    Author     : bruno
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Agendamento de exames</title>
        <link href="css/bootstrap.min.css" rel="stylesheet" media="screen">
    </head>
    <body>
        <script src="http://code.jquery.com/jquery.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <div class="container">

            <div class="navbar navbar-inner">
                <ul class="nav nav-tabs">
                    <li class="dropdown">
                        <a class="dropdown-toggle" data-toggle="dropdown" href="#">Home</a>
                    </li>
                    <li class="dropdown">
                        <a class="dropdown-toggle" data-toggle="dropdown" href="#">Paciente</a>
                        <ul class="dropdown-menu">
                            <li><a tabindex="-1" href="moduloPaciente/formPaciente.jsp">Cadastro</a></li>
                            <li><a tabindex="-1" href="moduloPaciente/listaPacientes.jsp">Pacientes</a></li>
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a class="dropdown-toggle" data-toggle="dropdown" href="#">Médico</a>
                        <ul class="dropdown-menu">
                            <li><a tabindex="-1" href="moduloMedico/formMedico.jsp">Cadastro</a></li>
                            <li><a tabindex="-1" href="faces/moduloMedico/listaMedicos.jsp">Médicos</a></li>
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a class="dropdown-toggle" data-toggle="dropdown" href="#">Exame</a>
                        <ul class="dropdown-menu">
                            <li><a tabindex="-1" href="moduloExame/formExame.jsp">Cadastro</a></li>
                            <li><a tabindex="-1" href="moduloExame/listaExames.jsp">Exames</a></li>
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a class="dropdown-toggle" data-toggle="dropdown" href="#">Agenda</a>
                        <ul class="dropdown-menu">
                            <li><a tabindex="-1" href="moduloAgenda/formAgenda.jsp">Agendar</a></li>
                            <li><a tabindex="-1" href="moduloAgenda/listaAgenda.jsp">Agendamentos</a></li>
                        </ul>
                    </li>

                </ul>
            </div>
            
        </div>
    </body>
</html>
