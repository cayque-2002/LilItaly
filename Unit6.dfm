object FRMPedidosPendentes: TFRMPedidosPendentes
  Left = 0
  Top = 0
  Caption = 'Little Italy Pizzaria'
  ClientHeight = 529
  ClientWidth = 734
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -19
  Font.Name = 'Old English Text MT'
  Font.Style = [fsBold, fsItalic]
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
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
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -19
    TitleFont.Name = 'Old English Text MT'
    TitleFont.Style = [fsBold, fsItalic]
  end
  object BtnEntregaPed: TButton
    Left = 272
    Top = 272
    Width = 169
    Height = 25
    Caption = 'Pedido Entregue'
    TabOrder = 1
    OnClick = BtnEntregaPedClick
  end
  object BtnRelPP: TButton
    Left = 8
    Top = 496
    Width = 241
    Height = 25
    Caption = 'Relat'#243'rio pedidos pendentes'
    TabOrder = 2
    OnClick = BtnRelPPClick
  end
  object frxReport1: TfrxReport
    Version = '5.6.17'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44529.979235740700000000
    ReportOptions.LastChange = 44530.727267465280000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 40
    Top = 320
    Datasets = <
      item
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Height = 60.472480000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Width = 721.890230000000000000
          Height = 49.133890000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -27
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Relat'#243'rio de pedidos n'#227'o entregues/cancelados')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 113.385900000000000000
        Top = 260.787570000000000000
        Width = 718.110700000000000000
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object SysMemo1: TfrxSysMemoView
          Left = 11.338590000000000000
          Top = 15.118120000000000000
          Width = 132.283550000000000000
          Height = 56.692950000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -27
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[(<frxDBDataset1."ID">)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object SysMemo2: TfrxSysMemoView
          Left = 173.858380000000000000
          Top = 11.338590000000000000
          Width = 306.141930000000000000
          Height = 56.692950000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -27
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[(<frxDBDataset1."ENDERECO">)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object SysMemo3: TfrxSysMemoView
          Left = 540.472790000000000000
          Top = 11.338590000000000000
          Width = 113.385900000000000000
          Height = 52.913420000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -27
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[(<frxDBDataset1."STATUS">)]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 98.267780000000000000
        Top = 102.047310000000000000
        Width = 718.110700000000000000
        object Memo3: TfrxMemoView
          Left = 181.417440000000000000
          Top = 15.118120000000000000
          Width = 302.362400000000000000
          Height = 60.472480000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -27
          Font.Name = 'Arial'
          Font.Style = []
          Fill.BackColor = 65529
          HAlign = haCenter
          Memo.UTF8W = (
            'Endere'#231'o')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo2: TfrxMemoView
          Left = 15.118120000000000000
          Top = 15.118120000000000000
          Width = 128.504020000000000000
          Height = 64.252010000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -27
          Font.Name = 'Arial'
          Font.Style = []
          Fill.BackColor = 65529
          HAlign = haCenter
          Memo.UTF8W = (
            'N'#250'mero do pedido')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          Left = 540.472790000000000000
          Top = 15.118120000000000000
          Width = 151.181200000000000000
          Height = 60.472480000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -27
          Font.Name = 'Arial'
          Font.Style = []
          Fill.BackColor = 65529
          HAlign = haCenter
          Memo.UTF8W = (
            'Status Pedido')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Height = 64.252010000000000000
        Top = 396.850650000000000000
        Width = 718.110700000000000000
      end
    end
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    DataSet = dtMod.getPedidosPend
    BCDToCurrency = False
    Left = 40
    Top = 384
  end
  object frxPDFExport1: TfrxPDFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    PrintOptimized = False
    Outline = False
    Background = False
    HTMLTags = True
    Quality = 95
    Transparency = False
    Author = 'FastReport'
    Subject = 'FastReport PDF export'
    ProtectionFlags = [ePrint, eModify, eCopy, eAnnot]
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = False
    PrintScaling = False
    PdfA = False
    Left = 104
    Top = 336
  end
  object frxCSVExport1: TfrxCSVExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    Separator = ';'
    OEMCodepage = False
    UTF8 = False
    NoSysSymbols = True
    ForcedQuotes = False
    Left = 112
    Top = 392
  end
end
