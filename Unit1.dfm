object FRMLogin: TFRMLogin
  Left = 0
  Top = 0
  Caption = 'Little Italy Pizzaria'
  ClientHeight = 201
  ClientWidth = 447
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Old English Text MT'
  Font.Style = [fsBold, fsItalic]
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 20
  object LbLogin: TLabel
    Left = 121
    Top = 72
    Width = 50
    Height = 20
    Caption = 'Login:'
  end
  object LbTitulo: TLabel
    Left = 0
    Top = 0
    Width = 447
    Height = 38
    Align = alTop
    Alignment = taCenter
    Caption = 'Little Italy Pizzaria'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -32
    Font.Name = 'Old English Text MT'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
    Layout = tlCenter
    ExplicitWidth = 284
  end
  object BtnLogin: TButton
    Left = 96
    Top = 152
    Width = 75
    Height = 25
    Caption = 'Logar'
    TabOrder = 0
    OnClick = BtnLoginClick
  end
  object BtnSair: TButton
    Left = 320
    Top = 152
    Width = 75
    Height = 25
    Caption = 'Sair'
    TabOrder = 1
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 177
    Top = 72
    Width = 145
    Height = 28
    KeyField = 'ID_FUNC'
    ListField = 'NOME'
    ListSource = DataModule7.ListaUsuarios
    TabOrder = 2
  end
end
