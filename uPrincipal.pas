unit uPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, classFuncoes, frxpngimage, JvExControls,
  JvButton, JvTransparentButton, Mask, uMenuPrincipal;

type
  TformLogin = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    editLogin: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    Image1: TImage;
    btnEntrar: TJvTransparentButton;
    editSenha: TMaskEdit;
    procedure Panel1Resize(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure editLoginClick(Sender: TObject);
    procedure editLoginExit(Sender: TObject);
    procedure editSenhaClick(Sender: TObject);
    procedure btnEntrarClick(Sender: TObject);
    procedure editSenhaKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formLogin: TformLogin;

implementation


{$R *.dfm}

//centraliza o painel
procedure TformLogin.Panel1Resize(Sender: TObject);
begin
  Panel1.Left := (ClientWidth - Panel1.Width) div 2;
  Panel1.Top := (ClientHeight - Panel1.Height) div 2;
end;

procedure TformLogin.FormCreate(Sender: TObject);
begin
  //Arredondar bordas Panel
  TclassFuncoes.BordaArredondada(Panel1, 50);
end;

procedure TformLogin.editLoginClick(Sender: TObject);
begin
  if(editLogin.Text = 'Login') then
    editLogin.Text := '';
end;

procedure TformLogin.editLoginExit(Sender: TObject);
begin
  if(editLogin.Text = '') then
    editLogin.Text := 'Login';
end;

procedure TformLogin.editSenhaClick(Sender: TObject);
begin
    if(editSenha.Text = 'Senha') then
    editSenha.Text := '';
end;

//metodo verifica login e senha para acesso.
procedure TformLogin.btnEntrarClick(Sender: TObject);
begin
  if(editLogin.Text = 'davidwilker') and (editSenha.Text = '123') then
    begin
      formMenuPrincipal := TformMenuPrincipal.Create(Application);
      formMenuPrincipal.Show;
      formLogin.Destroy;
    end
  else
    begin
      ShowMessage('Login ou Senha estão incorretos!');
      editSenha.Text := '';
    end;
end;

//ativa o botão btnEntrar ao apertar a tecla Enter
procedure TformLogin.editSenhaKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    btnEntrarClick(Sender);
    Key := #0;
  end;
end;

end.
