unit ServerMethodsUnit1;

interface

uses System.SysUtils, System.Classes, System.Json, vcl.Dialogs,
    Datasnap.DSServer, Datasnap.DSAuth, DataSnap.DSProviderDataModuleAdapter,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf,
  FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Phys, FireDAC.Stan.Pool,
  FireDAC.Stan.Async, Data.DB, FireDAC.Comp.Client, FireDAC.Phys.FB,
  FireDAC.Phys.IBBase, FireDAC.Stan.StorageBin, FireDAC.Stan.Param,
  FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Phys.MSAcc;

type
{$METHODINFO ON}
  TServerMethods1 = class(TDataModule)
    fdInstallux: TFDConnection;
    FDStanStorageBinLink1: TFDStanStorageBinLink;
    FDPhysFBDriverLink1: TFDPhysFBDriverLink;
    qryAux: TFDQuery;
    FDTransaction1: TFDTransaction;
    qryIncServico: TFDQuery;
    FDQuery2: TFDQuery;
    FDQuery3: TFDQuery;
    qryProduto: TFDQuery;
    qryIncFicha: TFDQuery;
    FDManager1: TFDManager;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure configuraBd;

    function getClientes( w:String='' ; o:String = '' ):TJsonArray;
    function getProdutos( w:String='' ;  o:String = '' ):TJsonArray;
    function getFuncionarios( w:String='' ;  o:String = ''):TJsonArray;
    function getArquitetos( w:String='' ;  o:String = ''):TJsonArray;
    function getLocais( w:String='' ;  o:String = ''):TJsonArray;
    function getAmbientes( w:String='' ;  o:String = ''):TJsonArray;

    function getFuncionario( codigo:Integer ):TJsonObject;
    function getCliente( codigo:Integer ):TJsonObject;
    function getProduto( codigo:Integer ):TJsonObject;
    function getArquiteto( codigo:Integer ):TJsonObject;
    function getLocal( codigo:Integer ):TJsonObject;
    function getAmbiente( codigo:Integer ):TJsonObject;

    function gravaFicha( ficha, itens:String ):String;




  end;
{$METHODINFO OFF}

implementation


{$R *.dfm}


uses System.StrUtils, Efuncoes;



function TServerMethods1.getClientes( w:String='' ;  o:String = ''): TJsonArray;
var
Obj: TJsonObject;
r:TJsonArray;

begin
  //

  with qryAux do
  begin
    close;
    sql.Clear;



    if( w <> '' ) then
      w := ' AND ' + w;

    if( o <> '' ) then
      o := ' Order by ' + o;

    sql.Add( 'Select Codigo, Fantasia as nome, Arquiteto from Clientes      WHERE INATIVO = ''N'' ');
    sql.Add( w );
    sql.Add( o );
    Open;
    first;

    r := TJsonArray.Create;

    while not eof  do
    begin
      OBj:=TJsonObject.Create;
      Obj.AddPair('ID',TJSONNumber.Create( fieldbyname( 'codigo' ).asInteger ));
      Obj.AddPair('Nome',TJSONString.Create( Tira_Acentos( fieldbyname( 'nome' ).asString )));
      Obj.AddPair('ID_Arquiteto',TJSONNumber.Create( fieldbyname( 'arquiteto' ).asInteger ));
      r.AddElement(obj);
      next;
    end;

    result := r;

  end;


end;

function TServerMethods1.getFuncionarios(w:String='' ;  o:String = ''): TJsonArray;
var
Obj: TJsonObject;
r:TJsonArray;

begin

  //

  with qryAux do
  begin
    close;
    sql.Clear;

    if( w <> '' ) then
      w := ' AND ' + w;


    if( o <> '' ) then
      o := ' Order by ' + o;

    sql.Add( 'Select Codigo, nome from funcionarios WHERE Coalesce( nome , '''' ) <> '''' and  INATIVO = ''N'' ' );
    sql.Add( w );
    sql.Add( o );
    Open;
    first;

    r := TJsonArray.Create;

    while not eof  do
    begin
      OBj:=TJsonObject.Create;
      Obj.AddPair('ID',TJSONNumber.Create( fieldbyname( 'codigo' ).asInteger ));
      Obj.AddPair('Nome',TJSONString.Create( Tira_Acentos( fieldbyname( 'nome' ).asString )));

      r.AddElement(obj);
      next;
    end;

    result := r;

  end;



