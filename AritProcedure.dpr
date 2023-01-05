program AritProcedure;

uses
  Vcl.Forms,
  UAritProcedure in 'UAritProcedure.pas' {FormAritProcedure};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormAritProcedure, FormAritProcedure);
  Application.Run;
end.
