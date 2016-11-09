package br.com.koutosoft.installux.sqlite;


import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import br.com.koutosoft.installux.util.mensagem;

import br.com.koutosoft.installux.comum.constantes;

/**
 * Created by KoutoSoft Sistemas on 17/06/2015.
 */
public class sqlHelper extends SQLiteOpenHelper {

    private SQLiteDatabase db ;


    @Override
    public void onCreate(SQLiteDatabase db) {
        utilSQLite.criaBanco(db);
    }

    @Override
    public void onUpgrade(SQLiteDatabase db, int oldVersion, int newVersion) {
        utilSQLite.atualizaBanco( db, oldVersion, newVersion );
    }

    public sqlHelper(Context context) {
        super(context,    constantes.CONFIG_DATABASE_NOME, null, constantes.CONFIG_DATABASE_VERSAO  );
        db = this.getWritableDatabase();
    }

    public int exclui( String tabela , String where )
    {
        return db.delete( tabela , where , null);
    }

    public long  inclui( String tabela, ContentValues c )
    {
        return db.insert( tabela ,null, c );
    }

    public void executaSql( String s )
    {
        db.execSQL(s);
    }

    public Cursor getCursor( String tabela, String where  )
    {
        return getCursor( tabela, where , "");
    }

    public Cursor getCursor( String tabela )
    {
        return getCursor( tabela , "" , "" );
    }

    public Cursor getCursotSql( String s )
    {
        db = this.getWritableDatabase();
        Cursor cursor = db.rawQuery( s , null);
        cursor.moveToFirst();
        return cursor;

    }

    public Cursor getCursor( String tabela, String where, String ordem )
    {
        db = this.getWritableDatabase();
        StringBuilder sql = new StringBuilder();
        sql.append( "select * from " );
        sql.append( tabela );

        if( where != "")
        {
            sql.append(" where " + where );
        }

        if( ordem != "" )
        {
            sql.append(" order by " + ordem );
        }

        Cursor cursor = db.rawQuery( sql.toString() , null);
        return cursor;

    }


}
