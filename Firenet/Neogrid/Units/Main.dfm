object FormMain: TFormMain
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Exportador Neogrid'
  ClientHeight = 290
  ClientWidth = 616
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  TextHeight = 13
  object Shape1: TShape
    Left = 496
    Top = 112
    Width = 105
    Height = 33
    Brush.Color = clRed
  end
  object Label1: TLabel
    Left = 16
    Top = 60
    Width = 155
    Height = 13
    Caption = 'Local de grava'#231#227'o dos arquivos:'
  end
  object Label2: TLabel
    Left = 16
    Top = 108
    Width = 83
    Height = 13
    Caption = 'CNPJ do emissor:'
  end
  object Label3: TLabel
    Left = 136
    Top = 108
    Width = 70
    Height = 13
    Caption = 'CNPJ Neogrid:'
  end
  object Label10: TLabel
    Left = 256
    Top = 60
    Width = 101
    Height = 13
    Caption = 'C'#243'digo da marca 3M:'
  end
  object Label4: TLabel
    Left = 16
    Top = 180
    Width = 81
    Height = 13
    Caption = 'Vers'#227'o Produtos:'
  end
  object Label5: TLabel
    Left = 136
    Top = 180
    Width = 96
    Height = 13
    Caption = 'Vers'#227'o Vendedores:'
  end
  object Label6: TLabel
    Left = 376
    Top = 180
    Width = 78
    Height = 13
    Caption = 'Vers'#227'o Estoque:'
  end
  object Label7: TLabel
    Left = 496
    Top = 180
    Width = 75
    Height = 13
    Caption = 'Vers'#227'o Vendas:'
  end
  object Label8: TLabel
    Left = 376
    Top = 60
    Width = 56
    Height = 13
    Caption = 'Data Inicial:'
  end
  object Label9: TLabel
    Left = 496
    Top = 60
    Width = 51
    Height = 13
    Caption = 'Data Final:'
  end
  object Label11: TLabel
    Left = 256
    Top = 180
    Width = 76
    Height = 13
    Caption = 'Vers'#227'o Clientes:'
  end
  object Label12: TLabel
    Left = 255
    Top = 12
    Width = 39
    Height = 13
    Caption = 'Usu'#225'rio:'
  end
  object Label13: TLabel
    Left = 15
    Top = 12
    Width = 76
    Height = 13
    Caption = 'Base de Dados:'
  end
  object Label14: TLabel
    Left = 375
    Top = 12
    Width = 34
    Height = 13
    Caption = 'Senha:'
  end
  object Label15: TLabel
    Left = 256
    Top = 108
    Width = 48
    Height = 13
    Caption = 'CNPJ 3M:'
  end
  object Bevel1: TBevel
    Left = 16
    Top = 168
    Width = 585
    Height = 9
    Shape = bsTopLine
  end
  object Label16: TLabel
    Left = 496
    Top = 12
    Width = 94
    Height = 13
    Caption = 'Hor'#225'rio Exporta'#231#227'o:'
  end
  object Label17: TLabel
    Left = 496
    Top = 112
    Width = 105
    Height = 34
    Cursor = crHandPoint
    Alignment = taCenter
    AutoSize = False
    Caption = 'INATIVO'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Layout = tlCenter
    OnClick = Label17Click
  end
  object Edit1: TEdit
    Left = 16
    Top = 76
    Width = 225
    Height = 21
    TabOrder = 0
    Text = 'c:\runtime\'
  end
  object Edit2: TEdit
    Left = 16
    Top = 124
    Width = 105
    Height = 21
    TabOrder = 1
    Text = '01002030000153'
  end
  object Edit3: TEdit
    Left = 136
    Top = 124
    Width = 106
    Height = 21
    TabOrder = 2
    Text = '03887830009046'
  end
  object Edit8: TEdit
    Left = 256
    Top = 76
    Width = 105
    Height = 21
    TabOrder = 3
    Text = '3'
  end
  object Edit4: TEdit
    Left = 16
    Top = 196
    Width = 105
    Height = 21
    TabOrder = 4
    Text = '051'
  end
  object Button1: TButton
    Left = 16
    Top = 232
    Width = 105
    Height = 25
    Caption = 'Gerar Produtos'
    TabOrder = 5
    OnClick = Button1Click
  end
  object Edit5: TEdit
    Left = 136
    Top = 196
    Width = 106
    Height = 21
    TabOrder = 6
    Text = '050'
  end
  object Button2: TButton
    Left = 136
    Top = 232
    Width = 106
    Height = 25
    Caption = 'Gerar Vendedores'
    TabOrder = 7
    OnClick = Button2Click
  end
  object Edit6: TEdit
    Left = 376
    Top = 196
    Width = 105
    Height = 21
    TabOrder = 8
    Text = '051'
  end
  object Button3: TButton
    Left = 376
    Top = 232
    Width = 105
    Height = 25
    Caption = 'Gerar Estoque'
    TabOrder = 9
    OnClick = Button3Click
  end
  object Edit7: TEdit
    Left = 496
    Top = 196
    Width = 105
    Height = 21
    TabOrder = 10
    Text = '052'
  end
  object MaskEdit1: TMaskEdit
    Left = 376
    Top = 76
    Width = 106
    Height = 21
    EditMask = '!99/99/9999;1;_'
    MaxLength = 10
    TabOrder = 11
    Text = '  /  /    '
  end
  object MaskEdit2: TMaskEdit
    Left = 496
    Top = 76
    Width = 106
    Height = 21
    EditMask = '!99/99/9999;1;_'
    MaxLength = 10
    TabOrder = 12
    Text = '  /  /    '
  end
  object Button4: TButton
    Left = 496
    Top = 232
    Width = 105
    Height = 25
    Caption = 'Gerar Vendas'
    TabOrder = 13
    OnClick = Button4Click
  end
  object Edit9: TEdit
    Left = 256
    Top = 196
    Width = 106
    Height = 21
    TabOrder = 14
    Text = '050'
  end
  object Button5: TButton
    Left = 256
    Top = 232
    Width = 106
    Height = 25
    Caption = 'Gerar Clientes'
    TabOrder = 15
    OnClick = Button5Click
  end
  object Edit10: TEdit
    Left = 255
    Top = 28
    Width = 107
    Height = 21
    TabOrder = 16
    Text = 'SYSDBA'
  end
  object Edit11: TEdit
    Left = 15
    Top = 28
    Width = 227
    Height = 21
    TabOrder = 17
    Text = 'c:\runtime\firenet\dados\firenet_oficial.fdb'
  end
  object Edit12: TEdit
    Left = 375
    Top = 28
    Width = 106
    Height = 21
    PasswordChar = '*'
    TabOrder = 18
    Text = 'borland'
  end
  object Button7: TButton
    Left = 376
    Top = 112
    Width = 105
    Height = 34
    Caption = 'Gerar Todos'
    TabOrder = 19
    OnClick = Button7Click
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 271
    Width = 616
    Height = 19
    Panels = <>
    SimplePanel = True
  end
  object Edit13: TEdit
    Left = 256
    Top = 124
    Width = 106
    Height = 21
    TabOrder = 21
    Text = '45985371000108'
  end
  object MaskEdit3: TMaskEdit
    Left = 496
    Top = 28
    Width = 103
    Height = 21
    EditMask = '!99:99:99;1;_'
    MaxLength = 8
    TabOrder = 22
    Text = '  :  :  '
  end
  object Timer1: TTimer
    Enabled = False
    OnTimer = Timer1Timer
    Left = 336
    Top = 112
  end
end
