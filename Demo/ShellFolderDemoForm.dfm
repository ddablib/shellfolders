object Form1: TForm1
  Left = 201
  Top = 108
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Shell Folders Demo'
  ClientHeight = 679
  ClientWidth = 776
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Arial'
  Font.Style = []
  OldCreateOrder = False
  Scaled = False
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 15
  object imgFolderLarge: TImage
    Left = 593
    Top = 468
    Width = 39
    Height = 39
  end
  object lblIcon: TLabel
    Left = 554
    Top = 468
    Width = 26
    Height = 15
    Caption = 'Icon:'
  end
  object lblFolder: TLabel
    Left = 386
    Top = 502
    Width = 32
    Height = 15
    Caption = 'PATH:'
  end
  object imgFolderSmall: TImage
    Left = 642
    Top = 468
    Width = 20
    Height = 19
  end
  object LV: TListView
    Left = 0
    Top = 0
    Width = 776
    Height = 395
    Align = alTop
    Columns = <
      item
        AutoSize = True
        Caption = 'ID'
      end
      item
        Caption = 'Display name'
        Width = 209
      end
      item
        AutoSize = True
        Caption = 'Folder path'
      end>
    ReadOnly = True
    RowSelect = True
    TabOrder = 0
    ViewStyle = vsReport
    OnDblClick = LVDblClick
    OnSelectItem = LVSelectItem
  end
  object btnBrowse: TButton
    Left = 10
    Top = 404
    Width = 178
    Height = 30
    Caption = 'Browse selected folder'
    Enabled = False
    TabOrder = 1
    OnClick = btnBrowseClick
  end
  object rbOnSelChange: TRadioButton
    Left = 386
    Top = 438
    Width = 139
    Height = 21
    Caption = 'Use OnSelChange'
    TabOrder = 4
    OnClick = rbOnSelChangeClick
  end
  object rbOnSelChangeEx: TRadioButton
    Left = 386
    Top = 468
    Width = 153
    Height = 21
    Caption = 'Use OnSelChangeEx'
    Checked = True
    TabOrder = 5
    TabStop = True
    OnClick = rbOnSelChangeExClick
  end
  object chkBoldHeadText: TCheckBox
    Left = 386
    Top = 409
    Width = 169
    Height = 21
    Caption = 'Bold Headline Text?'
    TabOrder = 3
  end
  object gpOptions: TGroupBox
    Left = 10
    Top = 442
    Width = 356
    Height = 228
    Caption = 'Dialog Box Options'
    TabOrder = 2
    object chkShowHelp: TCheckBox
      Left = 10
      Top = 21
      Width = 237
      Height = 21
      Caption = 'Show Help'
      TabOrder = 0
      OnClick = DlgOptionsClick
    end
    object chkContextHelp: TCheckBox
      Left = 10
      Top = 46
      Width = 237
      Height = 20
      Caption = 'Context Help'
      TabOrder = 1
      OnClick = DlgOptionsClick
    end
    object chkStatusText: TCheckBox
      Left = 10
      Top = 70
      Width = 237
      Height = 21
      Caption = 'Status Text'
      TabOrder = 2
      OnClick = DlgOptionsClick
    end
    object chkDirsOnly: TCheckBox
      Left = 10
      Top = 95
      Width = 237
      Height = 21
      Caption = 'Directories Only'
      TabOrder = 3
      OnClick = DlgOptionsClick
    end
    object chkNewDlgStyle: TCheckBox
      Left = 10
      Top = 119
      Width = 237
      Height = 21
      Caption = 'New Style Dialog'
      TabOrder = 4
      OnClick = DlgOptionsClick
    end
    object chkHideMakeFolderBtn: TCheckBox
      Left = 10
      Top = 144
      Width = 237
      Height = 21
      Caption = 'Hide "Make Folder" Button'
      TabOrder = 5
      OnClick = DlgOptionsClick
    end
    object chkEditBox: TCheckBox
      Left = 10
      Top = 169
      Width = 237
      Height = 21
      Caption = 'Display Edit Box'
      TabOrder = 6
      OnClick = DlgOptionsClick
    end
    object chkHint: TCheckBox
      Left = 10
      Top = 194
      Width = 237
      Height = 21
      Caption = 'Display Usage Hint'
      TabOrder = 7
      OnClick = DlgOptionsClick
    end
  end
  object chkOnValidationFailed: TCheckBox
    Left = 562
    Top = 409
    Width = 190
    Height = 21
    BiDiMode = bdLeftToRight
    Caption = 'Use OnValidationFailed'
    Color = clBtnFace
    ParentBiDiMode = False
    ParentColor = False
    TabOrder = 6
    OnClick = chkOnValidationFailedClick
  end
  object SpecialFolderInfo: TPJSpecialFolderInfo
    Left = 320
    Top = 248
  end
  object BrowseDlg: TPJBrowseDialog
    Options = [boContextHelp, boStatusText, boDirsOnly]
    OnInitialise = BrowseDlgInitialise
    OnSelChangeEx = BrowseDlgSelChangeEx
    OnClose = BrowseDlgClose
    OnValidationFailed = BrowseDlgValidationFailed
    Left = 352
    Top = 248
  end
  object ilLarge: TImageList
    ShareImages = True
    Left = 384
    Top = 248
  end
  object ilSmall: TImageList
    ShareImages = True
    Left = 416
    Top = 248
  end
end