end;

function TServerMethods1.getLocais(w, o: String): TJsonArray;
var
Obj: TJsonObject;
r:TJsonArray;

begin
  //

  with qryAux do
  begin
    close;
    sql.Clear;

    if( w <> '' ) then
      w := ' WHERE ' + w;

    if( o <> '' ) then
      o := ' Order by ' + o;


    sql.Add( 'Select id_local, nome from Locais ');
    sql.Add( w );
    sql.Add( o );
    Open;
    first;

    r := TJsonArray.Create;


    while not eof  do
    begin
      OBj:=TJsonObject.Create;
      Obj.AddPair('ID',TJSONNumber.Create( fieldbyname( 'id_local' ).asInteger ));
      Obj.AddPair('Nome',TJSONString.Create( Tira_Acentos( fieldbyname( 'nome' ).asString) ));

      r.AddElement(obj);
      next;
    end;

    result := r;

  end;


end;

function TServerMethods1.getLocal(codigo: Integer): TJsonObject;
var
r:TJsonArray;
retorno : TJsonObject;

begin

  r := getLocais( ' id_local = ' + IntToStr( codigo ) );

  if( r.Count=0 ) then
    result := TJsonObject.Create
  else
    retorno:= TJSONObject.ParseJSONValue(TEncoding.ASCII.GetBytes(r.Items[0].toString), 0) as TJSONObject;

  result := retorno;
end;

function TServerMethods1.getProduto(codigo: Integer): TJsonObject;
var
r:TJsonArray;
retorno : TJsonObject;

begin

  r := getProdutos( ' codigo = ' + IntToStr( codigo ) );

  if( r.Count=0 ) then
    result := TJsonObject.Create
  else
    retorno:= TJSONObject.ParseJSONValue(TEncoding.ASCII.GetBytes(r.Items[0].toString), 0) as TJSONObject;

  result := retorno;
end;

function TServerMethods1.getProdutos(w:String='' ;  o:String = ''): TJsonArray;
var
Obj: TJsonObject;
r:TJsonArray;

begin
  //

  with qryAux do
  begin
    close;
    sql.Clear;


    if( w <> '' ) then
      w := ' AND ' + w;

    if( o <> '' ) then
      o := ' Order by ' + o;


    sql.Add( 'Select Codigo, nome, preco, tipo from produtos  WHERE INATIVO = ''N'' ');
    sql.Add( w );
    sql.Add( o );

    r := TJsonArray.Create;


    try
      Open;
      first;
    except
      on e:Exception do
        begin
          OBj:=TJsonObject.Create;
          Obj.AddPair('Erro',TJSONString.Create( E.Message ));
          r.AddElement( obj );
          result := r;
        end;

    end;



    while not eof  do
    begin
      OBj:=TJsonObject.Create;
      Obj.AddPair('ID',TJSONNumber.Create( fieldbyname( 'codigo' ).asInteger ));
      Obj.AddPair('Nome',TJSONString.Create( Tira_Acentos( fieldbyname( 'nome' ).asString )));
      Obj.AddPair('Preco',TJSONNumber.Create( fieldbyname( 'preco' ).asFloat ));
      Obj.AddPair('Tipo',TJSONNumber.Create( fieldbyname( 'tipo' ).asInteger ));

      r.AddElement(obj);
      next;
    end;

    result := r;

  end;


end;

function TServerMethods1.gravaFicha(ficha, itens: String): String;
var
  objFicha: TJSONObject;
  objItens: TJsonArray;
  objItem:TJsonObject;
  x:Integer;
  dataFicha:TDateTime;
  obs,dataAux:String;
  dia,mes,ano:word;
  Chegada, Saida:TTime;

