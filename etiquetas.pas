unit etiquetas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, wwdbdatetimepicker, Mask,
  Buttons, Grids, DBGrids, DB, IBDatabase, IBCustomDataSet, IBQuery,
  ExtCtrls, QuickRpt, QRCtrls, RXSpin, Maskutils, RxToolEdit, RxCurrEdit;

type
  TfrmEtiqueta = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    edtInicio: TwwDBDateTimePicker;
    edtFinal: TwwDBDateTimePicker;
    GroupBox2: TGroupBox;
    Label3: TLabel;
    edtVendas: TCurrencyEdit;
    GroupBox3: TGroupBox;
    Label6: TLabel;
    edtCidade: TEdit;
    GroupBox4: TGroupBox;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    BitBtn1: TBitBtn;
    qryClientes: TIBQuery;
    IBTransaction1: TIBTransaction;
    qrpEtiqueta: TQuickRep;
    qrbEtiqueta: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    edtAltura: TRxSpinEdit;
    edtLargura: TRxSpinEdit;
    edtEtiqPorLinha: TRxSpinEdit;
    edtMargemEsq: TRxSpinEdit;
    edtMargemSup: TRxSpinEdit;
    edtLinhasEntreEtiq: TRxSpinEdit;
    BitBtn2: TBitBtn;
    QRDBText6: TQRDBText;
    edtTipo: TRadioGroup;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure QRDBText4Print(sender: TObject; var Value: String);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEtiqueta: TfrmEtiqueta;

implementation

uses principal;

{$R *.dfm}

procedure TfrmEtiqueta.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   action := caFree;
end;

procedure TfrmEtiqueta.BitBtn1Click(Sender: TObject);
var
s:String;


begin



// se é cadastro de clientes
if edtTipo.ItemIndex = 0 then
  begin
    s :=     'SELECT sum( os.valorcobrado ) as valor, max( data ) as data, os.cliente, c.nome, c.endereco, c.cidade, c.estado, c.bairro, c.cep';
    s := s + ' FROM OS ' ;
    s := s + ' INNER JOIN CLIENTES C ON ( C.CODIGO = OS.CLIENTE )';
    s := s + ' where C.INATIVO <> ' + quotedStr( 'S' ) ;    
    s := s + ' GROUP BY os.cliente, c.nome, c.endereco, c.cidade, c.estado, c.bairro, c.cep ';
    s := s + ' HAVING MAX( DATA ) BETWEEN' + QuotedStr( FormatDateTime( 'MM/DD/YYYY' , edtInicio.Date ) ) + ' AND ' + QuotedStr( FormatDateTime( 'MM/DD/YYYY' , edtFinal.Date ) );
    s := S + ' AND sum( valorcobrado ) >= ' + FloatToStrF( edtVendas.Value , ffFixed , 16 , 0  );
    s := s + ' AND c.cidade containing ' + QuotedStr( edtCidade.text ) ;
    s := s + ' AND c.cep <> ' + quotedstr('') + ' AND c.endereco <> ' + quotedstr('') + ' AND c.cidade <> ' + quotedstr('');
    s := s + ' ORDER BY NOME ' ;
  end
// se não
else
  begin
    s :=     'SELECT sum( os.valorcobrado ) as valor, max( data ) as data, os.arquiteto, a.nome, a.endereco, a.cidade, a.estado, a.bairro, a.cep';
    s := s + ' FROM OS ' ;
    s := s + ' INNER JOIN CLIENTES C ON ( C.CODIGO = OS.CLIENTE ) ';
    s := s + ' INNER JOIN ARQUITETOS A ON ( A.CODIGO = C.ARQUITETO )';
    s := s + ' GROUP BY os.arquiteto, a.nome, a.endereco, a.cidade, a.estado, a.bairro, a.cep ';
    s := s + ' HAVING MAX( DATA ) BETWEEN' + QuotedStr( FormatDateTime( 'MM/DD/YYYY' , edtInicio.Date ) ) + ' AND ' + QuotedStr( FormatDateTime( 'MM/DD/YYYY' , edtFinal.Date ) );
    s := S + ' AND sum( valorcobrado ) >= ' + FloatToStrF( edtVendas.Value , ffFixed , 16 ,0  );
    s := s + ' AND a.cidade containing ' + QuotedStr( edtCidade.text ) ;
    s := s + ' AND a.cep <> ' + quotedstr('') + ' AND a.endereco <> ' + quotedstr('') + ' AND a.cidade <> ' + quotedstr('');
    s := s + ' ORDER BY A.NOME ' ;
  end;

  try
   with qryClientes do
   begin
      close;
      sql.Clear;
      sql.Add( S );
      open;
   end;

   with qrpEtiqueta do
      PreviewModal;

   except
    on e:Exception do
    begin
      Erro( Pchar( 'Erro : ' + e.Message ) ) ;
      Erro( Pchar( 'SQL : ' + qryClientes.Sql.text ) );
      exit;
    end;

   end;
end;

procedure TfrmEtiqueta.FormShow(Sender: TObject);
begin
   edtFinal.Date              := now;
   edtAltura.Value            := qrbEtiqueta.height;
   edtLargura.Value           := qrbEtiqueta.Width;
   edtEtiqPorLinha.Value      := qrpEtiqueta.Page.Columns;
   edtMargemEsq.Value         := qrpEtiqueta.Page.LeftMargin;
   edtMargemSup.Value         := qrpEtiqueta.Page.TopMargin;
//   edtLinhasEntreEtiq.Value   := qrbFooter.Height;
end;

procedure TfrmEtiqueta.BitBtn2Click(Sender: TObject);
begin
   close;
end;

procedure TfrmEtiqueta.FormCreate(Sender: TObject);
begin
   transacao( frmEtiqueta, ibTransaction1 );
end;

procedure TfrmEtiqueta.QRDBText4Print(sender: TObject; var Value: String);
begin
   value := FormatMasktext( '#####-###;0; ', value );  
end;

end.
