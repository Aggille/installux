unit RostoOrcamento;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Db, IBCustomDataSet, jpeg, QuickRpt,
  QRCtrls, DBClient, dxGDIPlusClasses;

type
  TqrpRostoorcamento = class(TQuickRep)
    QRBand1: TQRBand;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  qrpRostoorcamento: TqrpRostoorcamento;

implementation

{$R *.dfm}

end.
