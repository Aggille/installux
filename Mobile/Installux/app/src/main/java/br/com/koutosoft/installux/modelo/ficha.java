package br.com.koutosoft.installux.modelo;

import java.sql.Time;
import java.util.Date;

/**
 * Created by KoutoSoft Sistemas on 30/06/2015.
 */
public class ficha {
    private int ID;
    private String Data;
    private int Cliente;
    private int Arquiteto;
    private String Chegada;
    private String Saida;
    private String Encerramento;
    private int ID_FichaSistema;
    private String Obs;

    public String getObs() {
        return Obs;
    }

    public void setObs(String obs) {
        Obs = obs;
    }

    public int getFuncionario() {
        return Funcionario;
    }

    public void setFuncionario(int funcionario) {
        Funcionario = funcionario;
    }

    private int Funcionario;

    public int getID() {
        return ID;
    }

    public void setID(int ID) {
        this.ID = ID;
    }

    public String getData() {
        return Data;
    }

    public void setData(String data) {
        Data = data;
    }

    public int getCliente() {
        return Cliente;
    }

    public void setCliente(int cliente) {
        Cliente = cliente;
    }

    public int getArquiteto() {
        return Arquiteto;
    }

    public void setArquiteto(int arquiteto) {
        Arquiteto = arquiteto;
    }

    public String getChegada() {
        return Chegada;
    }

    public void setChegada(String chegada) {
        Chegada = chegada;
    }

    public String getSaida() {
        return Saida;
    }

    public void setSaida(String saida) {
        Saida = saida;
    }

    public String getEncerramento() {
        return Encerramento;
    }

    public void setEncerramento(String encerramento) {
        Encerramento = encerramento;
    }

    public int getID_FichaSistema() {
        return ID_FichaSistema;
    }

    public void setID_FichaSistema(int ID_FichaSistema) {
        this.ID_FichaSistema = ID_FichaSistema;
    }
}
