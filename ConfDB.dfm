object frmConfDB: TfrmConfDB
  Left = 133
  Top = 111
  BorderStyle = bsDialog
  Caption = 'Configurar Banco de Dados'
  ClientHeight = 119
  ClientWidth = 536
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 21
    Top = 20
    Width = 155
    Height = 13
    Caption = 'Localiza'#231#227'o do Banco de Dados'
  end
  object Label2: TLabel
    Left = 144
    Top = 50
    Width = 36
    Height = 13
    Caption = 'Usu'#225'rio'
  end
  object Senha: TLabel
    Left = 144
    Top = 81
    Width = 31
    Height = 13
    Caption = 'Senha'
  end
  object edtServidor: TLMDFileOpenEdit
    Left = 183
    Top = 17
    Width = 343
    Height = 21
    Hint = ''
    Bevel.Mode = bmWindows
    Caret.BlinkRate = 500
    Caret.Style = csBlock
    TabOrder = 0
    Transparent = True
    CustomButtons = <
      item
        Glyph.Data = {
          DE000000424DDE0000000000000076000000280000000E0000000D0000000100
          0400000000006800000000000000000000001000000010000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00D00000000DDD
          DD000033333330DDDD000B033333330DDD000FB033333330DD000BFB03333333
          0D000FBFB000000000000BFBFBFBF0DDDD000FBFBFBFB0DDDD000BFB000000DD
          DD00D000DDDDDD000D00DDDDDDDDDDD00D00DDDDDDD0DD0D0D00DDDDDDDD00DD
          DD00}
        ParentFont = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Index = 0
        DisplayName = 'TLMDSpecialButton'
        ImageIndex = 0
        ListIndex = 0
        UsePngGlyph = False
      end>
    CustomButtonWidth = 18
    Title = 'Localiza'#231#227'o do banco de Dados'
    Filter = 'Bancos de dados Interbase|*.gdb|Bancos de dados Firebird|*.fdb'
    Filename = '*.gdb'
    DefaultExt = '*.gdb'
    FilenameOnly = False
  end
  object btnOK: TBitBtn
    Left = 309
    Top = 78
    Width = 75
    Height = 25
    Caption = 'OK'
    ModalResult = 1
    TabOrder = 3
  end
  object edtUsuario: TEdit
    Left = 183
    Top = 47
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object edtSenha: TEdit
    Left = 182
    Top = 78
    Width = 121
    Height = 21
    PasswordChar = '*'
    TabOrder = 2
  end
end
