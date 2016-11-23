object frmChar: TfrmChar
  Left = 132
  Top = 111
  Width = 583
  Height = 382
  HorzScrollBar.Visible = False
  VertScrollBar.Visible = False
  Caption = 'Character Module'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poMainFormCenter
  Visible = True
  WindowState = wsMaximized
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnResize = FormResize
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlCharMain: TPanel
    Left = 0
    Top = 33
    Width = 575
    Height = 322
    BevelOuter = bvNone
    TabOrder = 0
    object Label19: TLabel
      Left = 4
      Top = 4
      Width = 65
      Height = 13
      Caption = 'Character List'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label1: TLabel
      Left = 4
      Top = 198
      Width = 60
      Height = 13
      Caption = 'Character ID'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 4
      Top = 238
      Width = 125
      Height = 13
      Caption = 'Character Name (Optional)'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 4
      Top = 278
      Width = 66
      Height = 13
      Caption = 'Inherites From'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object SpeedButton1: TSpeedButton
      Left = 144
      Top = 213
      Width = 23
      Height = 22
      Caption = '...'
    end
    object ShadowPanel3: TShadowPanel
      Left = 2
      Top = 16
      Width = 173
      Height = 182
      BevelOuter = bvNone
      Caption = 'ShadowPanel3'
      TabOrder = 0
      ShadowPanelDepth = 1
      ShadowPanelColor = clBtnShadow
      object Panel1: TPanel
        Left = 2
        Top = 4
        Width = 164
        Height = 173
        BevelOuter = bvNone
        BorderWidth = 1
        Caption = 'Panel1'
        Color = clBlack
        TabOrder = 0
        object lbCharList: TListBox
          Left = 1
          Top = 1
          Width = 162
          Height = 171
          Align = alClient
          BorderStyle = bsNone
          Color = 11794687
          ExtendedSelect = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ItemHeight = 13
          ParentFont = False
          TabOrder = 0
          OnDblClick = lbCharListDblClick
        end
      end
    end
    object ShadowPanel4: TShadowPanel
      Left = 2
      Top = 212
      Width = 143
      Height = 27
      BevelOuter = bvNone
      TabOrder = 1
      ShadowPanelDepth = 1
      ShadowPanelColor = clBtnShadow
      object edtChrID: TFlatEdit
        Left = 3
        Top = 1
        Width = 134
        Height = 20
        ColorFocused = clYellow
        ColorBorder = clBlack
        ColorFlat = 11794687
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
    end
    object ShadowPanel5: TShadowPanel
      Left = 2
      Top = 252
      Width = 173
      Height = 28
      BevelOuter = bvNone
      TabOrder = 2
      ShadowPanelDepth = 1
      ShadowPanelColor = clBtnShadow
      object edtChrName: TFlatEdit
        Left = 3
        Top = 3
        Width = 164
        Height = 19
        ColorFocused = clYellow
        ColorBorder = clBlack
        ColorFlat = 11794687
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
    end
    object ShadowPanel6: TShadowPanel
      Left = 2
      Top = 291
      Width = 173
      Height = 25
      BevelOuter = bvNone
      TabOrder = 3
      ShadowPanelDepth = 1
      ShadowPanelColor = clBtnShadow
      object cbChrInherite: TFlatComboBox
        Left = 3
        Top = 2
        Width = 164
        Height = 21
        Style = csDropDownList
        Color = 11794687
        ColorArrow = clBlue
        ColorArrowBackground = clYellow
        ColorBorder = clBlack
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ItemHeight = 13
        Items.Strings = (
          'BaseCharacter')
        ParentFont = False
        TabOrder = 0
        Text = 'BaseCharacter'
        ItemIndex = 0
      end
    end
    object pgcCharacter: TPageControl
      Left = 177
      Top = 5
      Width = 393
      Height = 313
      ActivePage = tbChrEventScript
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      HotTrack = True
      ParentFont = False
      RaggedRight = True
      TabOrder = 4
      TabStop = False
      TabWidth = 75
      object tbChrStats: TTabSheet
        Caption = 'Stats'
        object Label4: TLabel
          Left = 35
          Top = 23
          Width = 40
          Height = 13
          Caption = 'Strength'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label5: TLabel
          Left = 35
          Top = 55
          Width = 51
          Height = 13
          Caption = 'Perception'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label6: TLabel
          Left = 35
          Top = 87
          Width = 52
          Height = 13
          Caption = 'Endurance'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label7: TLabel
          Left = 35
          Top = 119
          Width = 43
          Height = 13
          Caption = 'Charisma'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label8: TLabel
          Left = 35
          Top = 150
          Width = 27
          Height = 13
          Caption = 'Agility'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label9: TLabel
          Left = 35
          Top = 182
          Width = 46
          Height = 13
          Caption = 'Intelignce'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label10: TLabel
          Left = 35
          Top = 214
          Width = 24
          Height = 13
          Caption = 'Luck'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label11: TLabel
          Left = 200
          Top = 22
          Width = 45
          Height = 13
          Caption = 'Hit Points'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label13: TLabel
          Left = 200
          Top = 54
          Width = 27
          Height = 13
          Caption = 'Mana'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label16: TLabel
          Left = 200
          Top = 150
          Width = 61
          Height = 13
          Caption = 'Armor Rating'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label18: TLabel
          Left = 200
          Top = 86
          Width = 60
          Height = 13
          Caption = 'Min Damage'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label17: TLabel
          Left = 200
          Top = 118
          Width = 63
          Height = 13
          Caption = 'Max Damage'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label31: TLabel
          Left = 200
          Top = 182
          Width = 26
          Height = 13
          Caption = 'Level'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object ShadowPanel1: TShadowPanel
          Left = 104
          Top = 12
          Width = 65
          Height = 229
          BevelOuter = bvNone
          TabOrder = 0
          ShadowPanelDepth = 1
          ShadowPanelColor = clBtnShadow
          object sedtChrStr: TFlatSpinEditInteger
            Left = 6
            Top = 8
            Width = 49
            Height = 20
            ColorFocused = clYellow
            ColorBorder = clBlack
            ColorFlat = 11794687
            AutoSize = False
            EditorEnabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            MaxValue = 25
            MinValue = 1
            ParentFont = False
            TabOrder = 0
            Value = 10
          end
          object sedtChrPer: TFlatSpinEditInteger
            Left = 6
            Top = 40
            Width = 49
            Height = 20
            ColorFocused = clYellow
            ColorBorder = clBlack
            ColorFlat = 11794687
            AutoSize = False
            EditorEnabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            MaxValue = 25
            MinValue = 1
            ParentFont = False
            TabOrder = 1
            Value = 10
          end
          object sedtChrEnd: TFlatSpinEditInteger
            Left = 6
            Top = 72
            Width = 49
            Height = 20
            ColorFocused = clYellow
            ColorBorder = clBlack
            ColorFlat = 11794687
            AutoSize = False
            EditorEnabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            MaxValue = 25
            MinValue = 1
            ParentFont = False
            TabOrder = 2
            Value = 10
          end
          object sedtChrChar: TFlatSpinEditInteger
            Left = 6
            Top = 104
            Width = 49
            Height = 20
            ColorFocused = clYellow
            ColorBorder = clBlack
            ColorFlat = 11794687
            AutoSize = False
            EditorEnabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            MaxValue = 25
            MinValue = 1
            ParentFont = False
            TabOrder = 3
            Value = 10
          end
          object sedtChrAgi: TFlatSpinEditInteger
            Left = 6
            Top = 137
            Width = 49
            Height = 20
            ColorFocused = clYellow
            ColorBorder = clBlack
            ColorFlat = 11794687
            AutoSize = False
            EditorEnabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            MaxValue = 25
            MinValue = 1
            ParentFont = False
            TabOrder = 4
            Value = 10
          end
          object sedtChrInt: TFlatSpinEditInteger
            Left = 6
            Top = 169
            Width = 49
            Height = 20
            ColorFocused = clYellow
            ColorBorder = clBlack
            ColorFlat = 11794687
            AutoSize = False
            EditorEnabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            MaxValue = 25
            MinValue = 1
            ParentFont = False
            TabOrder = 5
            Value = 10
          end
          object sedtChrLuc: TFlatSpinEditInteger
            Left = 6
            Top = 201
            Width = 49
            Height = 20
            ColorFocused = clYellow
            ColorBorder = clBlack
            ColorFlat = 11794687
            AutoSize = False
            EditorEnabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            MaxValue = 25
            MinValue = 1
            ParentFont = False
            TabOrder = 6
            Value = 10
          end
        end
        object ShadowPanel2: TShadowPanel
          Left = 280
          Top = 8
          Width = 65
          Height = 217
          BevelOuter = bvNone
          TabOrder = 1
          ShadowPanelDepth = 1
          ShadowPanelColor = clBtnShadow
          object sedtChrMana: TFlatSpinEditInteger
            Left = 9
            Top = 45
            Width = 49
            Height = 20
            ColorFocused = clYellow
            ColorBorder = clBlack
            ColorFlat = 11794687
            AutoSize = False
            EditorEnabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Increment = 10
            MaxValue = 500
            MinValue = 1
            ParentFont = False
            TabOrder = 0
            Value = 100
          end
          object sedtChrAR: TFlatSpinEditInteger
            Left = 9
            Top = 140
            Width = 49
            Height = 20
            ColorFocused = clYellow
            ColorBorder = clBlack
            ColorFlat = 11794687
            AutoSize = False
            EditorEnabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Increment = 10
            MaxValue = 100
            MinValue = 0
            ParentFont = False
            TabOrder = 1
            Value = 0
          end
          object sedtChrMin: TFlatSpinEditInteger
            Left = 9
            Top = 77
            Width = 49
            Height = 20
            ColorFocused = clYellow
            ColorBorder = clBlack
            ColorFlat = 11794687
            AutoSize = False
            EditorEnabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            MaxValue = 25
            MinValue = 1
            ParentFont = False
            TabOrder = 2
            Value = 1
          end
          object sedtChrMax: TFlatSpinEditInteger
            Left = 9
            Top = 108
            Width = 49
            Height = 20
            ColorFocused = clYellow
            ColorBorder = clBlack
            ColorFlat = 11794687
            AutoSize = False
            EditorEnabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            MaxValue = 50
            MinValue = 1
            ParentFont = False
            TabOrder = 3
            Value = 10
          end
          object sedtChrHP: TFlatSpinEditInteger
            Left = 9
            Top = 13
            Width = 49
            Height = 20
            ColorFocused = clYellow
            ColorBorder = clBlack
            ColorFlat = 11794687
            AutoSize = False
            EditorEnabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Increment = 10
            MaxValue = 500
            MinValue = 1
            ParentFont = False
            TabOrder = 4
            Value = 100
          end
          object sedtChrLvl: TFlatSpinEditInteger
            Left = 9
            Top = 172
            Width = 49
            Height = 20
            ColorFocused = clYellow
            ColorBorder = clBlack
            ColorFlat = 11794687
            AutoSize = False
            EditorEnabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Increment = 10
            MaxValue = 100
            MinValue = 0
            ParentFont = False
            TabOrder = 5
            Value = 0
          end
        end
        object GroupBox3: TGroupBox
          Left = 8
          Top = 240
          Width = 369
          Height = 43
          Caption = 'Random Generator'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          object btnRandomStats: TSpeedButton
            Left = 11
            Top = 15
            Width = 60
            Height = 22
            Caption = 'Stats'
            OnClick = btnRandomStatsClick
          end
          object btnRandomHitPoints: TSpeedButton
            Left = 83
            Top = 15
            Width = 60
            Height = 22
            Caption = 'Hit Points'
            OnClick = btnRandomHitPointsClick
          end
          object btnRandomDamage: TSpeedButton
            Left = 227
            Top = 15
            Width = 60
            Height = 22
            Caption = 'Damage'
          end
          object btnRandomArmor: TSpeedButton
            Left = 299
            Top = 15
            Width = 60
            Height = 22
            Caption = 'Armor'
            OnClick = btnRandomArmorClick
          end
          object btnRandomMana: TSpeedButton
            Left = 155
            Top = 15
            Width = 60
            Height = 22
            Caption = 'Mana'
            OnClick = btnRandomManaClick
          end
        end
      end
      object tbChrBonus: TTabSheet
        Caption = 'Bonus'
        ImageIndex = 9
        object Label34: TLabel
          Left = 17
          Top = 40
          Width = 64
          Height = 13
          Caption = 'HP Recovery'
        end
        object Label35: TLabel
          Left = 17
          Top = 72
          Width = 76
          Height = 13
          Caption = 'Mana Recovery'
        end
        object Label36: TLabel
          Left = 17
          Top = 104
          Width = 29
          Height = 13
          Caption = 'To Hit'
        end
        object Label37: TLabel
          Left = 17
          Top = 136
          Width = 32
          Height = 13
          Caption = 'Dodge'
        end
        object Label38: TLabel
          Left = 17
          Top = 168
          Width = 40
          Height = 13
          Caption = 'Damage'
        end
        object ShadowPanel18: TShadowPanel
          Left = 104
          Top = 24
          Width = 65
          Height = 177
          BevelOuter = bvNone
          TabOrder = 0
          ShadowPanelDepth = 1
          ShadowPanelColor = clBtnShadow
          object sedtChrManaRec: TFlatSpinEditInteger
            Left = 9
            Top = 45
            Width = 49
            Height = 20
            ColorFocused = clYellow
            ColorBorder = clBlack
            ColorFlat = 11794687
            AutoSize = False
            EditorEnabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Increment = 10
            MaxValue = 100
            MinValue = 0
            ParentFont = False
            TabOrder = 0
            Value = 0
          end
          object sedtChrDamage: TFlatSpinEditInteger
            Left = 9
            Top = 140
            Width = 49
            Height = 20
            ColorFocused = clYellow
            ColorBorder = clBlack
            ColorFlat = 11794687
            AutoSize = False
            EditorEnabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Increment = 10
            MaxValue = 500
            MinValue = 0
            ParentFont = False
            TabOrder = 1
            Value = 0
          end
          object sedtChrToHit: TFlatSpinEditInteger
            Left = 9
            Top = 77
            Width = 49
            Height = 20
            ColorFocused = clYellow
            ColorBorder = clBlack
            ColorFlat = 11794687
            AutoSize = False
            EditorEnabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            MaxValue = 100
            MinValue = 0
            ParentFont = False
            TabOrder = 2
            Value = 0
          end
          object sedtChrDodge: TFlatSpinEditInteger
            Left = 9
            Top = 108
            Width = 49
            Height = 20
            ColorFocused = clYellow
            ColorBorder = clBlack
            ColorFlat = 11794687
            AutoSize = False
            EditorEnabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            MaxValue = 100
            MinValue = 0
            ParentFont = False
            TabOrder = 3
            Value = 0
          end
          object sedtChrHPRec: TFlatSpinEditInteger
            Left = 9
            Top = 13
            Width = 49
            Height = 20
            ColorFocused = clYellow
            ColorBorder = clBlack
            ColorFlat = 11794687
            AutoSize = False
            EditorEnabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Increment = 10
            MaxValue = 100
            MinValue = 0
            ParentFont = False
            TabOrder = 4
            Value = 0
          end
        end
      end
      object tbChrSkills: TTabSheet
        Caption = 'Skills'
        ImageIndex = 2
        object GroupBox1: TGroupBox
          Left = 8
          Top = 8
          Width = 369
          Height = 89
          Caption = 'Combat Skills'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          object Label12: TLabel
            Left = 16
            Top = 24
            Width = 75
            Height = 13
            Caption = 'Unarmed Melee'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label14: TLabel
            Left = 16
            Top = 56
            Width = 62
            Height = 13
            Caption = 'Armed Melee'
          end
          object Label15: TLabel
            Left = 199
            Top = 24
            Width = 70
            Height = 13
            Caption = 'Ranged Melee'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label20: TLabel
            Left = 199
            Top = 56
            Width = 35
            Height = 13
            Caption = 'Magery'
          end
          object ShadowPanel7: TShadowPanel
            Left = 96
            Top = 16
            Width = 89
            Height = 65
            BevelOuter = bvNone
            TabOrder = 0
            ShadowPanelDepth = 2
            ShadowPanelColor = clBtnShadow
            object sedtChrArmed: TFlatSpinEditInteger
              Left = 7
              Top = 36
              Width = 63
              Height = 20
              ColorFocused = clYellow
              ColorBorder = clBlack
              ColorFlat = 11794687
              AutoSize = False
              EditorEnabled = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              MaxValue = 500
              MinValue = 1
              ParentFont = False
              TabOrder = 0
              Value = 10
            end
            object sedtChrUnArmed: TFlatSpinEditInteger
              Left = 7
              Top = 7
              Width = 63
              Height = 20
              ColorFocused = clYellow
              ColorBorder = clBlack
              ColorFlat = 11794687
              AutoSize = False
              EditorEnabled = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              MaxValue = 500
              MinValue = 1
              ParentFont = False
              TabOrder = 1
              Value = 10
            end
          end
          object ShadowPanel8: TShadowPanel
            Left = 273
            Top = 16
            Width = 89
            Height = 65
            BevelOuter = bvNone
            TabOrder = 1
            ShadowPanelDepth = 2
            ShadowPanelColor = clBtnShadow
            object sedtChrRanged: TFlatSpinEditInteger
              Left = 6
              Top = 6
              Width = 64
              Height = 20
              ColorFocused = clYellow
              ColorBorder = clBlack
              ColorFlat = 11794687
              AutoSize = False
              EditorEnabled = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              MaxValue = 500
              MinValue = 1
              ParentFont = False
              TabOrder = 0
              Value = 10
            end
            object sedtChrMagery: TFlatSpinEditInteger
              Left = 7
              Top = 36
              Width = 63
              Height = 20
              ColorFocused = clYellow
              ColorBorder = clBlack
              ColorFlat = 11794687
              AutoSize = False
              EditorEnabled = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              MaxValue = 500
              MinValue = 1
              ParentFont = False
              TabOrder = 1
              Value = 10
            end
          end
        end
        object GroupBox2: TGroupBox
          Left = 8
          Top = 104
          Width = 369
          Height = 169
          Caption = 'NonCombat Skills'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          object Label21: TLabel
            Left = 16
            Top = 24
            Width = 62
            Height = 13
            Caption = 'Lock Picking'
          end
          object Label22: TLabel
            Left = 16
            Top = 46
            Width = 55
            Height = 13
            Caption = 'Diplomancy'
          end
          object Label23: TLabel
            Left = 17
            Top = 69
            Width = 33
            Height = 13
            Caption = 'Stealth'
          end
          object Label30: TLabel
            Left = 17
            Top = 91
            Width = 28
            Height = 13
            Caption = 'Barter'
          end
          object Label32: TLabel
            Left = 17
            Top = 114
            Width = 24
            Height = 13
            Caption = 'Parry'
          end
          object Label33: TLabel
            Left = 17
            Top = 136
            Width = 61
            Height = 13
            Caption = 'Resist Magic'
          end
        end
      end
      object tbChrItems: TTabSheet
        Caption = 'Item List'
        ImageIndex = 1
        object Label24: TLabel
          Left = 8
          Top = 19
          Width = 98
          Height = 13
          Caption = 'Character Backpack'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label25: TLabel
          Left = 221
          Top = 19
          Width = 71
          Height = 13
          Caption = 'Magic Item List'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object btnOneToBP: TSpeedButton
          Left = 174
          Top = 56
          Width = 41
          Height = 22
          Hint = 'Add Selected Item(s) '
          Caption = '<'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          Layout = blGlyphBottom
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          OnClick = btnOneToBPClick
        end
        object btnAllToBP: TSpeedButton
          Left = 174
          Top = 85
          Width = 41
          Height = 22
          Hint = 'Add All Items'
          Caption = '<<'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          Layout = blGlyphBottom
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          OnClick = btnAllToBPClick
        end
        object btnOneFromBP: TSpeedButton
          Left = 174
          Top = 188
          Width = 41
          Height = 22
          Hint = 'Add Selected Item(s) '
          Caption = '<'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          Layout = blGlyphBottom
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          OnClick = btnOneFromBPClick
        end
        object btnAllFromBP: TSpeedButton
          Left = 174
          Top = 214
          Width = 41
          Height = 22
          Hint = 'Add All Items'
          Caption = '<<'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          Layout = blGlyphBottom
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          OnClick = btnAllFromBPClick
        end
        object Label28: TLabel
          Left = 222
          Top = 142
          Width = 74
          Height = 13
          Caption = 'Master Item List'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object btnRandomItem: TSpeedButton
          Left = 175
          Top = 136
          Width = 41
          Height = 22
          Hint = 'Add Random Items'
          Caption = '<<>>'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          Layout = blGlyphBottom
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          OnClick = btnRandomItemClick
        end
        object btnDeleteItem: TSpeedButton
          Left = 96
          Top = 260
          Width = 69
          Height = 22
          Caption = 'Delete Item'
          OnClick = btnDeleteItemClick
        end
        object ShadowPanel12: TShadowPanel
          Left = 4
          Top = 33
          Width = 165
          Height = 226
          BevelOuter = bvNone
          TabOrder = 0
          ShadowPanelDepth = 1
          ShadowPanelColor = clBtnShadow
          object lbChrBackPack: TFlatListBox
            Left = 4
            Top = 4
            Width = 157
            Height = 199
            ItemHeight = 13
            ScrollBars = True
            Color = clYellow
            ColorArrow = clBlue
            ColorBorder = clBlack
            ColorItemsRect = 11794687
            ColorItemsSelect = clWhite
            Sorted = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            ParentColor = False
          end
        end
        object ShadowPanel13: TShadowPanel
          Left = 217
          Top = 33
          Width = 165
          Height = 104
          BevelOuter = bvNone
          TabOrder = 1
          ShadowPanelDepth = 1
          ShadowPanelColor = clBtnShadow
          object lbMagicItemList: TFlatListBox
            Left = 4
            Top = 4
            Width = 157
            Height = 79
            Items.Strings = (
              'Magic Belt'
              'Magic Boots'
              'Magic Cloak'
              'Magic Helmet'
              'Magic Ring'
              'Magic Shield'
              'Magic Socks'
              'Magic Sword')
            ItemHeight = 13
            MultiSelect = True
            ScrollBars = True
            Color = clYellow
            ColorArrow = clBlue
            ColorBorder = clBlack
            ColorItemsRect = 11794687
            ColorItemsSelect = clWhite
            Sorted = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            ParentColor = False
          end
        end
        object ShadowPanel16: TShadowPanel
          Left = 217
          Top = 156
          Width = 165
          Height = 104
          BevelOuter = bvNone
          TabOrder = 2
          ShadowPanelDepth = 1
          ShadowPanelColor = clBtnShadow
          object lbMstrItemList: TFlatListBox
            Left = 4
            Top = 2
            Width = 157
            Height = 79
            ItemHeight = 13
            MultiSelect = True
            ScrollBars = True
            Color = clYellow
            ColorArrow = clBlue
            ColorBorder = clBlack
            ColorItemsRect = 11794687
            ColorItemsSelect = clWhite
            Sorted = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            ParentColor = False
          end
        end
      end
      object tbChrEquip: TTabSheet
        Caption = 'Equipment'
        ImageIndex = 7
      end
      object tbChrAIScript: TTabSheet
        Caption = 'AI Script'
        ImageIndex = 3
        object Panel3: TPanel
          Left = 0
          Top = 0
          Width = 385
          Height = 285
          Align = alClient
          BevelOuter = bvLowered
          Caption = 'Panel2'
          TabOrder = 0
          object pgcAIScript: TPageControl
            Left = 1
            Top = 1
            Width = 383
            Height = 283
            ActivePage = TabSheet9
            Align = alClient
            HotTrack = True
            TabOrder = 0
            TabPosition = tpBottom
            TabStop = False
            TabWidth = 189
            object TabSheet8: TTabSheet
              Caption = 'Idle AI Script'
              object ShadowPanel10: TShadowPanel
                Left = 0
                Top = 0
                Width = 375
                Height = 255
                Align = alClient
                BevelOuter = bvNone
                TabOrder = 0
                ShadowPanelDepth = 1
                ShadowPanelColor = clBtnShadow
                object FlatPanel2: TFlatPanel
                  Left = 0
                  Top = 0
                  Width = 372
                  Height = 245
                  ParentColor = True
                  ColorHighLight = clBlack
                  ColorShadow = clBlack
                  TabOrder = 0
                  UseDockManager = True
                  object mmChrIdlScr: TMemoEx
                    Left = 1
                    Top = 1
                    Width = 370
                    Height = 243
                    Cursor = crIBeam
                    TabOrder = 0
                    BorderStyle = bsNone
                    ScrollBars = ssVertical
                    GutterWidth = 5
                    RightMarginColor = clSilver
                    Completion.Enabled = False
                    Completion.Separator = '='
                    Completion.ItemHeight = 13
                    Completion.Interval = 800
                    Completion.ListBoxStyle = lbStandard
                    Completion.CaretChar = '|'
                    Completion.CRLF = '/n'
                    TabSize = 4
                    IndentSize = 4
                    AutoIndentSize = 0
                    SelForeColor = clHighlightText
                    SelBackColor = clHighlight
                    StripInvisible = True
                    OnGetLineAttr = mmChrIdlScrGetLineAttr
                    Align = alClient
                    Ctl3D = True
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -13
                    Font.Name = 'Courier New'
                    Font.Pitch = fpFixed
                    Font.Style = []
                    ParentColor = False
                    TabStop = True
                    UseDockManager = False
                  end
                end
              end
            end
            object TabSheet9: TTabSheet
              Caption = 'Combat AI Script'
              ImageIndex = 1
              object ShadowPanel11: TShadowPanel
                Left = 0
                Top = 0
                Width = 375
                Height = 255
                Align = alClient
                BevelOuter = bvNone
                TabOrder = 0
                ShadowPanelDepth = 1
                ShadowPanelColor = clBtnShadow
                object FlatPanel3: TFlatPanel
                  Left = 0
                  Top = 0
                  Width = 372
                  Height = 245
                  ParentColor = True
                  ColorHighLight = clBlack
                  ColorShadow = clBlack
                  TabOrder = 0
                  UseDockManager = True
                  object mmChrCmbScr: TMemoEx
                    Left = 1
                    Top = 1
                    Width = 370
                    Height = 243
                    Cursor = crIBeam
                    TabOrder = 0
                    BorderStyle = bsNone
                    ScrollBars = ssVertical
                    GutterWidth = 5
                    RightMarginColor = clSilver
                    Completion.Enabled = False
                    Completion.Separator = '='
                    Completion.ItemHeight = 13
                    Completion.Interval = 800
                    Completion.ListBoxStyle = lbStandard
                    Completion.CaretChar = '|'
                    Completion.CRLF = '/n'
                    TabSize = 4
                    IndentSize = 4
                    AutoIndentSize = 0
                    SelForeColor = clHighlightText
                    SelBackColor = clHighlight
                    OnGetLineAttr = mmChrIdlScrGetLineAttr
                    Align = alClient
                    Ctl3D = True
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -13
                    Font.Name = 'Courier New'
                    Font.Pitch = fpFixed
                    Font.Style = []
                    ParentColor = False
                    TabStop = True
                    UseDockManager = False
                  end
                end
              end
            end
          end
        end
      end
      object tbChrEventScript: TTabSheet
        Caption = 'Event Script'
        ImageIndex = 4
        object ShadowPanel9: TShadowPanel
          Left = 0
          Top = 0
          Width = 385
          Height = 285
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 0
          ShadowPanelDepth = 1
          ShadowPanelColor = clBtnShadow
          object FlatComboBox2: TFlatComboBox
            Left = 30
            Top = 5
            Width = 326
            Height = 21
            Style = csDropDownList
            Color = 11794687
            ColorBorder = clBlack
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ItemHeight = 13
            Items.Strings = (
              'OnActivate'
              'OnDie'
              'OnAttacked'
              'OnFirstAttack'
              'OnLoad'
              'OnActivate')
            ParentFont = False
            TabOrder = 0
            Text = 'OnActivate'
            ItemIndex = 0
          end
          object FlatPanel1: TFlatPanel
            Left = 8
            Top = 32
            Width = 372
            Height = 245
            ParentColor = True
            ColorHighLight = clBlack
            ColorShadow = clBlack
            TabOrder = 1
            UseDockManager = True
            object mmChrEventScr: TMemoEx
              Left = 1
              Top = 1
              Width = 370
              Height = 243
              Cursor = crIBeam
              TabOrder = 0
              BorderStyle = bsNone
              ScrollBars = ssVertical
              GutterWidth = 5
              RightMarginColor = clSilver
              Completion.Enabled = False
              Completion.Separator = '='
              Completion.ItemHeight = 13
              Completion.Interval = 800
              Completion.ListBoxStyle = lbStandard
              Completion.CaretChar = '|'
              Completion.CRLF = '/n'
              TabSize = 4
              IndentSize = 4
              AutoIndentSize = 0
              SelForeColor = clHighlightText
              SelBackColor = clHighlight
              OnGetLineAttr = mmChrIdlScrGetLineAttr
              Align = alClient
              Ctl3D = True
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Courier New'
              Font.Pitch = fpFixed
              Font.Style = []
              ParentColor = False
              TabStop = True
              UseDockManager = False
            end
          end
        end
      end
      object tbChrSpells: TTabSheet
        Caption = 'Spell List'
        ImageIndex = 5
        object Label26: TLabel
          Left = 8
          Top = 19
          Width = 100
          Height = 13
          Caption = 'Character Spell Book'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label27: TLabel
          Left = 221
          Top = 20
          Width = 77
          Height = 13
          Caption = 'Master Spell List'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object SpeedButton5: TSpeedButton
          Left = 174
          Top = 71
          Width = 41
          Height = 22
          Caption = '<'
          Flat = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          Layout = blGlyphBottom
          ParentFont = False
        end
        object SpeedButton6: TSpeedButton
          Left = 174
          Top = 98
          Width = 41
          Height = 22
          Caption = '<<'
          Flat = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          Layout = blGlyphBottom
          ParentFont = False
        end
        object SpeedButton7: TSpeedButton
          Left = 174
          Top = 166
          Width = 41
          Height = 22
          Caption = '>'
          Flat = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          Layout = blGlyphBottom
          ParentFont = False
        end
        object SpeedButton8: TSpeedButton
          Left = 174
          Top = 192
          Width = 41
          Height = 22
          Caption = '>>'
          Flat = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          Layout = blGlyphBottom
          ParentFont = False
        end
        object ShadowPanel14: TShadowPanel
          Left = 4
          Top = 32
          Width = 165
          Height = 241
          BevelOuter = bvNone
          TabOrder = 0
          ShadowPanelDepth = 1
          ShadowPanelColor = clBtnShadow
          object FlatCheckListBox1: TFlatCheckListBox
            Left = 4
            Top = 4
            Width = 157
            Height = 232
            ColorBorder = clBlack
            ColorItemsRect = 11794687
            ColorItemsSelect = clNavy
          end
        end
        object ShadowPanel15: TShadowPanel
          Left = 217
          Top = 32
          Width = 165
          Height = 242
          BevelOuter = bvNone
          TabOrder = 1
          ShadowPanelDepth = 1
          ShadowPanelColor = clBtnShadow
          object FlatListBox5: TFlatListBox
            Left = 4
            Top = 4
            Width = 157
            Height = 232
            ColorBorder = clBlack
            ColorItemsRect = 11794687
            ColorItemsSelect = clNavy
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
        end
      end
      object tbChrSounds: TTabSheet
        Caption = 'Sounds'
        ImageIndex = 6
      end
      object TabSheet1: TTabSheet
        Caption = 'POX Data'
        ImageIndex = 8
        object ShadowPanel17: TShadowPanel
          Left = 168
          Top = 12
          Width = 216
          Height = 186
          BevelOuter = bvNone
          TabOrder = 0
          ShadowPanelDepth = 1
          ShadowPanelColor = clBtnShadow
          object Panel2: TPanel
            Left = 5
            Top = 4
            Width = 204
            Height = 176
            BevelOuter = bvNone
            BorderWidth = 1
            Color = clBlack
            TabOrder = 0
            object Image1: TImage
              Left = 1
              Top = 1
              Width = 202
              Height = 174
              Align = alClient
            end
          end
        end
        object Button1: TButton
          Left = 16
          Top = 32
          Width = 75
          Height = 25
          Caption = 'Button1'
          TabOrder = 1
          OnClick = Button1Click
        end
        object tbPoxImage: TTrackBar
          Left = 162
          Top = 200
          Width = 223
          Height = 41
          Max = 300
          Orientation = trHorizontal
          Frequency = 1
          Position = 0
          SelEnd = 0
          SelStart = 0
          TabOrder = 2
          TickMarks = tmTopLeft
          TickStyle = tsAuto
          OnChange = tbPoxImageChange
        end
      end
    end
  end
  object pnlChrBtnBar: TPanel
    Left = 0
    Top = 0
    Width = 575
    Height = 33
    Align = alTop
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 1
    object btnNew: TBitBtn
      Left = 4
      Top = 5
      Width = 62
      Height = 24
      Caption = '&New'
      TabOrder = 0
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
        333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
        0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
        07333337F33333337F333330FFFFFFFF07333337F33333337F333330FFFFFFFF
        07333FF7F33333337FFFBBB0FFFFFFFF0BB37777F3333333777F3BB0FFFFFFFF
        0BBB3777F3333FFF77773330FFFF000003333337F333777773333330FFFF0FF0
        33333337F3337F37F3333330FFFF0F0B33333337F3337F77FF333330FFFF003B
        B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
        3BB33773333773333773B333333B3333333B7333333733333337}
      NumGlyphs = 2
    end
    object btnSave: TBitBtn
      Left = 76
      Top = 5
      Width = 62
      Height = 24
      Caption = '&Save'
      TabOrder = 1
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333FFFFFFFFFFFFF33000077777770033377777777777773F000007888888
        00037F3337F3FF37F37F00000780088800037F3337F77F37F37F000007800888
        00037F3337F77FF7F37F00000788888800037F3337777777337F000000000000
        00037F3FFFFFFFFFFF7F00000000000000037F77777777777F7F000FFFFFFFFF
        00037F7F333333337F7F000FFFFFFFFF00037F7F333333337F7F000FFFFFFFFF
        00037F7F333333337F7F000FFFFFFFFF00037F7F333333337F7F000FFFFFFFFF
        00037F7F333333337F7F000FFFFFFFFF07037F7F33333333777F000FFFFFFFFF
        0003737FFFFFFFFF7F7330099999999900333777777777777733}
      NumGlyphs = 2
    end
    object btnDelete: TBitBtn
      Left = 148
      Top = 5
      Width = 62
      Height = 24
      Caption = '&Delete'
      TabOrder = 2
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
        55555FFFFFFF5F55FFF5777777757559995777777775755777F7555555555550
        305555555555FF57F7F555555550055BB0555555555775F777F55555550FB000
        005555555575577777F5555550FB0BF0F05555555755755757F555550FBFBF0F
        B05555557F55557557F555550BFBF0FB005555557F55575577F555500FBFBFB0
        B05555577F555557F7F5550E0BFBFB00B055557575F55577F7F550EEE0BFB0B0
        B05557FF575F5757F7F5000EEE0BFBF0B055777FF575FFF7F7F50000EEE00000
        B0557777FF577777F7F500000E055550805577777F7555575755500000555555
        05555777775555557F5555000555555505555577755555557555}
      NumGlyphs = 2
    end
  end
  object savedat: TSaveDialog
    DefaultExt = 'dat'
    Filter = 'DAT(*.dat)|*.dat'
    Left = 304
    Top = 8
  end
  object OpenDialog: TOpenDialog
    DefaultExt = 'pox'
    Filter = 'POX (*.pox)|*.pox'
    Left = 536
    Top = 312
  end
end
