package br.com.koutosoft.installux.dao;
import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import java.util.ArrayList;
import java.util.Date;

import br.com.koutosoft.installux.sqlite.sqlHelper;
import br.com.koutosoft.installux.modelo.ficha;
import br.com.koutosoft.installux.util.diversos;

/**
 * Created by Leandro on 09/12/2015.
 */
public class fichaDAO {

    private sqlHelper helper;
    private Context context;
    private static String tabela="TB_FICHAS";
    private static String tabelaItem="TB_ITENS";

    private ficha cursorToFicha( Cursor cursor )
    {
        ficha aux = new ficha();

        if( cursor.getCount() > 0 ) {
            aux.setID(cursor.getInt(0));
            aux.setData( cursor.getString(1));
            aux.setCliente(cursor.getInt(2));
            aux.setArquiteto(cursor.getInt((3)));

            if( cursor.getString(4).isEmpty())
            {
                aux.setChegada("00:00");
            }
            else {
                aux.setChegada(cursor.getString(4));
            }

            if( cursor.getString(5).isEmpty())
            {
                aux.setSaida("00:00");
            }
            else {
                aux.setSaida(cursor.getString(5));
            }

            aux.setEncerramento(cursor.getString(6));
            aux.setID_FichaSistema(cursor.getInt(7));
            aux.setFuncionario(cursor.getInt(8));
            aux.setObs(cursor.getString(9));
        }
        return aux;

    }

    public void exclui( int id)
    {
        helper.exclui("TB_ITENS"  , "ID_FICHA=" + String.valueOf(id));
        helper.exclui("TB_FICHAS" , "ID_FICHA=" + String.valueOf(id));
    }

    public ficha  getFicha( int id )
    {
        sqlHelper helper = new sqlHelper( context );
        Cursor cursor = helper.getCursor( tabela , " ID_FICHA = " + String.valueOf(id));
        cursor.moveToFirst();
        return  cursorToFicha( cursor );
    }

    public ficha[] getFichasPeriodo( String dataInicial, String dataFinal, boolean pendentes )
    {

        String Inicio = diversos.dateToSql(dataInicial);
        String Final = diversos.dateToSql(dataFinal);

        String w = "DATA BETWEEN " + Inicio +  " AND "  + Final;

        if( pendentes )
        {
          w = w + " AND ID_FICHA_SISTEMA = NULL OR ID_FICHA_SISTEMA=0";
        }

        return getFichas(w,"");
    }

    public ficha[] getFichas()
    {
        return getFichas("","");
    }

    public ficha[] getFichas(String w )
    {
        return getFichas( w , "" );
    }

    public ficha[] getFichas(String w , String o )
    {

        sqlHelper helper = new sqlHelper( context );
        Cursor cursor = helper.getCursor( tabela , w , o );
        ArrayList< ficha > fichas  = new ArrayList<ficha>();

        cursor.moveToFirst();
        int i=0;
        while (!cursor.isAfterLast()) {
            i++;
            fichas.add(cursorToFicha(cursor));
            cursor.moveToNext();
        }

        ficha[] retorno = new ficha[i];
        return fichas.toArray(retorno);
    }

    public fichaDAO(Context c) {

        context = c;
        helper = new sqlHelper( c );
    }

    public void excluiTudo()
    {
        helper.executaSql("DELETE FROM " + tabela );
        helper.executaSql("DELETE FROM " + tabelaItem );
    }

    public long  inclui( ficha c )
    {
        ContentValues values = new ContentValues();
        values.put("DATA", c.getData());
        values.put("ID_CLIENTE", c.getCliente());
        values.put("ID_ARQUITETO", c.getArquiteto());
        values.put("DT_CHEGADA", c.getChegada());
        values.put("DT_SAIDA", c.getSaida() );
        values.put("DT_ENCERRAMENTO", c.getEncerramento());
        values.put("ID_FICHA_SISTEMA", c.getID_FichaSistema() );
        values.put("ID_FUNCIONARIO", c.getFuncionario());
        values.put("OBS", c.getObs());

        return helper.inclui(tabela , values);
    }

}
