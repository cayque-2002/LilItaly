object FrmVenda: TFrmVenda
  Left = 0
  Top = 0
  Caption = 'Little Italy Pizzaria'
  ClientHeight = 572
  ClientWidth = 723
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
  object LbTituloVenda: TLabel
    Left = 0
    Top = 0
    Width = 723
    Height = 44
    Align = alTop
    Alignment = taCenter
    BiDiMode = bdRightToLeft
    Caption = 'Little Italy Pizzaria'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -37
    Font.Name = 'Old English Text MT'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
    ExplicitWidth = 304
  end
  object LbVenda: TLabel
    Left = 256
    Top = 80
    Width = 176
    Height = 32
    Caption = 'Realizar Venda:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Old English Text MT'
    Font.Style = []
    ParentFont = False
  end
  object LbCliente: TLabel
    Left = 115
    Top = 128
    Width = 56
    Height = 23
    Caption = 'Cliente:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Old English Text MT'
    Font.Style = []
    ParentFont = False
  end
  object LbEndereco: TLabel
    Left = 108
    Top = 176
    Width = 71
    Height = 23
    Caption = 'Endere'#231'o:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Old English Text MT'
    Font.Style = []
    ParentFont = False
  end
  object LbPedido: TLabel
    Left = 0
    Top = 224
    Width = 86
    Height = 32
    Caption = 'Pedido:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Old English Text MT'
    Font.Style = []
    ParentFont = False
  end
  object LbPizza: TLabel
    Left = 115
    Top = 231
    Width = 46
    Height = 23
    Caption = 'Pizza:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Old English Text MT'
    Font.Style = []
    ParentFont = False
  end
  object DescricaoPizza: TLabel
    Left = 115
    Top = 327
    Width = 124
    Height = 23
    Caption = 'Descri'#231#227'o Pizza:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Old English Text MT'
    Font.Style = []
    ParentFont = False
  end
  object LbValor: TLabel
    Left = 419
    Top = 231
    Width = 48
    Height = 23
    Caption = 'Valor:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Old English Text MT'
    Font.Style = []
    ParentFont = False
  end
  object Label1: TLabel
    Left = 115
    Top = 281
    Width = 57
    Height = 23
    Caption = 'Bebida:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Old English Text MT'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 419
    Top = 281
    Width = 48
    Height = 23
    Caption = 'Valor:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Old English Text MT'
    Font.Style = []
    ParentFont = False
  end
  object EdtEndereco: TEdit
    Left = 185
    Top = 176
    Width = 400
    Height = 28
    TabOrder = 0
  end
  object Edit1: TEdit
    Left = 245
    Top = 327
    Width = 356
    Height = 28
    TabOrder = 1
  end
  object EdtValorPizza: TEdit
    Left = 473
    Top = 231
    Width = 112
    Height = 28
    TabOrder = 2
  end
  object DBGrid1: TDBGrid
    Left = 24
    Top = 416
    Width = 673
    Height = 120
    TabOrder = 3
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = 'Old English Text MT'
    TitleFont.Style = [fsBold, fsItalic]
  end
  object BtnCli: TButton
    Left = 591
    Top = 130
    Width = 130
    Height = 25
    Caption = 'Cadastrar Cliente'
    TabOrder = 4
  end
  object EdtValorBebida: TEdit
    Left = 473
    Top = 281
    Width = 112
    Height = 28
    TabOrder = 5
  end
  object BtnPizza: TButton
    Left = 591
    Top = 233
    Width = 130
    Height = 25
    Caption = 'Cadastrar Pizza'
    TabOrder = 6
  end
  object BtnBebida: TButton
    Left = 591
    Top = 283
    Width = 130
    Height = 25
    Caption = 'Cadastrar Bebes'
    TabOrder = 7
  end
  object Button1: TButton
    Left = 24
    Top = 385
    Width = 290
    Height = 25
    Caption = 'Adicionar ao Pedido'
    TabOrder = 8
  end
  object BtnRegPed: TButton
    Left = 400
    Top = 385
    Width = 290
    Height = 25
    Caption = 'Registrar Pedido'
    TabOrder = 9
  end
  object cmbCliente: TDBLookupComboBox
    Left = 177
    Top = 130
    Width = 408
    Height = 28
    KeyField = 'ID'
    ListField = 'NOME'
    ListSource = DataModule7.srcClientes
    TabOrder = 10
  end
  object cmbPizza: TDBLookupComboBox
    Left = 185
    Top = 233
    Width = 208
    Height = 28
    KeyField = 'ID'
    ListField = 'NOME'
    ListSource = DataModule7.srcPizzas
    TabOrder = 11
  end
  object CBoxBebida: TDBLookupComboBox
    Left = 185
    Top = 281
    Width = 208
    Height = 28
    KeyField = 'ID'
    ListField = 'NOME'
    ListSource = DataModule7.srcBebidas
    TabOrder = 12
    OnMouseActivate = CBoxBebidaMouseActivate
  end
end
