object dtMod: TdtMod
  OldCreateOrder = False
  Height = 398
  Width = 627
  object SQLConnection1: TSQLConnection
    ConnectionName = 'FBConnection'
    DriverName = 'Firebird'
    LoginPrompt = False
    Params.Strings = (
      'DriverName=Firebird'
      'Database=C:\xampp\htdocs\LilItaly\lilitaly.FDB'
      'RoleName=RoleName'
      'User_Name=sysdba'
      'Password=masterkey'
      'ServerCharSet='
      'SQLDialect=3'
      'ErrorResourceFile='
      'LocaleCode=0000'
      'BlobSize=-1'
      'CommitRetain=False'
      'WaitOnLocks=True'
      'IsolationLevel=ReadCommitted'
      'Trim Char=False')
    Connected = True
    Left = 48
    Top = 24
  end
  object getVendedores: TSimpleDataSet
    Active = True
    Aggregates = <>
    Connection = SQLConnection1
    DataSet.CommandText = 'SELECT ID, NOME FROM VENDEDORES'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 192
    Top = 120
  end
  object ListaUsuarios: TDataSource
    DataSet = getVendedores
    Left = 192
    Top = 176
  end
  object getClientes: TSimpleDataSet
    Active = True
    Aggregates = <>
    Connection = SQLConnection1
    DataSet.CommandText = 'SELECT * FROM CLIENTES'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 568
    Top = 96
    object getClientesID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object getClientesNOME: TStringField
      FieldName = 'NOME'
      Required = True
      Size = 100
    end
    object getClientesTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Required = True
      Size = 14
    end
    object getClientesDOCUMENTO: TStringField
      FieldName = 'DOCUMENTO'
      Required = True
      Size = 14
    end
    object getClientesENDERECO: TStringField
      FieldName = 'ENDERECO'
      Required = True
      Size = 255
    end
  end
  object srcClientes: TDataSource
    DataSet = getClientes
    Left = 568
    Top = 264
  end
  object InsertPedido: TSimpleDataSet
    Aggregates = <>
    Connection = SQLConnection1
    DataSet.CommandText = 
      'INSERT INTO PEDIDO (CLIENTE_ID, VENDEDOR_ID, ENDERECO) VALUES (:' +
      'PAR_CLIENTE, :PAR_VENDEDOR, :PAR_ENDERECO) RETURNING ID'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <
      item
        DataType = ftUnknown
        Name = 'PAR_CLIENTE'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'PAR_VENDEDOR'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'PAR_ENDERECO'
        ParamType = ptInput
      end>
    Params = <>
    Left = 32
    Top = 128
  end
  object getUltimoPedido: TSimpleDataSet
    Aggregates = <>
    Connection = SQLConnection1
    DataSet.CommandText = 'SELECT MAX(ID) AS ID FROM PEDIDO'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 32
    Top = 192
    object getUltimoPedidoID: TIntegerField
      FieldName = 'ID'
    end
  end
  object InsertCliente: TSimpleDataSet
    Aggregates = <>
    Connection = SQLConnection1
    DataSet.CommandText = 
      'INSERT INTO CLIENTES (NOME, DOCUMENTO, TELEFONE, ENDERECO)'#13#10'VALU' +
      'ES(:PAR_NOME, :PAR_DOCTO, :PAR_TELEFONE, :PAR_ENDERECO)'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <
      item
        DataType = ftUnknown
        Name = 'PAR_NOME'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'PAR_DOCTO'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'PAR_TELEFONE'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'PAR_ENDERECO'
        ParamType = ptInput
      end>
    Params = <>
    Left = 568
    Top = 152
  end
  object UpdateCliente: TSimpleDataSet
    Aggregates = <>
    Connection = SQLConnection1
    DataSet.CommandText = 
      'UPDATE CLIENTES SET NOME = :PAR_NOME, DOCUMENTO = :PAR_DOCTO, TE' +
      'LEFONE = :PAR_TELEFONE, ENDERECO = :PAR_ENDERECO WHERE ID = :PAR' +
      '_ID'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <
      item
        DataType = ftString
        Name = 'PAR_NOME'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'PAR_DOCTO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'PAR_TELEFONE'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'PAR_ENDERECO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'PAR_ID'
        ParamType = ptInput
      end>
    Params = <>
    Left = 568
    Top = 208
    object IntegerField2: TIntegerField
      FieldName = 'ID'
    end
  end
  object getCliente: TSimpleDataSet
    Aggregates = <>
    Connection = SQLConnection1
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 568
    Top = 40
    object IntegerField3: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object StringField1: TStringField
      FieldName = 'NOME'
      Required = True
      Size = 100
    end
    object StringField2: TStringField
      FieldName = 'TELEFONE'
      Required = True
      Size = 14
    end
    object StringField3: TStringField
      FieldName = 'DOCUMENTO'
      Required = True
      Size = 14
    end
    object StringField4: TStringField
      FieldName = 'ENDERECO'
      Required = True
      Size = 255
    end
  end
  object getProdutos: TSimpleDataSet
    Aggregates = <>
    Connection = SQLConnection1
    DataSet.CommandText = 'SELECT * FROM PRODUTOS'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 488
    Top = 96
    object getProdutosID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object getProdutosNOME: TStringField
      FieldName = 'NOME'
      Required = True
      Size = 100
    end
    object getProdutosVALOR: TFMTBCDField
      FieldName = 'VALOR'
      Required = True
      Precision = 18
      Size = 2
    end
  end
  object srcProdutos: TDataSource
    DataSet = getProdutos
    Left = 488
    Top = 152
  end
  object getProduto: TSimpleDataSet
    Aggregates = <>
    Connection = SQLConnection1
    DataSet.CommandText = 'SELECT * FROM PRODUTOS WHERE ID = :PAR_ID'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <
      item
        DataType = ftInteger
        Name = 'PAR_ID'
        ParamType = ptInput
      end>
    Params = <>
    Left = 488
    Top = 33
    object getProdutoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object getProdutoNOME: TStringField
      FieldName = 'NOME'
      Required = True
      Size = 100
    end
    object getProdutoVALOR: TFMTBCDField
      FieldName = 'VALOR'
      Required = True
      Precision = 18
      Size = 2
    end
  end
  object getProdutosCarrinho: TSimpleDataSet
    Aggregates = <>
    Connection = SQLConnection1
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 408
    Top = 56
  end
  object srcProdutosPedido: TDataSource
    DataSet = getProdutosCarrinho
    Left = 408
    Top = 320
  end
  object insertProdutoCarrinho: TSimpleDataSet
    Aggregates = <>
    Connection = SQLConnection1
    DataSet.CommandText = 
      'INSERT INTO ITENS_PEDIDO (PEDIDO_ID, PRODUTO_ID, VALOR, QUANTIDA' +
      'DE, OBSERVACAO)'#13#10'VALUES (:PAR_PEDIDO, :PAR_PRODUTO, :PAR_VALOR, ' +
      ':PAR_QTD, :PAR_OBS)'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <
      item
        DataType = ftUnknown
        Name = 'PAR_PEDIDO'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'PAR_PRODUTO'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'PAR_VALOR'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'PAR_QTD'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'PAR_OBS'
        ParamType = ptInput
      end>
    Params = <>
    Left = 408
    Top = 128
  end
  object getTotalPedido: TSimpleDataSet
    Aggregates = <>
    Connection = SQLConnection1
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 408
    Top = 192
    object getTotalPedidoTOTAL: TFMTBCDField
      FieldName = 'TOTAL'
      Precision = 18
      Size = 2
    end
  end
  object deleteProdutoPedido: TSimpleDataSet
    Aggregates = <>
    Connection = SQLConnection1
    DataSet.CommandText = 'DELETE FROM ITENS_PEDIDO WHERE ID = :PAR_ITEM'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <
      item
        DataType = ftInteger
        Name = 'PAR_ITEM'
        ParamType = ptInput
      end>
    Params = <>
    Left = 408
    Top = 248
    object FMTBCDField1: TFMTBCDField
      FieldName = 'TOTAL'
      Precision = 18
      Size = 2
    end
  end
  object updateStatusPedido: TSimpleDataSet
    Aggregates = <>
    Connection = SQLConnection1
    DataSet.CommandText = 'UPDATE PEDIDO SET STATUS = :PAR_STATUS WHERE ID = :PAR_PEDIDO_ID'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <
      item
        DataType = ftSmallint
        Name = 'PAR_STATUS'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'PAR_PEDIDO_ID'
        ParamType = ptInput
      end>
    Params = <>
    Left = 24
    Top = 256
  end
end
