package br.com.koutosoft.installux;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.ProgressDialog;
import android.os.AsyncTask;
import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.CheckBox;

import br.com.koutosoft.installux.dao.ambienteDAO;
import br.com.koutosoft.installux.dao.arquitetoDAO;
import br.com.koutosoft.installux.dao.clienteDAO;
import br.com.koutosoft.installux.dao.funcionarioDAO;
import br.com.koutosoft.installux.dao.localDAO;
import br.com.koutosoft.installux.dao.produtoDAO;
import br.com.koutosoft.installux.modelo.ambiente;
import br.com.koutosoft.installux.modelo.arquiteto;
import br.com.koutosoft.installux.modelo.cliente;
import br.com.koutosoft.installux.modelo.funcionario;
import br.com.koutosoft.installux.modelo.local;
import br.com.koutosoft.installux.modelo.produto;

import br.com.koutosoft.installux.util.mensagem;
import br.com.koutosoft.installux.util.service;


public class actImportacao extends AppCompatActivity {

    private CheckBox chkClientes;
    private CheckBox chkProdutos;
    private CheckBox chkLocais;
    private CheckBox chkAmbientes;
    private CheckBox chkArquitetos;
    private CheckBox chkFuncionarios;

    private class importaAsync extends AsyncTask<Void, Void, Void> {

        private ProgressDialog progresso  = new ProgressDialog(actImportacao.this);
        private cliente[] clientes;
        private produto[] produtos;
        private funcionario[] funcionarios;
        private local[] locais;
        private ambiente[] ambientes;
        private arquiteto[] arquitetos;

        private funcionarioDAO funcionarioDao;
        private clienteDAO clienteDao;
        private produtoDAO produtoDao;
        private localDAO localDao;
        private arquitetoDAO arquitetoDao;
        private ambienteDAO ambienteDao;

        private String titulo;
        private service servico;

        @Override
        protected void onPreExecute() {
            super.onPreExecute();
            titulo = getString(R.string.msg_importando);
            progresso.setTitle(titulo);
            progresso.setProgressStyle(progresso.STYLE_HORIZONTAL);
            progresso.setCancelable(false);
            progresso.show();

            servico = new service(actImportacao.this);
            clienteDao = new clienteDAO(actImportacao.this);
            produtoDao = new produtoDAO(actImportacao.this);
            funcionarioDao = new funcionarioDAO(actImportacao.this);
            localDao = new localDAO(actImportacao.this);
            arquitetoDao = new arquitetoDAO(actImportacao.this);
            ambienteDao = new ambienteDAO(actImportacao.this);
        }

        @SuppressLint("WrongThread")
        @Override
        protected Void doInBackground(Void... params) {
            try {

                if (chkLocais.isChecked()) {

                    // Importa os Locais

                    titulo = getString(R.string.msg_importando_locais);
                    publishProgress();
                    locais = servico.getLocais();

                    if (locais != null) {
                        progresso.setProgress(0);
                        progresso.setMax(locais.length);
                        localDao.excluiTudo();

                        for (int x = 0; x < locais.length; x++) {
                            localDao.inclui(locais[x]);
                            progresso.setProgress(x);
                            progresso.incrementProgressBy(1);
                        }
                    }
                }

                if (chkAmbientes.isChecked()) {
                    // Importa os Ambientes

                    titulo = getString(R.string.msg_importando_ambientes);
                    publishProgress();
                    ambientes = servico.getAmbientes();

                    if (ambientes != null) {
                        progresso.setProgress(0);
                        progresso.setMax(ambientes.length);
                        ambienteDao.excluiTudo();

                        for (int x = 0; x < ambientes.length; x++) {
                            ambienteDao.inclui(ambientes[x]);
                            progresso.setProgress(x);
                            progresso.incrementProgressBy(1);
                        }

                    }
                }

                    if (chkArquitetos.isChecked()) {
                        // Importa os Arquitetos

                        titulo = getString(R.string.msg_importando_arquitetos);
                        publishProgress();
                        arquitetos = servico.getArquitetos();

                        if (arquitetos != null) {
                            progresso.setProgress(0);
                            progresso.setMax(arquitetos.length);
                            arquitetoDao.excluiTudo();

                            for (int x = 0; x < arquitetos.length; x++) {
                                arquitetoDao.inclui(arquitetos[x]);
                                progresso.setProgress(x);
                                progresso.incrementProgressBy(1);
                            }
                        }
                    }

                    if (chkProdutos.isChecked()) {

                        // Importa os Produtos

                        titulo = getString(R.string.msg_importando_produtos);
                        publishProgress();
                        produtos = servico.getProdutos();
                        if (produtos != null) {
                            progresso.setProgress(0);
                            progresso.setMax(produtos.length);
                            produtoDao.excluiTudo();

                            for (int x = 0; x < produtos.length; x++) {
                                produtoDao.inclui(produtos[x]);
                                progresso.setProgress(x);
                                progresso.incrementProgressBy(1);
                            }
                        }
                    }

                    if (chkFuncionarios.isChecked()) {

                        // Importa os funcionários

                        funcionarios = servico.getFuncionarios();

                        if (funcionarios != null) {
                            progresso.setProgress(0);
                            progresso.setMax(funcionarios.length);
                            funcionarioDao.excluiTudo();
                            titulo = getString(R.string.msg_importando_funcionarios);
                            publishProgress();


                            for (int x = 0; x < funcionarios.length; x++) {
                                funcionarioDao.inclui(funcionarios[x]);
                                progresso.setProgress(x);
                                progresso.incrementProgressBy(1);
                            }
                        }

                    }

                    if (chkClientes.isChecked()) {
                        // importa os Clientes

                        clientes = servico.getClientes();
                        if (clientes != null) {
                            progresso.setProgress(0);
                            progresso.setMax(clientes.length);
                            clienteDao.excluiTudo();
                            titulo = getString(R.string.msg_importando_clientes);
                            publishProgress();

                            for (int x = 0; x < clientes.length; x++) {
                                clienteDao.inclui(clientes[x]);
                                progresso.setProgress(x);
                                progresso.incrementProgressBy(1);
                            }
                        }
                    }

            }
            catch( Exception ex ) {
                actImportacao.this.runOnUiThread(new Runnable() {
                    public void run() {
                        mensagem.erro(actImportacao.this, ex.getMessage());        //something here
                    }
                });

            }

            return null;
        }

        @Override
        protected void onProgressUpdate(Void... values) {
            super.onProgressUpdate(values);
            progresso.setTitle(titulo);

        }

        @Override
        protected void onPostExecute(Void aVoid) {
            super.onPostExecute(aVoid);
            progresso.dismiss();
            mensagem.msg(actImportacao.this, getString(R.string.msg_importacao_concluida));
        }

    }


    public void importar( View view )
    {
        chkClientes = (CheckBox)findViewById(R.id.chk_importa_clientes);
        chkProdutos = (CheckBox)findViewById(R.id.chk_importa_produtos);
        chkAmbientes = (CheckBox)findViewById(R.id.chk_importa_ambientes);
        chkLocais = (CheckBox)findViewById(R.id.chk_importa_locais);
        chkArquitetos = (CheckBox)findViewById(R.id.chk_importa_arquitetos);
        chkFuncionarios = (CheckBox)findViewById(R.id.chk_importa_funcionarios);

        new importaAsync().execute();
    }

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_act_importacao);
    }


    @Override
    public boolean onCreateOptionsMenu(Menu menu) {
        // Inflate the menu; this adds items to the action bar if it is present.
        getMenuInflater().inflate(R.menu.menu_act_importacao, menu);
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
