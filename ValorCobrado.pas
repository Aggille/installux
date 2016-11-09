unit ValorCobrado;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls,   wwdbdatetimepicker, DBCtrls, LMDControl, LMDBaseControl,
  Buttons, Mask, rxToolEdit, rxCurrEdit, LMDBaseGraphicControl, LMDBaseLabel,
  LMDCustomLabel, LMDLabel, RxDBCtrl;
type
  TfrmValor = class(TForm)
    LMDLabel1: TLMDLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    RxDBCalcEdit1: TRxDBCalcEdit;
    RxDBCalcEdit2: TRxDBCalcEdit;
    RxDBCalcEdit3: TRxDBCalcEdit;
    RxDBCalcEdit4: TRxDBCalcEdit;
    BitBtn2: TBitBtn;
    RxDBCalcEdit5: TRxDBCalcEdit;
    Label14: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmValor: TfrmValor;

implementation

uses orcamentos;

{$R *.DFM}

end.
