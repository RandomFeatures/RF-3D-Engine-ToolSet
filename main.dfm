object frmMain: TfrmMain
  Left = 99
  Top = 107
  BorderStyle = bsSingle
  Caption = 'cRPG Tool Set'
  ClientHeight = 374
  ClientWidth = 577
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIForm
  Menu = MainMenu1
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object StatusBar1: TStatusBar
    Left = 0
    Top = 355
    Width = 577
    Height = 19
    Panels = <>
    SimplePanel = False
  end
  object MainMenu1: TMainMenu
    Left = 8
    Top = 8
    object File1: TMenuItem
      Caption = '&File'
      object Exit1: TMenuItem
        Caption = 'E&xit'
        OnClick = Exit1Click
      end
    end
    object Modules1: TMenuItem
      Caption = '&Modules'
      object Character1: TMenuItem
        Caption = '&Character'
        OnClick = Character1Click
      end
      object Items1: TMenuItem
        Caption = '&Items'
      end
      object Spells1: TMenuItem
        Caption = '&Spells'
      end
    end
  end
end
