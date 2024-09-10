program TelaCadastros;

uses
  Vcl.Forms,
  uPrincipal in 'uPrincipal.pas' {FrmPrincipal},
  uCadastro in 'uCadastro.pas' {FrmCadastro},
  uListaCadastro in 'uListaCadastro.pas' {FrmListaDosCadastros},
  uDM in 'uDM.pas' {xa: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Txa, xa);
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.CreateForm(TFrmCadastro, FrmCadastro);
  Application.CreateForm(TFrmListaDosCadastros, FrmListaDosCadastros);
  Application.Run;
end.
