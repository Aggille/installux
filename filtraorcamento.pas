unit filtraorcamento;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, wwdblook, wwdbdatetimepicker, Db, IBCustomDataSet,
  IBDatabase, IBQuery, Grids, Wwdbigrd, Wwdbgrid, Mask, Spin;

type
  TfrmFiltraOrcamentos = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    edtEmissaoInicial: TwwDBDateTimePicker;
    edtEmissaoFinal: TwwDBDateTimePicker;
    edtEntregaInicial: TwwDBDateTimePicker;
    edtEntregaFinal: TwwDBDateTimePicker;
    edtcliente: TwwDBLookupCombo;
    edtArquiteto: TwwDBLookupCombo;
    btnOk: TBitBtn;
    IBTransaction1: TIBTransaction;
    tblClientes: TIBDataSet;
    tblArquitetos: TIBDataSet;
    dtsClientes: TDataSource;
    dtsArquitetos: TDataSource;
    BitBtn2: TBitBtn;
    qryOrcamento: TIBQuery;
    dtsOrcamento: TDataSource;
    qryOrcamentoNUMERO: TIntegerField;
    qryOrcamentoCLIENTE: TIntegerField;
    qryOrcamentoARQUITETO: TIntegerField;
    qryOrcamentoDATA_ENTREGA: TDateField;
    qryOrcamentoEMISSAO: TDateField;
    qryOrcamentoNOMEDOCLIENTE: TIBStringField;
    qryOrcamentoNOMEDOARQUITETO: TIBStringField;
    grdItems: TwwDBGrid;
    Label7: TLabel;
    edtNumero: TSpinEdit;
    procedure FormShow(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmFiltraOrcamentos: TfrmFiltraOrcamentos;

implementation

uses principal;

{$R *.DFM}

procedure TfrmFiltraOrcamentos.BitBtn2Click(Sender: TObject);
begin

with qryOrcamento do
     begin
        close;
        parambyname( 'einicial' ).asDateTime        := edtEmissaoInicial.Date;
        parambyname( 'efinal' ).asDateTime          := edtEmissaoFinal.Date;
        parambyname( 'eninicial').asDateTime        := edtEntregaInicial.Date;
        parambyname( 'enFinal' ).asDateTime         := edtEntregaFinal.Date;

        if edtCliente.Text = '' then
           begin
              parambyname( 'cinicial' ).asInteger   := 0;
              parambyname( 'cfinal' ).asInteger     := 99999;
           end
        else
            begin
               parambyname( 'cinicial' ).asInteger  := tblClientes.fieldbyname( 'codigo' ).asInteger;
               parambyname( 'cfinal' ).asInteger    := tblClientes.fieldbyname( 'codigo' ).asInteger;
            end;

        if edtArquiteto.Text = '' then
           begin
              parambyname( 'ainicial' ).asInteger   := 0;
              parambyname( 'afinal' ).asInteger     := 99999;
           end
        else
            begin
               parambyname( 'ainicial' ).asInteger   := tblArquitetos.fieldbyname( 'codigo' ).asInteger;
               parambyname( 'afinal' ).asInteger     := tblArquitetos.fieldbyname( 'codigo' ).asInteger;
            end;

        if edtNumero.Value = 0 then
           begin
              parambyname( 'ninicial' ).asInteger    := 0;
              parambyname( 'nfinal' ).asInteger      := 999999;
           end
        else
            begin
               parambyname( 'ninicial' ).asInteger   := edtNumero.Value;
               parambyname( 'nfinal' ).asInteger     := edtNumero.Value;
            end;

        open;

        //btnOk.Click;

     end;
end;

procedure TfrmFiltraOrcamentos.FormShow(Sender: TObject);
begin
  abre([tblClientes, tblArquitetos]);
end;

end.
