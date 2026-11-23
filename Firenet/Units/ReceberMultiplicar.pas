unit ReceberMultiplicar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, Buttons, PngBitBtn, ExtCtrls, DBCtrls, DB,
  DBClient, System.UITypes;

type
  TFormReceberMultiplicar = class(TForm)
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    Bevel1: TBevel;
    Label1: TLabel;
    DBText4: TDBText;
    Label5: TLabel;
    DBText5: TDBText;
    Label6: TLabel;
    BitBtn1: TPngBitBtn;
    BitBtn2: TPngBitBtn;
    Edit1: TEdit;
    DBGrid1: TDBGrid;
    PngBitBtn1: TPngBitBtn;
    DSReceber: TDataSource;
    TBReceber: TClientDataSet;
    TBReceberREE_CLIENTE: TIntegerField;
    TBReceberREE_RECEITA: TIntegerField;
    TBReceberREE_VENDEDOR: TIntegerField;
    TBReceberREE_BAIXADOPOR: TStringField;
    TBReceberREE_CONTA: TIntegerField;
    TBReceberREE_DESCRICAO: TStringField;
    TBReceberREE_DIASATRASO: TIntegerField;
    TBReceberREE_DIASPRAZO: TIntegerField;
    TBReceberREE_DTATUALIZACAO: TDateField;
    TBReceberREE_DTCADASTRO: TDateField;
    TBReceberREE_DTEMISSAO: TDateField;
    TBReceberREE_DTJUROSAPOS: TDateField;
    TBReceberREE_DTPAGAMENTO: TDateField;
    TBReceberREE_DTVENCIMENTO: TDateField;
    TBReceberREE_NOVOCODIGO: TIntegerField;
    TBReceberREE_NUMDOCTO: TStringField;
    TBReceberREE_OBSERVACOES: TMemoField;
    TBReceberREE_PARCELANUM: TIntegerField;
    TBReceberREE_PARCELAQTDE: TIntegerField;
    TBReceberREE_STATUS: TStringField;
    TBReceberREE_TIPOBAIXA: TStringField;
    TBReceberREE_TIPODOCTO: TStringField;
    TBReceberREE_USUARIO: TStringField;
    TBReceberCLI_NOME: TStringField;
    Label7: TLabel;
    Label8: TLabel;
    TBReceberREE_ACRESCIMOPORC: TFMTBCDField;
    TBReceberREE_ACRESCIMOVALOR: TFMTBCDField;
    TBReceberREE_DESCPORC: TFMTBCDField;
    TBReceberREE_DESCVALOR: TFMTBCDField;
    TBReceberREE_JUROSPAGO: TFMTBCDField;
    TBReceberREE_MULTAPAGO: TFMTBCDField;
    TBReceberREE_PORCJUROS: TFMTBCDField;
    TBReceberREE_VALOR: TFMTBCDField;
    TBReceberREE_VALORJUROS: TFMTBCDField;
    TBReceberREE_VALORMULTA: TFMTBCDField;
    TBReceberREE_VALORORIGINAL: TFMTBCDField;
    TBReceberREE_VALORPAGO: TFMTBCDField;
    TBReceberREE_VALORSEMDESCONTO: TFMTBCDField;
    TBReceberREE_ACRESCIMOPORCPAGO: TFMTBCDField;
    TBReceberREE_ACRESCIMOVALORPAGO: TFMTBCDField;
    TBReceberREE_VALORACESSORIAS: TFMTBCDField;
    TBReceberREE_DESCPORCVENCIMENTO: TFMTBCDField;
    procedure BitBtn2Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit1Exit(Sender: TObject);
    procedure PngBitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormReceberMultiplicar: TFormReceberMultiplicar;

implementation
uses DataMod, Funcoes1;
{$R *.dfm}

