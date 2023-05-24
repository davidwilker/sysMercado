unit classFuncionarios;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, uCadFuncionarios, uDM;

type
  TClassFuncionarios = class
  public
    class procedure BloquearCampos(Sender: TObject);
    class procedure AtivarCampos(Sender: TObject);
    class procedure BuscaFuncionarioGrid(Sender: TObject);
    class procedure GravarFuncionario(Sender: TObject);
  end;

implementation


class procedure TClassFuncionarios.BloquearCampos(Sender: TObject);
begin

  formCadFuncionarios.editNome.Color          := cl3DLight;
  formCadFuncionarios.editCpf.Color           := cl3DLight;
  formCadFuncionarios.editLogin.Color         := cl3DLight;
  formCadFuncionarios.editSenha.Color         := cl3DLight;
  formCadFuncionarios.editConfirmaSenha.Color := cl3DLight;
  formCadFuncionarios.editCargo.Color         := cl3DLight;

  formCadFuncionarios.editNome.ReadOnly          := true;
  formCadFuncionarios.editCpf.ReadOnly           := true;
  formCadFuncionarios.editLogin.ReadOnly         := true;
  formCadFuncionarios.editSenha.ReadOnly         := true;
  formCadFuncionarios.editConfirmaSenha.ReadOnly := true;
  formCadFuncionarios.editCargo.ReadOnly         := true;

  formCadFuncionarios.chxAdministrador.Enabled := false;

end;

class procedure TClassFuncionarios.AtivarCampos(Sender: TObject);
begin

  formCadFuncionarios.editNome.Color          := clWindow;
  formCadFuncionarios.editCpf.Color           := clWindow;
  formCadFuncionarios.editLogin.Color         := clWindow;
  formCadFuncionarios.editSenha.Color         := clWindow;
  formCadFuncionarios.editConfirmaSenha.Color := clWindow;
  formCadFuncionarios.editCargo.Color         := clWindow;

  formCadFuncionarios.editNome.ReadOnly          := false;
  formCadFuncionarios.editCpf.ReadOnly           := false;
  formCadFuncionarios.editLogin.ReadOnly         := false;
  formCadFuncionarios.editSenha.ReadOnly         := false;
  formCadFuncionarios.editConfirmaSenha.ReadOnly := false;
  formCadFuncionarios.editCargo.ReadOnly         := false;

  formCadFuncionarios.chxAdministrador.Enabled := true;

end;

class procedure TClassFuncionarios.BuscaFuncionarioGrid(Sender: TObject);
var
  chave_funcionarios: string;
begin

  chave_funcionarios := formCadFuncionarios.dsFuncionarios.DataSet.FieldValues['chave_funcionarios'];

  DM.IBQuery.Close;
  DM.IBQuery.SQL.Clear;
  DM.IBQuery.SQL.Add('select nome, cpf, login, senha, cargo, administrador, chave_funcionarios from funcionarios where chave_funcionarios = :chave_funcionarios');
  DM.IBQuery.Params.ParamByName('chave_funcionarios').Value := chave_funcionarios;
  DM.IBQuery.Open;

  formCadFuncionarios.lblChaveFuncionarios.Caption  := VarToStr(DM.IBQuery.FieldValues['chave_funcionarios']);
  formCadFuncionarios.editNome.Text                 := VarToStr(DM.IBQuery.FieldValues['nome']);
  formCadFuncionarios.editLogin.Text                := VarToStr(DM.IBQuery.FieldValues['login']);
  formCadFuncionarios.editCpf.Text                  := VarToStr(DM.IBQuery.FieldValues['cpf']);
  formCadFuncionarios.editSenha.Text                := VarToStr(DM.IBQuery.FieldValues['senha']);
  formCadFuncionarios.editConfirmaSenha.Text        := VarToStr(DM.IBQuery.FieldValues['senha']);
  formCadFuncionarios.editCargo.Text                := VarToStr(DM.IBQuery.FieldValues['cargo']);

  if(formCadFuncionarios.dsFuncionarios.DataSet.FieldValues['administrador'] = 'S') then
    begin
      formCadFuncionarios.chxAdministrador.Checked := true;
    end
  else
    begin
      formCadFuncionarios.chxAdministrador.Checked  := false;
    end;
end;

class procedure TClassFuncionarios.GravarFuncionario(Sender: TObject);
var
  chave_funcionarios: string;
begin

end;



end.

