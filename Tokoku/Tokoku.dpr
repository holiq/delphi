program Tokoku;

uses
  Vcl.Forms,
  ULogin in 'ULogin.pas' {FormLogin},
  UMainMenu in 'UMainMenu.pas' {FormMainMenu},
  UFunctionLogin in 'UFunctionLogin.pas',
  UDataModule in 'UDataModule.pas' {DataModule1: TDataModule},
  UBarang in 'Barang\UBarang.pas' {FormBarang},
  UAddEditBarang in 'Barang\UAddEditBarang.pas' {FormAddEditBarang};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormMainMenu, FormMainMenu);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.Run;
end.
