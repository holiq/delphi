program AuthDatabaseUnidac;

uses
  Vcl.Forms,
  ULogin in 'ULogin.pas' {FormLogin},
  UDataModule in 'UDataModule.pas' {DataModule2: TDataModule},
  UFunctionLogin in 'UFunctionLogin.pas',
  UMainMenu in 'UMainMenu.pas' {FormMainMenu};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormMainMenu, FormMainMenu);
  Application.CreateForm(TDataModule2, DataModule2);
  Application.Run;
end.
