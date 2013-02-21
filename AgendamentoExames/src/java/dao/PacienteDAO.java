/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import connect.Conexao;
import db.Paciente;
import java.util.Date;
import javax.persistence.EntityManager;
import org.hibernate.HibernateException;

/**
 *
 * @author bruno
 */
public class PacienteDAO {

    private Integer id;
    private String nome;
    private Date dataNasc;
    private String logradouro;
    private String numero;
    private String bairro;
    private String cidade;
    private String uf;

    public PacienteDAO() {
    }

    public PacienteDAO(Integer id, String nome, Date dataNasc, String logradouro, String numero, String bairro, String cidade, String uf) {
        this.id = id;
        this.nome = nome;
        this.dataNasc = dataNasc;
        this.logradouro = logradouro;
        this.numero = numero;
        this.bairro = bairro;
        this.cidade = cidade;
        this.uf = uf;
    }

    public String getBairro() {
        return bairro;
    }

    public void setBairro(String bairro) {
        this.bairro = bairro;
    }

    public String getCidade() {
        return cidade;
    }

    public void setCidade(String cidade) {
        this.cidade = cidade;
    }

    public Date getDataNasc() {
        return dataNasc;
    }

    public void setDataNasc(Date dataNasc) {
        this.dataNasc = dataNasc;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getLogradouro() {
        return logradouro;
    }

    public void setLogradouro(String logradouro) {
        this.logradouro = logradouro;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getNumero() {
        return numero;
    }

    public void setNumero(String numero) {
        this.numero = numero;
    }

    public String getUf() {
        return uf;
    }

    public void setUf(String uf) {
        this.uf = uf;
    }

    public EntityManager conexao() {
        EntityManager em = Conexao.getManager();
        return em;
    }

    @Override
    public String toString() {
        return "PacienteDAO{" + "id=" + id + ", nome=" + nome + ", dataNasc=" + dataNasc + ", logradouro=" + logradouro + ", numero=" + numero + ", bairro=" + bairro + ", cidade=" + cidade + ", uf=" + uf + '}';
    }

    public boolean cadastrar() {
        EntityManager em = conexao();
        try {
            if (em != null) {
                Paciente paciente = new Paciente();
                paciente.setIdPaciente(null);
                paciente.setNome(nome);
                paciente.setDataNasc(dataNasc);
                paciente.setLogradouro(logradouro);
                paciente.setNumero(numero);
                paciente.setBairro(bairro);
                paciente.setCidade(cidade);
                paciente.setUf(uf);
                System.out.println(paciente.toString());
                
                em.getTransaction().begin();
                em.persist(paciente);
                em.getTransaction().commit();
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