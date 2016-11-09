package br.com.koutosoft.installux.dao;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import java.util.ArrayList;
import br.com.koutosoft.installux.sqlite.sqlHelper;
import br.com.koutosoft.installux.modelo.itemFicha;


/**
 * Created by Leandro on 09/12/2015.
 */
public class itemDAO {

    private sqlHelper helper;
    private Context context;
    private static String tabela="TB_ITENS";
    private static String tabelaFicha="TB_FICHAS";

    private itemFicha cursorToItem( Cursor cursor )
    {
        itemFicha aux = new itemFicha();

        if( cursor.getCount() > 0 ) {
            aux.setID(cursor.getInt(0));
            aux.setID_Ficha( cursor.getInt(1));
            aux.setProduto(cursor.getInt(2));
            aux.setLocal(cursor.getInt(3));
            aux.setAmbiente(cursor.getInt(4));
            aux.setQuantidade(cursor.getFloat(5));
        }
        return aux;

    }

    public itemFicha  getItem( int id )
    {
        sqlHelper helper = new sqlHelper( context );
        Cursor cursor = helper.getCursor( tabela , " ID_ITEM = " + String.valueOf(id));
        cursor.moveToFirst();
        return  cursorToItem( cursor );
    }

    public itemFicha[] getItemsFicha( int id_ficha )
    {
        return getItems( "ID_FICHA="+String.valueOf(id_ficha) , "ID_ITEM" );
    }
    public itemFicha[] getItems()
    {
        return getItems("","");
    }

    public itemFicha[] getItems(String w )
    {
        return getItems( w , "" );
    }

    public itemFicha[] getItems(String w , String o )
    {

        sqlHelper helper = new sqlHelper( context );
        Cursor cursor = helper.getCursor( tabela , w , o );
        ArrayList< itemFicha > fichas  = new ArrayList<itemFicha>();

        cursor.moveToFirst();
        int i=0;
        while (!cursor.isAfterLast()) {
            i++;
            fichas.add(cursorToItem(cursor));
            cursor.moveToNext();
        }

        itemFicha[] retorno = new itemFicha[i];
        return fichas.toArray(retorno);
    }

    public itemDAO(Context c) {

        context = c;
        helper = new sqlHelper( c );
    }

    public void excluiTudo()
    {
        helper.executaSql("DELETE FROM " + tabela );
    }

    public long  inclui( itemFicha c )
    {
        ContentValues values = new ContentValues();
        values.put( "ID_FICHA", c.getID_Ficha() );
        values.put( "ID_PRODUTO", c.getProduto());
        values.put( "ID_LOCAL"  , c.getLocal());
        values.put( "ID_AMBIENTE", c.getAmbiente());
        values.put( "QUANTIDADE" , c.getQuantidade());

        return helper.inclui(tabela , values);
    }

}