procedure TFormReceberMultiplicar.BitBtn1Click(Sender: TObject);
begin
  AbortIf(TBReceber.IsEmpty,'Nenhuma simulação gerada.');

  if MessageDlg('Confirma a multiplicação?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    Screen.Cursor:=crHourGlass;
    TBReceber.Last;
    while not TBReceber.Bof do
    begin
      DM.TBReceber.Insert;
      DM.TBReceberREE_CLIENTE.Value:=TBReceberREE_CLIENTE.Value;
      DM.TBReceberREE_RECEITA.Value:=TBReceberREE_RECEITA.Value;
      DM.TBReceberREE_VENDEDOR.Value:=TBReceberREE_VENDEDOR.Value;
      DM.TBReceberREE_ACRESCIMOPORC.Value:=TBReceberREE_ACRESCIMOPORC.Value;
      DM.TBReceberREE_ACRESCIMOVALOR.Value:=TBReceberREE_ACRESCIMOVALOR.Value;
      DM.TBReceberREE_BAIXADOPOR.Value:=TBReceberREE_BAIXADOPOR.Value;
      DM.TBReceberREE_CONTA.Value:=TBReceberREE_CONTA.Value;
      DM.TBReceberREE_DESCPORC.Value:=TBReceberREE_DESCPORC.Value;
      DM.TBReceberREE_DESCRICAO.Value:=TBReceberREE_DESCRICAO.Value;
      DM.TBReceberREE_DESCVALOR.Value:=TBReceberREE_DESCVALOR.Value;
      DM.TBReceberREE_DIASATRASO.Value:=TBReceberREE_DIASATRASO.Value;
      DM.TBReceberREE_DIASPRAZO.Value:=TBReceberREE_DIASPRAZO.Value;
      DM.TBReceberREE_DTATUALIZACAO.Value:=DM.ServerDate; //TBReceberREE_DTATUALIZACAO.Value;
      DM.TBReceberREE_DTCADASTRO.Value:=DM.ServerDate; //TBReceberREE_DTCADASTRO.Value;
      DM.TBReceberREE_DTEMISSAO.Value:=DM.TBReceberREE_DTCADASTRO.Value; //TBReceberREE_DTEMISSAO.Value;
      DM.TBReceberREE_DTJUROSAPOS.Value:=TBReceberREE_DTJUROSAPOS.Value;
      DM.TBReceberREE_DTPAGAMENTO.Clear; //.Value:=TBReceberREE_DTPAGAMENTO.Value;
      DM.TBReceberREE_DTVENCIMENTO.Value:=TBReceberREE_DTVENCIMENTO.Value;
      DM.TBReceberREE_JUROSPAGO.Value:=TBReceberREE_JUROSPAGO.Value;
      DM.TBReceberREE_MULTAPAGO.Value:=TBReceberREE_MULTAPAGO.Value;
      DM.TBReceberREE_NOVOCODIGO.Value:=TBReceberREE_NOVOCODIGO.Value;
      DM.TBReceberREE_NUMDOCTO.Value:=TBReceberREE_NUMDOCTO.Value;
      DM.TBReceberREE_OBSERVACOES.Value:=TBReceberREE_OBSERVACOES.Value;
      DM.TBReceberREE_PARCELANUM.Value:=TBReceberREE_PARCELANUM.Value;
      DM.TBReceberREE_PARCELAQTDE.Value:=TBReceberREE_PARCELAQTDE.Value;
      DM.TBReceberREE_PORCJUROS.Value:=TBReceberREE_PORCJUROS.Value;
      DM.TBReceberREE_STATUS.Value:='A';
      DM.TBReceberREE_TIPOBAIXA.Value:=TBReceberREE_TIPOBAIXA.Value;
      DM.TBReceberREE_TIPODOCTO.Value:=TBReceberREE_TIPODOCTO.Value;
      DM.TBReceberREE_USUARIO.Value:=TBReceberREE_USUARIO.Value;
      DM.TBReceberREE_VALOR.Value:=TBReceberREE_VALOR.Value;
      DM.TBReceberREE_VALORJUROS.Value:=TBReceberREE_VALORJUROS.Value;
      DM.TBReceberREE_VALORMULTA.Value:=TBReceberREE_VALORMULTA.Value;
      DM.TBReceberREE_VALORORIGINAL.Value:=TBReceberREE_VALORORIGINAL.Value;
      DM.TBReceberREE_VALORPAGO.Value:=TBReceberREE_VALORPAGO.Value;
      DM.TBReceberREE_VALORSEMDESCONTO.Value:=TBReceberREE_VALORSEMDESCONTO.Value;
      DM.TBReceberREE_ACRESCIMOPORCPAGO.Value:=TBReceberREE_ACRESCIMOPORCPAGO.Value;
      DM.TBReceberREE_ACRESCIMOVALORPAGO.Value:=TBReceberREE_ACRESCIMOVALORPAGO.Value;
      DM.TBReceberREE_VALORACESSORIAS.Value:=TBReceberREE_VALORACESSORIAS.Value;
      DM.TBReceberREE_DESCPORCVENCIMENTO.Value:=TBReceberREE_DESCPORCVENCIMENTO.Value;
      DM.TBReceber.Post;
      TBReceber.Prior;
    end;
    Screen.Cursor:=crDefault;
    MessageDlg('Multiplicação concluída.',mtInformation,[mbOk],0);
    Close;
  end;
end;

procedure TFormReceberMultiplicar.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TFormReceberMultiplicar.Edit1Exit(Sender: TObject);
begin
  if Trim(Edit1.Text)<>'' then
  begin
    if (StrToInt(Edit1.Text)<1) or (StrToInt(Edit1.Text)>255) then
    begin
      MessageDlg('O número de cópias deve estar entre 1 e 255.',mtError,[mbOk],0);
      Edit1.SetFocus;
    end;
  end;
end;

procedure TFormReceberMultiplicar.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
end;

procedure TFormReceberMultiplicar.FormCreate(Sender: TObject);
begin
//  Edit1.Text:='2';
  Edit1.Text:=IntToStr(DM.TBReceberREE_PARCELAQTDE.Value);
  PngBitBtn1.Click;
end;

procedure TFormReceberMultiplicar.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormReceberMultiplicar.PngBitBtn1Click(Sender: TObject);
var I: Byte;
  Venc: TDate;
begin
  if Trim(Edit1.Text)='' then
  begin
    MessageDlg('Informe o número de cópias.',mtError,[mbOk],0);
    Edit1.SetFocus;
    Exit;
  end;
  TBReceber.EmptyDataSet;
  Venc:=DM.TBReceberREE_DTVENCIMENTO.Value;
  for I:=1 to StrToInt(Edit1.Text) do
  begin
    Venc:=IncMonth(Venc,1);
    TBReceber.Insert;
    TBReceberREE_CLIENTE.Value:=DM.TBReceberREE_CLIENTE.Value;
    TBReceberREE_RECEITA.Value:=DM.TBReceberREE_RECEITA.Value;
    TBReceberREE_VENDEDOR.Value:=DM.TBReceberREE_VENDEDOR.Value;
    TBReceberREE_ACRESCIMOPORC.Value:=DM.TBReceberREE_ACRESCIMOPORC.Value;
    TBReceberREE_ACRESCIMOVALOR.Value:=DM.TBReceberREE_ACRESCIMOVALOR.Value;
    TBReceberREE_BAIXADOPOR.Value:=DM.TBReceberREE_BAIXADOPOR.Value;
    TBReceberREE_CONTA.Value:=DM.TBReceberREE_CONTA.Value;
    TBReceberREE_DESCPORC.Value:=DM.TBReceberREE_DESCPORC.Value;
    TBReceberREE_DESCRICAO.Value:=DM.TBReceberREE_DESCRICAO.Value;
    TBReceberREE_DESCVALOR.Value:=DM.TBReceberREE_DESCVALOR.Value;
    TBReceberREE_DIASATRASO.Value:=DM.TBReceberREE_DIASATRASO.Value;
    TBReceberREE_DIASPRAZO.Value:=DM.TBReceberREE_DIASPRAZO.Value;
    TBReceberREE_DTATUALIZACAO.Value:=DM.TBReceberREE_DTATUALIZACAO.Value;
    TBReceberREE_DTCADASTRO.Value:=DM.TBReceberREE_DTCADASTRO.Value;
    TBReceberREE_DTEMISSAO.Value:=DM.TBReceberREE_DTEMISSAO.Value;
    TBReceberREE_DTJUROSAPOS.Value:=DM.TBReceberREE_DTJUROSAPOS.Value;
    TBReceberREE_DTPAGAMENTO.Value:=DM.TBReceberREE_DTPAGAMENTO.Value;
    TBReceberREE_DTVENCIMENTO.Value:=Venc;
    TBReceberREE_JUROSPAGO.Value:=DM.TBReceberREE_JUROSPAGO.Value;
    TBReceberREE_MULTAPAGO.Value:=DM.TBReceberREE_MULTAPAGO.Value;
    TBReceberREE_NOVOCODIGO.Value:=DM.TBReceberREE_NOVOCODIGO.Value;
    TBReceberREE_NUMDOCTO.Value:=DM.TBReceberREE_NUMDOCTO.Value;
    TBReceberREE_OBSERVACOES.Value:=DM.TBReceberREE_OBSERVACOES.Value+#13#10+'CONTA GERADA A PARTIR DA MULTIPLICACAO DA CONTA '+IntToStr(DM.TBReceberREE_CODIGO.Value)+#13#10+'Multiplicador: '+Edit1.Text;
    TBReceberREE_PARCELANUM.Value:=I+1;
    TBReceberREE_PARCELAQTDE.Value:=StrToInt(Edit1.Text)+1;
    TBReceberREE_PORCJUROS.Value:=DM.TBReceberREE_PORCJUROS.Value;
    TBReceberREE_STATUS.Value:='A';
    TBReceberREE_TIPOBAIXA.Value:=DM.TBReceberREE_TIPOBAIXA.Value;
    TBReceberREE_TIPODOCTO.Value:=DM.TBReceberREE_TIPODOCTO.Value;
    TBReceberREE_USUARIO.Value:=DM.TBReceberREE_USUARIO.Value;
    TBReceberREE_VALOR.Value:=DM.TBReceberREE_VALOR.Value;
    TBReceberREE_VALORJUROS.Value:=DM.TBReceberREE_VALORJUROS.Value;
    TBReceberREE_VALORMULTA.Value:=DM.TBReceberREE_VALORMULTA.Value;
    TBReceberREE_VALORORIGINAL.Value:=DM.TBReceberREE_VALORORIGINAL.Value;
    TBReceberREE_VALORPAGO.Value:=DM.TBReceberREE_VALORPAGO.Value;
    TBReceberREE_VALORSEMDESCONTO.Value:=DM.TBReceberREE_VALORSEMDESCONTO.Value;
    TBReceberREE_ACRESCIMOPORCPAGO.Value:=DM.TBReceberREE_ACRESCIMOPORCPAGO.Value;
    TBReceberREE_ACRESCIMOVALORPAGO.Value:=DM.TBReceberREE_ACRESCIMOVALORPAGO.Value;
    TBReceberREE_VALORACESSORIAS.Value:=DM.TBReceberREE_VALORACESSORIAS.Value;
    TBReceberREE_DESCPORCVENCIMENTO.Value:=DM.TBReceberREE_DESCPORCVENCIMENTO.Value;
    TBReceberCLI_NOME.Value:=DM.TBReceberCLI_NOME.Value;
    TBReceber.Post;
  end;
end;

end.
