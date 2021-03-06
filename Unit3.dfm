object FRMCadCliente: TFRMCadCliente
  Left = 0
  Top = 0
  Caption = 'Little Italy Pizzaria'
  ClientHeight = 450
  ClientWidth = 883
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Old English Text MT'
  Font.Style = [fsBold, fsItalic]
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object LbTituloCadCliente: TLabel
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 877
    Height = 55
    Align = alTop
    Alignment = taCenter
    Caption = 'Cadastrar Cliente'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -48
    Font.Name = 'Old English Text MT'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
    ExplicitWidth = 399
  end
  object LbNome: TLabel
    Left = 24
    Top = 88
    Width = 67
    Height = 24
    Caption = 'Nome:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Old English Text MT'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
  end
  object LbCPFCli: TLabel
    Left = 301
    Top = 88
    Width = 49
    Height = 24
    Caption = 'CPF:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Old English Text MT'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
  end
  object LbTelCli: TLabel
    Left = 444
    Top = 88
    Width = 94
    Height = 24
    Caption = 'Telefone:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Old English Text MT'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
  end
  object Label1: TLabel
    Left = 24
    Top = 145
    Width = 104
    Height = 24
    Caption = 'Endere'#231'o:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Old English Text MT'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
  end
  object txtNome: TEdit
    Left = 24
    Top = 118
    Width = 265
    Height = 21
    TabOrder = 0
  end
  object txtDocumento: TMaskEdit
    Left = 301
    Top = 118
    Width = 121
    Height = 21
    EditMask = '000\.000\.000\-00;1;_'
    MaxLength = 14
    TabOrder = 1
    Text = '   .   .   -  '
  end
  object txtTelefone: TMaskEdit
    Left = 444
    Top = 118
    Width = 117
    Height = 21
    EditMask = '!\(99\)00000-0000;1;_'
    MaxLength = 14
    TabOrder = 2
    Text = '(  )     -    '
  end
  object gridClientes: TDBGrid
    Left = 24
    Top = 224
    Width = 835
    Height = 201
    DataSource = dtMod.srcClientes
    ReadOnly = True
    TabOrder = 3
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Old English Text MT'
    TitleFont.Style = [fsBold, fsItalic]
  end
  object idEdit: TEdit
    Left = 24
    Top = 61
    Width = 129
    Height = 21
    TabOrder = 4
    Text = '0'
    Visible = False
  end
  object btnAlterar: TButton
    Left = 730
    Top = 143
    Width = 129
    Height = 36
    Caption = 'Alterar'
    TabOrder = 5
    OnClick = btnAlterarClick
  end
  object btnCadastrar: TButton
    Left = 579
    Top = 143
    Width = 129
    Height = 36
    Caption = 'Cadastrar'
    TabOrder = 6
    OnClick = btnCadastrarClick
  end
  object txtEndereco: TEdit
    Left = 24
    Top = 173
    Width = 537
    Height = 21
    TabOrder = 7
  end
end
