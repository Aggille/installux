package br.com.koutosoft.installux.dao;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;

import java.util.ArrayList;

import br.com.koutosoft.installux.modelo.ambiente;
import br.com.koutosoft.installux.modelo.arquiteto;
import br.com.koutosoft.installux.sqlite.sqlHelper;

/**
 * Created by KoutoSoft Sistemas on 17/06/2015.
 */
public class arquitetoDAO {

    private sqlHelper helper;
    private Context context;
    private static String tabela="TB_ARQUITETOS";

    private arquiteto cursorToArquiteto( Cursor cursor )
    {
        arquiteto aux = new arquiteto();

        //cursor.moveToFirst();

        if( cursor.getCount() > 0 ) {
            aux.setID(cursor.getInt(0));
            aux.setNome(cursor.getString(1));
        }
        return aux;

    }

    public arquiteto getArquiteto( int id )
    {
        sqlHelper helper = new sqlHelper( context );
        Cursor cursor = helper.getCursor( tabela, " ID_ARQUITETO = " + String.valueOf(id));
        cursor.moveToFirst();
        return  cursorToArquiteto(cursor);
    }


    public arquiteto[] getArquitetos()
    {
        return getArquitetos("", "");
    }

    public arquiteto[] getArquitetos(String w )
    {
        return getArquitetos(w, "");
    }

    public arquiteto[] getArquitetos(String w , String o )
    {

        sqlHelper helper = new sqlHelper( context );
        Cursor cursor = helper.getCursor( tabela, w , o );
        ArrayList< arquiteto > arquitetos  = new ArrayList<arquiteto>();

        cursor.moveToFirst();
        int i=0;
        while (cursor.isAfterLast() == false) {
            i++;
            arquitetos.add(cursorToArquiteto(cursor));
            cursor.moveToNext();
        }

        arquiteto[] retorno = new arquiteto[i];
        return arquitetos.toArray(retorno);
    }



    public arquitetoDAO(Context c) {

        context = c;
        helper = new sqlHelper( c );
    }

    public void excluiTudo()
    {
        helper.executaSql("DELETE FROM " + tabela);
    }

    public void inclui( arquiteto c )
    {
        ContentValues values = new ContentValues();
        values.put("ID_ARQUITETO", c.getID());
        values.put("NOME", c.getNome());
        helper.inclui(tabela, values);
    }

}
