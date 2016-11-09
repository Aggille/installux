package br.com.koutosoft.installux.util;

import android.app.Activity;
import android.content.Context;

import com.google.gson.Gson;

import org.json.JSONArray;
import org.json.JSONObject;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;

import br.com.koutosoft.installux.modelo.ambiente;
import br.com.koutosoft.installux.modelo.arquiteto;
import br.com.koutosoft.installux.modelo.cliente;
import br.com.koutosoft.installux.modelo.configuracao;
import br.com.koutosoft.installux.modelo.ficha;
import br.com.koutosoft.installux.modelo.funcionario;
import br.com.koutosoft.installux.modelo.itemFicha;
import br.com.koutosoft.installux.modelo.local;
import br.com.koutosoft.installux.modelo.produto;

/**
 * Created by KoutoSoft Sistemas on 16/06/2015.
 */
public class service {
    private static int HTTP_COD_SUCESSO = 200;
    private String endereco;// = "http://172.16.0.90:8080/datasnap/rest/TServerMethods1/";
    private configuracao config;

    public service(Context a) {
        config = new configuracao(a);
        StringBuilder s = new StringBuilder();
        s.append("http://");
        s.append(config.getServidor());
        s.append(":");
        s.append(config.getPorta());
        s.append("/datasnap/rest/TServerMethods1/");
        endereco = s.toString();

    }

    public String gravaFicha(ficha Ficha, ArrayList<itemFicha> Items) {

        String aux = "";

        String f = new Gson().toJson(Ficha);
        String i = new Gson().toJson(Items);
        String r = "";
        String retorno = "";

        try {

            URL url = new URL(endereco + "gravaFicha/" + f + "/" + i);
            HttpURLConnection con = (HttpURLConnection) url.openConnection();
            BufferedReader br = new BufferedReader(new InputStreamReader((con.getInputStream())));

            while ((aux = br.readLine()) != null) {
                r += aux;
            }

            JSONArray json_result = new JSONObject(r).getJSONArray("result");
            retorno  = json_result.getString(0);
            //retorno = json_retorno.toString();


        } catch (MalformedURLException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        } catch (Exception ex) {
            ex.printStackTrace();
        }

        return retorno;


    }

    public funcionario getFuncionario(int id) {
        String aux = "";
        funcionario retorno = null;

        try {
            //URL url = new URL("http://172.16.0.99:8080/asnap/rest/TServerMethods1/ReverseString/"+s);
            URL url = new URL(endereco + "getFuncionario/" + String.valueOf(id));
            HttpURLConnection con = (HttpURLConnection) url.openConnection();

            //if (con.getResponseCode() != HTTP_COD_SUCESSO) { return ( "HTTP error code : "+ con.getResponseCode()); }

            BufferedReader br = new BufferedReader(new InputStreamReader((con.getInputStream())));
            String r = "";

            while ((aux = br.readLine()) != null) {
                r += aux;
            }

            JSONArray json_result = new JSONObject(r).getJSONArray("result");
            JSONObject json_funcionario = json_result.getJSONObject(0);
            String strArray = json_funcionario.toString();
            retorno = new Gson().fromJson(strArray, funcionario.class);

        } catch (MalformedURLException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        } catch (Exception ex) {
            ex.printStackTrace();
        }

        return retorno;
    }

    public arquiteto getArquiteto(int id) {
        String aux = "";
        arquiteto retorno = null;

        try {
            //URL url = new URL("http://172.16.0.99:8080/datasnap/rest/TServerMethods1/ReverseString/"+s);
            URL url = new URL(endereco + "getArquiteto/" + String.valueOf(id));
            HttpURLConnection con = (HttpURLConnection) url.openConnection();

            //if (con.getResponseCode() != HTTP_COD_SUCESSO) { return ( "HTTP error code : "+ con.getResponseCode()); }

            BufferedReader br = new BufferedReader(new InputStreamReader((con.getInputStream())));
            String r = "";

            while ((aux = br.readLine()) != null) {
                r += aux;
            }

            JSONArray json_result = new JSONObject(r).getJSONArray("result");
            JSONObject json_arquiteto = json_result.getJSONObject(0);
            String strArray = json_arquiteto.toString();
            retorno = new Gson().fromJson(strArray, arquiteto.class);


        } catch (MalformedURLException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        } catch (Exception ex) {
            ex.printStackTrace();
        }

        return retorno;

    }

