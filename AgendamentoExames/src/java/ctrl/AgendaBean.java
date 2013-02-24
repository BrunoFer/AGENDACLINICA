package ctrl;

import dao.AgendaDAO;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;
import javax.faces.context.FacesContext;
import javax.faces.model.DataModel;
import javax.faces.model.ListDataModel;

/**
 *
 * @author bruno
 */
public class AgendaBean {

    private Date dataHora;
    private Integer idPaciente;
    private Integer idMedico;
    private Integer idExame;
    private String obs;
    private String resultado;
    private List<AgendaBean> agendamentos = new ArrayList<AgendaBean>();
    private PacienteBean pacienteBean;
    private MedicoBean medicoBean;
    private ExameBean exameBean;

    public AgendaBean() {
    }

    public AgendaBean(Date dataHora, Integer idPaciente, Integer idMedico, Integer idExame, String obs, String resultado) {
        this.dataHora = dataHora;
        this.idPaciente = idPaciente;
        this.idMedico = idMedico;
        this.idExame = idExame;
        this.obs = obs;
        this.resultado = resultado;
    }

    public Date getDataHora() {
        return dataHora;
    }

    public void setDataHora(Date dataHora) {
        this.dataHora = dataHora;
    }

    public Integer getIdExame() {
        return idExame;
    }

    public void setIdExame(Integer idExame) {
        this.idExame = idExame;
    }

    public Integer getIdMedico() {
        return idMedico;
    }

    public void setIdMedico(Integer idMedico) {
        this.idMedico = idMedico;
    }

    public Integer getIdPaciente() {
        return idPaciente;
    }

    public void setIdPaciente(Integer idPaciente) {
        this.idPaciente = idPaciente;
    }

    public String getObs() {
        return obs;
    }

    public void setObs(String obs) {
        this.obs = obs;
    }

    public String getResultado() {
        return resultado;
    }

    public void setResultado(String resultado) {
        this.resultado = resultado;
    }

    public ExameBean getExameBean() {
        return exameBean;
    }

    public void setExameBean(ExameBean exameBean) {
        this.exameBean = exameBean;
    }

    public MedicoBean getMedicoBean() {
        return medicoBean;
    }

    public void setMedicoBean(MedicoBean medicoBean) {
        this.medicoBean = medicoBean;
    }

    public PacienteBean getPacienteBean() {
        return pacienteBean;
    }

    public void setPacienteBean(PacienteBean pacienteBean) {
        this.pacienteBean = pacienteBean;
    }

    public void cadastrar() {
        System.out.println("cheguei aqui agora");
        AgendaDAO agenda = new AgendaDAO(dataHora, idPaciente, idMedico, idExame, obs, resultado);
        if (agenda.cadastrar())
            novo();
    }

    public DataModel<AgendaBean> listaAgendamentos() {
        AgendaDAO ag = new AgendaDAO();
        if (ag.getAgendamentos() != null) {
            agendamentos.removeAll(agendamentos);
            for (AgendaDAO a : ag.getAgendamentos()) {
                AgendaBean agenda = new AgendaBean(a.getDataHora(), a.getIdPaciente(), a.getIdMedico(), a.getIdExame(),
                        a.getObs(), a.getResultado());
                
                PacienteBean paciente = new PacienteBean();
                paciente.setId(a.getIdPaciente());
                pacienteBean = paciente.getPaciente();
                
                MedicoBean medico = new MedicoBean();
                medico.setIdMedico(a.getIdMedico());
                medicoBean = medico.getMedico();
                
                ExameBean exame = new ExameBean();
                exame.setIdExame(a.getIdExame());
                exameBean = exame.getExame();
                
                agenda.setPacienteBean(pacienteBean);
                agenda.setMedicoBean(medicoBean);
                agenda.setExameBean(exameBean);
                
                agendamentos.add(agenda);
                System.out.println();
            }
            return new ListDataModel(agendamentos);
        }
        return null;
    }

    public String loadAgendamento() throws ParseException {
        Map parametros = FacesContext.getCurrentInstance().getExternalContext().getRequestParameterMap();
        String dataStr = parametros.get("dataHora").toString();
        DateFormat inputFormat = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss.S");
        Date data2 = inputFormat.parse(dataStr);
            
        String idPac = parametros.get("idPaciente").toString();
        Integer idPac2 = Integer.parseInt(idPac);
        
        String idMed = parametros.get("idMedico").toString();
        Integer idMed2 = Integer.parseInt(idMed);
        
        String idExa = parametros.get("idExame").toString();
        Integer idExa2 = Integer.parseInt(idExa);
        
        int i;
        for (i=0;i<agendamentos.size();i++){
            if (agendamentos.get(i).getDataHora().compareTo(data2)==0 && idExa2==agendamentos.get(i).getIdExame()
                    && idPac2==agendamentos.get(i).getIdPaciente() && idMed2==agendamentos.get(i).getIdMedico()){
                break;
            }
        }
        
        this.dataHora = data2;
        this.idPaciente = idPac2;
        this.idMedico = idMed2;
        this.idExame = idExa2;
        this.obs = agendamentos.get(i).getObs();
        this.resultado = agendamentos.get(i).getResultado();
        this.pacienteBean = agendamentos.get(i).getPacienteBean();
        this.exameBean = agendamentos.get(i).getExameBean();
        this.medicoBean = agendamentos.get(i).getMedicoBean();
        
        return "carrega";
    }
    
    public void alterar(){
        AgendaDAO agendaDAO = new AgendaDAO(dataHora, idPaciente, idMedico, idExame);
        agendaDAO.alterar();
    }

    public String buscaPaciente(){
        Map parametros = FacesContext.getCurrentInstance().getExternalContext().getRequestParameterMap();
        String idPac = parametros.get("idPaciente").toString();
        Integer idPac2 = Integer.parseInt(idPac);
        
        AgendaBean agenda = new AgendaBean();
        agenda.setIdPaciente(idPaciente);
        String nomePaciente = agenda.buscaPaciente();
        return null;
    }
    
    public String remove() throws ParseException {
        Map parametros = FacesContext.getCurrentInstance().getExternalContext().getRequestParameterMap();
        String dataStr = parametros.get("dataHora").toString();
        DateFormat inputFormat = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss.S");
        Date data2 = inputFormat.parse(dataStr);
            
        String idPac = parametros.get("idPaciente").toString();
        Integer idPac2 = Integer.parseInt(idPac);
        
        String idMed = parametros.get("idMedico").toString();
        Integer idMed2 = Integer.parseInt(idMed);
        
        String idExa = parametros.get("idExame").toString();
        Integer idExa2 = Integer.parseInt(idExa);
        
        AgendaDAO agendaDAO = new AgendaDAO(data2, idPac2, idMed2, idExa2);
        agendaDAO.remove();
        return "";
    }
    
    public void novo(){
        setDataHora(null);
        setIdExame(null);
        setIdMedico(null);
        setIdPaciente(null);
        setObs("");
        setResultado("");
    }
}
