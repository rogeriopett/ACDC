object FormMesAno: TFormMesAno
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Selecione o m'#234's e ano'
  ClientHeight = 154
  ClientWidth = 264
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 33
    Width = 23
    Height = 13
    Caption = 'M'#234's:'
  end
  object Label2: TLabel
    Left = 168
    Top = 33
    Width = 22
    Height = 13
    Caption = 'Ano:'
  end
  object ComboBox1: TComboBox
    Left = 16
    Top = 48
    Width = 145
    Height = 21
    Style = csDropDownList
    TabOrder = 0
    Items.Strings = (
      'JANEIRO'
      'FEVEREIRO'
      'MARCO'
      'ABRIL'
      'MAIO'
      'JUNHO'
      'JULHO'
      'AGOSTO'
      'SETEMBRO'
      'OUTUBRO'
      'NOVEMBRO'
      'DEZEMBRO')
  end
  object ComboBox2: TComboBox
    Left = 167
    Top = 48
    Width = 66
    Height = 21
    Style = csDropDownList
    TabOrder = 1
  end
  object PngBitBtn2: TPngBitBtn
    Left = 40
    Top = 112
    Width = 105
    Height = 25
    Caption = '&OK'
    TabOrder = 2
    OnClick = PngBitBtn2Click
  end
  object PngBitBtn1: TPngBitBtn
    Left = 152
    Top = 112
    Width = 105
    Height = 25
    Caption = '&Cancelar'
    TabOrder = 3
    OnClick = PngBitBtn1Click
  end
end
