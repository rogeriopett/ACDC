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
    Left = 81
    Top = 113
    Width = 45
    Height = 13
    Caption = 'URL API:'
  end
  object Label2: TLabel
    Left = 52
    Top = 161
    Width = 74
    Height = 13
    Caption = 'Chave Secreta:'
  end
  object Label3: TLabel
    Left = 42
    Top = 185
    Width = 84
    Height = 13
    Caption = 'Arquivos Sistema:'
  end
  object Label4: TLabel
    Left = 51
    Top = 209
    Width = 75
    Height = 13
    Caption = 'Pasta Produtos:'
  end
  object Label5: TLabel
    Left = 66
    Top = 233
    Width = 60
    Height = 13
    Caption = 'Pasta Temp:'
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
  object Label6: TLabel
    Left = 80
    Top = 137
    Width = 46
    Height = 13
    Caption = 'URL Site:'
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
    Top = 157
    Width = 297
    Height = 21
    TabOrder = 2
  end
  object Edit3: TEdit
    Left = 128
    Top = 181
    Width = 297
    Height = 21
    TabOrder = 3
  end
  object Edit4: TEdit
    Left = 128
    Top = 205
    Width = 297
    Height = 21
    TabOrder = 4
  end
  object Edit5: TEdit
    Left = 128
    Top = 229
    Width = 297
    Height = 21
    TabOrder = 5
  end
  object ComboBox1: TComboBox
    Left = 128
    Top = 37
    Width = 57
    Height = 21
    Style = csDropDownList
    TabOrder = 6
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
    TabOrder = 7
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
    TabOrder = 8
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
    TabOrder = 9
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 424
    Top = 384
    Width = 73
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 10
    OnClick = Button2Click
  end
  object Edit6: TEdit
    Left = 128
    Top = 133
    Width = 297
    Height = 21
    TabOrder = 1
  end
end
