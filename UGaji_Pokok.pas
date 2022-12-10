unit UGaji_Pokok;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    ComboBox1: TComboBox;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure RadioButton1Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure RadioButton3Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  GTraining, GKontrak, GTetap, TTraining,
  TKontrak, TTetap, Gaji, Tunjangan: Currency;
  Jabatan: char;

implementation

{$R *.dfm}

procedure TForm1.BitBtn1Click(Sender: TObject);
begin
  Close;
end;

procedure TForm1.BitBtn2Click(Sender: TObject);
begin
Edit1.Clear;
Edit2.Clear;
Edit3.Clear;
Edit4.Clear;
ComboBox1.ClearSelection;
end;

procedure TForm1.ComboBox1Change(Sender: TObject);
begin
  if ComboBox1.ItemIndex = 0 then
  begin
    if RadioButton1.Checked = true then
    begin
      Gaji:= 10000000;
      Tunjangan:= 0;
    end
    else if RadioButton2.Checked = true then
    begin
      Gaji:= 15000000;
      Tunjangan:= 3000000;
    end
    else if RadioButton3.Checked = true then
    begin
      Gaji:= 20000000;
      Tunjangan:= 5000000;
    end;
  end

  else if ComboBox1.ItemIndex = 1 then
  begin
    if RadioButton1.Checked = true then
    begin
      Gaji:= 6000000;
    Tunjangan:= 0;
    end
    else if RadioButton2.Checked = true then
    begin
      Gaji:= 8000000;
      Tunjangan:= 2000000;
    end
    else if RadioButton3.Checked = true then
    begin
      Gaji:= 10000000;
      Tunjangan:= 4000000;
    end;
  end

  else if ComboBox1.ItemIndex = 2 then
  begin
    if RadioButton1.Checked = true then
    begin
      Gaji:= 5000000;
      Tunjangan:= 0;
    end
    else if RadioButton2.Checked = true then
    begin
      Gaji:= 7000000;
      Tunjangan:= 1000000;
    end
    else if RadioButton3.Checked = true then
    begin
      Gaji:= 9000000;
      Tunjangan:= 2000000;
    end;
  end

  else if ComboBox1.ItemIndex = 3 then
  begin
    if RadioButton1.Checked = true then
    begin
      Gaji:= 4000000;
      Tunjangan:= 0;
    end
    else if RadioButton2.Checked = true then
    begin
      Gaji:= 5000000;
      Tunjangan:= 500000;
    end
    else if RadioButton3.Checked = true then
    begin
      Gaji:= 6000000;
      Tunjangan:= 1000000;
    end;
  end;


  Edit2.Text:= Format('Rp. %n', [Gaji]);
  Edit3.Text:= Format('Rp. %n', [Tunjangan]);
  Edit4.Text:= Format('Rp. %n', [Gaji+Tunjangan]);
end;

procedure TForm1.RadioButton1Click(Sender: TObject);
begin
  if ComboBox1.ItemIndex = 0 then
  begin
    GTraining:= 10000000;
    TTraining:= 0;
  end

  else if ComboBox1.ItemIndex =1 then
  begin
    GTraining:= 6000000;
    TTraining:= 0;
  end

  else if ComboBox1.ItemIndex = 2 then
  begin
    GTraining:= 5000000;
    TTraining:= 0;
  end

  else if ComboBox1.ItemIndex = 3 then
  begin
    GTraining:= 4000000;
    TTraining:= 0;
  end;

  Edit2.Text:= Format('Rp. %n', [GTraining]);
  Edit3.Text:= Format('Rp. %n', [TTraining]);
  Edit4.Text:= Format('Rp. %n', [GTraining+TTraining]);

end;

procedure TForm1.RadioButton2Click(Sender: TObject);
begin
  if ComboBox1.ItemIndex = 0 then
  begin
    GKontrak:= 15000000;
    TKontrak:= 3000000;
  end

  else if ComboBox1.ItemIndex = 1 then
  begin
    GKontrak:= 8000000;
    TKontrak:= 2000000;
  end

  else if ComboBox1.ItemIndex = 2 then
  begin
    GKontrak:= 7000000;
    TKontrak:= 1000000;
  end

  else if ComboBox1.ItemIndex = 3 then
  begin
    GKontrak:= 5000000;
    TKontrak:= 500000;
  end;

  Edit2.Text:= Format('Rp. %n', [GKontrak]);
  Edit3.Text:= Format('Rp. %n', [TKontrak]);
  Edit4.Text:= Format('Rp. %n', [GKontrak+TKontrak]);
end;

procedure TForm1.RadioButton3Click(Sender: TObject);
begin
  if ComboBox1.ItemIndex = 0 then
  begin
    GTetap:= 20000000;
    TTetap:= 5000000;
  end

  else if ComboBox1.ItemIndex = 1 then
  begin
    GTetap:= 10000000;
    TTetap:= 4000000;
  end

  else if ComboBox1.ItemIndex = 2 then
  begin
    GTetap:= 9000000;
    TTetap:= 2000000;
  end

  else if ComboBox1.ItemIndex = 3 then
  begin
    GTetap:= 6000000;
    TTetap:= 1000000;
  end;

  Edit2.Text:= Format('Rp. %n', [GTetap]);
  Edit3.Text:= Format('Rp. %n', [TTetap]);
  Edit4.Text:= Format('Rp. %n', [GTetap+TTetap]);
end;

end.
