package br.com.koutosoft.installux;

import android.app.DatePickerDialog;
import android.app.ProgressDialog;
import android.content.DialogInterface;
import android.os.AsyncTask;
import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;


import android.text.TextWatcher;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.AdapterView;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.DatePicker;
import android.widget.ListView;
import android.widget.SimpleAdapter;

import java.util.ArrayList;
import java.util.Calendar;
import java.util.HashMap;


import br.com.koutosoft.installux.dao.ambienteDAO;
import br.com.koutosoft.installux.dao.clienteDAO;
import br.com.koutosoft.installux.dao.fichaDAO;
import br.com.koutosoft.installux.dao.itemDAO;
import br.com.koutosoft.installux.dao.localDAO;
import br.com.koutosoft.installux.dao.produtoDAO;
import br.com.koutosoft.installux.modelo.ficha;
import br.com.koutosoft.installux.modelo.itemFicha;
import br.com.koutosoft.installux.util.diversos;
import br.com.koutosoft.installux.util.mensagem;
import br.com.koutosoft.installux.util.service;


public class actConsultaFichas extends AppCompatActivity {
    private TextWatcher mascaraData;
    private Button edtDataInicial;
    private Button edtDataFinal;
    private Button btnPesquisar;
    private CheckBox edtNaoTransmitidas;
    private ListView lstFichas;
    private ListView lstItens;
    private int posicaoAtual;
    private DatePicker dpInicial;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_act_consulta_fichas);

        btnPesquisar = (Button)findViewById(R.id.btn_consulta);
        edtNaoTransmitidas = (CheckBox)findViewById(R.id.edt_nao_transmitidas);
        lstFichas = (ListView)findViewById(R.id.lst_fichas_consulta);
        lstItens = (ListView)findViewById(R.id.lst_itens_fichas_consulta);
        edtDataInicial = (Button)findViewById(R.id.edt_data_inicial_consulta);
        edtDataInicial.setOnClickListener(listnerInicial);
        edtDataInicial.setText(diversos.dataAtual());

        edtDataFinal = (Button)findViewById(R.id.edt_data_final_consulta);
        edtDataFinal.setOnClickListener(listenerFinal);
        edtDataFinal.setText(diversos.dataAtual());

        // Sincle Click, mostra os itens..
        lstFichas.setOnItemClickListener(new AdapterView.OnItemClickListener(){
            @Override
            public void onItemClick(AdapterView<?> parent, View view, int position, long id) {

                if( position == 0 )
                {
                    return;
                }

                HashMap<String, String> info = (HashMap<String, String>) parent.getItemAtPosition(position);
                final String id_ficha = info.get("id");


                if( id_ficha == "0" )
                {
                    return;
                }

                ArrayList<HashMap<String, String>> feedList;
                HashMap<String, String> map ;

                // Cabecalho da Grade..


                feedList = new ArrayList<HashMap<String, String>>();

                map = new HashMap<String, String>();
                map.put("posicao", "POS");
                map.put("produto", "Produto");
                map.put("qtde", "Qtde." );
                map.put("local", "Local");
                map.put("ambiente", "Ambiente");
                feedList.add(map);


                itemDAO idao = new itemDAO( actConsultaFichas.this);
                itemFicha[] i = idao.getItemsFicha( new Integer( id_ficha ));

                for( int x=0; x<i.length; x++)
                {
                    itemFicha it = i[x];
                    map = new HashMap<String, String>();
                    map.put("posicao", String.valueOf(x+1));
                    map.put("produto", new produtoDAO(actConsultaFichas.this).getProduto(it.getProduto()).toString());
                    map.put("qtde", String.valueOf(it.getQuantidade()) );
                    map.put("local", new localDAO(actConsultaFichas.this).getLocal(it.getLocal()).toString());
                    map.put("ambiente", new ambienteDAO(actConsultaFichas.this).getAmbiente(it.getAmbiente()).toString());
                    feedList.add(map);

                }

                SimpleAdapter simpleAdapter = new SimpleAdapter(actConsultaFichas.this, feedList, R.layout.view_item_ficha, new String[]{"posicao", "produto", "qtde", "local", "ambiente"}, new int[]{ R.id.textViewPosicao , R.id.textViewProduto, R.id.textViewQtde, R.id.textViewAmbiente, R.id.textViewLocal});
                lstItens.setAdapter(simpleAdapter);

            }
        });


        // Long Click List view exclui
        lstFichas.setOnItemLongClickListener(new AdapterView.OnItemLongClickListener() {
            @Override
            public boolean onItemLongClick(AdapterView<?> parent, View view, int position, long id) {

                // se é 0 9 cabeçalho, não faz nada

                if( position==0 )
                {
                    return false;
                }

                posicaoAtual = position;
                HashMap<String, String> info = (HashMap<String, String>) parent.getItemAtPosition(position);

                final String id_ficha = info.get("id");
                String id_ficha_local = info.get( "id_ficha");

                if( ! id_ficha_local.equals("0") )
                {
                    mensagem.erro(actConsultaFichas.this, "Essa ficha já foi transmitida");
                    return false;
                }

                //mensagem.msg(actConsultaFichas.this, "Posicao " + String.valueOf(posicaoAtual) + " ficha " + id_ficha);

                mensagem.confirma( actConsultaFichas.this, "Confirma a exclusão da ficha " + id_ficha + " ? " ,
                        new DialogInterface.OnClickListener() {
                            @Override
                            public void onClick(DialogInterface dialog, int which) {
                                fichaDAO fdao = new fichaDAO( actConsultaFichas.this);
                                fdao.exclui( new Integer( id_ficha ));
                                new consultaAsync().execute();


                            }
                        }
                        );
                return false;
            }
        });


    }

    private class consultaAsync extends AsyncTask< Void, Void, Void >
    {
        private ArrayList<itemFicha> items;
        private ArrayList<HashMap<String, String>> feedList;
        private HashMap<String, String> map ;
        private ficha[] fichas;
        private ProgressDialog progresso  = new ProgressDialog(actConsultaFichas.this);
        private String titulo;
        private service servico;
        private int totFichas;
        private String Inicio;
        private String Final;
        private boolean Pendencias;

        @Override
        protected void onPreExecute() {
            super.onPreExecute();
            Inicio = edtDataInicial.getText().toString();
            Final = edtDataFinal.getText().toString();
            Pendencias = edtNaoTransmitidas.isChecked();
            titulo = getString(R.string.msg_consultando_fichas);
            progresso.setTitle(titulo);
            progresso.setProgressStyle(progresso.STYLE_HORIZONTAL);
            progresso.setCancelable(false);
            progresso.show();
        }

        @Override
        protected Void doInBackground(Void... params) {

            fichaDAO f = new fichaDAO( actConsultaFichas.this);
            fichas = f.getFichasPeriodo(Inicio, Final,Pendencias);

            this.feedList = new ArrayList<HashMap<String, String>>();

            map = new HashMap<String, String>();

            map.put("id", "NºLocal");
            map.put("id_ficha", "NºRemoto");
            map.put("data", "Data");
            map.put("cliente", "Cliente");
            this.feedList.add(map);

            clienteDAO c = new clienteDAO( actConsultaFichas.this);
            itemDAO idao = new itemDAO( actConsultaFichas.this );
            progresso.setProgress(0);
            progresso.setMax(fichas.length);
            totFichas=0;

            for ( ficha it : fichas ) {

                totFichas++;
                progresso.setProgress(totFichas);
                progresso.incrementProgressBy(1);


                map = new HashMap<String, String>();
                map.put("id", String.valueOf(it.getID()) );
                map.put("id_ficha", String.valueOf(it.getID_FichaSistema()));
                map.put("data" , it.getData());
                map.put( "cliente" , c.getCliente( it.getCliente() ).getNome());
                this.feedList.add(map);

            }

            return null;
        }

        @Override
        protected void onPostExecute(Void aVoid) {
            super.onPostExecute(aVoid);
            SimpleAdapter simpleAdapter = new SimpleAdapter(actConsultaFichas.this, feedList, R.layout.view_ficha_consulta, new String[]{"id", "id_ficha" ,"data" ,"cliente"}, new int[]{ R.id.textViewId , R.id.textViewIdFicha,R.id.textViewData ,R.id.textViewCliente});
            lstFichas.setAdapter(simpleAdapter);
            lstItens.setAdapter(null);
            progresso.dismiss();
            mensagem.msg(actConsultaFichas.this, String.valueOf(totFichas) + " ficha(s) encontrada(s)");
        }
    }

    private View.OnClickListener listenerFinal = new View.OnClickListener() {
        @Override
        public void onClick(View v) {
            final Calendar c = Calendar.getInstance();
            int mYear = c.get(Calendar.YEAR);
            int mMonth = c.get(Calendar.MONTH);
            int mDay = c.get(Calendar.DAY_OF_MONTH);

            DatePickerDialog dpd = new DatePickerDialog(actConsultaFichas.this,
                    new DatePickerDialog.OnDateSetListener() {

                        @Override
                        public void onDateSet(DatePicker view, int year,
                                              int monthOfYear, int dayOfMonth) {
                            edtDataFinal.setText(String.format("%02d", dayOfMonth ) + "/"
                                    + String.format("%02d" , (monthOfYear + 1) ) + "/" + year);

                        }
                    }, mYear, mMonth, mDay);
            dpd.show();


        }

    };


    private View.OnClickListener listnerInicial = new View.OnClickListener() {
        @Override
        public void onClick(View v) {
            final Calendar c = Calendar.getInstance();
            int mYear = c.get(Calendar.YEAR);
            int mMonth = c.get(Calendar.MONTH);
            int mDay = c.get(Calendar.DAY_OF_MONTH);

            DatePickerDialog dpd = new DatePickerDialog(actConsultaFichas.this,
                    new DatePickerDialog.OnDateSetListener() {

                        @Override
                        public void onDateSet(DatePicker view, int year,
                                              int monthOfYear, int dayOfMonth) {
                            edtDataInicial.setText(String.format("%02d", dayOfMonth ) + "/"
                                    + String.format("%02d" , (monthOfYear + 1) ) + "/" + year);

                        }
                    }, mYear, mMonth, mDay);
            dpd.show();


        }
    };


    public void consulta( View view )
    {

        if( ! diversos.dataValida(edtDataInicial.toString()))
        {
            mensagem.erro( actConsultaFichas.this, "Data inicial inválida");
            edtDataInicial.requestFocus();
            return;
        }

        if( ! diversos.dataValida(edtDataFinal.toString()))
        {
            mensagem.erro( actConsultaFichas.this, "Data final inválida");
            edtDataFinal.requestFocus();
            return;
        }


        new consultaAsync().execute();
         // mensagem.msg( actConsultaFichas.this, "OK");
    }

    @Override
    public boolean onCreateOptionsMenu(Menu menu) {
        // Inflate the menu; this adds items to the action bar if it is present.
        getMenuInflater().inflate(R.menu.menu_act_consulta_fichas, menu);
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
            return false;
        }

        return super.onOptionsItemSelected(item);
    }


}
