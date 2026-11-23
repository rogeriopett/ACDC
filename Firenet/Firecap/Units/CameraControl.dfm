object FormCameraControl: TFormCameraControl
  Left = 413
  Top = 334
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Configura'#231#245'es de Controle de V'#237'deo'
  ClientHeight = 328
  ClientWidth = 408
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
    Left = 83
    Top = 14
    Width = 19
    Height = 13
    Caption = 'Pan'
  end
  object Label2: TLabel
    Left = 141
    Top = 14
    Width = 14
    Height = 13
    Caption = 'Tilt'
  end
  object Label3: TLabel
    Left = 195
    Top = 14
    Width = 18
    Height = 13
    Caption = 'Roll'
  end
  object Label4: TLabel
    Left = 23
    Top = 14
    Width = 27
    Height = 13
    Caption = 'Zoom'
  end
  object Label5: TLabel
    Left = 238
    Top = 14
    Width = 44
    Height = 13
    Caption = 'Exposure'
  end
  object Label6: TLabel
    Left = 310
    Top = 14
    Width = 13
    Height = 13
    Caption = 'Iris'
  end
  object Label7: TLabel
    Left = 360
    Top = 14
    Width = 24
    Height = 13
    Caption = 'Foco'
  end
  object Bevel1: TBevel
    Left = 8
    Top = 288
    Width = 393
    Height = 3
    Shape = bsTopLine
  end
  object tbrTilt: TTrackBar
    Left = 128
    Top = 28
    Width = 40
    Height = 185
    Orientation = trVertical
    TabOrder = 0
    ThumbLength = 18
    TickMarks = tmBoth
    OnChange = OnSetValue
  end
  object tbrPan: TTrackBar
    Left = 72
    Top = 28
    Width = 40
    Height = 185
    Orientation = trVertical
    TabOrder = 1
    ThumbLength = 18
    TickMarks = tmBoth
    OnChange = OnSetValue
  end
  object tbrRoll: TTrackBar
    Left = 184
    Top = 28
    Width = 40
    Height = 185
    Orientation = trVertical
    TabOrder = 2
    ThumbLength = 18
    TickMarks = tmBoth
    OnChange = OnSetValue
  end
  object tbrZoom: TTrackBar
    Left = 16
    Top = 28
    Width = 40
    Height = 185
    Orientation = trVertical
    TabOrder = 3
    ThumbLength = 18
    TickMarks = tmBoth
    OnChange = OnSetValue
  end
  object tbrExposure: TTrackBar
    Left = 240
    Top = 28
    Width = 40
    Height = 170
    Orientation = trVertical
    TabOrder = 4
    ThumbLength = 18
    TickMarks = tmBoth
    OnChange = OnSetValue
  end
  object tbrIris: TTrackBar
    Left = 296
    Top = 28
    Width = 40
    Height = 185
    Orientation = trVertical
    TabOrder = 5
    ThumbLength = 18
    TickMarks = tmBoth
    OnChange = OnSetValue
  end
  object tbrFocus: TTrackBar
    Left = 352
    Top = 28
    Width = 40
    Height = 185
    Orientation = trVertical
    TabOrder = 6
    ThumbLength = 18
    TickMarks = tmBoth
    OnChange = OnSetValue
  end
  object btnClose: TButton
    Left = 304
    Top = 296
    Width = 97
    Height = 25
    Caption = 'Fechar'
    TabOrder = 7
    OnClick = btnCloseClick
  end
  object chkZoom: TCheckBox
    Left = 16
    Top = 248
    Width = 41
    Height = 17
    Caption = 'Auto'
    TabOrder = 8
    OnClick = OnSetValue
  end
  object chkPan: TCheckBox
    Left = 72
    Top = 248
    Width = 41
    Height = 17
    Caption = 'Auto'
    TabOrder = 9
    OnClick = OnSetValue
  end
  object chkTilt: TCheckBox
    Left = 128
    Top = 248
    Width = 41
    Height = 17
    Caption = 'Auto'
    TabOrder = 10
    OnClick = OnSetValue
  end
  object chkRoll: TCheckBox
    Left = 184
    Top = 248
    Width = 41
    Height = 17
    Caption = 'Auto'
    TabOrder = 11
    OnClick = OnSetValue
  end
  object chkExposure: TCheckBox
    Left = 240
    Top = 248
    Width = 41
    Height = 17
    Caption = 'Auto'
    TabOrder = 12
    OnClick = OnSetValue
  end
  object chkIris: TCheckBox
    Left = 296
    Top = 248
    Width = 41
    Height = 17
    Caption = 'Auto'
    TabOrder = 13
    OnClick = OnSetValue
  end
  object chkFocus: TCheckBox
    Left = 352
    Top = 248
    Width = 41
    Height = 17
    Caption = 'Auto'
    TabOrder = 14
    OnClick = OnSetValue
  end
  object btnZoom: TButton
    Left = 16
    Top = 216
    Width = 41
    Height = 25
    Caption = 'Padr'#227'o'
    TabOrder = 15
    OnClick = OnSetDefault
  end
  object btnPan: TButton
    Left = 72
    Top = 216
    Width = 41
    Height = 25
    Caption = 'Padr'#227'o'
    TabOrder = 16
    OnClick = OnSetDefault
  end
  object btnTilt: TButton
    Left = 128
    Top = 216
    Width = 41
    Height = 25
    Caption = 'Padr'#227'o'
    TabOrder = 17
    OnClick = OnSetDefault
  end
  object btnRoll: TButton
    Left = 184
    Top = 216
    Width = 41
    Height = 25
    Caption = 'Padr'#227'o'
    TabOrder = 18
    OnClick = OnSetDefault
  end
  object btnExposure: TButton
    Left = 240
    Top = 216
    Width = 41
    Height = 25
    Caption = 'Padr'#227'o'
    TabOrder = 19
    OnClick = OnSetDefault
  end
  object btnIris: TButton
    Left = 296
    Top = 216
    Width = 41
    Height = 25
    Caption = 'Padr'#227'o'
    TabOrder = 20
    OnClick = OnSetDefault
  end
  object btnFocus: TButton
    Left = 352
    Top = 216
    Width = 41
    Height = 25
    Caption = 'Padr'#227'o'
    TabOrder = 21
    OnClick = OnSetDefault
  end
  object edtExposure: TEdit
    Left = 240
    Top = 194
    Width = 41
    Height = 21
    Color = clBtnFace
    ReadOnly = True
    TabOrder = 22
  end
end
