object FrmCadastro: TFrmCadastro
  Left = 0
  Top = 0
  Caption = 'Cadastro'
  ClientHeight = 573
  ClientWidth = 790
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnCreate = FormCreate
  TextHeight = 15
  object lblInfoCliente: TLabel
    Left = 40
    Top = 32
    Width = 194
    Height = 28
    Caption = 'Informa'#231#245'es Cliente:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblLogradouro: TLabel
    Left = 32
    Top = 240
    Width = 114
    Height = 28
    Caption = 'Logradouro:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label1: TLabel
    Left = 40
    Top = 73
    Width = 36
    Height = 15
    Caption = 'Nome:'
  end
  object Label2: TLabel
    Left = 400
    Top = 73
    Width = 24
    Height = 15
    Caption = 'CPF:'
  end
  object Label3: TLabel
    Left = 40
    Top = 139
    Width = 37
    Height = 15
    Caption = 'E-mail:'
  end
  object Label4: TLabel
    Left = 400
    Top = 139
    Width = 47
    Height = 15
    Caption = 'Telefone:'
  end
  object Label5: TLabel
    Left = 32
    Top = 280
    Width = 24
    Height = 15
    Caption = 'CEP:'
  end
  object Label6: TLabel
    Left = 32
    Top = 344
    Width = 40
    Height = 15
    Caption = 'Cidade:'
  end
  object Label7: TLabel
    Left = 32
    Top = 416
    Width = 34
    Height = 15
    Caption = 'Bairro:'
  end
  object Label8: TLabel
    Left = 32
    Top = 488
    Width = 65
    Height = 15
    Caption = 'Logradouro:'
  end
  object Label9: TLabel
    Left = 416
    Top = 488
    Width = 45
    Height = 15
    Caption = 'N'#176' Casa:'
  end
  object Label10: TLabel
    Left = 416
    Top = 344
    Width = 17
    Height = 15
    Caption = 'UF:'
  end
  object btnConfirmar: TButton
    Left = 672
    Top = 31
    Width = 113
    Height = 41
    Caption = 'Confirmar'
    TabOrder = 0
    OnClick = btnConfirmarClick
  end
  object btnCancelar: TButton
    Left = 672
    Top = 94
    Width = 113
    Height = 41
    Caption = 'Cancelar'
    TabOrder = 1
    OnClick = btnCancelarClick
  end
  object btnValida: TButton
    Left = 256
    Top = 290
    Width = 105
    Height = 46
    Caption = 'Validar'
    TabOrder = 2
    OnClick = btnValidaClick
  end
  object tdbNome: TDBEdit
    Left = 40
    Top = 94
    Width = 321
    Height = 23
    DataField = 'nome_cliente'
    DataSource = xa.ds
    TabOrder = 3
  end
  object tdbCPF: TDBEdit
    Left = 400
    Top = 94
    Width = 201
    Height = 23
    DataField = 'cpf_cliente'
    DataSource = xa.ds
    TabOrder = 4
  end
  object tdbEmail: TDBEdit
    Left = 40
    Top = 160
    Width = 321
    Height = 23
    DataField = 'email_cliente'
    DataSource = xa.ds
    TabOrder = 5
  end
  object tdbFone: TDBEdit
    Left = 400
    Top = 160
    Width = 201
    Height = 23
    DataField = 'fone_cliente'
    DataSource = xa.ds
    TabOrder = 6
  end
  object tdbCEP: TDBEdit
    Left = 32
    Top = 301
    Width = 169
    Height = 23
    DataField = 'cep_cliente'
    DataSource = xa.ds
    TabOrder = 7
  end
  object tdbCidade: TDBEdit
    Left = 32
    Top = 365
    Width = 297
    Height = 23
    DataField = 'cidade_cliente'
    DataSource = xa.ds
    TabOrder = 8
  end
  object tdbBairro: TDBEdit
    Left = 32
    Top = 437
    Width = 297
    Height = 23
    DataField = 'bairro_cliente'
    DataSource = xa.ds
    TabOrder = 9
  end
  object tdbLogradouro: TDBEdit
    Left = 32
    Top = 509
    Width = 297
    Height = 23
    DataField = 'logra_cliente'
    DataSource = xa.ds
    TabOrder = 10
  end
  object tdbUF: TDBEdit
    Left = 416
    Top = 365
    Width = 89
    Height = 23
    DataField = 'UF_cliente'
    DataSource = xa.ds
    TabOrder = 11
  end
  object tdbNcasa: TDBEdit
    Left = 416
    Top = 509
    Width = 89
    Height = 23
    DataField = 'ncasa_cliente'
    DataSource = xa.ds
    TabOrder = 12
  end
  object HTTPClient: TNetHTTPClient
    UserAgent = 'Embarcadero URI Client/1.0'
    Left = 712
    Top = 342
  end
end
