unit Unit1;

interface

uses
  Windows, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, StdCtrls, ExtCtrls, Buttons, ShellAPI;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Image1: TImage;
    Memo1: TMemo;
    SpeedButton1: TSpeedButton;
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses PassWord;

procedure TForm1.Button1Click(Sender: TObject);
begin
  MessageDlg('Благодарим за честное использование нашего продукта!',
    mtInformation, [mbOK], 0);
  close;
end;

procedure TForm1.FormShow(Sender: TObject);
begin
  PasswordDlg.ShowModal;
end;

procedure TForm1.SpeedButton1Click(Sender: TObject);
begin
  ShellExecute(handle, 'open', 'https://github.com/tsnsoft/', nil, nil, SW_SHOW);
end;

end.
