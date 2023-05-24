program SysMercado;

uses
  Forms,
  uPrincipal in 'uPrincipal.pas' {formLogin},
  classFuncoes in 'classFuncoes.pas',
  uMenuPrincipal in 'uMenuPrincipal.pas' {formMenuPrincipal},
  uCadFuncionarios in 'uCadFuncionarios.pas' {formCadFuncionarios},
  classFuncionarios in 'classFuncionarios.pas',
  uDM in 'uDM.pas' {DM: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TformLogin, formLogin);
  Application.CreateForm(TDM, DM);
  Application.Run;
end.
