unit Cadastro;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, DBCtrls, ExtCtrls, DBSBtn, PngBitBtn,
  DBNavBtn;

type
  TFormCadastro = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    BitBtn1: TPngBitBtn;
    dbNavBtnSave: TDBNavigationButton;
    dbNavBtnCancel: TDBNavigationButton;
    Bevel1: TBevel;
    DBEdit14: TDBEdit;
    Label11: TLabel;
    Edit2: TEdit;
    MaskEdit1: TMaskEdit;
    ComboBox1: TComboBox;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    DBText4: TDBText;
    Edit3: TEdit;
    DBText5: TDBText;
    DBEdit11: TDBEdit;
    Label15: TLabel;
    DBEdit12: TDBEdit;
    Label18: TLabel;
    DBEdit13: TDBEdit;
    Label19: TLabel;
    Label20: TLabel;
    MaskEdit2: TMaskEdit;
    DBEdit15: TDBEdit;
    Label21: TLabel;
    DBEdit20: TDBEdit;
    DBEdit21: TDBEdit;
    Label26: TLabel;
    Label27: TLabel;
    Label29: TLabel;
    DBEdit22: TDBEdit;
    Label30: TLabel;
    ComboBox2: TComboBox;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure MaskEdit1Change(Sender: TObject);
    procedure DBEdit7Change(Sender: TObject);
    procedure DBEdit8Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastro: TFormCadastro;

implementation
uses DataMod, Funcoes1;
{$R *.dfm}

procedure TFormCadastro.BitBtn1Click(Sender: TObject);
begin
  Close;
end;

procedure TFormCadastro.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormCadastro.FormCreate(Sender: TObject);
begin
  MaskEdit1.Text:=SenhaDecode(AnsiString(DM.TBEmpresaEMP_DATALIBERACAO.Value),ChaveSenhaNEW);
  MaskEdit2.Text:=SenhaDecode(AnsiString(DM.TBEmpresaEMP_DATAULTUTILIZACAO.Value),ChaveSenhaNEW);
  Edit2.Text:=SenhaDecode(AnsiString(DM.TBEmpresaEMP_DIASLIBERACAO.Value),ChaveSenhaNEW);
  Edit3.Text:=SenhaDecode(AnsiString(DM.TBEmpresaEMP_LIMITEUSUARIOS.Value),ChaveSenhaNEW);
  if SenhaDecode(AnsiString(DM.TBEmpresaEMP_LIBERADO.Value),ChaveSenhaNEW)='S' then
  ComboBox1.ItemIndex:=0 else
  ComboBox1.ItemIndex:=1;
  if SenhaDecode(AnsiString(DM.TBEmpresaEMP_LEITURA.Value),ChaveSenhaNEW)='S' then
  ComboBox2.ItemIndex:=0 else
  ComboBox2.ItemIndex:=1;
  DM.TBEmpresa.Post; //as atribuições acima colocam a tabela em modo de edição por causa do evento onchange de alguns campos.
end;

procedure TFormCadastro.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
end;

procedure TFormCadastro.DBEdit7Change(Sender: TObject);
begin
  FormatarTelefone(Sender as TDBEdit);
end;

procedure TFormCadastro.DBEdit8Change(Sender: TObject);
begin
  FormatarTelefone(Sender as TDBEdit);
end;

procedure TFormCadastro.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
end;

procedure TFormCadastro.MaskEdit1Change(Sender: TObject);
begin
  DM.TBEmpresa.Edit;
end;

end.
