package br.com.koutosoft.installux.modelo;

/**
 * Created by KoutoSoft Sistemas on 30/06/2015.
 */
public class itemFicha {
    private int ID;
    private int Ficha;
    private int Produto;
    private int Local;
    private int Ambiente;
    private float Quantidade;
    private long ID_Ficha;

    public int getID() {
        return ID;
    }

    public void setID(int ID) {
        this.ID = ID;
    }

    public int getFicha() {
        return Ficha;
    }

    public void setFicha(int ficha) {
        Ficha = ficha;
    }

    public int getProduto() {
        return Produto;
    }

    public void setProduto(int produto) {
        Produto = produto;
    }

    public int getLocal() {
        return Local;
    }

    public void setLocal(int local) {
        Local = local;
    }

    public int getAmbiente() {
        return Ambiente;
    }

    public void setAmbiente(int ambiente) {
        Ambiente = ambiente;
    }

    public float getQuantidade() {
        return Quantidade;
    }

    public void setQuantidade(float quantidade) {
        Quantidade = quantidade;
    }

    public long getID_Ficha() {
        return ID_Ficha;
    }

    public void setID_Ficha(long ID_Ficha) {
        this.ID_Ficha = ID_Ficha;
    }
}
