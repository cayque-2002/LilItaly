object FRMCadCliente: TFRMCadCliente
  Left = 0
  Top = 0
  Caption = 'Little Italy Pizzaria'
  ClientHeight = 358
  ClientWidth = 788
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Old English Text MT'
  Font.Style = [fsBold, fsItalic]
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 14
  object LbTituloCadCliente: TLabel
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 782
    Height = 57
    Align = alTop
    Alignment = taCenter
    Caption = 'Cadastrar Cliente'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -48
    Font.Name = 'Old English Text MT'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
    ExplicitLeft = -8
    ExplicitTop = 0
    ExplicitWidth = 793
  end
  object LbNome: TLabel
    Left = 24
    Top = 96
    Width = 63
    Height = 26
    Caption = 'Nome:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Old English Text MT'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
  end
  object LbCPFCli: TLabel
    Left = 24
    Top = 144
    Width = 62
    Height = 26
    Caption = 'CPF:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Old English Text MT'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
  end
  object LbEmailCli: TLabel
    Left = 24
    Top = 192
    Width = 70
    Height = 26
    Caption = 'E-mail:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Old English Text MT'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
  end
  object LbTelCli: TLabel
    Left = 24
    Top = 240
    Width = 85
    Height = 26
    Caption = 'Telefone:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Old English Text MT'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
  end
  object LbCadTipoLogr: TLabel
    Left = 446
    Top = 108
    Width = 164
    Height = 26
    Caption = 'Tipo Logradouro:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Old English Text MT'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
  end
  object LbLogr: TLabel
    Left = 398
    Top = 144
    Width = 113
    Height = 26
    Caption = 'Logradouro:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Old English Text MT'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
  end
  object LbNumero: TLabel
    Left = 476
    Top = 176
    Width = 45
    Height = 26
    Caption = 'N'#186
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Old English Text MT'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
  end
  object LbComplemento: TLabel
    Left = 397
    Top = 226
    Width = 124
    Height = 26
    Caption = 'Complemento:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Old English Text MT'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
  end
  object LbCadEnderecoCli: TLabel
    Left = 560
    Top = 83
    Width = 113
    Height = 26
    Caption = 'Endere'#231'os'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Old English Text MT'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
  end
  object LbBairro: TLabel
    Left = 451
    Top = 271
    Width = 70
    Height = 26
    Caption = 'Bairro:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Old English Text MT'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
  end
  object LbCidade: TLabel
    Left = 452
    Top = 306
    Width = 69
    Height = 26
    Caption = 'Cidade:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Old English Text MT'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
  end
  object EdtNomeCli: TEdit
    Left = 93
    Top = 103
    Width = 329
    Height = 22
    TabOrder = 0
  end
  object EdtEmailCli: TEdit
    Left = 100
    Top = 199
    Width = 277
    Height = 22
    TabOrder = 1
  end
  object EdtTipoLogr: TEdit
    Left = 616
    Top = 115
    Width = 111
    Height = 22
    TabOrder = 2
  end
  object EdtLogr: TEdit
    Left = 527
    Top = 151
    Width = 215
    Height = 22
    TabOrder = 3
  end
  object EdtNumero: TEdit
    Left = 527
    Top = 179
    Width = 98
    Height = 22
    TabOrder = 4
  end
  object EdtComplemento: TEdit
    Left = 527
    Top = 232
    Width = 234
    Height = 22
    TabOrder = 5
  end
  object MEdtCPFCli: TMaskEdit
    Left = 93
    Top = 151
    Width = 140
    Height = 22
    EditMask = '000\.000\.000\-00;1;_'
    MaxLength = 14
    TabOrder = 6
    Text = '   .   .   -  '
  end
  object MEdtTel: TMaskEdit
    Left = 115
    Top = 247
    Width = 129
    Height = 22
    EditMask = '!\(99\)00000-0000;1;_'
    MaxLength = 14
    TabOrder = 7
    Text = '(  )     -    '
  end
  object EdtBairro: TEdit
    Left = 527
    Top = 272
    Width = 201
    Height = 22
    TabOrder = 8
  end
  object EdtCidade: TEdit
    Left = 527
    Top = 313
    Width = 201
    Height = 22
    TabOrder = 9
  end
  object BtnCadCli: TButton
    Left = 127
    Top = 306
    Width = 138
    Height = 25
    Caption = 'Cadastrar'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Old English Text MT'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
    TabOrder = 10
  end
end
