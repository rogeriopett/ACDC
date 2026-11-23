object FormParametros: TFormParametros
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Par'#226'metros'
  ClientHeight = 416
  ClientWidth = 504
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Position = poScreenCenter
  OnCreate = FormCreate
  TextHeight = 13
  object Label1: TLabel
    Left = 80
    Top = 113
    Width = 46
    Height = 13
    Caption = 'URL Site:'
  end
  object Label2: TLabel
    Left = 52
    Top = 137
    Width = 74
    Height = 13
    Caption = 'Chave Secreta:'
  end
  object Label3: TLabel
    Left = 70
    Top = 161
    Width = 56
    Height = 13
    Caption = 'Pasta Root:'
  end
  object Label4: TLabel
    Left = 61
    Top = 185
    Width = 65
    Height = 13
    Caption = 'Pasta Blocos:'
  end
  object Label5: TLabel
    Left = 35
    Top = 209
    Width = 91
    Height = 13
    Caption = 'Pasta Blocos Web:'
  end
  object Label6: TLabel
    Left = 59
    Top = 233
    Width = 67
    Height = 13
    Caption = 'Pasta Profiles:'
  end
  object Label7: TLabel
    Left = 33
    Top = 257
    Width = 93
    Height = 13
    Caption = 'Pasta Profiles Web:'
  end
  object Label8: TLabel
    Left = 56
    Top = 41
    Width = 70
    Height = 13
    Caption = 'Iniciar ao Abrir:'
  end
  object Label9: TLabel
    Left = 62
    Top = 65
    Width = 64
    Height = 13
    Caption = 'Mostrar Logs:'
  end
  object Label10: TLabel
    Left = 23
    Top = 89
    Width = 103
    Height = 13
    Caption = 'Excluir arquivos temp:'
  end
  object Bevel1: TBevel
    Left = 8
    Top = 375
    Width = 489
    Height = 2
    Shape = bsBottomLine
  end
  object Label11: TLabel
    Left = 47
    Top = 281
    Width = 79
    Height = 13
    Caption = 'Pasta Empresas:'
  end
  object Label12: TLabel
    Left = 21
    Top = 305
    Width = 105
    Height = 13
    Caption = 'Pasta Empresas Web:'
  end
  object Label13: TLabel
    Left = 66
    Top = 329
    Width = 60
    Height = 13
    Caption = 'Pasta Temp:'
  end
  object Edit1: TEdit
    Left = 128
    Top = 109
    Width = 297
    Height = 21
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 128
    Top = 133
    Width = 297
    Height = 21
    TabOrder = 1
  end
  object Edit3: TEdit
    Left = 128
    Top = 157
    Width = 297
    Height = 21
    TabOrder = 2
  end
  object Edit4: TEdit
    Left = 128
    Top = 181
    Width = 297
    Height = 21
    TabOrder = 3
  end
  object Edit5: TEdit
    Left = 128
    Top = 205
    Width = 297
    Height = 21
    TabOrder = 4
  end
  object Edit6: TEdit
    Left = 128
    Top = 229
    Width = 297
    Height = 21
    TabOrder = 5
  end
  object Edit7: TEdit
    Left = 128
    Top = 253
    Width = 297
    Height = 21
    TabOrder = 6
  end
  object ComboBox1: TComboBox
    Left = 128
    Top = 37
    Width = 57
    Height = 21
    Style = csDropDownList
    TabOrder = 7
    Items.Strings = (
      'S'
      'N')
  end
  object ComboBox2: TComboBox
    Left = 128
    Top = 61
    Width = 57
    Height = 21
    Style = csDropDownList
    TabOrder = 8
    Items.Strings = (
      'S'
      'N')
  end
  object ComboBox3: TComboBox
    Left = 128
    Top = 85
    Width = 57
    Height = 21
    Style = csDropDownList
    TabOrder = 9
    Items.Strings = (
      'S'
      'N')
  end
  object Button1: TButton
    Left = 344
    Top = 384
    Width = 73
    Height = 25
    Caption = 'Salvar'
    TabOrder = 10
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 424
    Top = 384
    Width = 73
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 11
    OnClick = Button2Click
  end
  object Edit8: TEdit
    Left = 128
    Top = 277
    Width = 297
    Height = 21
    TabOrder = 12
  end
  object Edit9: TEdit
    Left = 128
    Top = 301
    Width = 297
    Height = 21
    TabOrder = 13
  end
  object Edit10: TEdit
    Left = 128
    Top = 325
    Width = 297
    Height = 21
    TabOrder = 14
  end
end
