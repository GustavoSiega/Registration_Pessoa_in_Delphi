unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TFrmPrincipal = class(TForm)
    btnCadastrar: TButton;
    btnListar: TButton;
    procedure btnCadastrarClick(Sender: TObject);
    procedure btnListarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

{$R *.dfm}

uses uCadastro, uDM, uListaCadastro;

procedure TFrmPrincipal.btnCadastrarClick(Sender: TObject);
begin
  FrmCadastro.ShowModal;
end;

procedure TFrmPrincipal.btnListarClick(Sender: TObject);
begin
  FrmListaDosCadastros.ShowModal;
end;

end.
