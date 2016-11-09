unit relservgrupos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, wwdblook, wwdbdatetimepicker, DB,
  IBCustomDataSet, IBDatabase, IBQuery, RpDefine, RpCon, RpConDS;

type
  TfrmRelServGrupos = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    edtInicio: TwwDBDateTimePicker;
    edtFinal: TwwDBDateTimePicker;
    edtGrupo: TwwDBLookupCombo;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    qryGrupos: TIBQuery;
    dtsGrupos: TDataSource;
    IBTransaction1: TIBTransaction;
    qryGruposCODIGO: TIntegerField;
    qryGruposNOME: TIBStringField;
    qryServicos: TIBQuery;
    dtsServicos: TDataSource;
    rvServGrupo: TRvDataSetConnection;
    qryServicosOS: TIntegerField;
    qryServicosPRODUTO: TIntegerField;
    qryServicosPRECO: TIBBCDField;
    qryServicosDATA: TDateField;
    qryServicosCLIENTE: TIntegerField;
    qryServicosQUANTIDADE: TIntegerField;
    qryServicosTOTAL: TIBBCDField;
    qryServicosNOMEDOCLIENTE: TIBStringField;
    qryServicosNOMEDOPRODUTO: TIBStringField;
    qryServicosGRUPO: TIntegerField;
    qryServicosNOMEDOGRUPO: TIBStringField;
    qryServicosNOMEFUNCIONARIO: TIBStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelServGrupos: TfrmRelServGrupos;

implementation

uses principal;

{$R *.dfm}

procedure TfrmRelServGrupos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   action := caFree;
end;

procedure TfrmRelServGrupos.BitBtn2Click(Sender: TObject);
begin
   close;
end;

procedure TfrmRelServGrupos.FormShow(Sender: TObject);
begin
   if not abre( [qryGrupos] ) then close;
end;

procedure TfrmRelServGrupos.BitBtn1Click(Sender: TObject);
begin
   with qryServicos do
   begin
      close;
      parambyname( 'inicio' ).asdatetime     := edtInicio.Date;
      parambyname( 'final' ).asdatetime      := edtFinal.Date;

      if edtGrupo.text = '' then
      begin
         paramByName( 'gInicial' ).asInteger    := 0;
         paramByName( 'gFinal' ).asInteger      := 99999;
      end
      else
      begin
         paramByName( 'gInicial' ).asInteger    := qryGrupos.fieldByName( 'codigo' ).asInteger;
         paramByName( 'gFinal' ).asInteger      := qryGrupos.fieldByName( 'codigo' ).asInteger;
      end;

      open;

      frmPrincipal.rvInstallux.ExecuteReport( 'rptServGrupos' );



   end;
end;

end.