    public ambiente getAmbiente(int id) {

        String aux = "";
        ambiente retorno = null;

        try {
            //URL url = new URL("http://172.16.0.99:8080/datasnap/rest/TServerMethods1/ReverseString/"+s);
            URL url = new URL(endereco + "getAmbiente/" + String.valueOf(id));
            HttpURLConnection con = (HttpURLConnection) url.openConnection();

            //if (con.getResponseCode() != HTTP_COD_SUCESSO) { return ( "HTTP error code : "+ con.getResponseCode()); }

            BufferedReader br = new BufferedReader(new InputStreamReader((con.getInputStream())));
            String r = "";

            while ((aux = br.readLine()) != null) {
                r += aux;
            }

            JSONArray json_result = new JSONObject(r).getJSONArray("result");
            JSONObject json_ambiente = json_result.getJSONObject(0);
            String strArray = json_ambiente.toString();
            retorno = new Gson().fromJson(strArray, ambiente.class);

        } catch (MalformedURLException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        } catch (Exception ex) {
            ex.printStackTrace();
        }

        return retorno;

    }

    public local getLocal(int id) {

        String aux = "";
        local retorno = null;

        try {

            URL url = new URL(endereco + "getLocal/" + String.valueOf(id));
            HttpURLConnection con = (HttpURLConnection) url.openConnection();

            //if (con.getResponseCode() != HTTP_COD_SUCESSO) { return ( "HTTP error code : "+ con.getResponseCode()); }

            BufferedReader br = new BufferedReader(new InputStreamReader((con.getInputStream())));
            String r = "";

            while ((aux = br.readLine()) != null) {
                r += aux;
            }

            JSONArray json_result = new JSONObject(r).getJSONArray("result");
            JSONObject json_local = json_result.getJSONObject(0);
            String strArray = json_local.toString();
            retorno = new Gson().fromJson(strArray, local.class);

        } catch (MalformedURLException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        } catch (Exception ex) {
            ex.printStackTrace();
        }

        return retorno;


    }

    public local[] getLocais() {
        String aux = "";
        local[] retorno = null;

        try {

            URL url = new URL(endereco + "getLocais");
            HttpURLConnection con = (HttpURLConnection) url.openConnection();

            //if (con.getResponseCode() != HTTP_COD_SUCESSO) { return ( "HTTP error code : "+ con.getResponseCode()); }

            BufferedReader br = new BufferedReader(new InputStreamReader((con.getInputStream())));
            String r = "";

            while ((aux = br.readLine()) != null) {
                r += aux;
            }

            JSONArray json_result = new JSONObject(r).getJSONArray("result");
            JSONArray json_local = json_result.getJSONArray(0);
            String strArray = json_local.toString();
            retorno = new Gson().fromJson(strArray, local[].class);

        } catch (MalformedURLException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        } catch (Exception ex) {
            ex.printStackTrace();
        }

        return retorno;

    }

    public funcionario[] getFuncionarios() {

        String aux = "";
        funcionario[] retorno = null;

        try {
            //URL url = new URL("http://172.16.0.99:8080/datasnap/rest/TServerMethods1/ReverseString/"+s);
            URL url = new URL(endereco + "getFuncionarios");
            HttpURLConnection con = (HttpURLConnection) url.openConnection();

            //if (con.getResponseCode() != HTTP_COD_SUCESSO) { return ( "HTTP error code : "+ con.getResponseCode()); }

            BufferedReader br = new BufferedReader(new InputStreamReader((con.getInputStream())));
            String r = "";

            while ((aux = br.readLine()) != null) {
                r += aux;
            }

            JSONArray json_result = new JSONObject(r).getJSONArray("result");
            JSONArray json_funcionario = json_result.getJSONArray(0);
            String strArray = json_funcionario.toString();
            retorno = new Gson().fromJson(strArray, funcionario[].class);

        } catch (MalformedURLException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        } catch (Exception ex) {
            ex.printStackTrace();
        }

        return retorno;


    }


