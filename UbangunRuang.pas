unit UbangunRuang;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls;

type
  TFormBangunRuang = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    Edit2: TEdit;
    Edit3: TEdit;
    BitBtn1: TBitBtn;
    Panel2: TPanel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    BitBtn2: TBitBtn;
    Panel3: TPanel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Edit7: TEdit;
    Edit8: TEdit;
    Edit9: TEdit;
    BitBtn3: TBitBtn;
    Panel4: TPanel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Edit10: TEdit;
    Edit11: TEdit;
    Edit12: TEdit;
    BitBtn4: TBitBtn;
    Panel5: TPanel;
    Label13: TLabel;
    Label14: TLabel;
    Edit13: TEdit;
    Edit14: TEdit;
    BitBtn5: TBitBtn;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormBangunRuang: TFormBangunRuang;
  P,L,A,T,R:integer;
  Hasil:Real;

implementation

{$R *.dfm}

procedure TFormBangunRuang.BitBtn1Click(Sender: TObject); //LUAS PERSEGI PANJANG
begin
 P:=StrToInt(Edit1.Text);
 L:=StrToInt(Edit2.Text);
 Hasil:=P*L;
 Edit3.Text:=FloatToStr(Hasil);
end;

procedure TFormBangunRuang.BitBtn2Click(Sender: TObject); //JAJAR GENJANG
begin
A:=StrToInt(Edit4.Text);
T:=StrToInt(Edit5.Text);
Hasil:=A*T;
Edit6.Text:=FloatToStr(Hasil);
end;

procedure TFormBangunRuang.BitBtn3Click(Sender: TObject); //VOLUME TABUNG
begin
 R:=StrToInt(Edit7.Text);
 T:=StrToInt(Edit8.Text);
 Hasil:=3.14*R*R*T;
 Edit9.Text:=FloatToStr(Hasil);
end;

procedure TFormBangunRuang.BitBtn4Click(Sender: TObject);//VOLUME KERUCUT
begin
R:=StrToInt(Edit10.Text);
T:=StrToInt(Edit11.Text);
Hasil:=1/3*3.14*R*R*T;
Edit12.Text:=FloatToStr(Hasil);
end;

procedure TFormBangunRuang.BitBtn5Click(Sender: TObject);//LUAS LINGKARAN
begin
 R:=StrToInt(Edit13.Text);
 Hasil:=3.14*R*R;
 Edit14.Text:=FloatToStr(Hasil);
end;

end.
