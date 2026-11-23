unit CaixaTransferencias;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Buttons, PngSpeedButton, StdCtrls, DBCtrls, PngBitBtn, ExtCtrls, System.UITypes;

type
  TFormCaixaTransferencias = class(TForm)
    Label5: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    SpeedButton1: TPngSpeedButton;
    Label1: TLabel;
    DBText1: TDBText;
    Label2: TLabel;
    DBText2: TDBText;
    DBText3: TDBText;
    Label3: TLabel;
    Label4: TLabel;
    Edit3: TEdit;
    Bevel1: TBevel;
    PngBitBtn1: TPngBitBtn;
    PngBitBtn2: TPngBitBtn;
    procedure Edit1Exit(Sender: TObject);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton1Click(Sender: TObject);
    procedure PngBitBtn2Click(Sender: TObject);
    procedure PngBitBtn1Click(Sender: TObject);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure Edit1Enter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCaixaTransferencias: TFormCaixaTransferencias;

implementation
uses DataMod, DataModSearch, Funcoes1, FuncoesFirenet;

{$R *.dfm}

procedure TFormCaixaTransferencias.Edit1Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TEdit).Text;
end;

procedure TFormCaixaTransferencias.Edit1Exit(Sender: TObject);
begin
  LocVendedoresExit(Edit1,Edit2,nil);
end;

procedure TFormCaixaTransferencias.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton1.Click;
end;

procedure TFormCaixaTransferencias.Edit1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormCaixaTransferencias.Edit3KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key=#46 then Key:=#44; //troca ponto por virgula.
  if not CharInSet(Key,['0'..'9',#8,#13,#44]) then Key:=#0;
end;

procedure TFormCaixaTransferencias.FormCreate(Sender: TObject);
begin
  //localiza o vendedor que está logado no sistema.
  DM.TBVendedores.Close;
  DM.TBVendedores.ParamByName('codigo').AsInteger:=DM.UsuarioVendedor;
  DM.TBVendedores.Open;
end;

procedure TFormCaixaTransferencias.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormCaixaTransferencias.PngBitBtn1Click(Sender: TObject);
begin
  AbortIf(Edit2.Text='','Informe para qual vendedor será feita a transferência.');
  AbortIf(Edit3.Text='','Informe o valor a ser transferido.');
  AbortIf(StrToFloat(Edit3.Text)>DM.TBVendedoresVEN_SALDOATUAL.Value, 'O valor informado é maior que o saldo atual.');
  AbortIf(StrToFloat(Edit3.Text)<=0, 'O valor não pode ser zero ou menor que zero.');

  if MessageDlg('Confirma a transferência de '+Format('%m',[StrToFloat(Edit3.Text)])+' para '+Edit2.Text+'?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    //efetua a saida do valor do vendedor de origem.
    DM.TBCaixa.Insert;
    DM.TBCaixaCAI_CONTA.Value:=DM.TBParametrosPAR_CONTALOCALPADRAO.Value;
    DM.TBCaixaCAI_DESCRICAO.Value:='SAIDA POR TRANSF. DE VENDEDOR '+IntToStr(DM.TBVendedoresVEN_CODIGO.Value)+' PARA '+Edit1.Text;
    DM.TBCaixaCAI_ENTRADASAIDA.Value:='S';
    DM.TBCaixaCAI_VENDEDOR.Value:=DM.TBVendedoresVEN_CODIGO.Value;
    DM.TBCaixaCAI_VALOR.Value:=StrToFloat(Edit3.Text);
    DM.TBCaixaCAI_TIPODOCTO.Value:='TRANSFERENCIA';
    DM.TBCaixaCAI_ORIGEM.Value:='FLUXO DE CAIXA';
    DM.TBCaixa.Post;
    //efetua a entrada do valor ao vendedor de destino.
    DM.TBCaixa.Insert;
    DM.TBCaixaCAI_CONTA.Value:=DM.TBParametrosPAR_CONTALOCALPADRAO.Value;
    DM.TBCaixaCAI_DESCRICAO.Value:='ENTRADA POR TRANSF. DE VENDEDOR '+IntToStr(DM.TBVendedoresVEN_CODIGO.Value)+' PARA '+Edit1.Text;
    DM.TBCaixaCAI_ENTRADASAIDA.Value:='E';
    DM.TBCaixaCAI_VENDEDOR.Value:=StrToInt(Edit1.Text);
    DM.TBCaixaCAI_VALOR.Value:=StrToFloat(Edit3.Text);
    DM.TBCaixaCAI_TIPODOCTO.Value:='TRANSFERENCIA';
    DM.TBCaixaCAI_ORIGEM.Value:='FLUXO DE CAIXA';
    DM.TBCaixa.Post;

    MessageDlg('O valor foi transferido.',mtInformation,[mbOk],0);
    Close;
  end;
end;

procedure TFormCaixaTransferencias.PngBitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TFormCaixaTransferencias.SpeedButton1Click(Sender: TObject);
begin
  LocVendedoresBotao(Edit1,Edit2,nil);
end;

end.
