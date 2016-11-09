package br.com.koutosoft.installux.modelo;

/**
 * Created by KoutoSoft Sistemas on 16/06/2015.
 */
public class produto {
    private int ID;
    private String Nome;
    private Float Preco;
    private int Tipo;


    public int getID() {
        return ID;
    }

    public String toString()
    {
        return Nome;
    }

    public void setID(int ID) {
        this.ID = ID;
    }

    public String getNome() {
        return Nome;
    }

    public void setNome(String nome) {
        Nome = nome;
    }

    public Float getPreco() {
        return Preco;
    }

    public void setPreco(Float preco) {
        Preco = preco;
    }

    public int getTipo() {
        return Tipo;
    }

    public void setTipo(int tipo) {
        Tipo = tipo;
    }
}
