object FrmPrincipal: TFrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Principal'
  ClientHeight = 470
  ClientWidth = 672
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object btnCadastrar: TButton
    Left = 128
    Top = 176
    Width = 161
    Height = 81
    Caption = 'CADASTRAR'
    TabOrder = 0
    OnClick = btnCadastrarClick
  end
  object btnListar: TButton
    Left = 376
    Top = 176
    Width = 161
    Height = 81
    Caption = 'LISTAR CADASTROS'
    TabOrder = 1
    OnClick = btnListarClick
  end
end
