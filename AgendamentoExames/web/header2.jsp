<%-- 
    Document   : cabecalho
    Created on : 23/02/2013, 17:27:14
    Author     : bruno
--%>

<script src="js/jquery.js"></script>
<script src="js/bootstrap.min.js"></script>

<div class="navbar navbar-inner">
    <ul class="nav nav-tabs">
        <li class="dropdown">
            <a class="dropdown-toggle" href="index.jsp">Home</a>
        </li>
        <li class="dropdown">
            <a class="dropdown-toggle" data-toggle="dropdown" href="#">Paciente</a>
            <ul class="dropdown-menu">
                <li><a tabindex="-1" href="formPaciente.jsp">Cadastro</a></li>
                <li><a tabindex="-1" href="listaPacientes.jsp">Pacientes</a></li>
            </ul>
        </li>
        <li class="dropdown">
            <a class="dropdown-toggle" data-toggle="dropdown" href="#">Médico</a>
            <ul class="dropdown-menu">
                <li><a tabindex="-1" href="formMedico.jsp">Cadastro</a></li>
                <li><a tabindex="-1" href="listaMedicos.jsp">Médicos</a></li>
            </ul>
        </li>
        <li class="dropdown">
            <a class="dropdown-toggle" data-toggle="dropdown" href="#">Exame</a>
            <ul class="dropdown-menu">
                <li><a tabindex="-1" href="formExame.jsp">Cadastro</a></li>
                <li><a tabindex="-1" href="listaExames.jsp">Exames</a></li>
            </ul>
        </li>
        <li class="dropdown">
            <a class="dropdown-toggle" data-toggle="dropdown" href="#">Agenda</a>
            <ul class="dropdown-menu">
                <li><a tabindex="-1" href="formAgenda.jsp">Agendar</a></li>
                <li><a tabindex="-1" href="listaAgenda.jsp">Agendamentos</a></li>
            </ul>
        </li>
        <li class="dropdown">
            <a class="dropdown-toggle" data-toggle="dropdown" href="/formAgenda.jsp">Relatórios</a>
            <ul class="dropdown-menu">
                <li><a tabindex="-1" href="formAgenda.jsp">Busca por período</a></li>
                <li><a tabindex="-1" href="listaAgenda.jsp">Busca por período e valor</a></li>
            </ul>
        </li>
    </ul>
    <div class="pull-right">
        <a href="../j_spring_security_logout">
            <button class="btn btn-small btn-inverse">LogOut</button>
        </a>
    </div>
</div>

