object DM: TDM
  OldCreateOrder = False
  Left = 192
  Top = 125
  Height = 496
  Width = 627
  object DBConexao: TIBDatabase
    Connected = True
    DatabaseName = '127.0.0.1/3064:E:\Delphi\DB\SYSMERCADO.GDB'
    Params.Strings = (
      'user_name=SYSDBA'
      'password=masterkey')
    LoginPrompt = False
    IdleTimer = 0
    SQLDialect = 3
    TraceFlags = []
    Left = 264
    Top = 64
  end
  object IBTransact: TIBTransaction
    Active = True
    DefaultDatabase = DBConexao
    AutoStopAction = saNone
    Left = 392
    Top = 72
  end
  object IBQuery: TIBQuery
    Database = DBConexao
    Transaction = IBTransact
    Active = True
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'select ADMINISTRADOR, CARGO, CHAVE_FUNCIONARIOS, CPF, LOGIN, NOM' +
        'E from FUNCIONARIOS')
    Left = 144
    Top = 88
  end
end
