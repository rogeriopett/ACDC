object FormUsuariosAcessosAtualizar: TFormUsuariosAcessosAtualizar
  Left = 514
  Top = 57
  BorderIcons = [biSystemMenu]
  BorderStyle = bsNone
  Caption = 'Atualizando lista de controle de acessos'
  ClientHeight = 105
  ClientWidth = 393
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  Position = poScreenCenter
  OnActivate = FormActivate
  OnCreate = FormCreate
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 393
    Height = 105
    BevelInner = bvRaised
    BorderWidth = 2
    TabOrder = 0
    object Label1: TLabel
      Left = 12
      Top = 44
      Width = 130
      Height = 13
      Caption = 'Inserindo novos controles...'
    end
    object Label2: TLabel
      Left = 12
      Top = 14
      Width = 198
      Height = 13
      Caption = 'Atualizando lista de controle de acessos...'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object ProgressBar1: TProgressBar
      Left = 10
      Top = 59
      Width = 374
      Height = 13
      Position = 50
      Step = 1
      TabOrder = 0
    end
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 500
    OnTimer = Timer1Timer
    Left = 288
    Top = 8
  end
  object QYComponentes: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TRComponentes
    SQL.Strings = (
      'select * from COMPONENTES'
      'where COM_TELA=:tela and COM_COMPONENTE=:componente'
      '')
    Left = 136
    Top = 8
    ParamData = <
      item
        Name = 'TELA'
        DataType = ftString
        ParamType = ptInput
        Size = 50
      end
      item
        Name = 'COMPONENTE'
        DataType = ftString
        ParamType = ptInput
        Size = 120
      end>
    object QYComponentesCOM_COMPONENTE: TStringField
      FieldName = 'COM_COMPONENTE'
      Origin = 'COM_COMPONENTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 120
    end
    object QYComponentesCOM_DESCRICAO: TStringField
      FieldName = 'COM_DESCRICAO'
      Origin = 'COM_DESCRICAO'
      Size = 120
    end
    object QYComponentesCOM_TELA: TStringField
      FieldName = 'COM_TELA'
      Origin = 'COM_TELA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 50
    end
    object QYComponentesCOM_TIPO: TStringField
      FieldName = 'COM_TIPO'
      Origin = 'COM_TIPO'
      Size = 80
    end
  end
  object TRComponentes: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 136
    Top = 56
  end
  object TRAcessos: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 216
    Top = 56
  end
  object QYAcessos: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TRAcessos
    SQL.Strings = (
      'select * from ACESSOS'
      '')
    Left = 216
    Top = 8
  end
end
