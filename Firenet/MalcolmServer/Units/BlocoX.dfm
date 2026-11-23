object FormBlocoX: TFormBlocoX
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Blocos X'
  ClientHeight = 376
  ClientWidth = 575
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 8
    Top = 88
    Width = 561
    Height = 281
    DataSource = DM.DSBlocox
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'BLX_CODIGO'
        Title.Caption = 'C'#243'digo'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BLX_ANO'
        Title.Caption = 'Ano'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BLX_MES'
        Title.Caption = 'M'#234's'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BLX_DTCADASTRO'
        Title.Caption = 'Dt. Cadastro'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BLX_HRCADASTRO'
        Title.Caption = 'Hr Cadastro'
        Width = 80
        Visible = True
      end>
  end
  object DBNavigator1: TDBNavigator
    Left = 8
    Top = 8
    Width = 240
    Height = 25
    DataSource = DM.DSBlocox
    TabOrder = 1
  end
  object DBEdit1: TDBEdit
    Left = 104
    Top = 53
    Width = 73
    Height = 21
    CharCase = ecUpperCase
    DataField = 'BLX_ANO'
    DataSource = DM.DSBlocox
    TabOrder = 2
  end
  object DBEdit2: TDBEdit
    Left = 183
    Top = 53
    Width = 73
    Height = 21
    CharCase = ecUpperCase
    DataField = 'BLX_MES'
    DataSource = DM.DSBlocox
    TabOrder = 3
  end
end
