object FRMCadBebes: TFRMCadBebes
  Left = 0
  Top = 0
  Caption = 'Little Italy Pizzaria'
  ClientHeight = 350
  ClientWidth = 447
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -19
  Font.Name = 'Old English Text MT'
  Font.Style = [fsBold, fsItalic]
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 23
  object LbTituloCadBebes: TLabel
    Left = 0
    Top = 0
    Width = 447
    Height = 44
    Align = alTop
    Alignment = taCenter
    Caption = 'Cadastrar Bebida'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -37
    Font.Name = 'Old English Text MT'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
    ExplicitLeft = -2
    ExplicitWidth = 285
  end
  object LbNomeBebida: TLabel
    Left = 8
    Top = 104
    Width = 133
    Height = 26
    Caption = 'Nome Bebida:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Old English Text MT'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
  end
  object LbDescricaoBebida: TLabel
    Left = 46
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
    Left = 83
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
  object EdtNomeBebida: TEdit
    Left = 148
    Top = 103
    Width = 272
    Height = 31
    TabOrder = 0
  end
  object EdtDescricaoBebida: TEdit
    Left = 148
    Top = 159
    Width = 272
    Height = 31
    TabOrder = 1
  end
  object EdtValorBebida: TEdit
    Left = 148
    Top = 215
    Width = 272
    Height = 31
    TabOrder = 2
  end
  object BtnRegistrarBebida: TButton
    Left = 61
    Top = 296
    Width = 92
    Height = 25
    Caption = 'Registrar'
    TabOrder = 3
  end
  object BtnLimparCadBebida: TButton
    Left = 285
    Top = 296
    Width = 92
    Height = 25
    Caption = 'Limpar'
    TabOrder = 4
  end
end
