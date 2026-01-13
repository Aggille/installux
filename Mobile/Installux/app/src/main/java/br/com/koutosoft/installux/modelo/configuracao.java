package br.com.koutosoft.installux.modelo;

import android.content.Context;
import android.content.SharedPreferences;
import android.preference.PreferenceManager;

import br.com.koutosoft.installux.comum.constantes;
/**
 * Created by Leandro on 02/06/2015.
 */
public class configuracao {
    public String servidor;
    public String porta;
    public int funcionario;
    public String senha;
    public SharedPreferences prefs;


    public configuracao( Context context) {
        prefs =  PreferenceManager.getDefaultSharedPreferences(context);
        carrega();
    }

    public boolean isAdmin()
    {
        return getSenha().equals(constantes.SENHA_ADMIN);
    }

    public void grava()
    {
        SharedPreferences.Editor editor = prefs.edit();
        editor.putString("servidor", getServidor());
        editor.putString("porta_servidor" , getPorta());
        editor.putInt("funcionario", getFuncionario());
        editor.putString("senha", getSenha());
        editor.commit();
    }

    public void carrega()
    {
        setServidor(prefs.getString("servidor", "67d206721b2f.sn.mynetname.net"));
        setPorta( prefs.getString("porta_servidor", "8080"));
        setFuncionario( prefs.getInt("funcionario",0));
        setSenha(prefs.getString( "senha",""));
    }

    public String getServidor() {
        return servidor;
    }

    public void setServidor(String servidor) {
        this.servidor = servidor;
    }

    public String getPorta() {
        return porta;
    }
    public void setPorta(String porta) {
        this.porta = porta;
    }

    public int getFuncionario() {
        return funcionario;
    }

    public void setFuncionario(int funcionario) {
        this.funcionario = funcionario;
    }
    public String getSenha() {
        return senha;
    }
    public void setSenha(String senha) {
        this.senha = senha;
    }
}