    public ambiente[] getAmbientes() {

        String aux = "";
        ambiente[] retorno = null;

        try {
            URL url = new URL(endereco + "getAmbientes");
            HttpURLConnection con = (HttpURLConnection) url.openConnection();

            //if (con.getResponseCode() != HTTP_COD_SUCESSO) { return ( "HTTP error code : "+ con.getResponseCode()); }

            BufferedReader br = new BufferedReader(new InputStreamReader((con.getInputStream())));
            String r = "";

            while ((aux = br.readLine()) != null) {
                r += aux;
            }

            JSONArray json_result = new JSONObject(r).getJSONArray("result");
            JSONArray json_ambiente = json_result.getJSONArray(0);
            String strArray = json_ambiente.toString();
            retorno = new Gson().fromJson(strArray, ambiente[].class);

        } catch (MalformedURLException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        } catch (Exception ex) {
            ex.printStackTrace();
        }

        return retorno;


    }

    public arquiteto[] getArquitetos() {
        String aux = "";
        arquiteto[] retorno = null;

        try {

            URL url = new URL(endereco + "getArquitetos");
            HttpURLConnection con = (HttpURLConnection) url.openConnection();

            //if (con.getResponseCode() != HTTP_COD_SUCESSO) { return ( "HTTP error code : "+ con.getResponseCode()); }

            BufferedReader br = new BufferedReader(new InputStreamReader((con.getInputStream())));
            String r = "";

            while ((aux = br.readLine()) != null) {
                r += aux;
            }

            JSONArray json_result = new JSONObject(r).getJSONArray("result");
            JSONArray json_arquiteto = json_result.getJSONArray(0);
            String strArray = json_arquiteto.toString();
            retorno = new Gson().fromJson(strArray, arquiteto[].class);

        } catch (MalformedURLException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        } catch (Exception ex) {
            ex.printStackTrace();
        }

        return retorno;


    }

    public produto[] getProdutos() {


        String aux = "";
        produto[] retorno = null;

        try {
            //URL url = new URL("http://172.16.0.99:8080/datasnap/rest/TServerMethods1/ReverseString/"+s);
            URL url = new URL(endereco + "getProdutos");
            HttpURLConnection con = (HttpURLConnection) url.openConnection();

            //if (con.getResponseCode() != HTTP_COD_SUCESSO) { return ( "HTTP error code : "+ con.getResponseCode()); }

            BufferedReader br = new BufferedReader(new InputStreamReader((con.getInputStream())));
            String r = "";

            while ((aux = br.readLine()) != null) {
                r += aux;
            }

            JSONArray json_result = new JSONObject(r).getJSONArray("result");
            JSONArray json_produto = json_result.getJSONArray(0);
            String strArray = json_produto.toString();
            retorno = new Gson().fromJson(strArray, produto[].class);

        } catch (MalformedURLException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        } catch (Exception ex) {
            ex.printStackTrace();
        }

        return retorno;

    }

    public cliente[] getClientes() {

        String aux = "";
        cliente[] retorno = null;

        try {
            //URL url = new URL("http://172.16.0.99:8080/datasnap/rest/TServerMethods1/ReverseString/"+s);
            URL url = new URL(endereco + "getClientes");
            HttpURLConnection con = (HttpURLConnection) url.openConnection();

            //if (con.getResponseCode() != HTTP_COD_SUCESSO) { return ( "HTTP error code : "+ con.getResponseCode()); }

            BufferedReader br = new BufferedReader(new InputStreamReader((con.getInputStream())));
            String r = "";

            while ((aux = br.readLine()) != null) {
                r += aux;
            }

            JSONArray json_result = new JSONObject(r).getJSONArray("result");
            JSONArray json_clientes = json_result.getJSONArray(0);
            String strArray = json_clientes.toString();
            retorno = new Gson().fromJson(strArray, cliente[].class);

        } catch (MalformedURLException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        } catch (Exception ex) {
            ex.printStackTrace();
        }

        return retorno;

    }


}

