object FormTurmasLoc: TFormTurmasLoc
  Left = 191
  Top = 114
  BorderIcons = [biSystemMenu]
  Caption = 'Localizar Turmas'
  ClientHeight = 360
  ClientWidth = 864
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  DesignSize = (
    864
    360)
  TextHeight = 13
  object Label1: TLabel
    Left = 170
    Top = 18
    Width = 36
    Height = 13
    Caption = 'C'#243'digo:'
  end
  object Label2: TLabel
    Left = 242
    Top = 18
    Width = 51
    Height = 13
    Caption = 'Descri'#231#227'o:'
  end
  object Label3: TLabel
    Left = 498
    Top = 18
    Width = 47
    Height = 13
    Caption = 'Professor:'
  end
  object Label7: TLabel
    Left = 682
    Top = 18
    Width = 33
    Height = 13
    Caption = 'Status:'
  end
  object Label4: TLabel
    Left = 426
    Top = 18
    Width = 50
    Height = 13
    Caption = 'C'#243'd. Prof.:'
  end
  object Label5: TLabel
    Left = 10
    Top = 18
    Width = 56
    Height = 13
    Caption = 'Data Inicial:'
  end
  object Label6: TLabel
    Left = 90
    Top = 18
    Width = 51
    Height = 13
    Caption = 'Data Final:'
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 68
    Width = 849
    Height = 285
    Anchors = [akLeft, akTop, akRight, akBottom]
    DataSource = DSTurmas
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    PopupMenu = PopupMenu1
    ReadOnly = True
    TabOrder = 7
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = DBGrid1DblClick
    OnKeyPress = DBGrid1KeyPress
    Columns = <
      item
        Expanded = False
        FieldName = 'TUR_CODIGO'
        Title.Caption = 'C'#243'digo'
        Width = 46
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TUR_DESCRICAO'
        Title.Caption = 'Descri'#231#227'o'
        Width = 168
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VEN_NOME'
        Title.Caption = 'Professor'
        Width = 216
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TUR_DTINICIO'
        Title.Caption = 'In'#237'cio'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TUR_DTTERMINO'
        Title.Caption = 'T'#233'rmino'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TUR_STATUS'
        Title.Caption = 'Status'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TUR_ENCONTROS'
        Title.Caption = 'N'#186' Enc.'
        Width = 40
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TUR_SEGUNDA'
        Title.Caption = 'Seg'
        Width = 24
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TUR_TERCA'
        Title.Caption = 'Ter'
        Width = 24
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TUR_QUARTA'
        Title.Caption = 'Qua'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TUR_QUINTA'
        Title.Caption = 'Qui'
        Width = 24
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TUR_SEXTA'
        Title.Caption = 'Sex'
        Width = 24
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TUR_SABADO'
        Title.Caption = 'Sab'
        Width = 24
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TUR_DOMINGO'
        Title.Caption = 'Dom'
        Visible = True
      end>
  end
  object Edit1: TEdit
    Left = 168
    Top = 32
    Width = 65
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 2
    OnKeyPress = Edit1KeyPress
  end
  object Edit2: TEdit
    Left = 240
    Top = 32
    Width = 177
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 3
    OnKeyPress = Edit2KeyPress
  end
  object Edit3: TEdit
    Left = 496
    Top = 32
    Width = 177
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 5
    OnKeyPress = Edit3KeyPress
  end
  object ComboBox1: TComboBox
    Left = 680
    Top = 32
    Width = 105
    Height = 21
    Style = csDropDownList
    TabOrder = 6
    Items.Strings = (
      'TODAS'
      'ABERTAS'
      'BAIXADAS')
  end
  object Edit4: TEdit
    Left = 424
    Top = 32
    Width = 65
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 4
    OnKeyPress = Edit4KeyPress
  end
  object MaskEdit1: TMaskEdit
    Left = 8
    Top = 32
    Width = 73
    Height = 21
    EditMask = '!99/99/9999;1;_'
    MaxLength = 10
    TabOrder = 0
    Text = '  /  /    '
  end
  object MaskEdit2: TMaskEdit
    Left = 88
    Top = 32
    Width = 73
    Height = 21
    EditMask = '!99/99/9999;1;_'
    MaxLength = 10
    TabOrder = 1
    Text = '  /  /    '
  end
  object DSTurmas: TDataSource
    DataSet = QYTurmas
    Left = 128
    Top = 120
  end
  object PopupMenu1: TPopupMenu
    Left = 352
    Top = 120
    object RestaurarVisualizacaoOriginal1: TMenuItem
      Caption = 'Restaurar Visualiza'#231#227'o Original'
      OnClick = RestaurarVisualizacaoOriginal1Click
    end
  end
  object QYTurmas: TFDQuery
    Connection = DM.FDConnection1
    Transaction = TRTurmas
    SQL.Strings = (
      'select * from TURMAS'
      'left join VENDEDORES on TUR_PROFESSOR=VEN_CODIGO'
      '')
    Left = 200
    Top = 120
    object QYTurmasTUR_CODIGO: TIntegerField
      FieldName = 'TUR_CODIGO'
      Origin = 'TUR_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QYTurmasTUR_DESCRICAO: TStringField
      FieldName = 'TUR_DESCRICAO'
      Origin = 'TUR_DESCRICAO'
      Size = 50
    end
    object QYTurmasTUR_DOMINGO: TStringField
      FieldName = 'TUR_DOMINGO'
      Origin = 'TUR_DOMINGO'
      Size = 1
    end
    object QYTurmasTUR_DTATUALIZACAO: TDateField
      FieldName = 'TUR_DTATUALIZACAO'
      Origin = 'TUR_DTATUALIZACAO'
    end
    object QYTurmasTUR_DTCADASTRO: TDateField
      FieldName = 'TUR_DTCADASTRO'
      Origin = 'TUR_DTCADASTRO'
    end
    object QYTurmasTUR_DTINICIO: TDateField
      FieldName = 'TUR_DTINICIO'
      Origin = 'TUR_DTINICIO'
    end
    object QYTurmasTUR_DTTERMINO: TDateField
      FieldName = 'TUR_DTTERMINO'
      Origin = 'TUR_DTTERMINO'
    end
    object QYTurmasTUR_ENCONTROS: TIntegerField
      FieldName = 'TUR_ENCONTROS'
      Origin = 'TUR_ENCONTROS'
    end
    object QYTurmasTUR_PROFESSOR: TIntegerField
      FieldName = 'TUR_PROFESSOR'
      Origin = 'TUR_PROFESSOR'
      Required = True
    end
    object QYTurmasTUR_QUARTA: TStringField
      FieldName = 'TUR_QUARTA'
      Origin = 'TUR_QUARTA'
      Size = 1
    end
    object QYTurmasTUR_QUINTA: TStringField
      FieldName = 'TUR_QUINTA'
      Origin = 'TUR_QUINTA'
      Size = 1
    end
    object QYTurmasTUR_SABADO: TStringField
      FieldName = 'TUR_SABADO'
      Origin = 'TUR_SABADO'
      Size = 1
    end
    object QYTurmasTUR_SEGUNDA: TStringField
      FieldName = 'TUR_SEGUNDA'
      Origin = 'TUR_SEGUNDA'
      Size = 1
    end
    object QYTurmasTUR_SEXTA: TStringField
      FieldName = 'TUR_SEXTA'
      Origin = 'TUR_SEXTA'
      Size = 1
    end
    object QYTurmasTUR_STATUS: TStringField
      FieldName = 'TUR_STATUS'
      Origin = 'TUR_STATUS'
      Size = 1
    end
    object QYTurmasTUR_TERCA: TStringField
      FieldName = 'TUR_TERCA'
      Origin = 'TUR_TERCA'
      Size = 1
    end
    object QYTurmasTUR_USUARIO: TStringField
      FieldName = 'TUR_USUARIO'
      Origin = 'TUR_USUARIO'
    end
    object QYTurmasVEN_NOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'VEN_NOME'
      Origin = 'VEN_NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 80
    end
  end
  object TRTurmas: TFDTransaction
    Options.Isolation = xiReadCommitted
    Connection = DM.FDConnection1
    Left = 272
    Top = 120
  end
end
