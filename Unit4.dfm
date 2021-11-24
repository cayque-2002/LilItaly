object FRMCadPizza: TFRMCadPizza
  Left = 0
  Top = 0
  Caption = 'Little Italy Pizzaria'
  ClientHeight = 363
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
  object LbTituloCadPizza: TLabel
    Left = 0
    Top = 0
    Width = 447
    Height = 44
    Align = alTop
    Alignment = taCenter
    Caption = 'Cadastrar Pizza'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -37
    Font.Name = 'Old English Text MT'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
    ExplicitWidth = 259
  end
  object LbNomePizza: TLabel
    Left = 16
    Top = 101
    Width = 120
    Height = 26
    Caption = 'Nome Pizza:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Old English Text MT'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
  end
  object LbDescricaoPizza: TLabel
    Left = 16
    Top = 160
    Width = 96
    Height = 26
    Caption = 'Descri'#231#227'o:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Old English Text MT'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
  end
  object LbValorPizza: TLabel
    Left = 16
    Top = 216
    Width = 58
    Height = 26
    Caption = 'Valor:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Old English Text MT'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
  end
  object EdtNomePizza: TEdit
    Left = 142
    Top = 103
    Width = 272
    Height = 28
    TabOrder = 0
  end
  object EdtDescricaoPizza: TEdit
    Left = 142
    Top = 162
    Width = 272
    Height = 28
    TabOrder = 1
  end
  object EdtValorPizza: TEdit
    Left = 142
    Top = 223
    Width = 272
    Height = 28
    TabOrder = 2
  end
  object BtnRegistrarPizza: TButton
    Left = 61
    Top = 296
    Width = 92
    Height = 25
    Caption = 'Registrar'
    TabOrder = 3
  end
  object BtnLimparCadPizza: TButton
    Left = 277
    Top = 296
    Width = 92
    Height = 25
    Caption = 'Limpar'
    TabOrder = 4
  end
end
