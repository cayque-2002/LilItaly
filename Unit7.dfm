object DataModule7: TDataModule7
  OldCreateOrder = False
  Height = 285
  Width = 627
  object SQLConnection1: TSQLConnection
    ConnectionName = 'FBConnection'
    DriverName = 'Firebird'
    LoginPrompt = False
    Params.Strings = (
      'DriverName=Firebird'
      
        'Database=C:\Users\cayqu\OneDrive\'#193'rea de Trabalho\Little Italy P' +
        'izzaria\LITTLEITALY.FDB'
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
    Top = 48
  end
  object LOGIN: TSimpleDataSet
    Active = True
    Aggregates = <>
    Connection = SQLConnection1
    DataSet.Active = True
    DataSet.CommandText = 'SELECT ID_FUNC, NOME FROM FUNCIONARIOS'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 144
    Top = 8
  end
  object ListaUsuarios: TDataSource
    DataSet = LOGIN
    Left = 208
    Top = 8
  end
  object getClientes: TSimpleDataSet
    Active = True
    Aggregates = <>
    Connection = SQLConnection1
    DataSet.CommandText = 'select ID, NOME from CLIENTES'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 136
    Top = 64
  end
  object srcClientes: TDataSource
    DataSet = getClientes
    Left = 208
    Top = 64
  end
  object getPizzas: TSimpleDataSet
    Active = True
    Aggregates = <>
    Connection = SQLConnection1
    DataSet.CommandText = 'select ID, NOME from PIZZAS'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 136
    Top = 120
  end
  object srcPizzas: TDataSource
    DataSet = getPizzas
    Left = 208
    Top = 112
  end
  object getBebidas: TSimpleDataSet
    Active = True
    Aggregates = <>
    Connection = SQLConnection1
    DataSet.CommandText = 'select ID, NOME from BEBIDAS'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 136
    Top = 176
  end
  object srcBebidas: TDataSource
    DataSet = getBebidas
    Left = 216
    Top = 176
  end
  object INSERTPED: TSimpleDataSet
    Active = True
    Aggregates = <>
    Connection = SQLConnection1
    DataSet.CommandText = 
      'insert into pedidos(cliente, pizza, bebida, endereco_pedido, dat' +
      'a, situacao_pedidos) values(2, 1, 1, '#39'dsahasdhisadhisadih'#39', curr' +
      'ent_timestamp,  '#39'Entregue'#39') returning id'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 296
    Top = 16
  end
  object getPed: TSimpleDataSet
    Aggregates = <>
    Connection = SQLConnection1
    DataSet.CommandText = 'select max(id) from pedidos'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 136
    Top = 232
    object getPedID: TIntegerField
      FieldName = 'ID'
    end
  end
end
