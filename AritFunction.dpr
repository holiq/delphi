program AritFunction;

uses
  Vcl.Forms,
  UAritFunction in 'UAritFunction.pas' {FormAritFunction};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormAritFunction, FormAritFunction);
  Application.Run;
end.
