
package br.com.koutosoft.installux;

import android.app.DatePickerDialog;
import android.app.ProgressDialog;
import android.app.TimePickerDialog;
import android.os.AsyncTask;
import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.text.TextWatcher;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewDebug;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.AutoCompleteTextView;
import android.widget.Button;
import android.widget.DatePicker;
import android.widget.EditText;
import android.widget.ListView;
import android.widget.SimpleAdapter;
import android.widget.Spinner;
import android.widget.TimePicker;

import java.util.ArrayList;
import java.util.Calendar;
import java.util.HashMap;

import br.com.koutosoft.installux.dao.ambienteDAO;
import br.com.koutosoft.installux.dao.arquitetoDAO;
import br.com.koutosoft.installux.dao.clienteDAO;
import br.com.koutosoft.installux.dao.funcionarioDAO;
import br.com.koutosoft.installux.dao.itemDAO;
import br.com.koutosoft.installux.dao.localDAO;
import br.com.koutosoft.installux.dao.produtoDAO;
import br.com.koutosoft.installux.dao.fichaDAO;

import br.com.koutosoft.installux.modelo.ambiente;
import br.com.koutosoft.installux.modelo.arquiteto;
import br.com.koutosoft.installux.modelo.cliente;
import br.com.koutosoft.installux.modelo.ficha;
import br.com.koutosoft.installux.modelo.funcionario;
import br.com.koutosoft.installux.modelo.itemFicha;
import br.com.koutosoft.installux.modelo.local;
import br.com.koutosoft.installux.modelo.produto;

import br.com.koutosoft.installux.util.diversos;
import br.com.koutosoft.installux.util.mask;
import br.com.koutosoft.installux.util.mensagem;
import br.com.koutosoft.installux.util.service;


public class actFicha extends AppCompatActivity {


    private int posicaoAtual;
    private ficha FichaAtual;
    private cliente clienteAtual;
    private produto produtoAtual;
    private local localAtual;

    // Dados para repetir o ultimo item

    private produto ultimoProduto;
    private local ultimoLocal;
    private ambiente ultimoAmbiente;
    private String ultimoNomeProduto;
    private float ultimoQtde;

    private ArrayList<itemFicha> items;

    private cliente[] clientes;
    private produto[] produtos;
    private arquiteto[] arquitetos;
    private local[] locais;
    private funcionario[] funcionarios;
    private ambiente[] ambientes;

    private TextWatcher mascaraSaida;
    private TextWatcher mascaraChegada;
    private TextWatcher mascaraData;

    private EditText edtArquiteto;
    private Button edtData;
    private Button edtChegada;
    private Button edtSaida;
    private EditText edtTotalHoras;
    private EditText edtObs;

    private ListView lstItems;
    private Button btnIncluiItem;

    private ArrayList<HashMap<String, String>> feedList;
    private HashMap<String, String> map ;

    private AutoCompleteTextView edtCliente;
    private AutoCompleteTextView edtProduto;
    private Spinner edtLocal;
    private Spinner edtFuncionario;
    private Spinner edtAmbiente;

    private EditText edtQtde;

    private ArrayList<String> data;

    private ArrayAdapter<ambiente> adapterAmbiente;

    private void bindListView()
    {

        this.feedList = new ArrayList<HashMap<String, String>>();

        map = new HashMap<String, String>();
        map.put("posicao", "POS");
        map.put("produto", "Produto");
        map.put("qtde", "Qtde." );
        map.put("local", "Local");
        map.put("ambiente", "Ambiente");
        this.feedList.add(map);


        for( int x=0 ; x < this.items.size() ; x++ ) {
            itemFicha it = items.get(x);
            map = new HashMap<String, String>();
            map.put("posicao", String.valueOf(x+1));
            map.put("produto", new produtoDAO(actFicha.this).getProduto(it.getProduto()).toString());
            map.put("qtde", String.valueOf(it.getQuantidade()) );
            map.put("local", new localDAO(actFicha.this).getLocal(it.getLocal()).toString());
            map.put("ambiente", new ambienteDAO(actFicha.this).getAmbiente(it.getAmbiente()).toString());
            this.feedList.add(map);
        }

        SimpleAdapter simpleAdapter = new SimpleAdapter(this, feedList, R.layout.view_item_ficha, new String[]{"posicao", "produto", "qtde", "local", "ambiente"}, new int[]{ R.id.textViewPosicao , R.id.textViewProduto, R.id.textViewQtde, R.id.textViewAmbiente, R.id.textViewLocal});
        lstItems.setAdapter(simpleAdapter);

    }

