package br.com.koutosoft.installux;

import android.app.ProgressDialog;
import android.os.AsyncTask;
import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.Adapter;
import android.widget.ArrayAdapter;
import android.widget.EditText;
import android.widget.Spinner;

import java.util.ArrayList;

import br.com.koutosoft.installux.dao.funcionarioDAO;
import br.com.koutosoft.installux.util.*;

import br.com.koutosoft.installux.modelo.*;


public class actConfig extends AppCompatActivity {
    private EditText edtServidor;
    private EditText edtPorta;
    private EditText edtSenha;
    private Spinner edtFuncionario;
    private configuracao config;


    private class carregaCombos extends AsyncTask<Void, Void, Void>

    {
        private ProgressDialog progresso  = new ProgressDialog(actConfig.this);
        private int atual=0;

        ArrayAdapter<funcionario> adapter;

        @Override
        protected void onPreExecute() {
            super.onPreExecute();
            progresso.setTitle(getString(R.string.msg_aguarde));
            progresso.show();
        }


        @Override
        protected Void doInBackground(Void... params) {

            funcionarioDAO fdao = new funcionarioDAO(actConfig.this);
            funcionario[] f = fdao.getFuncionarios();

            ArrayList<funcionario> funcionarios = new ArrayList<funcionario>();

            if( f != null ) {

                for (int x = 0; x < f.length; x++) {
                    funcionarios.add(f[x]);

                    if (f[x].getID() == config.getFuncionario()) {
                        atual = x;
                    }
                }

                adapter = new ArrayAdapter<funcionario>(actConfig.this, android.R.layout.simple_spinner_item, funcionarios);
            }
            return null;


        }

        @Override
        protected void onPostExecute(Void aVoid) {
            super.onPostExecute(aVoid);
            edtFuncionario.setAdapter(adapter);

            if( atual > 0 )
            {
                edtFuncionario.setSelection(atual);
            }

            progresso.hide();
        }
    }


    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_act_config);

        edtServidor     = (EditText)findViewById(R.id.edt_Servidor);
        edtPorta        = (EditText)findViewById(R.id.edt_Porta_Servidor);
        edtSenha        = (EditText)findViewById(R.id.edt_Senha);
        edtFuncionario  = (Spinner)findViewById(R.id.edt_Funcionario);
        config          = new configuracao(actConfig.this);

        new carregaCombos().execute();

        edtServidor.setText( config.getServidor());
        edtPorta.setText(config.getPorta());
        edtSenha.setText( config.getSenha());

    }

    public void ok( View view )
    {
        config.setPorta(edtPorta.getText().toString());

        if( edtFuncionario.getSelectedItem() != null ) {
            funcionario f = (funcionario) edtFuncionario.getSelectedItem();
            config.setFuncionario(f.getID());
        }
        config.setServidor(edtServidor.getText().toString());
        config.setSenha(edtSenha.getText().toString());
        config.grava();

        mensagem.msg( actConfig.this, getString(R.string.msg_configuracao_salva));
    }

    public void voltar( View view )
    {
        finish();
    }

    @Override
    public boolean onCreateOptionsMenu(Menu menu) {
        // Inflate the menu; this adds items to the action bar if it is present.
        getMenuInflater().inflate(R.menu.menu_act_config, menu);
        return false;
    }

    @Override
    public boolean onOptionsItemSelected(MenuItem item) {
        // Handle action bar item clicks here. The action bar will
        // automatically handle clicks on the Home/Up button, so long
        // as you specify a parent activity in AndroidManifest.xml.
        int id = item.getItemId();

        //noinspection SimplifiableIfStatement
        if (id == R.id.action_settings) {
            return true;
        }

        return super.onOptionsItemSelected(item);
    }
}
