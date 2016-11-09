package br.com.koutosoft.installux.dao;

import android.app.Activity;
import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;

import java.util.ArrayList;

import br.com.koutosoft.installux.modelo.cliente;
import br.com.koutosoft.installux.modelo.funcionario;
import br.com.koutosoft.installux.sqlite.sqlHelper;
import br.com.koutosoft.installux.util.service;

/**
 * Created by KoutoSoft Sistemas on 17/06/2015.
 */
public class clienteDAO {

    private sqlHelper helper;
    private Context context;
    private static String tabela="TB_CLIENTES";

    private cliente cursorToCliente( Cursor cursor )
    {
        cliente aux = new cliente();

        if( cursor.getCount() > 0 ) {
            aux.setID(cursor.getInt(0));
            aux.setNome(cursor.getString(1));
            aux.setID_Arquiteto(cursor.getInt(2));
        }

        return aux;

    }

    public cliente getCliente( int id )
    {
        sqlHelper helper = new sqlHelper( context );
        Cursor cursor = helper.getCursor(tabela, " ID_CLIENTE = " + String.valueOf(id));
        cursor.moveToFirst();
        return  cursorToCliente( cursor );
    }


    public cliente[] getClientes()
    {
        return getClientes("","");
    }

    public cliente[] getClientes(String w )
    {
        return getClientes( w , "" );
    }

    public cliente[] getClientes(String w , String o )
    {

        sqlHelper helper = new sqlHelper( context );
        Cursor cursor = helper.getCursor(tabela, w , o );
        ArrayList< cliente > clientes = new ArrayList<cliente>();

        cursor.moveToFirst();
        int i=0;
        while (cursor.isAfterLast() == false) {
            i++;
            clientes.add( cursorToCliente( cursor ));
            cursor.moveToNext();
        }

        cliente[] retorno = new cliente[i];
        return clientes.toArray(retorno);
    }



    public clienteDAO( Context c ) {

        context = c;
        helper = new sqlHelper( c );
    }

    public void excluiTudo()
    {
        helper.executaSql("DELETE FROM " + tabela );
    }

    public void inclui( cliente c )
    {
        ContentValues values = new ContentValues();

        values.put("ID_CLIENTE", c.getID());
        values.put("NOME", c.getNome());
        values.put("ID_ARQUITETO", c.getID_Arquiteto());

        helper.inclui(tabela , values);
    }

}