    private class incluiFichaAsync extends AsyncTask< Void, Void, Void >
    {

        private String r;
        private ProgressDialog progresso ;//
        private long ID_Ficha;
        private int totItens;

        @Override
        protected void onPreExecute() {
            super.onPreExecute();
            progresso =  new ProgressDialog(actFicha.this);
            progresso.setTitle(getString(R.string.msg_aguarde));
            progresso.setMessage(getString(R.string.msg_aguarde));
            progresso.setCancelable(false);
            progresso.show();
            ID_Ficha = 0;

        }

        @Override
        protected Void doInBackground(Void... params) {

            ficha f = new ficha();
            fichaDAO fdao = new fichaDAO( actFicha.this );
            itemDAO idao = new itemDAO( actFicha.this );

            f.setArquiteto(0);
            f.setCliente(clienteAtual.getID());
            f.setChegada(edtChegada.getText().toString());
            f.setSaida(edtSaida.getText().toString());
            f.setData(edtData.getText().toString().replace("/", "-"));
            f.setObs(edtObs.getText().toString());
            f.setEncerramento("00:00");
            f.setID_FichaSistema(0);
            f.setFuncionario( ((funcionario)edtFuncionario.getSelectedItem()).getID() );

            this.ID_Ficha = fdao.inclui(f);

            // salva os itens..

            totItens=0;

            for( int x=0 ; x < items.size() ; x++ ) {

                itemFicha it = items.get(x);
                it.setID_Ficha( this.ID_Ficha );
                long i=idao.inclui(it);

                if( i > 0 )
                {
                    totItens++;
                }

            }

            //service s = new service( actFicha.this );
           //this.r = s.gravaFicha(f , items);

            return null;
        }

        @Override
        protected void onPostExecute(Void aVoid) {
            super.onPostExecute(aVoid);
            progresso.dismiss();

            if( this.ID_Ficha != 0 ) {

                mensagem.alerta(actFicha.this, "Ficha incluida com número: " + String.valueOf( this.ID_Ficha ) + " com " +
                                                String.valueOf(totItens)+ " item(s)", "Inclusão realizada");
                edtCliente.setText("");
                edtChegada.setText("00:00");
                edtSaida.setText("00:00");
                edtObs.setText("");
                edtTotalHoras.setText("00:00");
                edtArquiteto.setText("");
                items.clear();
                bindListView();
                edtCliente.requestFocus();

            }
            else
            {
                mensagem.erro( actFicha.this , "Erro na inclusão da ficha. Tente novamente");
            }

        }
    }

    public void incluiFicha( View view )
    {

        funcionario f = (funcionario)edtFuncionario.getSelectedItem();

        if(  f==null || f.getID()==0 ) {
            mensagem.erro(actFicha.this, getString(R.string.err_funcionario_obrigatorio));
            return;
        }

        if( items.isEmpty())
        {
            mensagem.erro(actFicha.this, getString(R.string.err_informe_item));
            return;

        }


        new incluiFichaAsync().execute();
    }

