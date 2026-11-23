object FormVideoQuality: TFormVideoQuality
  Left = 413
  Top = 334
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Configura'#231#245'es de Qualidade de V'#237'deo'
  ClientHeight = 352
  ClientWidth = 576
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 23
    Top = 33
    Width = 26
    Height = 13
    Caption = 'Brilho'
  end
  object Label2: TLabel
    Left = 70
    Top = 33
    Width = 45
    Height = 13
    Caption = 'Contraste'
  end
  object Label3: TLabel
    Left = 136
    Top = 33
    Width = 25
    Height = 13
    Caption = 'Matiz'
  end
  object Label4: TLabel
    Left = 180
    Top = 33
    Width = 49
    Height = 13
    Caption = 'Satura'#231#227'o'
  end
  object Label5: TLabel
    Left = 244
    Top = 33
    Width = 32
    Height = 13
    Caption = 'Nitidez'
  end
  object Label6: TLabel
    Left = 302
    Top = 33
    Width = 28
    Height = 13
    Caption = 'Gama'
  end
  object Label7: TLabel
    Left = 346
    Top = 17
    Width = 53
    Height = 29
    Alignment = taCenter
    AutoSize = False
    Caption = 'Balan'#231'o Branco'
    WordWrap = True
  end
  object Label8: TLabel
    Left = 468
    Top = 33
    Width = 32
    Height = 13
    Caption = 'Ganho'
  end
  object Label9: TLabel
    Left = 403
    Top = 17
    Width = 51
    Height = 25
    Alignment = taCenter
    AutoSize = False
    Caption = 'Comp. Fundo'
    WordWrap = True
  end
  object Label10: TLabel
    Left = 515
    Top = 34
    Width = 50
    Height = 13
    Caption = 'Color Hab.'
  end
  object Bevel1: TBevel
    Left = 8
    Top = 312
    Width = 561
    Height = 3
    Shape = bsTopLine
  end
  object btnClose: TButton
    Left = 472
    Top = 320
    Width = 97
    Height = 25
    Caption = '&Fechar'
    TabOrder = 0
    OnClick = btnCloseClick
  end
  object tbrHue: TTrackBar
    Left = 128
    Top = 52
    Width = 40
    Height = 185
    Orientation = trVertical
    TabOrder = 1
    ThumbLength = 18
    TickMarks = tmBoth
    OnChange = OnSetValue
  end
  object tbrContrast: TTrackBar
    Left = 72
    Top = 52
    Width = 40
    Height = 185
    Orientation = trVertical
    TabOrder = 2
    ThumbLength = 18
    TickMarks = tmBoth
    OnChange = OnSetValue
  end
  object tbrSaturation: TTrackBar
    Left = 184
    Top = 52
    Width = 40
    Height = 185
    Orientation = trVertical
    TabOrder = 3
    ThumbLength = 18
    TickMarks = tmBoth
    OnChange = OnSetValue
  end
  object tbrBrightness: TTrackBar
    Left = 16
    Top = 52
    Width = 40
    Height = 185
    Orientation = trVertical
    TabOrder = 4
    ThumbLength = 18
    TickMarks = tmBoth
    OnChange = OnSetValue
  end
  object tbrSharpness: TTrackBar
    Left = 240
    Top = 52
    Width = 40
    Height = 185
    Orientation = trVertical
    TabOrder = 5
    ThumbLength = 18
    TickMarks = tmBoth
    OnChange = OnSetValue
  end
  object tbrGamma: TTrackBar
    Left = 296
    Top = 52
    Width = 40
    Height = 185
    Orientation = trVertical
    TabOrder = 6
    ThumbLength = 18
    TickMarks = tmBoth
    OnChange = OnSetValue
  end
  object tbrWhiteBalance: TTrackBar
    Left = 352
    Top = 52
    Width = 40
    Height = 185
    Orientation = trVertical
    TabOrder = 7
    ThumbLength = 18
    TickMarks = tmBoth
    OnChange = OnSetValue
  end
  object chkBrightness: TCheckBox
    Left = 16
    Top = 272
    Width = 41
    Height = 17
    Caption = 'Auto'
    TabOrder = 8
    OnClick = OnSetValue
  end
  object chkContrast: TCheckBox
    Left = 72
    Top = 272
    Width = 41
    Height = 17
    Caption = 'Auto'
    TabOrder = 9
    OnClick = OnSetValue
  end
  object chkHue: TCheckBox
    Left = 128
    Top = 272
    Width = 41
    Height = 17
    Caption = 'Auto'
    TabOrder = 10
    OnClick = OnSetValue
  end
  object chkSaturation: TCheckBox
    Left = 184
    Top = 272
    Width = 41
    Height = 17
    Caption = 'Auto'
    TabOrder = 11
    OnClick = OnSetValue
  end
  object chkSharpness: TCheckBox
    Left = 240
    Top = 272
    Width = 41
    Height = 17
    Caption = 'Auto'
    TabOrder = 12
    OnClick = OnSetValue
  end
  object chkGamma: TCheckBox
    Left = 296
    Top = 272
    Width = 41
    Height = 17
    Caption = 'Auto'
    TabOrder = 13
    OnClick = OnSetValue
  end
  object chkWhiteBalance: TCheckBox
    Left = 352
    Top = 272
    Width = 41
    Height = 17
    Caption = 'Auto'
    TabOrder = 14
    OnClick = OnSetValue
  end
  object btnBrightness: TButton
    Left = 16
    Top = 240
    Width = 41
    Height = 25
    Caption = 'Padr'#227'o'
    TabOrder = 15
    OnClick = OnSetDefault
  end
  object btnContrast: TButton
    Left = 72
    Top = 240
    Width = 41
    Height = 25
    Caption = 'Padr'#227'o'
    TabOrder = 16
    OnClick = OnSetDefault
  end
  object btnHue: TButton
    Left = 128
    Top = 240
    Width = 41
    Height = 25
    Caption = 'Padr'#227'o'
    TabOrder = 17
    OnClick = OnSetDefault
  end
  object btnSaturation: TButton
    Left = 184
    Top = 240
    Width = 41
    Height = 25
    Caption = 'Padr'#227'o'
    TabOrder = 18
    OnClick = OnSetDefault
  end
  object btnSharpness: TButton
    Left = 240
    Top = 240
    Width = 41
    Height = 25
    Caption = 'Padr'#227'o'
    TabOrder = 19
    OnClick = OnSetDefault
  end
  object btnGamma: TButton
    Left = 296
    Top = 240
    Width = 41
    Height = 25
    Caption = 'Padr'#227'o'
    TabOrder = 20
    OnClick = OnSetDefault
  end
  object btnWhiteBalance: TButton
    Left = 352
    Top = 240
    Width = 41
    Height = 25
    Caption = 'Padr'#227'o'
    TabOrder = 21
    OnClick = OnSetDefault
  end
  object tbrGain: TTrackBar
    Left = 464
    Top = 52
    Width = 40
    Height = 185
    Orientation = trVertical
    TabOrder = 22
    ThumbLength = 18
    TickMarks = tmBoth
    OnChange = OnSetValue
  end
  object btnGain: TButton
    Left = 464
    Top = 240
    Width = 41
    Height = 25
    Caption = 'Padr'#227'o'
    TabOrder = 23
    OnClick = OnSetDefault
  end
  object chkGain: TCheckBox
    Left = 464
    Top = 272
    Width = 41
    Height = 17
    Caption = 'Auto'
    TabOrder = 24
    OnClick = OnSetValue
  end
  object tbrBacklight: TTrackBar
    Left = 408
    Top = 52
    Width = 40
    Height = 185
    Orientation = trVertical
    TabOrder = 25
    ThumbLength = 18
    TickMarks = tmBoth
    OnChange = OnSetValue
  end
  object btnBacklight: TButton
    Left = 408
    Top = 240
    Width = 41
    Height = 25
    Caption = 'Padr'#227'o'
    TabOrder = 26
    OnClick = OnSetDefault
  end
  object chkBacklight: TCheckBox
    Left = 408
    Top = 272
    Width = 41
    Height = 17
    Caption = 'Auto'
    TabOrder = 27
    OnClick = OnSetValue
  end
  object tbrColorEnable: TTrackBar
    Left = 520
    Top = 52
    Width = 40
    Height = 185
    Orientation = trVertical
    TabOrder = 28
    ThumbLength = 18
    TickMarks = tmBoth
    OnChange = OnSetValue
  end
  object btnColorEnable: TButton
    Left = 520
    Top = 240
    Width = 41
    Height = 25
    Caption = 'Padr'#227'o'
    TabOrder = 29
    OnClick = OnSetDefault
  end
  object chkColorEnable: TCheckBox
    Left = 520
    Top = 272
    Width = 41
    Height = 17
    Caption = 'Auto'
    TabOrder = 30
    OnClick = OnSetValue
  end
end
