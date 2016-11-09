unit aniversarios;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  IBDatabase, Db, IBCustomDataSet, IBQuery, StdCtrls, Buttons, RzLabel,
  Grids, Wwdbigrd, Wwdbgrid,dateutils;

type
  TfrmAniversarios = class(TForm)
    qryAniversarios: TIBQuery;
    IBTransaction1: TIBTransaction;
    wwDBGrid1: TwwDBGrid;
    dtsaniversarios: TDataSource;
    RzLabel1: TRzLabel;
    BitBtn1: TBitBtn;
    qryAniversariosNOME: TIBStringField;
    qryAniversariosTELEFONE: TIBStringField;
    qryAniversariosANIVERSARIO: TDateField;
    qryAniversariosNOME_CONJUGE: TIBStringField;
    qryAniversariosEMAIL: TIBStringField;
    qryAniversariosTIPO: TIBStringField;
    qryAniversariosANIVERSARIO_CONJUGE: TDateField;
    procedure wwDBGrid1CalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont;
      ABrush: TBrush);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAniversarios: TfrmAniversarios;

implementation

uses principal;

{$R *.DFM}

procedure TfrmAniversarios.wwDBGrid1CalcCellColors(Sender: TObject;
  Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
  ABrush: TBrush);
begin

  // se é aniversário do cliente, coloca em negrito
  if  ( field.fieldname = 'ANIVERSARIO' ) and
      ( dayOf( qryAniversarios.fieldbyname( 'aniversario' ).asDateTime ) = dayof( now )  ) and
      ( MonthOf( qryAniversarios.fieldbyname( 'aniversario' ).asDateTime ) = monthof( now )  ) then

    begin
        afont.Style := [fsBold];
    end;

  // se é aniversário do conjuge, coloca em negrito
  if  ( field.fieldname = 'ANIVERSARIO_CONJUGE' ) and
      ( dayOf( qryAniversarios.fieldbyname( 'aniversario_conjuge' ).asDateTime ) = dayof( now )  ) and
      ( MonthOf( qryAniversarios.fieldbyname( 'aniversario_conjuge' ).asDateTime ) = monthof( now )  ) then

    begin
        afont.Style := [fsBold];
    end;

end;

end.
