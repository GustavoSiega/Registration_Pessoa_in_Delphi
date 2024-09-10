unit uCadastro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.ExtCtrls,
  Vcl.DBCtrls, System.Net.URLClient, System.Net.HttpClient,
  System.Net.HttpClientComponent;

type
  TFrmCadastro = class(TForm)
    lblInfoCliente: TLabel;
    btnConfirmar: TButton;
    btnCancelar: TButton;
    lblLogradouro: TLabel;
    btnValida: TButton;
    tdbCPF: TDBEdit;
    tdbEmail: TDBEdit;
    tdbFone: TDBEdit;
    tdbCEP: TDBEdit;
    tdbCidade: TDBEdit;
    tdbBairro: TDBEdit;
    tdbUF: TDBEdit;
    tdbNcasa: TDBEdit;
    tdbNome: TDBEdit;
    tdbLogradouro: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    HTTPClient: TNetHTTPClient;
    procedure btnConfirmarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnValidaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadastro: TFrmCadastro;
  vNome : String;
  vCFP : String;
  vEmail : String;
  vTelefone : String;
  vCEP : String;
  vLogradouro : String;
  vNumCasa : Integer;
  vBairro : String;
  vCidade : String;
  vUF : String;

implementation

{$R *.dfm}

uses uDM, uListaCadastro, uPrincipal, System.JSON;

procedure TFrmCadastro.btnCancelarClick(Sender: TObject);
begin
  close;
end;

procedure TFrmCadastro.btnConfirmarClick(Sender: TObject);
begin
  xa.tbCadaPess.Post;
  ShowMessage('Pessoa cadastrada com Sucesso!!');
end;

procedure TFrmCadastro.btnValidaClick(Sender: TObject);
var
  URL: String;
  JSONObject : TJSONObject;
  JSONValue : TJSONValue;
  HTTPClient : TNetHTTPClient;
  Response : IHTTPResponse;

begin
  HTTPClient := TNetHTTPClient.Create(nil);
  try
    URL := 'https://viacep.com.br/ws/' + tdbCEP.Text + '/json/';
    Response := HTTPClient.Get(URL);

    if Response.StatusCode = 200 then
    begin
      JSONValue := TJSONObject.ParseJSONValue(Response.ContentAsString());
      try
        if JSONValue is TJSONObject then
        begin
          JSONObject := TJSONObject(JSONValue);
          tdbCidade.Text := JSONObject.GetValue<String>('localidade');
          tdbUF.Text := JSONObject.GetValue<String>('uf');
          tdbBairro.Text := JSONObject.GetValue<String>('bairro');
          tdbLogradouro.Text := JSONObject.GetValue<String>('logradouro');
        end
        else
        begin
          ShowMessage('Resposta JSON inv�lida!');
        end;
      finally
        JSONValue.Free;
      end;
    end
    else
    begin
      ShowMessage('CEP Inv�lido!');
    end;
  finally
    HTTPClient.Free;
  end;
end;

procedure TFrmCadastro.FormCreate(Sender: TObject);
begin
  xa.tbCadaPess.Append;
end;
end.
