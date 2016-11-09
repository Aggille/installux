package br.com.koutosoft.installux.dao;

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
public class funcionarioDAO {

    private sqlHelper helper;
    private Context context;
    private static String tabela="TB_FUNCIONARIOS";
    private funcionario cursorToFuncionario( Cursor cursor )
    {
        funcionario aux = new funcionario();

        if( cursor.getCount() > 0 ) {
            aux.setID(cursor.getInt(0));
            aux.setNome(cursor.getString(1));
        }

        return aux;

    }

    public funcionarioDAO(Context c) {
        context = c;
        helper = new sqlHelper( c );
    }

    public funcionario getFuncionario( int id )
    {
        sqlHelper helper = new sqlHelper( context );
        Cursor cursor = helper.getCursor(tabela , " ID_FUNCIONARIO = " + String.valueOf(id));
        cursor.moveToFirst();
        return  cursorToFuncionario( cursor );

    }

    public funcionario[] getFuncionarios(){
        return getFuncionarios("","");
    }

    public funcionario[] getFuncionarios( String w )
    {
        return getFuncionarios(w , "");
    }

    public funcionario[] getFuncionarios( String w , String o )
    {

        sqlHelper helper = new sqlHelper( context );
        Cursor cursor = helper.getCursor(tabela, w , o );
        ArrayList< funcionario > funcionarios = new ArrayList<funcionario>();

        funcionario f = new funcionario();
        f.setID(0);
        f.setNome("Nenhum");
        funcionarios.add( f );

        cursor.moveToFirst();
        int i=0;
        while (cursor.isAfterLast() == false) {
            i++;
            funcionarios.add( cursorToFuncionario( cursor ));
            cursor.moveToNext();
        }

        funcionario[] retorno = new funcionario[i];
        //return new service( context ).getFuncionarios();

        return funcionarios.toArray(retorno);
    }


    public void excluiTudo()
    {
        helper.executaSql("DELETE FROM " + tabela );
    }

    public void inclui( funcionario f  )
    {
        ContentValues values = new ContentValues();
        values.put("ID_FUNCIONARIO", f.getID());
        values.put("NOME", f.getNome());
        helper.inclui(tabela , values);
    }

}
