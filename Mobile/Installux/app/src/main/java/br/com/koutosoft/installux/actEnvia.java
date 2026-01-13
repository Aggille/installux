package br.com.koutosoft.installux;

import android.app.ProgressDialog;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.os.AsyncTask;
import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.Button;
import android.widget.ListView;
import android.widget.SimpleAdapter;
import android.widget.TextView;

import com.fasterxml.jackson.core.JsonProcessingException;

import org.json.JSONException;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;


import br.com.koutosoft.installux.dao.clienteDAO;
import br.com.koutosoft.installux.dao.itemDAO;
import br.com.koutosoft.installux.modelo.itemFicha;
import br.com.koutosoft.installux.sqlite.sqlHelper;
import br.com.koutosoft.installux.util.mensagem;
import br.com.koutosoft.installux.modelo.ficha;
import br.com.koutosoft.installux.dao.fichaDAO;
import br.com.koutosoft.installux.util.service;


public class actEnvia extends AppCompatActivity {

    private Button btnEnviar;
    private ListView lstItems;
    private TextView lblMensagem;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_act_envia);
        btnEnviar = (Button)findViewById( R.id.btn_enviar_fichas);
        lstItems = (ListView)findViewById(R.id.lst_items_envio);
        lblMensagem = (TextView)findViewById(R.id.lbl_mensagem_envio_ficha);

        sqlHelper sql = new sqlHelper(actEnvia.this);
        Cursor c = sql.getCursotSql("SELECT COUNT(*) AS TOTAL  FROM TB_FICHAS WHERE ID_FICHA_SISTEMA IS NULL OR ID_FICHA_SISTEMA = 0");
        int count = c.getInt(0);
        lblMensagem.setText( String.valueOf(count) +  " ficha(s) pendente(s)");

    }
    private class enviaAsync extends AsyncTask< Void, Void, Void >
    {
        private ArrayList<itemFicha> items;
        private ArrayList<HashMap<String, String>> feedList;
        private HashMap<String, String> map ;
        private ficha[] fichas;
        private ProgressDialog progresso  = new ProgressDialog(actEnvia.this);
        private String titulo;
        private service servico;
        private int totFichas;

        @Override
        protected void onPreExecute() {
            super.onPreExecute();
            titulo = getString(R.string.msg_enviando_fichas);
            progresso.setTitle(titulo);
            progresso.setProgressStyle(progresso.STYLE_HORIZONTAL);
            progresso.setCancelable(false);
            progresso.show();

        }

        @Override
        protected Void doInBackground(Void... params) {

            fichaDAO f = new fichaDAO( actEnvia.this);
            fichas = f.getFichas( " ID_FICHA_SISTEMA IS NULL OR ID_FICHA_SISTEMA = 0 ");

            this.feedList = new ArrayList<HashMap<String, String>>();

            map = new HashMap<String, String>();

            map.put("id", "NºLocal");
            map.put("id_ficha", "NºRemoto");
            map.put("cliente", "Cliente");
            this.feedList.add(map);

            clienteDAO c = new clienteDAO( actEnvia.this);
            itemDAO idao = new itemDAO( actEnvia.this );
            progresso.setProgress(0);
            progresso.setMax(fichas.length);
            totFichas=0;

            for ( ficha it : fichas ) {

                totFichas++;
                progresso.setProgress(totFichas);
                progresso.incrementProgressBy(1);

                // envia a ficha...

                String r="";
                service s = new service( actEnvia.this );
                itemFicha[] auxItem;

                auxItem =  idao.getItemsFicha((int) it.getID()) ;
                items = new  ArrayList<itemFicha> ();

                for( int z = 0 ; z < auxItem.length ; z++ )
                {
                    items.add(auxItem[z]);
                }

                try {
                    r = s.gravaFicha( it  , items);
                    it.setID_FichaSistema( Integer.parseInt(r) );
                    sqlHelper sql_helper = new sqlHelper( actEnvia.this );
                    String sql = "UPDATE TB_FICHAS SET ID_FICHA_SISTEMA="+r+" WHERE ID_FICHA=" + String.valueOf(it.getID());
                    sql_helper.executaSql(sql);
                    map = new HashMap<String, String>();
                    map.put("id", String.valueOf(it.getID()) );
                    map.put("id_ficha", String.valueOf(it.getID_FichaSistema()));
                    map.put( "cliente" , c.getCliente( it.getCliente() ).getNome());
                    this.feedList.add(map);

                } catch (Exception e) {
                    actEnvia.this.runOnUiThread(new Runnable() {
                        public void run() {
                            mensagem.erro(actEnvia.this, e.getMessage());        //something here
                        }

                    });
                }


            }

            return null;
        }

        @Override
        protected void onPostExecute(Void aVoid) {
            super.onPostExecute(aVoid);
            SimpleAdapter simpleAdapter = new SimpleAdapter(actEnvia.this, feedList, R.layout.view_ficha_envio, new String[]{"id", "id_ficha" , "cliente"}, new int[]{ R.id.textViewId , R.id.textViewIdFicha, R.id.textViewCliente});
            lstItems.setAdapter(simpleAdapter);
            progresso.dismiss();
            lblMensagem.setText ( String.valueOf(totFichas) + " ficha(s) enviada(s)" );
        }
    }

    public void enviar( View view )
    {

        new enviaAsync().execute();

//        mensagem.alerta(actEnvia.this, "Enviados", "Enviados");
    }


    @Override
    public boolean onCreateOptionsMenu(Menu menu) {
        // Inflate the menu; this adds items to the action bar if it is present.
        getMenuInflater().inflate(R.menu.mnu_transmite_fichas, menu);
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
