object FormCalendario: TFormCalendario
  Left = 68
  Top = 53
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Calend'#225'rio'
  ClientHeight = 437
  ClientWidth = 666
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  Position = poScreenCenter
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  TextHeight = 13
  object MonthCalendar1: TMonthCalendar
    Left = 0
    Top = 0
    Width = 666
    Height = 437
    Align = alClient
    MultiSelect = True
    Date = 37209.000000000000000000
    EndDate = 37209.000000000000000000
    MaxSelectRange = 366
    ParentShowHint = False
    ShowHint = False
    TabOrder = 0
  end
end
