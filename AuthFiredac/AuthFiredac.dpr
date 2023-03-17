program AuthFiredac;

uses
  Vcl.Forms,
  ULogin in 'ULogin.pas' {FormLogin},
  UMainMenu in 'UMainMenu.pas' {Form2},
  UFunctionLogin in 'UFunctionLogin.pas',
  UDataModule in 'UDataModule.pas' {DataModule1: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.Run;
end.
