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
    Edit1: TEdit;
    Edit2: TEdit;
    lb_nome: TLabel;
    lb_sobrenome: TLabel;
    lb_endereco: TLabel;
    btn_calcular: TButton;
    Edit3: TEdit;
    procedure btn_salvar_vendaClick(Sender: TObject);
    procedure btn_deletarClick(Sender: TObject);
    procedure btn_editarClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
    var nome: string;
  public
    { Public declarations }
    var sobrenome, endereco: string;
    var valor: integer;
  end;

var
  Cad_Usu: TCad_Usu;

implementation

{$R *.dfm}

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