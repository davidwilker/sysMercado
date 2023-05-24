object formCadFuncionarios: TformCadFuncionarios
  Left = 189
  Top = 124
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Cadastro de Funcion'#225'rios'
  ClientHeight = 426
  ClientWidth = 815
  Color = clWindow
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object gpPessoa: TGroupBox
    Left = 16
    Top = 64
    Width = 784
    Height = 353
    Caption = 'Cadastro Funcion'#225'rios'
    TabOrder = 0
    object Label2: TLabel
      Left = 71
      Top = 50
      Width = 32
      Height = 13
      Caption = 'Login'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 325
      Top = 51
      Width = 34
      Height = 13
      Caption = 'Cargo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 66
      Top = 77
      Width = 37
      Height = 13
      Caption = 'Senha'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label8: TLabel
      Left = 315
      Top = 77
      Width = 94
      Height = 13
      Caption = 'Confirmar Senha'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label11: TLabel
      Left = 80
      Top = 24
      Width = 24
      Height = 13
      Caption = 'CPF'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label12: TLabel
      Left = 264
      Top = 24
      Width = 33
      Height = 13
      Caption = 'Nome'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object editLogin: TEdit
      Left = 111
      Top = 47
      Width = 197
      Height = 21
      Color = cl3DLight
      ReadOnly = True
      TabOrder = 2
    end
    object editCargo: TEdit
      Left = 368
      Top = 47
      Width = 249
      Height = 21
      Color = cl3DLight
      ReadOnly = True
      TabOrder = 3
    end
    object editSenha: TEdit
      Left = 111
      Top = 75
      Width = 197
      Height = 21
      Color = cl3DLight
      ReadOnly = True
      TabOrder = 4
    end
    object editConfirmaSenha: TEdit
      Left = 415
      Top = 75
      Width = 202
      Height = 21
      Color = cl3DLight
      ReadOnly = True
      TabOrder = 5
    end
    object dbgFuncionarios: TDBGrid
      Left = 0
      Top = 112
      Width = 783
      Height = 241
      DataSource = dsFuncionarios
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 7
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDblClick = dbgFuncionariosDblClick
      Columns = <
        item
          Expanded = False
          FieldName = 'CPF'
          Width = 77
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOME'
          Width = 275
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'LOGIN'
          Width = 164
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CARGO'
          Width = 138
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ADMINISTRADOR'
          Width = 108
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CHAVE_FUNCIONARIOS'
          Visible = True
        end>
    end
    object chxAdministrador: TCheckBox
      Left = 672
      Top = 48
      Width = 97
      Height = 17
      Caption = 'Administrador'
      Enabled = False
      TabOrder = 6
    end
    object editCpf: TMaskEdit
      Left = 112
      Top = 20
      Width = 109
      Height = 21
      Color = cl3DLight
      EditMask = '000\.000\.000\-00;0;_'
      MaxLength = 14
      ReadOnly = True
      TabOrder = 0
    end
    object editNome: TEdit
      Left = 304
      Top = 20
      Width = 464
      Height = 21
      CharCase = ecUpperCase
      Color = cl3DLight
      ReadOnly = True
      TabOrder = 1
    end
  end
  object Panel1: TPanel
    Left = 16
    Top = 11
    Width = 785
    Height = 49
    BevelOuter = bvNone
    Color = 10484994
    TabOrder = 1
    object btnGravar: TSpeedButton
      Left = 16
      Top = 12
      Width = 56
      Height = 25
      Caption = 'Gravar'
      Enabled = False
    end
    object btnAlterar: TSpeedButton
      Left = 83
      Top = 12
      Width = 56
      Height = 25
      Caption = 'Alterar'
      Enabled = False
      OnClick = btnAlterarClick
    end
    object btnExcluir: TSpeedButton
      Left = 150
      Top = 12
      Width = 56
      Height = 25
      Caption = 'Excluir'
      Enabled = False
    end
    object btnCancelar: TSpeedButton
      Left = 217
      Top = 12
      Width = 56
      Height = 25
      Caption = 'Cancelar'
      Enabled = False
      OnClick = btnCancelarClick
    end
    object lblChaveFuncionarios: TLabel
      Left = 360
      Top = 24
      Width = 3
      Height = 13
      Visible = False
    end
  end
  object IBQFuncionarios: TIBQuery
    Database = DM.DBConexao
    Transaction = DM.IBTransact
    Active = True
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'select ADMINISTRADOR, CARGO, CHAVE_FUNCIONARIOS, CPF, LOGIN, NOM' +
        'E, SENHA from FUNCIONARIOS')
    Left = 744
    Top = 17
  end
  object dsFuncionarios: TDataSource
    DataSet = IBQFuncionarios
    Left = 709
    Top = 17
  end
end
