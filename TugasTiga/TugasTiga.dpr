program TugasTiga;

uses
  Vcl.Forms,
  ULogin in 'ULogin.pas' {FormLogin},
  UDataModule in 'UDataModule.pas' {DataModule1: TDataModule},
  UFunction in 'UFunction.pas',
  UMainMenu in 'UMainMenu.pas' {FMainMenu},
  UListBarang in 'Barang\UListBarang.pas' {FListBarang},
  UAddBarang in 'Barang\UAddBarang.pas' {FAddBarang},
  UEditBarang in 'Barang\UEditBarang.pas' {FEditBarang},
  UListPelanggan in 'Pelanggan\UListPelanggan.pas' {FListPelanggan};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDataModule1, DataModule1);
  Application.CreateForm(TFMainMenu, FMainMenu);
  Application.CreateForm(TFEditBarang, FEditBarang);
  Application.CreateForm(TFListPelanggan, FListPelanggan);
  Application.Run;
end.
