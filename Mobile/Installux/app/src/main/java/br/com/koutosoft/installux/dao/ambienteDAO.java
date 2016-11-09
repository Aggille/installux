package br.com.koutosoft.installux.dao;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;

import java.util.ArrayList;

import br.com.koutosoft.installux.modelo.ambiente;
import br.com.koutosoft.installux.modelo.local;
import br.com.koutosoft.installux.sqlite.sqlHelper;

/**
 * Created by KoutoSoft Sistemas on 17/06/2015.
 */
public class ambienteDAO {

    private sqlHelper helper;
    private Context context;
    private static String tabela="TB_AMBIENTES";

    private ambiente cursorToAmbiente( Cursor cursor )
    {
        ambiente aux = new ambiente();

        if( cursor.getCount() > 0 ) {
            aux.setID(cursor.getInt(0));
            aux.setNome(cursor.getString(1));
            aux.setCliente(cursor.getInt(2));
            aux.setAmbiente(cursor.getInt(3));
        }
        return aux;

    }

    public ambiente getAmbiente( int id )
    {
        sqlHelper helper = new sqlHelper( context );
        Cursor cursor = helper.getCursor( tabela , " AMBIENTE = " + String.valueOf(id));
        cursor.moveToFirst();
        return  cursorToAmbiente( cursor );
    }


    public ambiente[] getAmbientes()
    {
        return getAmbientes("","");
    }

    public ambiente[] getAmbientes(String w )
    {
        return getAmbientes( w , "" );
    }

    public ambiente[] getAmbientes(String w , String o )
    {

        sqlHelper helper = new sqlHelper( context );
        Cursor cursor = helper.getCursor( tabela , w , o );
        ArrayList< ambiente > ambientes  = new ArrayList<ambiente>();

        // Carrega um ambiente zerado para fazer efeito no combo..

        ambiente aux = new ambiente();
        aux.setCliente(0);
        aux.setNome("");
        aux.setAmbiente(0);
        aux.setID(0);
        ambientes.add(aux);


        cursor.moveToFirst();
        int i=0;
        while (!cursor.isAfterLast()) {
            i++;
            ambientes.add(cursorToAmbiente(cursor));
            cursor.moveToNext();
        }

        ambiente[] retorno = new ambiente[i];
        return ambientes.toArray(retorno);
    }

    public ambienteDAO(Context c) {

        context = c;
        helper = new sqlHelper( c );
    }

    public void excluiTudo()
    {
        helper.executaSql("DELETE FROM " + tabela );
    }

    public void inclui( ambiente c )
    {
        ContentValues values = new ContentValues();
        values.put("ID_AMBIENTE", c.getID());
        values.put("NOME", c.getNome());
        values.put("ID_CLIENTE", c.getCliente());
        values.put("AMBIENTE", c.getAmbiente());
        helper.inclui(tabela , values);
    }

}