    public void incluiItem( View view )
    {

        ambiente ambienteAtual = (ambiente)edtAmbiente.getSelectedItem();

        if( produtoAtual==null || edtProduto.getText().toString().equals(""))
        {
            mensagem.erro(actFicha.this, getString(R.string.err_produto_obrigatorio));
            return;
        }

        if( ( ambienteAtual==null) || ( ambienteAtual.getID()==0 ) )
        {
            mensagem.erro(actFicha.this, getString(R.string.err_ambiente_obrigatorio));
            return;
        }

        if( edtQtde.getText().toString().equals(""))
        {
            mensagem.erro(actFicha.this, getString(R.string.err_quantidade_obrigatorio));
            return;
        }

        itemFicha i = new itemFicha();
        i.setID(0);
        i.setFicha(0);

        if( ambienteAtual == null ) {
            i.setAmbiente(0);
        }
        else
        {
            i.setAmbiente( ambienteAtual.getAmbiente());

        }

        if(  edtLocal.getSelectedItem()==null ) {
            i.setLocal(0);
        }
        else
        {
            local l = (local)edtLocal.getSelectedItem();
            i.setLocal(  l.getID());
        }

        if( produtoAtual==null) {
            i.setProduto(0);
        }
        else {
            i.setProduto(produtoAtual.getID());
        }

        if( edtQtde.getText().toString().equals("") )
        {
            i.setQuantidade(0);
        }
        else {
            i.setQuantidade(Integer.parseInt(edtQtde.getText().toString()));
        }

        items.add(i);

        bindListView( );

        // Armazena os dados para repetir o ultimo item...

        ultimoQtde = Float.parseFloat(edtQtde.getText().toString());
        ultimoNomeProduto = edtProduto.getText().toString();
        ultimoProduto = produtoAtual;
        ultimoLocal = (local)edtLocal.getSelectedItem();
        ultimoAmbiente = ambienteAtual;

        produtoAtual=null;
        localAtual=null;
        edtProduto.setText("");
        edtAmbiente.setSelection(0);
        edtQtde.setText("");
        edtProduto.requestFocus();
        mensagem.msg(actFicha.this,"Item incluído");

    }

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_act_ficha);

        FichaAtual = new ficha();
        items = new ArrayList<itemFicha>();

        feedList = new ArrayList<HashMap<String, String>>();
        btnIncluiItem = (Button)findViewById(R.id.btn_inclui_item_ficha);

        lstItems = (ListView)findViewById(R.id.lst_items_ficha);

        edtObs = (EditText)findViewById(R.id.edt_obs_ficha);

        edtTotalHoras = (EditText)findViewById(R.id.edt_horas_ficha);

        edtData = (Button)findViewById(R.id.edt_data_ficha);
        edtData.setText(diversos.dataAtual());
        edtData.setOnClickListener( new View.OnClickListener(){
            @Override
            public void onClick(View v) {
                final Calendar c = Calendar.getInstance();
                int mYear = c.get(Calendar.YEAR);
                int mMonth = c.get(Calendar.MONTH);
                int mDay = c.get(Calendar.DAY_OF_MONTH);

                DatePickerDialog dpd = new DatePickerDialog(actFicha.this,
                        new DatePickerDialog.OnDateSetListener() {

                            @Override
                            public void onDateSet(DatePicker view, int year,
                                                  int monthOfYear, int dayOfMonth) {
                                edtData.setText(String.format("%02d", dayOfMonth ) + "/"
                                        + String.format("%02d" , (monthOfYear + 1) ) + "/" + year);

                            }
                        }, mYear, mMonth, mDay);
                dpd.show();

            }

        });

        edtChegada = (Button)findViewById(R.id.edt_chegada_ficha);
        edtChegada.setText("00:00");
        edtChegada.setOnClickListener( new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                final Calendar c = Calendar.getInstance();
                int mHora = c.get(Calendar.HOUR_OF_DAY);
                int mMinuto = c.get(Calendar.MINUTE);
                int mSegundo = c.get(Calendar.SECOND);
                boolean formato24Horas = true;

                TimePickerDialog dpd = new TimePickerDialog(actFicha.this,
                        new TimePickerDialog.OnTimeSetListener(){

                            @Override
                            public void  onTimeSet (TimePicker view,
                                                    int hora, int minuto ) {
                                edtChegada.setText(String.format("%02d", hora  ) + ":"
                                        + String.format("%02d" , (minuto ) ));
                                edtTotalHoras.setText(String.valueOf(diversos.difHoras(edtChegada.getText().toString(), edtSaida.getText().toString())));
                            }
                        }, mHora, mMinuto,formato24Horas );
                dpd.show();


            }
        });

        //mascaraChegada = mask.insert("##:##", edtChegada);
        //edtChegada.addTextChangedListener(mascaraChegada);

        edtSaida = (Button) findViewById(R.id.edt_saida_ficha);
        edtSaida.setText("00:00");
        edtSaida.setOnClickListener( new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                final Calendar c = Calendar.getInstance();
                int mHora = c.get(Calendar.HOUR_OF_DAY);
                int mMinuto = c.get(Calendar.MINUTE);
                int mSegundo = c.get(Calendar.SECOND);
                boolean formato24Horas = true;

                TimePickerDialog dpd = new TimePickerDialog(actFicha.this,
                        new TimePickerDialog.OnTimeSetListener(){

                            @Override
                            public void  onTimeSet (TimePicker view,
                                                    int hora, int minuto ) {
                                edtSaida.setText(String.format("%02d", hora  ) + ":"
                                        + String.format("%02d" , (minuto ) ));
                                edtTotalHoras.setText(String.valueOf(diversos.difHoras(edtChegada.getText().toString(), edtSaida.getText().toString())));

                            }
                        }, mHora, mMinuto,formato24Horas );
                dpd.show();

            }
        });



        //mascaraSaida = mask.insert("##:##", edtSaida);
        //edtSaida.addTextChangedListener(mascaraSaida);

        edtArquiteto = (EditText)findViewById(R.id.edt_arquiteto_ficha);
        edtQtde = (EditText)findViewById(R.id.edt_qtde_ficha);

        edtLocal = (Spinner)findViewById(R.id.edt_local_ficha);
        edtFuncionario = (Spinner)findViewById(R.id.edt_funcionario_ficha);

        edtAmbiente = (Spinner)findViewById(R.id.edt_ambiente_ficha);
        edtProduto = (AutoCompleteTextView)findViewById(R.id.edt_produto_ficha);
        edtProduto.setOnItemClickListener( new AdapterView.OnItemClickListener() {
                                               @Override
                                               public void onItemClick(AdapterView<?> parent, View view, int position, long id) {
                                                   produto p = (produto) edtProduto.getAdapter().getItem(position);

                                                   if( p.getTipo()==1 )
                                                   {

                                                       for (int x = 0; x < adapterAmbiente.getCount(); x++) {
                                                           ambiente amb =  (ambiente)adapterAmbiente.getItem((x));


                                                           if( amb.getNome().toUpperCase().equals("MATERIAL"))
                                                           {
                                                               edtAmbiente.setSelection(x);
                                                           }
                                                       }
                                                   }
                                                   else
                                                   {
                                                       edtAmbiente.setSelection(0);
                                                   }

                                                   produtoAtual=p;     }
                                           } );

        edtCliente = (AutoCompleteTextView) findViewById(R.id.edt_cliente_ficha);
        edtCliente.setOnItemClickListener(new AdapterView.OnItemClickListener() {
            @Override
            public void onItemClick(AdapterView<?> arg0, View arg1, int position,
                                    long arg3) {

                cliente c = (cliente) edtCliente.getAdapter().getItem(position);
                arquiteto a = new arquiteto();
                a = new arquitetoDAO(actFicha.this).getArquiteto(c.getID_Arquiteto());

                if( a != null )
                {
                    edtArquiteto.setText(a.getNome());
                    clienteAtual = c;
                }
                else
                {
                    edtArquiteto.setText(getString(R.string.err_arquiteto_nao_cadastrado));
                    clienteAtual=null;
                }

                // Carrega os Ambientes..

                if( clienteAtual != null ) {

                    ambientes = new ambienteDAO(actFicha.this).getAmbientes(" ID_CLIENTE=" + String.valueOf(clienteAtual.getID()), "nome");
                    adapterAmbiente = new ArrayAdapter<ambiente>(actFicha.this, android.R.layout.simple_spinner_item, ambientes);
                    edtAmbiente.setAdapter(adapterAmbiente);

                    mensagem.msg(actFicha.this, String.valueOf(ambientes.length) + " ambientes carregados");

                }
            }
        });

        // Valida a Hora de Saída...
        edtSaida.setOnFocusChangeListener(new View.OnFocusChangeListener() {
            @Override
            public void onFocusChange(View v, boolean hasFocus) {
                if (!hasFocus) {
                    if (!diversos.horaValida(edtSaida.getText().toString())) {
                        mensagem.erro(actFicha.this, "Hora inválida");
                        edtSaida.setText("00:00");
                    } else {
                        edtTotalHoras.setText(String.valueOf(diversos.difHoras(edtChegada.getText().toString(), edtSaida.getText().toString())));
                    }
                }
            }
        });


        // Valida a Hora de Chegada...
        edtChegada.setOnFocusChangeListener(new View.OnFocusChangeListener() {
            @Override
            public void onFocusChange(View v, boolean hasFocus) {
                if (!hasFocus) {
                    if (!diversos.horaValida(edtChegada.getText().toString())) {
                        mensagem.erro(actFicha.this, "Hora inválida");
                        edtChegada.setText("00:00");
                    } else {
                        edtTotalHoras.setText(String.valueOf(diversos.difHoras(edtChegada.getText().toString(), edtSaida.getText().toString())));
                    }

                }
            }
        });

        // Long Click List view exclui
        lstItems.setOnItemLongClickListener(new AdapterView.OnItemLongClickListener() {
            @Override
            public boolean onItemLongClick(AdapterView<?> parent, View view, int position, long id) {

                // se é 0 9 cabeçalho, não faz nada

                if( position==0 )
                {
                    return false;
                }

                posicaoAtual = position;
                excluiItem(posicaoAtual);
                return false;
            }
        });


        //final AutoCompleteTextView edtCliente = (AutoCompleteTextView) findViewById(R.id.edt_cliente_ficha);
        new carregaDados().execute();

    }

    public void repeteItem( View view ) {

       // Recupera os itens do ultimo produto gravado.
        if( ultimoNomeProduto == null )
        {
            return;
        }


        edtQtde.setText(  String.valueOf( ultimoQtde ) );
        edtProduto.setText( ultimoNomeProduto);
        produtoAtual = ultimoProduto;

        for (int x=0;x<=edtLocal.getCount();x++)
        {
            if( edtLocal.getItemAtPosition(x).equals(ultimoLocal))
            {
                edtLocal.setSelection(x);
                break;
            }
        }


        for (int x = 0; x <= edtAmbiente.getCount(); x++) {
            if (edtAmbiente.getItemAtPosition(x).equals(ultimoAmbiente)) {
                edtAmbiente.setSelection(x);
                break;
            }
        }

    }
    public void excluirItem( View view )
    {
        int posicaoAtual = lstItems.getSelectedItemPosition();
        excluiItem(posicaoAtual);
    }


    private void excluiItem( int posicao )
    {
        items.remove(posicao-1);
        bindListView();
        mensagem.msg(actFicha.this, getString(R.string.msg_excluido_com_sucesso));

    }

    public actFicha() {

    }

    private class carregaDados extends AsyncTask< Void, Void, Void >
    {
        private ProgressDialog progresso ;//
        private ArrayAdapter<cliente> adapterCliente;
        private ArrayAdapter<produto> adapterProduto;
        private ArrayAdapter<local> adapterLocal;
        private ArrayAdapter<funcionario> adapterFuncionario;


        @Override
        protected void onPreExecute() {
            super.onPreExecute();
            progresso =  new ProgressDialog(actFicha.this);
            progresso.setTitle(getString(R.string.msg_aguarde));
            progresso.setMessage(getString(R.string.msg_aguarde));
            progresso.setCancelable(false);
            progresso.show();
        }

        @Override
        protected Void doInBackground(Void... params) {

            clientes = new clienteDAO(actFicha.this).getClientes("", " nome ");
            produtos = new produtoDAO(actFicha.this).getProdutos("", "nome");
            locais = new localDAO( actFicha.this ).getLocais("", "nome");
            arquitetos = new arquitetoDAO(actFicha.this).getArquitetos("","nome");
            funcionarios = new funcionarioDAO( actFicha.this).getFuncionarios("","nome");

            adapterCliente = new ArrayAdapter<cliente>(actFicha.this, android.R.layout.simple_spinner_item, clientes );
            adapterProduto = new ArrayAdapter<produto>(actFicha.this, android.R.layout.simple_spinner_item, produtos );
            adapterLocal = new ArrayAdapter<local>(actFicha.this, android.R.layout.simple_spinner_item, locais );
            adapterFuncionario = new ArrayAdapter<funcionario>(actFicha.this, android.R.layout.simple_spinner_item, funcionarios );

            return null;
        }

        @Override
        protected void onPostExecute(Void aVoid) {
            super.onPostExecute(aVoid);

            edtCliente.setAdapter(adapterCliente);
            edtProduto.setAdapter(adapterProduto);
            edtLocal.setAdapter(adapterLocal);
            edtFuncionario.setAdapter(adapterFuncionario);


            if( progresso.isShowing() ) {
                progresso.dismiss();
                progresso.cancel();
            }
        }
    }


    @Override
    public boolean onCreateOptionsMenu(Menu menu) {
        // Inflate the menu; this adds items to the action bar if it is present.
        getMenuInflater().inflate(R.menu.menu_act_ficha, menu);
        return true;
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
