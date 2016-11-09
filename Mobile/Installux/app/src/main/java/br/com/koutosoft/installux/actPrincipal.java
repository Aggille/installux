package br.com.koutosoft.installux;

import android.app.ProgressDialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.AsyncTask;
import android.support.v7.app.ActionBarActivity;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;

import br.com.koutosoft.installux.dao.funcionarioDAO;
import br.com.koutosoft.installux.modelo.configuracao;
import br.com.koutosoft.installux.modelo.funcionario;
import br.com.koutosoft.installux.util.*;
import br.com.koutosoft.installux.comum.constantes;


public class actPrincipal extends ActionBarActivity {

    private Button btnConfig;
    private Button btnFichas;
    private Button btnEnviar;
    private Button btnConsultar;
    private Button btnAdmin;

//    private TextView lblFuncionario;
    private funcionario Atual;
    private configuracao config;


    private class carregaSistema extends AsyncTask<Void, Void, Void> {

        private ProgressDialog progresso  = new ProgressDialog(actPrincipal.this);

        @Override
        protected void onPreExecute() {
            super.onPreExecute();
            progresso.setCancelable(false);
            progresso.setTitle(getString(R.string.msg_aguarde));
            progresso.show();

        }

        @Override
        protected Void doInBackground(Void... params) {

            config = new configuracao(actPrincipal.this);

            if( config.getFuncionario() != 0 ) {
                Atual = new funcionarioDAO(actPrincipal.this).getFuncionario(config.getFuncionario());
            }
            return null;
        }

        @Override
        protected void onPostExecute(Void aVoid) {

            configuracao config   = new configuracao(actPrincipal.this);

            progresso.dismiss();

            if( config.isAdmin() )
            {
                mensagem.msg(actPrincipal.this, "Logado como ADMINISTRADOR");
                btnAdmin.setVisibility(View.VISIBLE);
            }
            else
            {
                mensagem.msg(actPrincipal.this, "Logado como OPERADOR");
                btnAdmin.setVisibility(View.INVISIBLE);
            }

            if( Atual != null )
            {
                //mensagem.msg(actPrincipal.this, "Seja bem vindo " + Atual.getNome());
                //lblFuncionario.setText("Funcionário atual : " + Atual.getNome());
            }

            super.onPostExecute(aVoid);
        }
    }


    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_act_principal);

        btnConfig = (Button)findViewById(R.id.btn_config);
        btnFichas = (Button)findViewById(R.id.btn_fichas);
        btnEnviar = (Button)findViewById(R.id.btn_envia);
        btnConsultar = (Button)findViewById(R.id.btn_consulta);
        btnAdmin    = (Button)findViewById(R.id.btn_admin);

        //lblFuncionario = (TextView)findViewById(R.id.lbl_funcionario);

        new carregaSistema().execute();

    }

    public void enviar( View view )
    {
        diversos.enviar( actPrincipal.this , view );
    }
    public void fichas( View view )
    {
        diversos.fichas(actPrincipal.this, view );
    }
    public void importar( View view )
    {
        diversos.importacao(actPrincipal.this, view );
    }
    public void consultar( View view ) { diversos.consultar( actPrincipal.this, view  );}
    public void admin( View view ){ diversos.admin( actPrincipal.this, view );}
    public void config( View view )
    {
        diversos.config( actPrincipal.this,  view);
    }

    @Override
    public boolean onCreateOptionsMenu(Menu menu) {
        // Inflate the menu; this adds items to the action bar if it is present.
        getMenuInflater().inflate(R.menu.menu_act_principal, menu);
        return true;
    }

    @Override
    public boolean onOptionsItemSelected(MenuItem item) {
        // Handle action bar item clicks here. The action bar will
        // automatically handle clicks on the Home/Up button, so long
        // as you specify a parent activity in AndroidManifest.xml.
        int id = item.getItemId();

        switch (id)
        {
            default:
            {
                diversos.processaMenu(actPrincipal.this, id );
                //mensagem.msg(actPrincipal.this, "OK...");
                break;
            }

        }


        return super.onOptionsItemSelected(item);
    }
}
