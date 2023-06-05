unit UEditSupplier;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons;

type
  TFEditSupplier = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Memo1: TMemo;
    BitBtn1: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FEditSupplier: TFEditSupplier;

implementation

{$R *.dfm}

uses UDataModule, UListSupplier;

procedure TFEditSupplier.BitBtn1Click(Sender: TObject);
begin
  with DataModule1.QTemp do
  begin
    Close;
    SQL.Clear;;
    SQL.Text:= 'UPDATE tugas_tiga.supplier SET '+
      'nama='+QuotedStr(Edit1.Text)+', '+
      'alamat='+QuotedStr(Memo1.Text)+', '+
      'no_telepon='+QuotedStr(Edit2.Text)+' '+
      'WHERE supplier.id='+QuotedStr(Label5.Caption);
    Execute;
  end;
  FListSupplier.BitBtn2.Click;
  FEditSupplier.Close;
end;

end.
