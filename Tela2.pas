unit Tela2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  Tfrm_tela2 = class(TForm)
    lb_tela2: TLabel;
    procedure FormClose(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_tela2: Tfrm_tela2;

implementation

{$R *.dfm}

{Limpa os campos da unit quando ela é fechada}
procedure Tfrm_tela2.FormClose(Sender: TObject);
begin
  frm_tela2 := nil;
end;

end.