begin

  result := 'Ficha Incluida';

  try


    qryIncFicha.Close;
    qryIncServico.Close;

    qryIncFicha.Open;
    qryIncServico.Open;

      objFicha := TJSONObject.ParseJSONValue(TEncoding.ASCII.GetBytes(ficha), 0) as TJSONObject;
      objItens := TJSONObject.ParseJSONValue(TEncoding.ASCII.GetBytes(itens), 0) as TJsonArray;

      dataAux := objFicha.GetValue('Data').Value;
      dia := StrToInt( copy( DataAux, 0,2 ) );
      mes := strToInt( copy( DataAux , 4,2 ) );
      ano := strToInt( copy ( dataAux, 7 , 4 ) );
      dataFicha := EncodeDate( ano, mes, dia );
      chegada := strToTime( objFicha.getValue( 'Chegada' ).Value );
      saida   := strToTime( objFicha.getValue( 'Saida' ).Value );
      obs     :=  'Digitado via APP em ' + DateTimeToStr( now ) + #13 +
                  objFicha.getValue( 'Obs' ).Value;


      with qryIncFicha do
      begin
          Insert;
          fieldbyname( 'cliente' ).asString     := objFicha.getValue( 'Cliente' ).Value;
          fieldbyname( 'Data' ).asDateTime      := DataFicha;
          fieldbyname( 'Chegada' ).asDateTime   := Chegada;
          fieldbyname( 'Saida' ).asDateTime     := Saida;
          fieldbyname( 'Funcionario' ).asString := objFicha.getValue( 'Funcionario' ).Value ;
          fieldbyname( 'Obs' ).asString         := obs;
          post;

      end;

      for x := 0 to objItens.Count-1 do
      begin

        qryProduto.Close;
        objItem :=  TJSONObject.ParseJSONValue(TEncoding.ASCII.GetBytes(  objItens.Items[x].toString()), 0) as TJSONObject;

        qryProduto.parambyname( 'Codigo' ).asString := objItem.getValue( 'Produto' ).Value;
        qryProduto.Open;

        with qryIncServico do
        begin
          insert;
          fieldbyname( 'produto' ).asString     := objItem.getValue( 'Produto' ).Value;
          fieldbyname( 'preco' ).asFloat        := qryProduto.fieldbyname( 'preco' ).asFloat;
          fieldbyname( 'quantidade' ).asString  := objItem.getValue( 'Quantidade' ).Value;
          fieldbyname( 'total' ).asFloat        := fieldbyname( 'preco' ).asFloat * fieldbyname( 'quantidade' ).asFloat;
          fieldbyname( 'os' ).asInteger         := qryIncFicha.fieldbyname( 'os' ).asInteger;
          fieldbyname( 'id_local' ).asString    := objItem.getValue( 'Local' ).Value;
          fieldbyname( 'ambiente' ).asString    := objItem.getValue( 'Ambiente' ).Value;
          post;
        end;


      end;

      result := qryIncficha.fieldbyname( 'os' ).asString;
      //showmessage (objFicha.GetValue('Cliente').Value );

  except

      on e:Exception do
      begin
        result := e.Message;
      end;

  end;

end;

procedure TServerMethods1.configuraBd;
begin
  fdInstallux.Params.Clear;
  FDManager.ConnectionDefFileName := 'Conexoes.ini';
  fdinstallux.ConnectionDefName := 'Installux';

end;

procedure TServerMethods1.DataModuleCreate(Sender: TObject);
begin
  configuraBd;
end;

function TServerMethods1.getAmbiente(codigo: Integer): TJsonObject;
var
r:TJsonArray;
retorno : TJsonObject;

begin

  r := getAmbientes( ' codigo = ' + IntToStr( codigo ) );

  if( r.Count=0 ) then
    result := TJsonObject.Create
  else
    retorno:= TJSONObject.ParseJSONValue(TEncoding.ASCII.GetBytes(r.Items[0].toString), 0) as TJSONObject;

  result := retorno;
end;


function TServerMethods1.getAmbientes(w, o: String): TJsonArray;
var
Obj: TJsonObject;
r:TJsonArray;

begin
  //

  with qryAux do
  begin
    close;
    sql.Clear;
    if( w <> '' ) then
      w := ' WHERE ' + w;

    if( o <> '' ) then
      o := ' Order by ' + o;


