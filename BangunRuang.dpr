program BangunRuang;

uses
  Vcl.Forms,
  UbangunRuang in 'UbangunRuang.pas' {FormBangunRuang};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormBangunRuang, FormBangunRuang);
  Application.Run;
end.
