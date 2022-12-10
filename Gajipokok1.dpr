program Gajipokok1;

uses
  Vcl.Forms,
  Ugp1 in 'Ugp1.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
