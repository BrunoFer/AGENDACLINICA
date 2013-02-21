package ctrl;

import dao.MedicoDAO;

/**
 *
 * @author bruno
 */
public class MedicoBean {

    Integer idMedico;
    String nome;
    String crm;

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
}
