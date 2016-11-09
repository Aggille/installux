package br.com.koutosoft.installux.modelo;

/**
 * Created by KoutoSoft Sistemas on 18/06/2015.
 */
public class arquiteto {
    private int ID;
    private String Nome;

    public int getID() {
        return ID;
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

    public String toString()
    {
        return Nome;

    }

}
