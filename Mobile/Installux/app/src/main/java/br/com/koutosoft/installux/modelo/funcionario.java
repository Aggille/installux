package br.com.koutosoft.installux.modelo;

import com.fasterxml.jackson.annotation.JsonProperty;

/**
 * Created by Leandro on 02/06/2015.
 */
public class funcionario {

    public int ID;
    public String Nome;

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
