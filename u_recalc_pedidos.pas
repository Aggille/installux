unit u_recalc_pedidos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, LMDControl, LMDBaseControl, LMDBaseGraphicControl,
  LMDGraphicControl, LMDBaseMeter, LMDCustomProgressFill, LMDProgressFill,
  StdCtrls, Buttons, DB, DBTables, Grids, DBGrids, DBCtrls;

type
  TfrmRecalcPedidos = class(TForm)
    BitBtn1: TBitBtn;
    lmdProgresso: TLMDProgressFill;
    tblPedidos: TTable;
    tblItens: TTable;
    dtsPedidos: TDataSource;
    dtsItens: TDataSource;
    DBText1: TDBText;
    Label1: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRecalcPedidos: TfrmRecalcPedidos;

implementation

uses Principal;

{$R *.dfm}

procedure TfrmRecalcPedidos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := caFree;
end;

procedure TfrmRecalcPedidos.BitBtn1Click(Sender: TObject);
var
pos:integer;
overitem,vlr_fabrica, vlr_pedido, over:Currency;
begin
   if not abre( [tblPedidos, tblItens] ) then close;

   with tblPedidos do
   begin
      lmdProgresso.MaxValue := recordCount;

      first;
      pos := 0;

      while not eof do
      begin
        inc(pos);
        lmdProgresso.uservalue  := pos;
        lmdProgresso.update;
        application.processMessages;
        vlr_fabrica := 0;
        vlr_pedido  := 0;
        over := 0;
        with tblItens do
          while not eof do
          begin
//            vlr_fabrica := vlr_fabrica + ( fieldbyname( 'precoFabrica' ).asCurrency * fieldbyname( 'quantidade' ).asInteger );
//            vlr_pedido  := vlr_pedido + ( fieldbyname( 'precoUnitario' ).asCurrency * fieldbyname( 'quantidade' ).asInteger );
              overItem  := ( fieldbyname( 'precoUnitario' ).asCurrency - fieldbyname( 'precoFabrica' ).asCurrency ) * fieldbyname( 'quantidade' ).asInteger;
              over  := over + overitem;
            next;
          end;

          edit;
          fieldbyname( 'over' ).asCurrency  := over;
          post;

        next;
      end;
   end;
end;

end.
