program ProjetoInicial;

uses
  Vcl.Forms,
  inicial in 'inicial.pas' {Cad_Usu};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TCad_Usu, Cad_Usu);
  Application.Run;
end.
