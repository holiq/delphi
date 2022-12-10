program Gaji_Pokok;

uses
  Vcl.Forms,
  UGaji_Pokok in 'UGaji_Pokok.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
