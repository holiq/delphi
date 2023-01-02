program List;

uses
  Vcl.Forms,
  UList in 'UList.pas' {Form1},
  UGaji_Pokok in 'UGaji_Pokok.pas' {FormGajiPokok};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TFormGajiPokok, FormGajiPokok);
  Application.Run;
end.
