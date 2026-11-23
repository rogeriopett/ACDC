unit ConhecimentosNotas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, PngBitBtn, ExtCtrls, Mask, DBCtrls, ComCtrls,
  PngSpeedButton;

type
  TFormConhecimentosNotas = class(TForm)
    Bevel1: TBevel;
    BitBtn1: TPngBitBtn;
    BitBtn2: TPngBitBtn;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    Label11: TLabel;
    DBEdit11: TDBEdit;
    Label1: TLabel;
    Label26: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label13: TLabel;
    DBEdit21: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit32: TDBEdit;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBComboBox1: TDBComboBox;
    Label12: TLabel;
    DBComboBox2: TDBComboBox;
    DBEdit12: TDBEdit;
    Label14: TLabel;
    Label15: TLabel;
    DBEdit13: TDBEdit;
    Label16: TLabel;
    DBEdit14: TDBEdit;
    Label17: TLabel;
    DBEdit15: TDBEdit;
    Label18: TLabel;
    Label19: TLabel;
    DBEdit16: TDBEdit;
    Label20: TLabel;
    DBEdit17: TDBEdit;
    DBEdit18: TDBEdit;
    Label21: TLabel;
    Label22: TLabel;
    DBEdit19: TDBEdit;
    DBEdit20: TDBEdit;
    Label23: TLabel;
    DBEdit22: TDBEdit;
    Label24: TLabel;
    Label25: TLabel;
    DBEdit23: TDBEdit;
    Label27: TLabel;
    DBEdit24: TDBEdit;
    Label28: TLabel;
    DBEdit25: TDBEdit;
    Label29: TLabel;
    Label30: TLabel;
    DBEdit26: TDBEdit;
    DBEdit27: TDBEdit;
    Label31: TLabel;
    DBEdit28: TDBEdit;
    Label32: TLabel;
    DBEdit29: TDBEdit;
    DBEdit30: TDBEdit;
    Label33: TLabel;
    PngSpeedButton2: TPngSpeedButton;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit3KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit4KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit6KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit7KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit8KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit9KeyPress(Sender: TObject; var Key: Char);
    procedure DBComboBox1Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBEdit11Exit(Sender: TObject);
    procedure PngSpeedButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormConhecimentosNotas: TFormConhecimentosNotas;

implementation
uses DataMod2, DB, NfeLoc, DataMod;
{$R *.dfm}

procedure TFormConhecimentosNotas.BitBtn1Click(Sender: TObject);
begin
  DM2.TBCteNotas.Post;
  Close;
end;

procedure TFormConhecimentosNotas.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TFormConhecimentosNotas.DBComboBox1Change(Sender: TObject);
begin
  case DBComboBox1.ItemIndex of
    00: begin
          PageControl1.ActivePageIndex:=1;
          PageControl1.Pages[0].TabVisible:=False;
          PageControl1.Pages[1].TabVisible:=True;
          PageControl1.Pages[2].TabVisible:=False;
        end;
    01: begin
          PageControl1.ActivePageIndex:=0;
          PageControl1.Pages[0].TabVisible:=True;
          PageControl1.Pages[1].TabVisible:=False;
          PageControl1.Pages[2].TabVisible:=False;
        end;
    02: begin
          PageControl1.ActivePageIndex:=2; //DBComboBox1.ItemIndex;
          PageControl1.Pages[0].TabVisible:=False;
          PageControl1.Pages[1].TabVisible:=False;
          PageControl1.Pages[2].TabVisible:=True;
        end;
  end;
end;

procedure TFormConhecimentosNotas.DBEdit11Exit(Sender: TObject);
var S: String;
begin
  if DM2.TBCteNotas.State in [dsEdit, dsInsert] then
  begin
    S:=Copy(DM2.TBCteNotasCTN_CHAVEACESSO.Value,7,14);
    Insert('.',S,3);
    Insert('.',S,7);
    Insert('/',S,11);
    Insert('-',S,16);
    DM2.TBCteNotasCTN_CNPJREMETENTE.Value:=S;
    DM2.TBCteNotasCTN_MODELO.Value:=StrToInt(Copy(DM2.TBCteNotasCTN_CHAVEACESSO.Value,21,2));
    DM2.TBCteNotasCTN_SERIE.Value:=StrToInt(Copy(DM2.TBCteNotasCTN_CHAVEACESSO.Value,23,3));
    DM2.TBCteNotasCTN_NUMERO.Value:=StrToInt(Copy(DM2.TBCteNotasCTN_CHAVEACESSO.Value,26,9));
  end;
end;

procedure TFormConhecimentosNotas.DBEdit2KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key=#46 then Key:=#44; //troca ponto por virgula.
end;

procedure TFormConhecimentosNotas.DBEdit3KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key=#46 then Key:=#44; //troca ponto por virgula.
end;

procedure TFormConhecimentosNotas.DBEdit4KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key=#46 then Key:=#44; //troca ponto por virgula.
end;

procedure TFormConhecimentosNotas.DBEdit6KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key=#46 then Key:=#44; //troca ponto por virgula.
end;

procedure TFormConhecimentosNotas.DBEdit7KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key=#46 then Key:=#44; //troca ponto por virgula.
end;

procedure TFormConhecimentosNotas.DBEdit8KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key=#46 then Key:=#44; //troca ponto por virgula.
end;

procedure TFormConhecimentosNotas.DBEdit9KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key=#46 then Key:=#44; //troca ponto por virgula.
end;

procedure TFormConhecimentosNotas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if DM2.TBCteNotas.State in [dsInsert, dsEdit] then
  DM2.TBCteNotas.Cancel;
end;

procedure TFormConhecimentosNotas.FormCreate(Sender: TObject);
begin
  DBComboBox1Change(Self);
end;

procedure TFormConhecimentosNotas.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormConhecimentosNotas.PngSpeedButton2Click(Sender: TObject);
var Chave: String;
begin
  Application.CreateForm(TFormNfeLoc, FormNfeLoc);
  FormNfeLoc.ShowModal;
  if NfeLoc.Procurar then
  begin
    DM2.TBCteNotasCTN_CHAVEACESSO.Value:=FormNfeLoc.QYNfeNFE_CHAVEACESSO.Value;
    DM2.TBCteNotasCTN_CNPJREMETENTE.Value:=DM.TBEmpresaEMP_CNPJ.Value; //se selecionou nota local, o remetente é a propria empresa.
    DM2.TBCteNotasCTN_VALORTOTAL.Value:=FormNfeLoc.QYNfeNFE_VALORTOTAL.Value;
  end;
  FormNfeLoc.Free;
  FormNfeLoc:=nil;
end;

end.
