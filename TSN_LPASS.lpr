program TSN_LPASS;

{$MODE Delphi}

uses
  Forms, Interfaces,
  Unit1 in 'Unit1.pas' {Form1},
  PassWord in 'PassWord.pas' {PasswordDlg};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TPasswordDlg, PasswordDlg);
  Application.Run;
end.
