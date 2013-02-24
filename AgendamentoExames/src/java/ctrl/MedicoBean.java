package ctrl;

import dao.MedicoDAO;
import java.util.ArrayList;
import java.util.List;
import javax.faces.model.DataModel;
import javax.faces.model.ListDataModel;
import javax.faces.model.SelectItem;

/**
 *
 * @author bruno
 */
public class MedicoBean {

    private Integer idMedico;
    private String nome;
    private String crm;
    private List<MedicoBean> medicosBean = new ArrayList<MedicoBean>();
    private List<SelectItem> medicos = new ArrayList<SelectItem>();
    
    public MedicoBean() {
    }

    public MedicoBean(Integer idMedico, String nome, String crm) {
        this.idMedico = idMedico;
        this.nome = nome;
        this.crm = crm;
    }

    public String getCrm() {
        return crm;
    }

    public void setCrm(String crm) {
        this.crm = crm;
    }

    public Integer getIdMedico() {
        return idMedico;
    }

    public void setIdMedico(Integer idMedico) {
        this.idMedico = idMedico;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public List<SelectItem> getMedicosBean() {
        MedicoDAO medico = new MedicoDAO();
        medicos.removeAll(medicos);
        for (MedicoDAO e : medico.getMedicos()) {
            medicos.add(new SelectItem(e.getIdMedico(), e.getNome()));
            
        }
        return medicos;
    }

    public void setMedicosBean(List<MedicoBean> medicosBean) {
        this.medicosBean = medicosBean;
    }

    public void cadastrar() {
        if (!nome.isEmpty() && !crm.isEmpty()) {
            MedicoDAO medico = new MedicoDAO();
            medico.setIdMedico(null);
            medico.setNome(nome);
            medico.setCrm(crm);
            if (medico.cadastrar())
                novo();
        }
    }

    public DataModel<MedicoBean> listaMedicos() {
        MedicoDAO medico = new MedicoDAO();
        if (medico.getMedicos() != null) {
            medicosBean.removeAll(medicosBean);
            for (MedicoDAO e : medico.getMedicos()) {
                medicosBean.add(new MedicoBean(e.getIdMedico(), e.getNome(), e.getCrm()));
            }
            return new ListDataModel(medicosBean);
        }
        return null;
    }

    public void remove(Integer id) {
        MedicoDAO medico = new MedicoDAO(id);
        medico.remove();
    }
    
    public void alterar() {
        MedicoDAO medico = new MedicoDAO(idMedico, nome, crm);
        medico.alterar();
    }

    public String loadMedico(Integer id) {
        int i;
        for (i = 0; i < medicosBean.size(); i++) {
            if (medicosBean.get(i).idMedico == id) {
                break;
            }
        }

        this.idMedico = id;
        this.nome = medicosBean.get(i).getNome();
        this.crm = medicosBean.get(i).getCrm();

        return "carrega";
    }
    
    public MedicoBean getMedico() {
        MedicoDAO medicoDAO = new MedicoDAO(idMedico);
        medicoDAO = medicoDAO.getMedico();
        MedicoBean medico = new MedicoBean(medicoDAO.getIdMedico(), medicoDAO.getNome(), medicoDAO.getCrm());
        return medico;
    }
    
    public void novo(){
        setIdMedico(null);
        setNome("");
        setCrm("");
    }
}
