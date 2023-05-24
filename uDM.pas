unit uDM;

interface

uses
  SysUtils, Classes, IBDatabase, DB, IBCustomDataSet, IBQuery;

type
  TDM = class(TDataModule)
    DBConexao: TIBDatabase;
    IBTransact: TIBTransaction;
    IBQuery: TIBQuery;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

{$R *.dfm}

end.
