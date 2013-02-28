package ctrl;

import dao.AgendaDAO;
import java.util.ArrayList;
import java.util.List;
import javax.faces.model.DataModel;
import javax.faces.model.ListDataModel;

/**
 *
 * @author bruno
 */
public class Relatorio {

    private String dataInicio;
    private String dataFinal;
    private boolean decisao;
    private float valor;
    private PacienteBean paciente;
    private ExameBean exame;
    private AgendaBean agenda;
    private List<AgendaBean> agendamentos = new ArrayList();

    public Relatorio() {
    }

    public Relatorio(String dataInicio, String dataFinal, boolean decisao) {
        this.dataInicio = dataInicio;
        this.dataFinal = dataFinal;
        this.decisao = decisao;
        this.valor = 0;
    }

    public AgendaBean getAgenda() {
        return agenda;
    }

    public void setAgenda(AgendaBean agenda) {
        this.agenda = agenda;
    }

    public String getDataFinal() {
        return dataFinal;
    }

    public void setDataFinal(String dataFinal) {
        this.dataFinal = dataFinal;
    }

    public String getDataInicio() {
        return dataInicio;
    }

    public void setDataInicio(String dataInicio) {
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

    public boolean getDecisao() {
        return decisao;
    }

    public void setDecisao(boolean decisao) {
        this.decisao = decisao;
    }

    public float getValor() {
        return valor;
    }

    public void setValor(float valor) {
        this.valor = valor;
    }

    public String gerar() {
        this.dataInicio = dataInicio.substring(6, 10) + "/"
                + dataInicio.substring(3, 5) + "/" + dataInicio.substring(0, 2);
        this.dataFinal = dataFinal.substring(6, 10) + "/"
                + dataFinal.substring(3, 5) + "/" + dataFinal.substring(0, 2);
        if (decisao) {
            return "valor";
        }
        return "periodo";
    }

    public DataModel<AgendaBean> listaAgendamentos() {
        AgendaDAO agendaDAO = new AgendaDAO();
        System.out.println("Data inicial: " + dataInicio + "/ Data final: " + dataFinal);

        List<AgendaDAO> listaAgenda = agendaDAO.getAgendamentos(dataInicio, dataFinal);
        if (listaAgenda != null) {
            agendamentos.removeAll(agendamentos);
            for (AgendaDAO a : listaAgenda) {
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
            }
            this.valor = calcula();
            return new ListDataModel(agendamentos);
        }

        return null;
    }

    public float calcula() {
        float total = 0;
        for (AgendaBean a : agendamentos) {
            total += a.getExameBean().getValor();
        }
        System.out.println(total);
        return total;
    }

    public void novo() {
        setDataFinal("");
        setDataInicio("");
    }
}
