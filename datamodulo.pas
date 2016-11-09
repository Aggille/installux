unit datamodulo;

interface

uses
  SysUtils, Classes, IBDatabase;

type
  TdmInstallux = class(TDataModule)
    ibtPrincipal: TIBTransaction;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmInstallux: TdmInstallux;

implementation

uses principal;

{$R *.dfm}

end.
