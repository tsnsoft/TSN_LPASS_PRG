object PasswordDlg: TPasswordDlg
  Left = 344
  Height = 93
  Top = 152
  Width = 233
  BorderStyle = bsDialog
  Caption = 'Введите код доступа в систему'
  ClientHeight = 93
  ClientWidth = 233
  Color = clRed
  OnCloseQuery = FormCloseQuery
  ParentFont = True
  Position = poScreenCenter
  LCLVersion = '2.2.6.0'
  object Label1: TLabel
    Left = 80
    Height = 17
    Top = 0
    Width = 76
    Caption = 'Ваш пароль:'
    Font.Color = clYellow
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = [fsUnderline]
    ParentColor = False
    ParentFont = False
  end
  object Password: TEdit
    Left = 8
    Height = 23
    Top = 24
    Width = 217
    EchoMode = emPassword
    PasswordChar = '*'
    TabOrder = 0
  end
  object OKBtn: TButton
    Left = 22
    Height = 25
    Top = 60
    Width = 75
    Caption = 'OK'
    Default = True
    ModalResult = 1
    OnClick = OKBtnClick
    TabOrder = 1
  end
  object CancelBtn: TButton
    Left = 126
    Height = 25
    Top = 60
    Width = 75
    Cancel = True
    Caption = 'Выход'
    ModalResult = 2
    OnClick = CancelBtnClick
    TabOrder = 2
  end
end
