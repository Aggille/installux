package br.com.koutosoft.installux.sqlite;

import android.app.ProgressDialog;
import android.database.sqlite.SQLiteDatabase;
import android.os.AsyncTask;

/**
 * Created by KoutoSoft Sistemas on 16/06/2015.
 */
public class utilSQLite {

    private static void criaTbClientes( SQLiteDatabase db  )
    {
        // TABELA DE CLIENTES
        StringBuilder sql = new StringBuilder();
        sql.append("CREATE TABLE TB_CLIENTES ( ");
        sql.append(" ID_CLIENTE INTEGER PRIMARY KEY, ");// AUTOINCREMENT se for auto incremento
        sql.append(" NOME TEXT NOT NULL , ");
        sql.append(" ID_ARQUITETO INTEGER )");
        db.execSQL(sql.toString());
    }

    private static void criaTbLocais( SQLiteDatabase db )
    {
        // TABELA DE LOCAIS
        StringBuilder sql = new StringBuilder();
        sql = new StringBuilder();
        sql.append("CREATE TABLE TB_LOCAIS ( ");
        sql.append(" ID_LOCAL INTEGER PRIMARY KEY, ");// AUTOINCREMENT se for auto incremento
        sql.append(" NOME TEXT NOT NULL ) ");

        db.execSQL(sql.toString());

    }

    private static void criaTbAmbientes( SQLiteDatabase db ) {

        StringBuilder sql = new StringBuilder();
        // TABELA DE AMBIENTES
        sql = new StringBuilder();
        sql.append("CREATE TABLE TB_AMBIENTES ( ");
        sql.append(" ID_AMBIENTE INTEGER PRIMARY KEY, ");// AUTOINCREMENT se for auto incremento
        sql.append(" NOME TEXT NOT NULL, ");
        sql.append(" ID_CLIENTE INTEGER , ");
        sql.append(" AMBIENTE INTEGER ) ");

        db.execSQL(sql.toString());

    }


    private static void criaTbArquitetos( SQLiteDatabase db ) {

        StringBuilder sql = new StringBuilder();
        // TABELA DE ARQUITETOS

        sql = new StringBuilder();
        sql.append("CREATE TABLE TB_ARQUITETOS ( ");
        sql.append(" ID_ARQUITETO INTEGER PRIMARY KEY, ");// AUTOINCREMENT se for auto incremento
        sql.append(" NOME TEXT NOT NULL ) ");

        db.execSQL(sql.toString());

    }
    private static void criaTbProdutos( SQLiteDatabase db ) {

        StringBuilder sql = new StringBuilder();
        // TABELA DE PRODUTOS
        sql = new StringBuilder();
        sql.append("CREATE TABLE TB_PRODUTOS ( ");
        sql.append(" ID_PRODUTO INTEGER PRIMARY KEY, ");// AUTOINCREMENT se for auto incremento
        sql.append(" NOME TEXT NOT NULL , ");
        sql.append(" PRECO  REAL , ");
        sql.append(" TIPO INTEGER )");

        db.execSQL(sql.toString());

    }

    private static void criaTbFuncionarios( SQLiteDatabase db ) {

        StringBuilder sql = new StringBuilder();

        // TABELA DE FUNCIONARIOS
        sql = new StringBuilder();
        sql.append("CREATE TABLE TB_FUNCIONARIOS ( ");
        sql.append(" ID_FUNCIONARIO INTEGER PRIMARY KEY, ");// AUTOINCREMENT se for auto incremento
        sql.append(" NOME TEXT NOT NULL ) ");

        db.execSQL(sql.toString());

    }

    private static void criaTbFichas( SQLiteDatabase db ) {

        StringBuilder sql = new StringBuilder();
        // TABELA DE FICHAS

        sql = new StringBuilder();
        sql.append("CREATE TABLE TB_FICHAS ( ");
        sql.append(" ID_FICHA INTEGER PRIMARY KEY, ");// AUTOINCREMENT se for auto incremento
        sql.append(" DATA DATE NOT NULL , ");
        sql.append(" ID_CLIENTE INTEGER NOT NULL , ");
        sql.append(" ID_ARQUITETO INTEGER  NOT NULL , ");
        sql.append(" DT_CHEGADA DATE NOT NULL , ");
        sql.append(" DT_SAIDA DATE NOT NULL , ");
        sql.append(" DT_ENCERRAMENTO DATE NOT NULL , ");
        sql.append( "ID_FICHA_SISTEMA INTEGER, ");
        sql.append( "ID_FUNCIONARIO INTEGER, ");
        sql.append(" OBS TEXT NOT NULL  ) ");
        db.execSQL(sql.toString());

        /*
        private int ID;
        private String Data;
        private int Cliente;
        private int Arquiteto;
        private String Chegada;
        private String Saida;
        private String Encerramento;
        private String Obs;
*/

    }

    private static void criaTbItens( SQLiteDatabase db ) {

        StringBuilder sql = new StringBuilder();
        // TABELA DE ITENS
        sql = new StringBuilder();
        sql.append("CREATE TABLE TB_ITENS ( ");
        sql.append(" ID_ITEM INTEGER PRIMARY KEY, ");// AUTOINCREMENT se for auto incremento
        sql.append(" ID_FICHA INTEGER NOT NULL , ");
        sql.append(" ID_PRODUTO INTEGER NOT NULL , ");
        sql.append(" ID_LOCAL INTEGER  NOT NULL , ");
        sql.append(" ID_AMBIENTE INTEGER  NOT NULL , ");
        sql.append(" QUANTIDADE REAL NOT NULL  ) ");
        db.execSQL(sql.toString());


/*
        private int ID;
        private int Ficha;
        private int Produto;
        private int Local;
        private int Ambiente;
        private float Quantidade;
*/


    }


    public static final void criaBanco( SQLiteDatabase db )
    {
        criaTbClientes(db);
        criaTbLocais(db);
        criaTbAmbientes(db);
        criaTbArquitetos(db);
        criaTbProdutos(db);
        criaTbFuncionarios(db);
        criaTbFichas(db); // Versao 10
        criaTbItens(db); //Versao 10
    }

    public static final void atualizaBanco( SQLiteDatabase db, int versaoAntiga, int versaoNova )
    {
        if( versaoNova <= 10 )
        {
            criaTbFichas(db);
            criaTbItens(db);
        }
    }

}
