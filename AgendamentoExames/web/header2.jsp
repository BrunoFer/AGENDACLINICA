<%-- 
    Document   : cabecalho
    Created on : 23/02/2013, 17:27:14
    Author     : bruno
--%>

<script src="../js/jquery.js"></script>
<script src="../js/bootstrap.min.js"></script>

<div class="container">
    <div class="navbar navbar-inner">
        <ul class="nav nav-tabs">
            <li class="dropdown">
                <a class="dropdown-toggle" data-toggle="dropdown" href="index.jsp">Home</a>
            </li>
            <li class="dropdown">
                <a class="dropdown-toggle" data-toggle="dropdown" href="#">Paciente</a>
                <ul class="dropdown-menu">
                    <li><a tabindex="-1" href="../moduloPaciente/formPaciente.jsp">Cadastro</a></li>
                    <li><a tabindex="-1" href="../moduloPaciente/listaPacientes.jsp">Pacientes</a></li>
                </ul>
            </li>
            <li class="dropdown">
                <a class="dropdown-toggle" data-toggle="dropdown" href="#">Médico</a>
                <ul class="dropdown-menu">
                    <li><a tabindex="-1" href="../moduloMedico/formMedico.jsp">Cadastro</a></li>
                    <li><a tabindex="-1" href="../moduloMedico/listaMedicos.jsp">Médicos</a></li>
                </ul>
            </li>
            <li class="dropdown">
                <a class="dropdown-toggle" data-toggle="dropdown" href="#">Exame</a>
                <ul class="dropdown-menu">
                    <li><a tabindex="-1" href="../moduloExame/formExame.jsp">Cadastro</a></li>
                    <li><a tabindex="-1" href="../moduloExame/listaExames.jsp">Exames</a></li>
                </ul>
            </li>
            <li class="dropdown">
                <a class="dropdown-toggle" data-toggle="dropdown" href="#">Agenda</a>
                <ul class="dropdown-menu">
                    <li><a tabindex="-1" href="../moduloAgenda/formAgenda.jsp">Agendar</a></li>
                    <li><a tabindex="-1" href="../moduloAgenda/listaAgenda.jsp">Agendamentos</a></li>
                </ul>
            </li>
        </ul>
        <div class="pull-right">
            <a href="../../j_spring_security_logout" class="pull-right">
                <button class="btn btn-small btn-inverse">LogOff</button>
            </a>
        </div>
    </div>
</div>

