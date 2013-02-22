package ctrl;

import dao.MedicoDAO;
import java.util.ArrayList;
import java.util.List;
import javax.faces.model.DataModel;
import javax.faces.model.ListDataModel;

/**
 *
 * @author bruno
 */
public class MedicoBean {

    private Integer idMedico;
    private String nome;
    private String crm;
    private List<MedicoBean> medicosBean = new ArrayList<MedicoBean>();

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

    public void cadastrar() {
        if (!nome.isEmpty() && !crm.isEmpty()) {
            MedicoDAO medico = new MedicoDAO();
            medico.setIdMedico(null);
            medico.setNome(nome);
            medico.setCrm(crm);
            medico.cadastrar();
        }
    }
    
    public DataModel<MedicoBean> listaMedicos(){
        MedicoDAO medico = new MedicoDAO();
        if (medico.getMedicos()!=null){
            medicosBean.removeAll(medicosBean);
            for (MedicoDAO e: medico.getMedicos()){
                medicosBean.add(new MedicoBean(e.getIdMedico(), e.getNome(), e.getCrm()));
            }
            return new ListDataModel(medicosBean);
        }
        return null;
    }
    
    public void remove(Integer id){
        MedicoDAO medico = new MedicoDAO(id);
        medico.remove();
    }
    
    public String loadMedico(Integer id){
        int i;
        for (i=0;i<medicosBean.size();i++)
            if (medicosBean.get(i).idMedico == id)
                break;
        
        this.idMedico = id;
        this.nome = medicosBean.get(i).getNome();
        this.crm = medicosBean.get(i).getCrm();
        
        return "carrega";
    }
    
    public void alterar(){
        MedicoDAO medico = new MedicoDAO(idMedico,nome,crm);
        medico.alterar();
    }
}
