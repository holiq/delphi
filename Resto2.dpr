﻿program Resto2;

uses
  Vcl.Forms,
  UResto2 in 'UResto2.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
