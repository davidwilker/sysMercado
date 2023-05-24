unit uMenuPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, uCadFuncionarios;

type
  TformMenuPrincipal = class(TForm)
    MainMenu1: TMainMenu;
    Inicias1: TMenuItem;
    Cadastrar1: TMenuItem;
    Relatrios1: TMenuItem;
    Sistemas1: TMenuItem;
    Ajuda1: TMenuItem;
    ConfigSistemas1: TMenuItem;
    Venda1: TMenuItem;
    Pagamento1: TMenuItem;
    Funcionarios1: TMenuItem;
    Produtos1: TMenuItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Funcionarios1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formMenuPrincipal: TformMenuPrincipal;

implementation

{$R *.dfm}

procedure TformMenuPrincipal.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Halt;
end;

procedure TformMenuPrincipal.Funcionarios1Click(Sender: TObject);
begin
  formCadFuncionarios := TformCadFuncionarios.Create(Application);
  formCadFuncionarios.ShowModal;
end;

end.
