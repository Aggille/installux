package br.com.koutosoft.installux.dao;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;

import java.util.ArrayList;

import br.com.koutosoft.installux.modelo.cliente;
import br.com.koutosoft.installux.modelo.produto;
import br.com.koutosoft.installux.sqlite.sqlHelper;
import br.com.koutosoft.installux.util.service;

/**
 * Created by KoutoSoft Sistemas on 17/06/2015.
 */
public class produtoDAO {

    private sqlHelper helper;
    private Context context;
    private static String tabela="TB_PRODUTOS";

    private produto cursorToProduto( Cursor cursor )
    {
        produto aux = new produto();

        if( cursor.getCount() > 0 ) {
            aux.setID(cursor.getInt(0));
            aux.setNome(cursor.getString(1));
            aux.setPreco(cursor.getFloat(2));
            aux.setTipo(cursor.getInt(3));
        }

        return aux;

    }

    public produto getProduto( int id )
    {
        sqlHelper helper = new sqlHelper( context );
        Cursor cursor = helper.getCursor( tabela , " ID_PRODUTO = " + String.valueOf(id));
        cursor.moveToFirst();
        return  cursorToProduto(cursor);
    }

    public produto[] getProdutos()
    {
        return getProdutos("","");
    }

    public produto[] getProdutos( String w )
    {
        return getProdutos( w ,"");
    }


    public produto[] getProdutos(String w , String o )
    {

        sqlHelper helper = new sqlHelper( context );
        Cursor cursor = helper.getCursor( tabela , w , o );
        ArrayList< produto > produtos = new ArrayList<produto>();

        cursor.moveToFirst();
        int i=0;
        while (cursor.isAfterLast() == false) {
            i++;
            produtos.add( cursorToProduto( cursor ));
            cursor.moveToNext();
        }

        produto[] retorno = new produto[i];
        return produtos.toArray(retorno);
    }


    public produtoDAO(Context c) {
        context = c;
        helper = new sqlHelper( c );
    }

    public void excluiTudo()
    {
        helper.executaSql("DELETE FROM " + tabela );
    }



    public void inclui( produto p )
    {
        ContentValues values = new ContentValues();
        values.put("ID_PRODUTO" , p.getID() );
        values.put( "PRECO", p.getPreco());
        values.put( "NOME" , p.getNome());
        values.put( "TIPO", p.getTipo());
        helper.inclui( tabela, values);
    }

}
