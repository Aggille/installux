package br.com.koutosoft.installux.modelo;

/**
 * Created by KoutoSoft Sistemas on 16/06/2015.
 */
public class cliente {
    public int ID;
    public String Nome;
    public int ID_Arquiteto;

    public int getID_Arquiteto() {return ID_Arquiteto;}

    public void setID_Arquiteto(int ID_Arquiteto) {
        this.ID_Arquiteto = ID_Arquiteto;
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

    public String toString()
    {
        return Nome;
    }
}
