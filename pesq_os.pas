unit pesq_os;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, IBCustomDataSet, IBQuery, IBDatabase, ExtCtrls, wwdblook, StdCtrls,
  wwdbdatetimepicker, Mask, wwdbedit, Wwdbspin, Buttons, Grids, Wwdbigrd,
  Wwdbgrid;

type
  TfrmPesqOs = class(TForm)
    IBTransaction1: TIBTransaction;
    qryClientes: TIBQuery;
    qryOs: TIBQuery;
    qryArquitetos: TIBQuery;
    dtsOs: TDataSource;
    dtsArquitetos: TDataSource;
    dtsClientes: TDataSource;
    qryArquitetosCODIGO: TIntegerField;
    qryArquitetosNOME: TIBStringField;
    qryArquitetosCIDADE: TIBStringField;
    qryClientesCODIGO: TIntegerField;
    qryClientesNOME: TIBStringField;
    qryClientesCIDADE: TIBStringField;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Arquiteto: TLabel;
    Label4: TLabel;
    edtInicio: TwwDBDateTimePicker;
    edtFinal: TwwDBDateTimePicker;
    edtArquiteto: TwwDBLookupCombo;
    edtCliente: TwwDBLookupCombo;
    Label5: TLabel;
    edtOs: TwwDBSpinEdit;
    btnPesquisa: TBitBtn;
    btnOk: TBitBtn;
    wwDBGrid1: TwwDBGrid;
    qryOsDATA: TDateField;
    qryOsOS: TIntegerField;
    qryOsVALOR: TIBBCDField;
    qryOsNOMEDOCLIENTE: TIBStringField;
    qryOsNOMEDOARQUITETO: TIBStringField;
    procedure FormShow(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
    procedure btnPesquisaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPesqOs: TfrmPesqOs;

implementation

uses datamodulo, principal;

{$R *.dfm}

procedure TfrmPesqOs.btnPesquisaClick(Sender: TObject);
begin
     with qryOs do
     begin
        close;
        sql.Clear;
        sql.Add( 'SELECT' );
        sql.Add( 'O.DATA, O.OS, O.VALOR,' );
        sql.Add( 'C.NOME AS NOMEDOCLIENTE,' );
        sql.Add( 'A.NOME AS NOMEDOARQUITETO' );
        sql.Add( 'FROM OS O' );
        sql.Add( 'LEFT JOIN CLIENTES C ON  ( C.CODIGO = O.CLIENTE )' );
        sql.Add( 'LEFT JOIN ARQUITETOS A ON ( A.CODIGO = O.ARQUITETO )' );
        Sql.Add( 'WHERE' );

        if edtOs.Value > 0 then
           begin
              sql.Add( 'OS = ' + edtOs.Text );
           end
        else
            begin
                 sql.Add( 'O.DATA BETWEEN :INICIO AND :FINAL' );
                 parambyname( 'inicio' ).asDateTime         := edtInicio.Date;
                 parambyname( 'final' ).asDateTime          := edtFinal.Date;

                 if edtCliente.Text <> '' then
                    sql.Add( 'AND O.CLIENTE = ' + qryClientes.fieldbyname( 'codigo' ).asString );

                 if edtArquiteto.Text <> '' then
                    sql.Add( 'AND O.ARQUITETO = ' + qryArquitetos.fieldbyname( 'codigo' ).asString );

            end;

            sql.Add( 'ORDER BY O.DATA DESC' );

            open;

            if recordCount = 1 then btnOk.Click;

     end;
end;

procedure TfrmPesqOs.btnOkClick(Sender: TObject);
begin
     close;
end;

procedure TfrmPesqOs.FormShow(Sender: TObject);
begin
     edtFinal.Date := now;
     if not abre( [qryClientes, qryArquitetos] ) then close;
end;

end.
