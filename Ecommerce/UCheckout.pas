unit UCheckout;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons;

type
  TForm4 = class(TForm)
    Label1: TLabel;
    Memo1: TMemo;
    Label2: TLabel;
    ComboBox1: TComboBox;
    Label3: TLabel;
    ComboBox2: TComboBox;
    Label4: TLabel;
    Label5: TLabel;
    Memo2: TMemo;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

{$R *.dfm}

uses UOrder;

procedure TForm4.BitBtn1Click(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TForm4.BitBtn2Click(Sender: TObject);
begin
  Form5.Memo1.Lines:= Form4.Memo1.Lines;
  Form5.Memo2.Lines:= Form4.Memo2.Lines;
  Form5.Label3.Caption:= 'Metode Pembayaran: '+Form4.ComboBox1.Items[Form4.ComboBox1.ItemIndex];
  Form5.Label4.Caption:= 'Metode Pengiriman: '+Form4.ComboBox2.Items[Form4.ComboBox2.ItemIndex];
  Form5.Show;
  Form4.Hide;
  end;

end.
