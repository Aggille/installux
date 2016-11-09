object frmAniversarios: TfrmAniversarios
  Left = 38
  Top = 106
  Width = 731
  Height = 317
  Caption = 'Aniersariantes do dia'
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
  object RzLabel1: TRzLabel
    Left = 0
    Top = 0
    Width = 723
    Height = 24
    Align = alTop
    Alignment = taCenter
    Caption = 'Aniversariantes do dia'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object wwDBGrid1: TwwDBGrid
    Left = 0
    Top = 24
    Width = 723
    Height = 218
    DisableThemes = False
    Selected.Strings = (
      'NOME'#9'60'#9'Nome'#9'F'#9
      'TELEFONE'#9'18'#9'Telefone'#9'F'#9
      'ANIVERSARIO'#9'12'#9'Anivers'#225'rio'#9'F'#9
      'NOME_CONJUGE'#9'60'#9'C'#244'njuge'#9#9
      'ANIVERSARIO_CONJUGE'#9'10'#9'Aniv.'#9'F'#9
      'EMAIL'#9'50'#9'Email'#9'F'#9
      'TIPO'#9'9'#9'Tipo'#9'F'#9)
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    Align = alTop
    DataSource = dtsaniversarios
    Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
    ReadOnly = True
    TabOrder = 0
    TitleAlignment = taLeftJustify
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    TitleLines = 1
    TitleButtons = False
    OnCalcCellColors = wwDBGrid1CalcCellColors
    PaintOptions.AlternatingRowColor = clInfoBk
  end
  object BitBtn1: TBitBtn
    Left = 640
    Top = 250
    Width = 75
    Height = 25
    TabOrder = 1
    Kind = bkOK
  end
  object qryAniversarios: TIBQuery
    Database = frmPrincipal.idbInstalLux
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT'
      
        'NOME, TELEFONE, ANIVERSARIO, EMAIL, CAST( NOME_CONJUGE AS VARCHA' +
        'R( 60 ) ) AS NOME_CONJUGE , ANIVERSARIO_CONJUGE , cast( '#39'Cliente' +
        #39' as varchar(10 ) )  as Tipo'
      'FROM CLIENTES'
      ''
      'WHERE'
      '('
      
        'extract( day from ANIVERSARIO ) = extract( day from CAST( '#39'NOW'#39' ' +
        'AS date) ) '
      'and'
      
        'extract( month from ANIVERSARIO ) = extract( month from CAST( '#39'N' +
        'OW'#39' AS date ) ) '
      ')'
      'OR'
      '('
      
        'extract( day from ANIVERSARIO_CONJUGE ) = extract( day from CAST' +
        '( '#39'NOW'#39' AS date ) )'
      'and'
      
        'extract( month from ANIVERSARIO_CONJUGE ) = extract( month from ' +
        'CAST( '#39'NOW'#39' AS date ) )'
      ')'
      ''
      'UNION'
      ''
      'SELECT'
      
        'NOME, TELEFONE, ANIVERSARIO, EMAIL, CAST( '#39#39' AS VARCHAR(60 ) )  ' +
        'AS NOME_CONJUGE, cast( null as date ) AS ANIVERSARIO_CONJUGE, ca' +
        'st( '#39'Arquiteto'#39' as varchar(10 ) ) as Tipo'
      ''
      'FROM ARQUITETOS'
      'WHERE '
      
        'extract( day from ANIVERSARIO ) = extract( day from CAST( '#39'NOW'#39' ' +
        'AS date) )'
      'and'
      
        'extract( month from ANIVERSARIO ) = extract( month from CAST( '#39'N' +
        'OW'#39' AS date ) )')
    Left = 15
    Top = 15
    object qryAniversariosNOME: TIBStringField
      DisplayLabel = 'Nome'
      DisplayWidth = 60
      FieldName = 'NOME'
      Required = True
      Size = 60
    end
    object qryAniversariosTELEFONE: TIBStringField
      DisplayLabel = 'Telefone'
      DisplayWidth = 18
      FieldName = 'TELEFONE'
      Size = 50
    end
    object qryAniversariosANIVERSARIO: TDateField
      DisplayLabel = 'Anivers'#225'rio'
      DisplayWidth = 12
      FieldName = 'ANIVERSARIO'
    end
    object qryAniversariosNOME_CONJUGE: TIBStringField
      DisplayLabel = 'C'#244'njuge'
      DisplayWidth = 60
      FieldName = 'NOME_CONJUGE'
      Size = 60
    end
    object qryAniversariosANIVERSARIO_CONJUGE: TDateField
      DisplayLabel = 'Aniv.'
      DisplayWidth = 10
      FieldName = 'ANIVERSARIO_CONJUGE'
    end
    object qryAniversariosEMAIL: TIBStringField
      DisplayLabel = 'Email'
      DisplayWidth = 50
      FieldName = 'EMAIL'
      Size = 50
    end
    object qryAniversariosTIPO: TIBStringField
      DisplayLabel = 'Tipo'
      DisplayWidth = 9
      FieldName = 'TIPO'
      Required = True
      FixedChar = True
      Size = 9
    end
  end
  object IBTransaction1: TIBTransaction
    Active = True
    DefaultDatabase = frmPrincipal.idbInstalLux
    AutoStopAction = saNone
    Left = 50
    Top = 15
  end
  object dtsaniversarios: TDataSource
    DataSet = qryAniversarios
    Left = 20
    Top = 25
  end
end
