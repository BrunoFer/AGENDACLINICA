/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package ctrl;

import dao.PacienteDAO;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import javax.faces.model.DataModel;
import javax.faces.model.ListDataModel;

/**
 *
 * @author bruno
 */
public class PacienteBean {
    
    private Integer id;
    private String nome;
    private Date dataNasc;
    private String logradouro;
    private String numero;
    private String bairro;
    private String cidade;
    private String uf;
    private List<PacienteBean> pacientesBean = new ArrayList<PacienteBean>();

    public PacienteBean(){
       
    }
    
    public PacienteBean(Integer id, String nome, Date dataNasc, String logradouro, String numero, String bairro, String cidade, String uf) {
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

    @Override
    public String toString() {
        return "PacienteBean{" + "id=" + id + ", nome=" + nome + ", dataNasc=" + dataNasc + ", logradouro=" + logradouro + ", numero=" + numero + ", bairro=" + bairro + ", cidade=" + cidade + ", uf=" + uf + '}';
    }
    
    public void cadastrar(){
        if (!nome.isEmpty() && dataNasc!=null){
            PacienteDAO paciente = new PacienteDAO();
            paciente.setId(null);
            paciente.setNome(nome);
            paciente.setDataNasc(dataNasc);
            paciente.setLogradouro(logradouro);
            paciente.setNumero(numero);
            paciente.setBairro(bairro);
            paciente.setCidade(cidade);
            paciente.setUf(uf);
            System.out.println(paciente.toString());
            paciente.cadastrar();
        }
    }
    
    public DataModel<PacienteBean> listaPacientes(){
        PacienteDAO paciente = new PacienteDAO();
        if (paciente.getPacientes()!=null){
            pacientesBean.removeAll(pacientesBean);
            for (PacienteDAO p: paciente.getPacientes()){
                pacientesBean.add(new PacienteBean(p.getId(), p.getNome(), p.getDataNasc(), 
                        p.getLogradouro(), p.getNumero(), p.getBairro(), p.getCidade(), p.getUf()));
            }
            return new ListDataModel(pacientesBean);
        }
        return null;
    }
    
}