//    sql.Add( 'Select codigo, descricao from Ambientes ');

      sql.Add( 'SELECT' );
      sql.Add( 'ID ,' );
      sql.Add( 'AMBIENTE AS codigo,' );
      sql.Add( 'CLIENTE,' );
      sql.Add( 'AMBIENTES.DESCRICAO AS DESCRICAO');
      sql.Add( 'FROM AMB_CLIENTES');
      sql.Add( 'INNER JOIN AMBIENTES ON AMBIENTES.CODIGO = AMB_CLIENTES.AMBIENTE');
      sql.Add( 'INNER JOIN CLIENTES ON CLIENTES.CODIGO = AMB_CLIENTES.CLIENTE' );
      sql.Add( 'WHERE CLIENTE > 0 AND CLIENTES.INATIVO = ''N''');
      sql.Add( 'ORDER BY AMBIENTES.DESCRICAO');
    sql.Add( w );
    sql.Add( o );
    Open;
    first;

    r := TJsonArray.Create;


    while not eof  do
    begin
      OBj:=TJsonObject.Create;
      Obj.AddPair('ID',TJSONNumber.Create( fieldbyname( 'ID' ).asInteger ));
      Obj.AddPair('Nome',TJSONString.Create( Tira_Acentos( fieldbyname( 'descricao' ).asString ) ));
      Obj.AddPair('Cliente',TJSONNumber.Create( fieldbyname( 'cliente' ).asInteger ));
      Obj.AddPair('Ambiente',TJSONNumber.Create( fieldbyname( 'Codigo' ).asInteger ));
      r.AddElement(obj);
      next;
    end;

    result := r;

  end;


end;

function TServerMethods1.getArquiteto(codigo: Integer): TJsonObject;
var
r:TJsonArray;
retorno : TJsonObject;

begin

  r := getArquitetos( ' codigo = ' + IntToStr( codigo ) );

  if( r.Count=0 ) then
    result := TJsonObject.Create
  else
    retorno:= TJSONObject.ParseJSONValue(TEncoding.ASCII.GetBytes(r.Items[0].toString), 0) as TJSONObject;

  result := retorno;
end;


function TServerMethods1.getArquitetos(w, o: String): TJsonArray;
var
Obj: TJsonObject;
r:TJsonArray;

begin
  //

  with qryAux do
  begin
    close;
    sql.Clear;
    if( w <> '' ) then
      w := ' WHERE ' + w;

    if( o <> '' ) then
      o := ' Order by ' + o;


    sql.Add( 'Select codigo, nome from Arquitetos ');
    sql.Add( w );
    sql.Add( o );
    Open;
    first;

    r := TJsonArray.Create;


    while not eof  do
    begin
      OBj:=TJsonObject.Create;
      Obj.AddPair('ID',TJSONNumber.Create( fieldbyname( 'codigo' ).asInteger ));
      Obj.AddPair('Nome',TJSONString.Create( Tira_Acentos( fieldbyname( 'nome' ).asString )));

      r.AddElement(obj);
      next;
    end;

    result := r;

  end;


end;

function TServerMethods1.getCliente(codigo: Integer): TJsonObject;
var
r:TJsonArray;
retorno : TJsonObject;

begin

  r := getClientes( ' codigo = ' + IntToStr( codigo ) );

  if( r.Count=0 ) then
    result := TJsonObject.Create
  else
    retorno:= TJSONObject.ParseJSONValue(TEncoding.ASCII.GetBytes(r.Items[0].toString), 0) as TJSONObject;

  result := retorno;
end;


function TServerMethods1.getFuncionario(codigo: Integer): TJsonObject;
var
r:TJsonArray;
retorno : TJsonObject;

begin

  r := getFuncionarios( ' codigo = ' + IntToStr( codigo ) );

  if( r.Count=0 ) then
    result := TJsonObject.Create
  else
    retorno:= TJSONObject.ParseJSONValue(TEncoding.ASCII.GetBytes(r.Items[0].toString), 0) as TJSONObject;

  result := retorno;
end;


end.

