unit inicial;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons;

type
  TCad_Usu = class(TForm)
    lb_cad_usuario: TLabel;
    btn_salvar_venda: TButton;
    SpeedButton1: TSpeedButton;
    btn_deletar: TButton;
    btn_editar: TButton;
    txt_nome: TEdit;
    lb_valor1: TLabel;
    txt_nome2: TEdit;
    txt_nome3: TEdit;
    lb_valor: TLabel;
    lb_valor2: TLabel;
    lb_total: TLabel;
    txt_vlr_1: TEdit;
    txt_vlr_2: TEdit;
    lb_nome: TLabel;
    lb_sobrenome: TLabel;
    lb_endereco: TLabel;
    btn_calcular: TButton;
    txt_total: TEdit;
    procedure btn_salvar_vendaClick(Sender: TObject);
    procedure btn_deletarClick(Sender: TObject);
    procedure btn_editarClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure btn_calcularClick(Sender: TObject);
  private
    { Private declarations }
    var nome: string;
  public
    { Public declarations }
    var sobrenome, endereco : string;
    var valor: integer;
  end;

var
  Cad_Usu: TCad_Usu;

implementation

{$R *.dfm}

procedure TCad_Usu.btn_calcularClick(Sender: TObject);
  var vlr1, vlr2, total, media : double;
  var counter : integer;
begin
  vlr1 := strToFloat(txt_vlr_1.Text);   {m�todo converte string para floar}
  vlr2 := strToFloat(txt_vlr_2.Text);
  total := vlr1 + vlr2;
  txt_total.Text := FloatToStr(total); {m�todo que converte float para string}
  // operador de condi��o if
  media := 60;
  {if (total >= media) and (total < 80) then}
  if (total >= media) or (total > 50) then
  begin
    ShowMessage('O aluno obteve ' + FloatToStr(total) + ' pontos e est� aprovado');
  end
  else
  begin
    ShowMessage('O aluno obteve ' + FloatToStr(total) + ' pontos e est� reprovado');
  end;

  // La�o de repeti��o for
  for counter := 1 to 5 do
  begin
    ShowMessage(IntToStr(counter));
  end;

end;

procedure TCad_Usu.btn_deletarClick(Sender: TObject);
begin
  nome := '';
  sobrenome := '';
  endereco := '';
  txt_nome.Text := nome;
  txt_nome2.Text := sobrenome;
  txt_nome3.Text := endereco;
end;

procedure TCad_Usu.btn_editarClick(Sender: TObject);
begin
  nome := 'Lessa';
  sobrenome := 'Apolinario';
  endereco := 'Rua A';
  lb_valor.Caption := 'Meu nome � ' +nome + ' ' + sobrenome + ' e meu endere�o � ' + endereco;
end;

procedure TCad_Usu.btn_salvar_vendaClick(Sender: TObject);
begin
  nome := 'Lessa';
  sobrenome := 'Apolinario';
  endereco := 'Rua A';
  txt_nome.Text := nome;
  txt_nome2.Text := sobrenome;
  txt_nome3.Text := endereco;
end;

procedure TCad_Usu.SpeedButton1Click(Sender: TObject);
begin
  valor := 5;
  lb_valor.Caption := IntToStr(valor); {m�todo que converte de integer para string}
end;

end.
