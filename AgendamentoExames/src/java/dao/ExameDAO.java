package dao;

import connect.Conexao;
import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import db.Exame;
import org.hibernate.HibernateException;

/**
 *
 * @author bruno
 */
public class ExameDAO {
    
    Integer idExame;
    String nome;
    Float valor;

    public ExameDAO() {
    }

    public ExameDAO(Integer idExame, String nome, Float valor) {
        this.idExame = idExame;
        this.nome = nome;
        this.valor = valor;
    }

    public Integer getIdExame() {
        return idExame;
    }

    public void setIdExame(Integer idExame) {
        this.idExame = idExame;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public Float getValor() {
        return valor;
    }

    public void setValor(Float valor) {
        this.valor = valor;
    }
    
    public EntityManager conecta() {
        EntityManager em = Conexao.getManager();
        return em;
    }
    
    public boolean cadastrar(){
        EntityManager em = conecta();
        try {
            if (em != null) {
                Exame exame = new Exame();
                exame.setIdExame(null);
                exame.setNome(nome);
                exame.setValor(valor);

                EntityTransaction tx = em.getTransaction();
                tx.begin();
                em.persist(exame);
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
