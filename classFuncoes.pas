unit classFuncoes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls;

type
  TClassFuncoes = class
  public
    class procedure BordaArredondada(APanel: TPanel; ARadius: Integer);
  end;

implementation


class procedure TclassFuncoes.BordaArredondada(APanel: TPanel; ARadius: Integer);
var
  rgn: HRGN;
begin
  rgn := CreateRoundRectRgn(0, 0, APanel.Width + 1, APanel.Height + 1, ARadius, ARadius);
  SetWindowRgn(APanel.Handle, rgn, True);
  InvalidateRect(APanel.Handle, nil, True);
end;

end.

