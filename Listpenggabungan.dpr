program Listpenggabungan;

uses
  Vcl.Forms,
  UPenggabungan in 'UPenggabungan.pas' {FormPenggabungan},
  UAritProcedure in 'UAritProcedure.pas' {FormAritProcedure},
  UbangunRuang in 'UbangunRuang.pas' {FormBangunRuang},
  UGaji_Pokok in 'UGaji_Pokok.pas' {FormGajiPokok},
  ULogin in 'ULogin.pas' {UHome},
  UCashboard in 'UCashboard.pas' {FormDashboard},
  Ucart in 'Ucart.pas' {FormCart},
  Uorder in 'Uorder.pas' {FormOrder},
  Ucheckout in 'Ucheckout.pas' {FormCheckOut},
  UAritFunction in 'UAritFunction.pas' {FormAritFunction},
  UResto in 'UResto.pas' {FormResto},
  UMinMax in 'UMinMax.pas' {FormMinMax};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormPenggabungan, FormPenggabungan);
  Application.CreateForm(TFormAritProcedure, FormAritProcedure);
  Application.CreateForm(TFormBangunRuang, FormBangunRuang);
  Application.CreateForm(TFormGajiPokok, FormGajiPokok);
  Application.CreateForm(TUHome, UHome);
  Application.CreateForm(TFormDashboard, FormDashboard);
  Application.CreateForm(TFormCart, FormCart);
  Application.CreateForm(TFormOrder, FormOrder);
  Application.CreateForm(TFormCheckOut, FormCheckOut);
  Application.CreateForm(TFormAritFunction, FormAritFunction);
  Application.CreateForm(TFormResto, FormResto);
  Application.CreateForm(TFormMinMax, FormMinMax);
  Application.Run;
end.
