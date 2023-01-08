unit UPenggabungan;

interface

uses
  Winapi.Windows, Winapi.ShellAPI, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  Vcl.OleCtrls, SHDocVw, WebView2, Winapi.ActiveX, Vcl.Edge;

type
  TFormPenggabungan = class(TForm)
    CategoryPanelGroup1: TCategoryPanelGroup;
    CategoryPanel1: TCategoryPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    BitBtn9: TBitBtn;
    WebBrowser1: TWebBrowser;
    BitBtn10: TBitBtn;
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPenggabungan: TFormPenggabungan;

implementation

{$R *.dfm}

uses UAritProcedure, UbangunRuang, UGaji_Pokok, ULogin, UAritFunction, UResto, ULooping,
  UMinMax;

procedure TFormPenggabungan.BitBtn1Click(Sender: TObject);
begin
  UHome.show;
end;

procedure TFormPenggabungan.BitBtn2Click(Sender: TObject);
begin
  FormGajiPokok.Show;
end;

procedure TFormPenggabungan.BitBtn3Click(Sender: TObject);
begin
  FormBangunRuang.Show;
end;

procedure TFormPenggabungan.BitBtn4Click(Sender: TObject);
begin
  FormAritFunction.show;
end;

procedure TFormPenggabungan.BitBtn5Click(Sender: TObject);
begin
  FormAritProcedure.Show;
end;

procedure TFormPenggabungan.BitBtn6Click(Sender: TObject);
begin
  FormResto.show;
end;

procedure TFormPenggabungan.BitBtn7Click(Sender: TObject);
begin
  FormLooping.show;
end;

procedure TFormPenggabungan.BitBtn8Click(Sender: TObject);
begin
  //ShowMessage()     WebBrowser1.Navigate
  WebBrowser1.Navigate('https://drive.google.com/file/d/1DFGtIYOUY1M7FzIUgO8sQZEwEPsNhn-m/view?usp=sharing');
end;

procedure TFormPenggabungan.BitBtn9Click(Sender: TObject);
begin
  FormMinMax.Show;
end;

procedure TFormPenggabungan.BitBtn10Click(Sender: TObject);
begin
  ShellExecute(Handle, nil, PChar('https://drive.google.com/file/d/1DFGtIYOUY1M7FzIUgO8sQZEwEPsNhn-m/view?usp=sharing'), nil, nil, SW_SHOWNORMAL);
end;

end.
