unit PASSWORD;

interface

uses SysUtils, Classes, Graphics, Forms,
  Controls, StdCtrls, Buttons, Dialogs;

type

  { TPasswordDlg }

  TPasswordDlg = class(TForm)
    Label1: TLabel;
    PASSWORD: TEdit;
    OKBtn: TButton;
    CancelBtn: TButton;
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure CancelBtnClick(Sender: TObject);
    procedure OKBtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PasswordDlg: TPasswordDlg;

implementation

{$R *.dfm}

var quietExit: boolean = true;

procedure TPasswordDlg.CancelBtnClick(Sender: TObject);
begin
    PASSWORD.Text := '';
    quietExit := true;
end;

procedure TPasswordDlg.OKBtnClick(Sender: TObject);
begin
    quietExit := false;
end;

procedure TPasswordDlg.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
const p = 'Талипов С.Н.';
begin
    if PASSWORD.Text = p then begin
      CanClose := true
    end else begin
          if not quietExit then begin
             MessageDlg('Доступ запрещен!', TMsgDlgType.mtError, [mbYes], 0);
          end;
          Application.Minimize;
          Application.Terminate;
    end;
end;

end.
