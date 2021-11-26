object FrmVenda: TFrmVenda
  Left = 0
  Top = 0
  Caption = 'Little Italy Pizzaria'
  ClientHeight = 705
  ClientWidth = 780
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
    Width = 780
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
    Left = 314
    Top = 102
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
    Left = 155
    Top = 152
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
    Left = 148
    Top = 200
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
    Left = 48
    Top = 145
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
    Top = 319
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
    Top = 471
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
    Top = 319
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
    Top = 425
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
    Top = 425
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
  object LbLogin: TLabel
    Left = 0
    Top = 102
    Width = 72
    Height = 20
    Caption = 'Vendedor:'
  end
  object Image1: TImage
    Left = 624
    Top = 300
    Width = 105
    Height = 85
  end
  object Image2: TImage
    Left = 624
    Top = 414
    Width = 105
    Height = 85
  end
  object EdtEndereco: TEdit
    Left = 225
    Top = 200
    Width = 400
    Height = 28
    TabOrder = 0
  end
  object Edit1: TEdit
    Left = 245
    Top = 471
    Width = 356
    Height = 28
    TabOrder = 1
  end
  object EdtValorPizza: TEdit
    Left = 473
    Top = 319
    Width = 112
    Height = 28
    TabOrder = 2
  end
  object DBGrid1: TDBGrid
    Left = 24
    Top = 568
    Width = 729
    Height = 120
    TabOrder = 3
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = 'Old English Text MT'
    TitleFont.Style = [fsBold, fsItalic]
  end
  object EdtValorBebida: TEdit
    Left = 473
    Top = 425
    Width = 112
    Height = 28
    TabOrder = 4
  end
  object Button1: TButton
    Left = 24
    Top = 529
    Width = 290
    Height = 25
    Caption = 'Adicionar ao Pedido'
    TabOrder = 5
  end
  object BtnRegPed: TButton
    Left = 456
    Top = 529
    Width = 290
    Height = 25
    Caption = 'Registrar Pedido'
    TabOrder = 6
    OnClick = BtnRegPedClick
  end
  object cmbCliente: TDBLookupComboBox
    Left = 217
    Top = 154
    Width = 408
    Height = 28
    KeyField = 'ID'
    ListField = 'NOME'
    ListSource = DataModule7.srcClientes
    TabOrder = 7
  end
  object CBoxPizza: TDBLookupComboBox
    Left = 185
    Top = 321
    Width = 208
    Height = 28
    KeyField = 'ID'
    ListField = 'NOME'
    ListSource = DataModule7.srcPizzas
    TabOrder = 8
    OnClick = CBoxPizzaClick
  end
  object CBoxBebida: TDBLookupComboBox
    Left = 185
    Top = 425
    Width = 208
    Height = 28
    KeyField = 'ID'
    ListField = 'NOME'
    ListSource = DataModule7.srcBebidas
    TabOrder = 9
    OnClick = CBoxBebidaClick
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 78
    Top = 102
    Width = 145
    Height = 28
    KeyField = 'ID_FUNC'
    ListField = 'NOME'
    ListSource = DataModule7.ListaUsuarios
    TabOrder = 10
  end
  object ToolBar1: TToolBar
    Left = 0
    Top = 44
    Width = 780
    Height = 37
    ButtonHeight = 41
    ButtonWidth = 72
    Caption = 'ToolBar1'
    TabOrder = 11
    object TBtnCadCli: TToolButton
      Left = 0
      Top = 0
      Caption = 'TBtnCadCli'
      ImageIndex = 0
      OnClick = TBtnCadCliClick
    end
    object TBtnCadPizza: TToolButton
      Left = 72
      Top = 0
      Caption = 'TBtnCadPizza'
      ImageIndex = 1
      OnClick = TBtnCadPizzaClick
    end
    object TBtnCadBebes: TToolButton
      Left = 144
      Top = 0
      Caption = 'TBtnCadBebes'
      ImageIndex = 2
      OnClick = TBtnCadBebesClick
    end
  end
  object EDTIDPED: TEdit
    Left = 176
    Top = 272
    Width = 121
    Height = 28
    TabOrder = 12
    Text = 'EDTIDPED'
  end
end
