unit ComandasBaixar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Mask, Buttons, PngBitBtn, ExtCtrls, System.UITypes;

type
  TFormComandasBaixar = class(TForm)
    DBText1: TDBText;
    Label1: TLabel;
    DBText3: TDBText;
    DBText5: TDBText;
    DBText6: TDBText;
    Label3: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label13: TLabel;
    DBText13: TDBText;
    Bevel1: TBevel;
    Label18: TLabel;
    Bevel2: TBevel;
    Label23: TLabel;
    Label24: TLabel;
    BitBtn1: TPngBitBtn;
    BitBtn2: TPngBitBtn;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    BitBtn3: TPngBitBtn;
    Label2: TLabel;
    DBText2: TDBText;
    DBText4: TDBText;
    DBText8: TDBText;
    Label4: TLabel;
    Label8: TLabel;
    Label7: TLabel;
    Edit1: TEdit;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Edit2: TEdit;
    Label12: TLabel;
    DBEdit1: TDBEdit;
    Label14: TLabel;
    DBEdit2: TDBEdit;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure DBEdit5KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit6KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit4KeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBEdit5Exit(Sender: TObject);
    procedure DBEdit6Exit(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit1Exit(Sender: TObject);
  private
    { Private declarations }
    procedure BaixarTotal;
  public
    { Public declarations }
  end;

var
  FormComandasBaixar: TFormComandasBaixar;
  ValorJaPago: Currency;

implementation
uses DataMod, DataMod2, DB, Funcoes1;
{$R *.dfm}

procedure TFormComandasBaixar.BaixarTotal;
begin
  //baixa a comanda.
  DM2.TBComandasCMD_STATUS.Value:='B'; //baixada.
  DM2.TBComandas.Post;
  //faz lançamento no caixa.
  DM.TBCaixa.Insert;
  DM.TBCaixaCAI_TIPODOCTO.Value:='DINHEIRO';
  DM.TBCaixaCAI_NUMDOCTO.Value:=IntToStr(DM2.TBComandasCMD_CODIGO.Value);
  DM.TBCaixaCAI_DATA.Value:=DM.ServerDate;
  DM.TBCaixaCAI_VALOR.Value:=DM2.TBComandasCMD_VALORPAGO.Value;
  DM.TBCaixaCAI_ENTRADASAIDA.Value:='E';
  DM.TBCaixaCAI_DESCRICAO.Value:='LANCAMENTO AUTOM. CONTROLE DE COMANDAS';
  DM.TBCaixaCAI_ORIGEM.Value:='COMANDAS';
  DM.TBCaixaCAI_VENDEDOR.Value:=DM.UsuarioVendedor;
  DM.TBCaixaCAI_CLIENTE.Value:=DM2.TBComandasCMD_CLIENTE.Value;
  DM.TBCaixaCAI_CLIENTENOME.Value:=DM2.TBComandasCLI_NOME.Value;
  DM.TBCaixa.Post; //os saldos são calculados no evento onpost.

  Close;
end;

procedure TFormComandasBaixar.BitBtn1Click(Sender: TObject);
begin
  AbortIf(DM2.TBComandasCMD_DINHEIRO.Value<DM2.TBComandasCMD_VALORPAGAR.Value-DM2.TBComandasCMD_DESCVALOR.Value,'Campo dinheiro não pode ser menor que o valor a pagar.');

  if MessageDlg('Confirma a baixa do documento?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  BaixarTotal;
end;

procedure TFormComandasBaixar.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TFormComandasBaixar.BitBtn3Click(Sender: TObject);
begin
  try
    WinExec('CALC.EXE',sw_ShowNormal);
  except on exception do
  ShowMessage('Não foi possível executar CALC.EXE. Verifique se o arquivo está instalado no Windows.');
  end; //try
end;

procedure TFormComandasBaixar.DBEdit1Exit(Sender: TObject);
begin
  DM2.TBComandasCMD_TROCO.Value:=DM2.TBComandasCMD_DINHEIRO.Value-(DM2.TBComandasCMD_VALORPAGAR.Value-DM2.TBComandasCMD_DESCVALOR.Value);
end;

procedure TFormComandasBaixar.DBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#46 then Key:=#44; //troca ponto por virgula.
end;

procedure TFormComandasBaixar.DBEdit4KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#46 then Key:=#44; //troca ponto por virgula.
end;

procedure TFormComandasBaixar.DBEdit5Exit(Sender: TObject);
begin
  DM2.TBComandasCMD_DESCVALOR.Value:=(DM2.TBComandasCMD_VALORPAGAR.Value/100)*DM2.TBComandasCMD_DESCPORC.Value;
  DM2.TBComandasCMD_VALORPAGO.Value:=(ValorJaPago+DM2.TBComandasCMD_VALORPAGAR.Value)-DM2.TBComandasCMD_DESCVALOR.Value;
  Edit2.Text:=Format('%m',[DM2.TBComandasCMD_VALORPAGAR.AsExtended-DM2.TBComandasCMD_DESCVALOR.AsExtended]);
end;

procedure TFormComandasBaixar.DBEdit5KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#46 then Key:=#44; //troca ponto por virgula.
end;

procedure TFormComandasBaixar.DBEdit6Exit(Sender: TObject);
begin
  if DM2.TBComandasCMD_DESCVALOR.Value=0 then
  begin
    DM2.TBComandasCMD_DESCPORC.Value:=0;
    DBEdit5Exit(Self);
  end else
  begin
    DM2.TBComandasCMD_DESCPORC.Value:=(DM2.TBComandasCMD_DESCVALOR.Value/DM2.TBComandasCMD_VALORPAGAR.Value)*100;
    DM2.TBComandasCMD_VALORPAGO.Value:=(ValorJaPago+DM2.TBComandasCMD_VALORPAGAR.Value)-DM2.TBComandasCMD_DESCVALOR.Value;
    Edit2.Text:=Format('%m',[DM2.TBComandasCMD_VALORPAGAR.AsExtended-DM2.TBComandasCMD_DESCVALOR.AsExtended]);
  end;
end;

procedure TFormComandasBaixar.DBEdit6KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#46 then Key:=#44; //troca ponto por virgula.
end;

procedure TFormComandasBaixar.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if DM2.TBComandas.State in [dsInsert, dsEdit] then
  begin
    if MessageDlg('Cancelar a Baixa?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
    DM2.TBComandas.Cancel else
    Action:=caNone;
  end;
end;

procedure TFormComandasBaixar.FormCreate(Sender: TObject);
begin
  Label10.Caption:=Format('%m',[DM2.TBComandasCMD_VALORPAGO.AsExtended]);
  Edit1.Text:=Format('%m',[DM2.TBComandasCMD_VALORPAGO.AsExtended]);
  ValorJaPago:=DM2.TBComandasCMD_VALORPAGO.AsExtended;
  DM2.TBComandas.Edit;
  DM2.TBComandasCMD_VALORPAGO.Value:=DM2.TBComandasCMD_VALORPAGAR.Value;
end;

initialization
  RegisterClass(TFormComandasBaixar);

finalization
  UnRegisterClass(TFormComandasBaixar);

end.
