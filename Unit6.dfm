object FRMPedidosPendentes: TFRMPedidosPendentes
  Left = 0
  Top = 0
  Caption = 'Little Italy Pizzaria'
  ClientHeight = 506
  ClientWidth = 734
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
    Width = 734
    Height = 44
    Align = alTop
    Alignment = taCenter
    Caption = 'Pedidos Pendentes'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -37
    Font.Name = 'Old English Text MT'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
    ExplicitWidth = 308
  end
  object DBGPedidosPend: TDBGrid
    Left = 48
    Top = 80
    Width = 665
    Height = 169
    DataSource = dtMod.Pedidos
    TabOrder = 0
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -19
    TitleFont.Name = 'Old English Text MT'
    TitleFont.Style = [fsBold, fsItalic]
  end
  object Button1: TButton
    Left = 272
    Top = 272
    Width = 169
    Height = 25
    Caption = 'Pedido Entregue'
    TabOrder = 1
    OnClick = Button1Click
  end
end
