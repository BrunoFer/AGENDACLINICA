package dao;

import connect.Conexao;
import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import db.Exame;
import java.util.ArrayList;
import java.util.List;
import javax.persistence.Query;
import org.hibernate.HibernateException;

/**
 *
 * @author bruno
 */
public class ExameDAO {
    
    private Integer idExame;
    private String nome;
    private Float valor;

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
    
    public List<ExameDAO> getExames(){
        try{
            EntityManager em = conecta();
            if (em!=null){
                Query q = em.createQuery("SELECT p FROM Exame p");
                List<Exame> resultado = q.getResultList();
                List<ExameDAO> exames = new ArrayList<ExameDAO>();
                for (Exame p: resultado){
                    exames.add(new ExameDAO(p.getIdExame(), p.getNome(), p.getValor()));
                }
                return exames;
            }
            return null;
        } catch (Exception e){
            return null;
        }
    }
}
