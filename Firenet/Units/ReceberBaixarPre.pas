unit ReceberBaixarPre;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, StdCtrls, Mask, DBCtrls, Buttons, ExtCtrls, PngBitBtn, System.UITypes;

type
  TFormReceberBaixarPre = class(TForm)
    DBText1: TDBText;
    Label1: TLabel;
    Label2: TLabel;
    DBText2: TDBText;
    DBText3: TDBText;
    DBText4: TDBText;
    DBText5: TDBText;
    DBText6: TDBText;
    DBText7: TDBText;
    DBText8: TDBText;
    DBText9: TDBText;
    DBText10: TDBText;
    DBText11: TDBText;
    DBText12: TDBText;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    DBText13: TDBText;
    Label14: TLabel;
    Bevel1: TBevel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Bevel2: TBevel;
    BitBtn1: TPngBitBtn;
    BitBtn2: TPngBitBtn;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    Label19: TLabel;
    DBText14: TDBText;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBEdit4Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    procedure PreBaixar;
  public
    { Public declarations }
  end;

var
  FormReceberBaixarPre: TFormReceberBaixarPre;

implementation
uses DataMod, Funcoes1;

{$R *.dfm}

procedure TFormReceberBaixarPre.PreBaixar;
begin
  DM.TBReceberREE_STATUS.Value:='P'; //pré baixada.
  DM.TBReceberREE_BAIXADOPOR.Value:=DM.UsuarioLogin;
  DM.TBReceber.Post;
  Close;
end;

procedure TFormReceberBaixarPre.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TFormReceberBaixarPre.BitBtn1Click(Sender: TObject);
begin
  AbortIf(DateToStr(DM.TBReceberREE_DTPAGAMENTO.Value,FS)='  /  /    ','Informe a data de pagamento.');

  if MessageDlg('Confirma a pré baixa do documento?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    PreBaixar;
  end;
end;

procedure TFormReceberBaixarPre.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if DM.TBReceber.State in [dsInsert, dsEdit] then
  begin
    if MessageDlg('Cancelar a Pré Baixa?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
    DM.TBReceber.Cancel else
    Action:=caNone;
  end;
end;

procedure TFormReceberBaixarPre.DBEdit4Change(Sender: TObject);
begin
  if Trim(DBEdit4.Text)='' then
  BitBtn1.Enabled:=False else
  BitBtn1.Enabled:=True;
end;

procedure TFormReceberBaixarPre.FormCreate(Sender: TObject);
begin
  //coloca a tabela em edição e preenche alguns campos.
  //se clicar em cancelar, dá um table.cancel.
  DM.TBReceber.Edit;
  DM.TBReceberREE_DTPAGAMENTO.Value:=DM.ServerDate;
  DM.TBReceberREE_VALORPAGO.Value:=DM.TBReceberREE_VALOR.Value+DM.TBReceberREE_VALORACESSORIAS.Value;
end;

procedure TFormReceberBaixarPre.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

end.
