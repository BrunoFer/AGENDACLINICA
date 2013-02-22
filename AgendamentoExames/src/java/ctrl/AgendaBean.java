package ctrl;

import dao.AgendaDAO;
import java.util.Date;

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

    public AgendaBean() {}

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
    
    public void cadastrar(){
        AgendaDAO agenda = new AgendaDAO();
        agenda.cadastrar();
    }
}
