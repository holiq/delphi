unit UArrayDate;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.Samples.Spin;

type
  TFormArrayDate = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    SpinEdit1: TSpinEdit;
    SpinEdit2: TSpinEdit;
    SpinEdit3: TSpinEdit;
    BitBtn1: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormArrayDate: TFormArrayDate;

implementation

{$R *.dfm}

procedure TFormArrayDate.BitBtn1Click(Sender: TObject);
type
  x = string[7];
  const
  faktorBln: array[1..12] of byte = (0,3,3,6,1,4,6,2,5,0,3,5);
   hari: array[0..8] of x = ('Minggu', 'Senin', 'Selasa', '', 'Rabu', 'Kamis', '', 'Jumat', 'Sabtu');
  var
  hr: string;
  j1,j2,j3,j4: integer;
  tanggal, bulan, tahun: integer;
begin
  tanggal:= StrToInt(SpinEdit1.Text);
  bulan:= StrToInt(SpinEdit2.Text);
  tahun:= StrToInt(SpinEdit3.Text);

  if tahun > 1900 then tahun:= tahun - 1900;

  j1:= Trunc(tahun * 365.25);
  j2:= j1 + faktorBln[bulan];

  if (tahun/4 = int(tahun/4)) and (bulan < 3) then j2:= j2 - 1;

  j3:= j2 + tanggal;
  j4:= Trunc(Frac(j3/7) * 10);

  hr:= hari[j4];

  Label4.Caption:= 'Hari pada tanggal '+SpinEdit1.Text+'/'+
                   SpinEdit2.Text+'/'+SpinEdit3.Text+' adalah '+
                   hr+'';
end;

end.
