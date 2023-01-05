program Resto;

uses
  Vcl.Forms,
  UResto in 'UResto.pas' {FormResto};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormResto, FormResto);
  Application.Run;
end.
