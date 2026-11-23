unit CTeCCeItens;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, PngBitBtn,
  Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Mask;

type
  TFormCteCCeItens = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    DBEdit1: TDBEdit;
    Label4: TLabel;
    DBText10: TDBText;
    Bevel1: TBevel;
    BitBtn1: TPngBitBtn;
    BitBtn2: TPngBitBtn;
    BitBtn3: TPngBitBtn;
    Label5: TLabel;
    DBEdit2: TDBEdit;
    procedure FormCreate(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure DBEdit2KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCteCCeItens: TFormCteCCeItens;

implementation
uses DataMod, DataMod2, Funcoes1;
{$R *.dfm}

procedure TFormCteCCeItens.BitBtn1Click(Sender: TObject);
var Grupo, Campo: String;
begin
  Grupo:=ComboBox1.Text;
  Campo:=ComboBox2.Text;
  Delete(Grupo,1,Pos(' - ',Grupo)+2); //retira o código do início.
  Delete(Grupo,Pos(' ',Grupo),Length(Grupo)); //retira o final.
  Delete(Campo,1,Pos(' - ',Campo)+2); //retira o código do início.
  Delete(Campo,Pos(' ',Campo),Length(Campo)); //retira o final.
  DM2.TBCteCCeItensCTX_GRUPO.Value:=Grupo;
  DM2.TBCteCCeItensCTX_CAMPO.Value:=Campo;
  DM2.TBCteCCeItens.Post;
  Close;
end;

procedure TFormCteCCeItens.BitBtn2Click(Sender: TObject);
begin
  DM2.TBCteCCeItens.Cancel;
  Close;
end;

procedure TFormCteCCeItens.BitBtn3Click(Sender: TObject);
begin
  MostrarAjuda('');
end;

procedure TFormCteCCeItens.ComboBox1Change(Sender: TObject);
var Pai: String;
begin
  Pai:=ComboBox1.Text;
  Delete(Pai,Pos(' ',Pai),Length(Pai)); //remove do primeiro espaço até o final.
  DM.QYAux.Close;
  DM.QYAux.SQL.Clear;
  DM.QYAux.SQL.Add('select * from CTECAMPOS where CTF_TIPO=''C'' and CTF_PAI=:pai order by CTF_CODIGO');
  DM.QYAux.ParamByName('pai').AsString:=Pai;
  DM.QYAux.Open;
  ComboBox2.Items.Clear;
  while not DM.QYAux.Eof do
  begin
    ComboBox2.Items.Add(DM.QYAux.FieldByName('CTF_CODIGO').AsString+' - '+DM.QYAux.FieldByName('CTF_CAMPO').AsString+' - '+DM.QYAux.FieldByName('CTF_DESCRICAO').AsString);
    DM.QYAux.Next;
  end;
  DM.QYAux.Close;
end;

procedure TFormCteCCeItens.DBEdit2KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then
  DM2.TBCteCCeItensCTX_NUMITEM.Clear;
end;

procedure TFormCteCCeItens.FormCreate(Sender: TObject);
begin
  DM.QYAux.Close;
  DM.QYAux.SQL.Clear;
  DM.QYAux.SQL.Add('select * from CTECAMPOS where CTF_TIPO=''G'' order by CTF_CODIGO');
  DM.QYAux.Open;
  ComboBox1.Items.Clear;
  while not DM.QYAux.Eof do
  begin
    ComboBox1.Items.Add(DM.QYAux.FieldByName('CTF_CODIGO').AsString+' - '+DM.QYAux.FieldByName('CTF_GRUPO').AsString+' - '+DM.QYAux.FieldByName('CTF_DESCRICAO').AsString);
    DM.QYAux.Next;
  end;
  DM.QYAux.Close;
end;

procedure TFormCteCCeItens.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    DM2.TBCteCCeItens.Cancel;
    Close;
  end;
end;

end.
