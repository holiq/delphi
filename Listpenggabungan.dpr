program Listpenggabungan;

uses
  Vcl.Forms,
  UPenggabungan in 'UPenggabungan.pas' {FormPenggabungan},
  UAritProcedure in 'UAritProcedure.pas' {FormAritProcedure},
  UbangunRuang in 'UbangunRuang.pas' {FormBangunRuang},
  UGaji_Pokok in 'UGaji_Pokok.pas' {FormGajiPokok},
  UAritFunction in 'UAritFunction.pas' {FormAritFunction},
  UResto in 'UResto.pas' {FormResto},
  UMinMax in 'UMinMax.pas' {FormMinMax},
  Ucart in 'BukaLapak\Ucart.pas' {FormCart},
  UCashboard in 'BukaLapak\UCashboard.pas' {FormDashboard},
  Ucheckout in 'BukaLapak\Ucheckout.pas' {FormCheckOut},
  ULogin in 'BukaLapak\ULogin.pas' {UHome},
  Uorder in 'BukaLapak\Uorder.pas' {FormOrder};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormPenggabungan, FormPenggabungan);
  Application.CreateForm(TFormAritProcedure, FormAritProcedure);
  Application.CreateForm(TFormBangunRuang, FormBangunRuang);
  Application.CreateForm(TFormGajiPokok, FormGajiPokok);
  Application.CreateForm(TFormAritFunction, FormAritFunction);
  Application.CreateForm(TFormResto, FormResto);
  Application.CreateForm(TFormMinMax, FormMinMax);
  Application.CreateForm(TFormCart, FormCart);
  Application.CreateForm(TFormDashboard, FormDashboard);
  Application.CreateForm(TFormCheckOut, FormCheckOut);
  Application.CreateForm(TUHome, UHome);
  Application.CreateForm(TFormOrder, FormOrder);
  Application.Run;
end.
