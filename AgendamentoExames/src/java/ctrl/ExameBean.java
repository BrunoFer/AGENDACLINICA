package ctrl;

import dao.ExameDAO;
import java.util.ArrayList;
import java.util.List;
import javax.faces.model.DataModel;
import javax.faces.model.ListDataModel;
import javax.faces.model.SelectItem;

/**
 *
 * @author bruno
 */
public class ExameBean {

    private Integer idExame;
    private String nome;
    private Float valor;
    private List<ExameBean> examesBean = new ArrayList();
    private List<SelectItem> exames = new ArrayList();
    
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

    public List<SelectItem> getExamesBean() {
        ExameDAO exame = new ExameDAO();
        exames.removeAll(exames);
        for (ExameDAO e : exame.getExames()) {
            exames.add(new SelectItem(e.getIdExame(),e.getNome()));
        }
        return exames;
    }

    public void setExamesBean(List<ExameBean> examesBean) {
        this.examesBean = examesBean;
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

    public void remove(Integer id) {
        ExameDAO exame = new ExameDAO(id);
        exame.remove();
    }

    public DataModel<ExameBean> listaExames() {
        ExameDAO exame = new ExameDAO();
        if (exame.getExames() != null) {
            examesBean.removeAll(examesBean);
            for (ExameDAO e : exame.getExames()) {
                examesBean.add(new ExameBean(e.getIdExame(), e.getNome(), e.getValor()));
            }
            return new ListDataModel(examesBean);
        }
        return null;
    }

    public void alterar() {
        ExameDAO exame = new ExameDAO(idExame, nome, valor);
        exame.alterar();
    }

    public String loadExame(Integer id) {
        int i;
        for (i = 0; i < examesBean.size(); i++) {
            if (examesBean.get(i).idExame == id) {
                break;
            }
        }

        this.idExame = id;
        this.nome = examesBean.get(i).getNome();
        this.valor = examesBean.get(i).getValor();

        return "carrega";
    }
}
