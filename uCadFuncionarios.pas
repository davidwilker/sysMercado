unit uCadFuncionarios;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Mask, Grids, DBGrids, DB, IBCustomDataSet, IBQuery, StdCtrls,
  Buttons, ExtCtrls, classFuncoes, uDM;

type
  TformCadFuncionarios = class(TForm)
    gpPessoa: TGroupBox;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label8: TLabel;
    editLogin: TEdit;
    editCargo: TEdit;
    editSenha: TEdit;
    editConfirmaSenha: TEdit;
    dbgFuncionarios: TDBGrid;
    editNome: TEdit;
    editCpf: TMaskEdit;
    Label11: TLabel;
    Label12: TLabel;
    Panel1: TPanel;
    btnGravar: TSpeedButton;
    btnAlterar: TSpeedButton;
    btnExcluir: TSpeedButton;
    btnCancelar: TSpeedButton;
    IBQFuncionarios: TIBQuery;
    chxAdministrador: TCheckBox;
    dsFuncionarios: TDataSource;
    lblChaveFuncionarios: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure dbgFuncionariosDblClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formCadFuncionarios: TformCadFuncionarios;

implementation

uses
  classFuncionarios;

{$R *.dfm}

procedure TformCadFuncionarios.FormCreate(Sender: TObject);
begin
  TClassFuncoes.BordaArredondada(Panel1, 25);
end;

procedure TformCadFuncionarios.btnAlterarClick(Sender: TObject);
begin

  TClassFuncionarios.AtivarCampos(Sender);

  btnGravar.Enabled   := true;
  btnCancelar.Enabled := true;

  btnAlterar.Enabled  := false;
  btnExcluir.Enabled  := false

end;

procedure TformCadFuncionarios.dbgFuncionariosDblClick(Sender: TObject);
begin

  TClassFuncionarios.BuscaFuncionarioGrid(Sender);
  TClassFuncionarios.BloquearCampos(sender);

  btnAlterar.Enabled  := true;
  btnExcluir.Enabled  := true;

  btnGravar.Enabled   := false;
  btnCancelar.Enabled := false;

end;

procedure TformCadFuncionarios.btnCancelarClick(Sender: TObject);
begin
  TClassFuncionarios.BloquearCampos(sender);
  dbgFuncionariosDblClick(sender);

  btnGravar.Enabled   := false;
  btnCancelar.Enabled := false;

  btnAlterar.Enabled  := true;
  btnExcluir.Enabled  := true;
end;

end.
