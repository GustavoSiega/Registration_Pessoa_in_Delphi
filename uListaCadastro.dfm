object FrmListaDosCadastros: TFrmListaDosCadastros
  Left = 0
  Top = 0
  Caption = 'Lista dos Cadastros'
  ClientHeight = 542
  ClientWidth = 771
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object lblLista: TLabel
    Left = 272
    Top = 40
    Width = 192
    Height = 31
    Caption = 'Lista de Cadastros'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -23
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object dbGridLista: TDBGrid
    Left = 0
    Top = 104
    Width = 769
    Height = 289
    DataSource = xa.ds
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
  end
  object btnEditar: TButton
    Left = 152
    Top = 441
    Width = 137
    Height = 49
    Caption = 'Editar'
    TabOrder = 1
    OnClick = btnEditarClick
  end
  object btnDeletar: TButton
    Left = 464
    Top = 441
    Width = 137
    Height = 49
    Caption = 'Deletar'
    TabOrder = 2
    OnClick = btnDeletarClick
  end
end
