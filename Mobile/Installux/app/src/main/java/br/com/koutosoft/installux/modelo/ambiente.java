package br.com.koutosoft.installux.modelo;

/**
 * Created by KoutoSoft Sistemas on 18/06/2015.
 */
public class ambiente {
    private int ID;
    private String Nome;
    private int Cliente;
    private int Ambiente;


    public int getAmbiente() {
        return Ambiente;
    }

    public void setAmbiente(int ambiente) {
        Ambiente = ambiente;
    }

    public int getCliente() {
        return Cliente;
    }

    public void setCliente(int cliente) {
        Cliente = cliente;
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
