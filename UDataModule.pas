unit UDataModule;

interface

uses
  System.SysUtils, System.Classes, Data.DB, DBAccess, Uni, UniProvider, MySQLUniProvider,
  MemDS;

type
  TDataModule2 = class(TDataModule)
    MySQLUniProvider1: TMySQLUniProvider;
    UniConnection1: TUniConnection;
    QTemp: TUniQuery;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule2: TDataModule2;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
