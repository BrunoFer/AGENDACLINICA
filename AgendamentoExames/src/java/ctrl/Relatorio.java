package ctrl;

import dao.AgendaDAO;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import javax.faces.model.DataModel;
import javax.faces.model.ListDataModel;

/**
 *
 * @author bruno
 */
public class Relatorio {

    private Date dataInicio;
    private Date dataFinal;
    private char valor;
    private PacienteBean paciente;
    private ExameBean exame;
    private AgendaBean agenda;
    private List<AgendaBean> agendamentos = new ArrayList();

    public Relatorio() {
    }

    public Relatorio(Date dataInicio, Date dataFinal, char valor) {
        this.dataInicio = dataInicio;
        this.dataFinal = dataFinal;
        this.valor = valor;
    }
    
    public AgendaBean getAgenda() {
        return agenda;
    }

    public void setAgenda(AgendaBean agenda) {
        this.agenda = agenda;
    }

    public Date getDataFinal() {
        return dataFinal;
    }

    public void setDataFinal(Date dataFinal) {
        this.dataFinal = dataFinal;
    }

    public Date getDataInicio() {
        return dataInicio;
    }

    public void setDataInicio(Date dataInicio) {
        this.dataInicio = dataInicio;
    }

    public ExameBean getExame() {
        return exame;
    }

    public void setExame(ExameBean exame) {
        this.exame = exame;
    }

    public PacienteBean getPaciente() {
        return paciente;
    }

    public void setPaciente(PacienteBean paciente) {
        this.paciente = paciente;
    }

    public char getValor() {
        return valor;
    }

    public void setValor(char valor) {
        this.valor = valor;
    }

    public String gerar() {
        if (valor == 's') {
            return "valor";
        }
        return "periodo";
    }

    public DataModel<AgendaBean> listaAgendamentos(int i) {
        AgendaDAO agendaDAO = new AgendaDAO();
        System.out.println("Data inicial: "+dataInicio +" Data final: "+ dataFinal);
        
        List<AgendaDAO> listaAgenda = agendaDAO.getAgendamentos("SELECT a FROM Agenda a WHERE a.dataHora BETWEEN :dataInicio AND :dataFinal");
        if (listaAgenda != null) {
            agendamentos.removeAll(agendamentos);
            for (AgendaDAO a : listaAgenda) {
                System.out.println("passei aqui alguma vez");
                AgendaBean ag = new AgendaBean(a.getDataHora(), a.getIdPaciente(), a.getIdMedico(), a.getIdExame(),
                        a.getObs(), a.getResultado());

                PacienteBean p = new PacienteBean();
                p.setId(a.getIdPaciente());
                paciente = p.getPaciente();

                ExameBean e = new ExameBean();
                e.setIdExame(a.getIdExame());
                exame = e.getExame();

                ag.setPacienteBean(paciente);
                ag.setExameBean(exame);

                agendamentos.add(ag);
                System.out.println();
            }
            return new ListDataModel(agendamentos);
        }
        System.out.println("retornou nulo nessa pesquisa");
        return null;
    }
    
    public float calcula(){
        float total = 0;
        for (AgendaBean a: agendamentos){
            total += a.getExameBean().getValor();
        }
        return total;
    }
}
