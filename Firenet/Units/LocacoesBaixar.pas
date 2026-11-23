unit LocacoesBaixar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, Buttons, ExtCtrls, PngBitBtn, System.UITypes;

type
  TFormLocacoesBaixar = class(TForm)
    DBText1: TDBText;
    Label1: TLabel;
    DBText5: TDBText;
    DBText6: TDBText;
    DBText7: TDBText;
    DBText10: TDBText;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label14: TLabel;
    Bevel1: TBevel;
    BitBtn1: TPngBitBtn;
    BitBtn2: TPngBitBtn;
    DBEdit4: TDBEdit;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Label2: TLabel;
    DBEdit3: TDBEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBEdit4KeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
    procedure BaixarLocacao;
  public
    { Public declarations }
  end;

var
  FormLocacoesBaixar: TFormLocacoesBaixar;

implementation
uses DataMod, Locacoes, DB, DataMod2, Funcoes1;
{$R *.dfm}

procedure TFormLocacoesBaixar.BaixarLocacao;
begin
  DM2.TBLocacoesLOC_STATUS.Value:='B';
  DM2.TBLocacoes.Post;
  Close;
end;


procedure TFormLocacoesBaixar.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if DM2.TBLocacoes.State in [dsInsert, dsEdit] then
  begin
    if MessageDlg('Cancelar a Baixa?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
    DM2.TBLocacoes.Cancel else
    Action:=caNone;
  end;
end;

procedure TFormLocacoesBaixar.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TFormLocacoesBaixar.FormCreate(Sender: TObject);
begin
  //coloca a tabela em edição e preenche o alguns campos.
  //se clicar em cancelar, dá um table.cancel.
  DM2.TBLocacoes.Edit;
  DM2.TBLocacoesLOC_DATADEVOLUCAO.Value:=DM.ServerDate;
  DM2.TBLocacoesLOC_HORADEVOLUCAO.Value:=TimeToStr(DM.ServerTime);
  DM2.TBLocacoesLOC_BAIXADOPOR.Value:=DM.UsuarioLogin;
  DM2.TBLocacoesLOC_VALORTOTAL.Value:=DM2.CalcularValorTotalLocacao(DM2.TBLocacoesLOC_DATAPREVISAO.Value,StrToTime(DM.TBParametrosPAR_LOCACOESHORALIMITE.Value),DM2.TBLocacoesLOC_VALORLOCACAO.AsExtended);
  DM2.TBLocacoesLOC_VALORPAGO.Value:=DM2.TBLocacoesLOC_VALORTOTAL.Value;
end;

procedure TFormLocacoesBaixar.DBEdit4KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#46 then Key:=#44; //troca ponto por virgula.
end;

procedure TFormLocacoesBaixar.BitBtn1Click(Sender: TObject);
begin
  AbortIf(DM2.TBLocacoesLOC_DATADEVOLUCAO.IsNull,'Informe a data de devolução.');

  if MessageDlg('Confirma a baixa da locação?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  BaixarLocacao;
end;

end.
