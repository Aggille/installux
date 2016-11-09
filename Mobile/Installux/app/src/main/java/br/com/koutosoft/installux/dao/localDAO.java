package br.com.koutosoft.installux.dao;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;

import java.util.ArrayList;

import br.com.koutosoft.installux.modelo.cliente;
import br.com.koutosoft.installux.modelo.local;
import br.com.koutosoft.installux.sqlite.sqlHelper;

/**
 * Created by KoutoSoft Sistemas on 17/06/2015.
 */
public class localDAO {

    private sqlHelper helper;
    private Context context;
    private static String tabela="TB_LOCAIS";

    private local cursorToLocal( Cursor cursor )
    {
        local aux = new local();

        if( cursor.getCount() > 0 ) {
            aux.setID(cursor.getInt(0));
            aux.setNome(cursor.getString(1));
        }

        return aux;

    }

    public local getLocal( int id )
    {
        sqlHelper helper = new sqlHelper( context );
        Cursor cursor = helper.getCursor( tabela, " ID_LOCAL = " + String.valueOf(id));
        cursor.moveToFirst();
        return  cursorToLocal( cursor );
    }


    public local[] getLocais()
    {
        return getLocais("","");
    }

    public local[] getLocais(String w )
    {
        return getLocais( w , "" );
    }

    public local[] getLocais(String w , String o )
    {

        sqlHelper helper = new sqlHelper( context );
        Cursor cursor = helper.getCursor(tabela , w , o );
        ArrayList< local > locais  = new ArrayList<local>();

        local l = new local();
        l.setID(0);
        l.setNome("Nenhum");

        locais.add(l);

        cursor.moveToFirst();
        int i=0;
        while (cursor.isAfterLast() == false) {
            i++;
            locais.add(cursorToLocal(cursor));
            cursor.moveToNext();
        }

        local[] retorno = new local[i];
        return locais.toArray(retorno);
    }



    public localDAO(Context c) {

        context = c;
        helper = new sqlHelper( c );
    }

    public void excluiTudo()
    {
        helper.executaSql("DELETE FROM " + tabela);
    }

    public void inclui( local c )
    {
        ContentValues values = new ContentValues();
        values.put("ID_LOCAL", c.getID());
        values.put("NOME", c.getNome());
        helper.inclui(tabela , values);
    }

}
