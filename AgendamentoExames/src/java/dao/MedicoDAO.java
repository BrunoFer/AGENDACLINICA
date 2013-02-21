package dao;

import connect.Conexao;
import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import db.Medico;
import org.hibernate.HibernateException;

/**
 *
 * @author bruno
 */
public class MedicoDAO {

    Integer idMedico;
    String nome;
    String crm;

    public MedicoDAO() {
    }

    public MedicoDAO(Integer idMedico, String nome, String crm) {
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

    public EntityManager conecta() {
        EntityManager em = Conexao.getManager();
        return em;
    }

    public boolean cadastrar() {
        EntityManager em = conecta();
        try {
            if (em != null) {
                Medico medico = new Medico();
                medico.setIdMedico(null);
                medico.setNome(nome);
                medico.setCrm(crm);

                EntityTransaction tx = em.getTransaction();
                tx.begin();
                em.persist(medico);
                tx.commit();
                return true;
            }
            return false;
        } catch (HibernateException e) {
            if (em.getTransaction().isActive()) {
                em.getTransaction().rollback();
            }
            return false;
        }
    }
}
