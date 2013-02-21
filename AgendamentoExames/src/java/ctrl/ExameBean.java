package ctrl;

import dao.ExameDAO;
import java.util.ArrayList;
import java.util.List;
import javax.faces.model.DataModel;
import javax.faces.model.ListDataModel;

/**
 *
 * @author bruno
 */
public class ExameBean {

    private Integer idExame;
    private String nome;
    private Float valor;
    private List<ExameBean> examesBean = new ArrayList<ExameBean>();

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
    
    public DataModel<ExameBean> listaExames(){
        ExameDAO exame = new ExameDAO();
        if (exame.getExames()!=null){
            examesBean.removeAll(examesBean);
            for (ExameDAO e: exame.getExames()){
                examesBean.add(new ExameBean(e.getIdExame(), e.getNome(), e.getValor()));
            }
            return new ListDataModel(examesBean);
        }
        return null;
    }
    
}
