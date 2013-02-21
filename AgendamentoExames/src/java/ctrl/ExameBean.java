package ctrl;

import dao.ExameDAO;

/**
 *
 * @author bruno
 */
public class ExameBean {

    Integer idExame;
    String nome;
    Float valor;

    public ExameBean() {
    }

    public ExameBean(Integer idExame, String nome, Float valor) {
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

    public void cadastrar() {
        if (!nome.isEmpty() && valor != null) {
            ExameDAO exame = new ExameDAO();
            exame.setIdExame(idExame);
            exame.setNome(nome);
            exame.setValor(valor);
            exame.cadastrar();
        }
    }
    
}
