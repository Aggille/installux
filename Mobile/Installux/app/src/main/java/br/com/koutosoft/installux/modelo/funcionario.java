package br.com.koutosoft.installux.modelo;

/**
 * Created by Leandro on 02/06/2015.
 */
public class funcionario {
    private int ID;
    private String Nome;

    public String toString()
    {
        return Nome;
    }

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
}
