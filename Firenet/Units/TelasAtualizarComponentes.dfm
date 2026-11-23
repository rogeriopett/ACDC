object FormTelasAtualizarComponentes: TFormTelasAtualizarComponentes
  Left = 235
  Top = 182
  BorderIcons = [biSystemMenu]
  BorderStyle = bsNone
  Caption = 'Atualizando lista de componentes'
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
    object Label3: TLabel
      Left = 12
      Top = 36
      Width = 112
      Height = 13
      Caption = 'FormMain -  01 de 3000'
    end
    object Label1: TLabel
      Left = 12
      Top = 68
      Width = 112
      Height = 13
      Caption = 'FormMain -  01 de 3000'
    end
    object Label2: TLabel
      Left = 12
      Top = 14
      Width = 219
      Height = 13
      Caption = 'Atualizando lista de componentes de acesso...'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object ProgressBar2: TProgressBar
      Left = 10
      Top = 51
      Width = 374
      Height = 13
      Position = 50
      Step = 1
      TabOrder = 0
    end
    object ProgressBar1: TProgressBar
      Left = 10
      Top = 83
      Width = 374
      Height = 13
      Position = 50
      Step = 1
      TabOrder = 1
    end
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 500
    OnTimer = Timer1Timer
    Left = 288
    Top = 8
  end
end
