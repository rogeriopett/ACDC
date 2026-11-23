unit PagarMultiplicar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBClient, Grids, DBGrids, StdCtrls, Buttons, PngBitBtn, ExtCtrls,
  DBCtrls, System.UITypes;

type
  TFormPagarMultiplicar = class(TForm)
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
    PngBitBtn1: TPngBitBtn;
    DSPagar: TDataSource;
    TBPagar: TClientDataSet;
    DBGrid2: TDBGrid;
    TBPagarPAG_CODIGO: TIntegerField;
    TBPagarPAG_DESPESA: TIntegerField;
    TBPagarPAG_FORNECEDOR: TIntegerField;
    TBPagarPAG_BAIXADOPOR: TStringField;
    TBPagarPAG_CONTA: TIntegerField;
    TBPagarPAG_DESCRICAO: TStringField;
    TBPagarPAG_DIASATRASO: TIntegerField;
    TBPagarPAG_DIASPRAZO: TIntegerField;
    TBPagarPAG_DTATUALIZACAO: TDateField;
    TBPagarPAG_DTCADASTRO: TDateField;
    TBPagarPAG_DTEMISSAO: TDateField;
    TBPagarPAG_DTJUROSAPOS: TDateField;
    TBPagarPAG_DTPAGAMENTO: TDateField;
    TBPagarPAG_DTVENCIMENTO: TDateField;
    TBPagarPAG_NOVOCODIGO: TIntegerField;
    TBPagarPAG_NUMDOCTO: TStringField;
    TBPagarPAG_OBSERVACOES: TMemoField;
    TBPagarPAG_PARCELANUM: TIntegerField;
    TBPagarPAG_PARCELAQTDE: TIntegerField;
    TBPagarPAG_STATUS: TStringField;
    TBPagarPAG_TIPOBAIXA: TStringField;
    TBPagarPAG_TIPODOCTO: TStringField;
    TBPagarPAG_USUARIO: TStringField;
    TBPagarFOR_NOME: TStringField;
    Label8: TLabel;
    Label7: TLabel;
    TBPagarPAG_DESCPORC: TFMTBCDField;
    TBPagarPAG_DESCVALOR: TFMTBCDField;
    TBPagarPAG_JUROSPAGO: TFMTBCDField;
    TBPagarPAG_MULTAPAGO: TFMTBCDField;
    TBPagarPAG_PORCJUROS: TFMTBCDField;
    TBPagarPAG_VALOR: TFMTBCDField;
    TBPagarPAG_VALORJUROS: TFMTBCDField;
    TBPagarPAG_VALORMULTA: TFMTBCDField;
    TBPagarPAG_VALORORIGINAL: TFMTBCDField;
    TBPagarPAG_VALORPAGO: TFMTBCDField;
    procedure PngBitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPagarMultiplicar: TFormPagarMultiplicar;

implementation
uses DataMod, Funcoes1;
{$R *.dfm}

procedure TFormPagarMultiplicar.BitBtn1Click(Sender: TObject);
begin
  AbortIf(TBPagar.IsEmpty,'Nenhuma simulação gerada.');

  if MessageDlg('Confirma a multiplicação?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    Screen.Cursor:=crHourGlass;
    TBPagar.Last;
    while not TBPagar.Bof do
    begin
      DM.TBPagar.Insert;
      DM.TBPagarPAG_DESPESA.Value:=TBPagarPAG_DESPESA.Value;
      DM.TBPagarPAG_FORNECEDOR.Value:=TBPagarPAG_FORNECEDOR.Value;
      DM.TBPagarPAG_BAIXADOPOR.Value:=TBPagarPAG_BAIXADOPOR.Value;
      DM.TBPagarPAG_CONTA.Value:=TBPagarPAG_CONTA.Value;
      DM.TBPagarPAG_DESCPORC.Value:=TBPagarPAG_DESCPORC.Value;
      DM.TBPagarPAG_DESCRICAO.Value:=TBPagarPAG_DESCRICAO.Value;
      DM.TBPagarPAG_DESCVALOR.Value:=TBPagarPAG_DESCVALOR.Value;
      DM.TBPagarPAG_DIASATRASO.Value:=TBPagarPAG_DIASATRASO.Value;
      DM.TBPagarPAG_DIASPRAZO.Value:=TBPagarPAG_DIASPRAZO.Value;
      DM.TBPagarPAG_DTATUALIZACAO.Value:=DM.ServerDate; //TBPagarPAG_DTATUALIZACAO.Value;
      DM.TBPagarPAG_DTCADASTRO.Value:=DM.ServerDate; //TBPagarPAG_DTCADASTRO.Value;
      DM.TBPagarPAG_DTEMISSAO.Value:=DM.TBPagarPAG_DTCADASTRO.Value; //TBPagarPAG_DTEMISSAO.Value;
      DM.TBPagarPAG_DTJUROSAPOS.Value:=TBPagarPAG_DTJUROSAPOS.Value;
      DM.TBPagarPAG_DTPAGAMENTO.Clear; //.Value:=TBPagarPAG_DTPAGAMENTO.Value;
      DM.TBPagarPAG_DTVENCIMENTO.Value:=TBPagarPAG_DTVENCIMENTO.Value;
      DM.TBPagarPAG_JUROSPAGO.Value:=TBPagarPAG_JUROSPAGO.Value;
      DM.TBPagarPAG_MULTAPAGO.Value:=TBPagarPAG_MULTAPAGO.Value;
      DM.TBPagarPAG_NOVOCODIGO.Value:=TBPagarPAG_NOVOCODIGO.Value;
      DM.TBPagarPAG_NUMDOCTO.Value:=TBPagarPAG_NUMDOCTO.Value;
      DM.TBPagarPAG_OBSERVACOES.Value:=TBPagarPAG_OBSERVACOES.Value;
      DM.TBPagarPAG_PARCELANUM.Value:=TBPagarPAG_PARCELANUM.Value;
      DM.TBPagarPAG_PARCELAQTDE.Value:=TBPagarPAG_PARCELAQTDE.Value;
      DM.TBPagarPAG_PORCJUROS.Value:=TBPagarPAG_PORCJUROS.Value;
      DM.TBPagarPAG_STATUS.Value:='A';
      DM.TBPagarPAG_TIPOBAIXA.Value:=TBPagarPAG_TIPOBAIXA.Value;
      DM.TBPagarPAG_TIPODOCTO.Value:=TBPagarPAG_TIPODOCTO.Value;
      DM.TBPagarPAG_USUARIO.Value:=TBPagarPAG_USUARIO.Value;
      DM.TBPagarPAG_VALOR.Value:=TBPagarPAG_VALOR.Value;
      DM.TBPagarPAG_VALORJUROS.Value:=TBPagarPAG_VALORJUROS.Value;
      DM.TBPagarPAG_VALORMULTA.Value:=TBPagarPAG_VALORMULTA.Value;
      DM.TBPagarPAG_VALORORIGINAL.Value:=TBPagarPAG_VALORORIGINAL.Value;
      DM.TBPagarPAG_VALORPAGO.Value:=TBPagarPAG_VALORPAGO.Value;
      DM.TBPagar.Post;
      TBPagar.Prior;
    end;
    Screen.Cursor:=crDefault;
    MessageDlg('Multiplicação concluída.',mtInformation,[mbOk],0);
    Close;
  end;
end;

procedure TFormPagarMultiplicar.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TFormPagarMultiplicar.Edit1Exit(Sender: TObject);
begin
  if Trim(Edit1.Text)<>'' then
  begin
    if (StrToInt(Edit1.Text)<1) or (StrToInt(Edit1.Text)>500) then
    begin
      MessageDlg('O número de cópias deve estar entre 1 e 255.',mtError,[mbOk],0);
      Edit1.SetFocus;
    end;
  end;
end;

procedure TFormPagarMultiplicar.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
end;

procedure TFormPagarMultiplicar.FormCreate(Sender: TObject);
begin
  Edit1.Text:='2';
end;

procedure TFormPagarMultiplicar.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormPagarMultiplicar.PngBitBtn1Click(Sender: TObject);
var I: Word;
  Venc: TDate;
begin
  if Trim(Edit1.Text)='' then
  begin
    MessageDlg('Informe o número de cópias.',mtError,[mbOk],0);
    Edit1.SetFocus;
    Exit;
  end;
  TBPagar.EmptyDataSet;
  Venc:=DM.TBPagarPAG_DTVENCIMENTO.Value;
  for I:=1 to StrToInt(Edit1.Text) do
  begin
    Venc:=IncMonth(Venc,1);
    TBPagar.Insert;
    TBPagarPAG_DESPESA.Value:=DM.TBPagarPAG_DESPESA.Value;
    TBPagarPAG_FORNECEDOR.Value:=DM.TBPagarPAG_FORNECEDOR.Value;
    TBPagarPAG_BAIXADOPOR.Value:=DM.TBPagarPAG_BAIXADOPOR.Value;
    TBPagarPAG_CONTA.Value:=DM.TBPagarPAG_CONTA.Value;
    TBPagarPAG_DESCPORC.Value:=DM.TBPagarPAG_DESCPORC.Value;
    TBPagarPAG_DESCRICAO.Value:=DM.TBPagarPAG_DESCRICAO.Value;
    TBPagarPAG_DESCVALOR.Value:=DM.TBPagarPAG_DESCVALOR.Value;
    TBPagarPAG_DIASATRASO.Value:=DM.TBPagarPAG_DIASATRASO.Value;
    TBPagarPAG_DIASPRAZO.Value:=DM.TBPagarPAG_DIASPRAZO.Value;
    TBPagarPAG_DTATUALIZACAO.Value:=DM.TBPagarPAG_DTATUALIZACAO.Value;
    TBPagarPAG_DTCADASTRO.Value:=DM.TBPagarPAG_DTCADASTRO.Value;
    TBPagarPAG_DTEMISSAO.Value:=DM.TBPagarPAG_DTEMISSAO.Value;
    TBPagarPAG_DTJUROSAPOS.Value:=DM.TBPagarPAG_DTJUROSAPOS.Value;
    TBPagarPAG_DTPAGAMENTO.Value:=DM.TBPagarPAG_DTPAGAMENTO.Value;
    TBPagarPAG_DTVENCIMENTO.Value:=Venc;
    TBPagarPAG_JUROSPAGO.Value:=DM.TBPagarPAG_JUROSPAGO.Value;
    TBPagarPAG_MULTAPAGO.Value:=DM.TBPagarPAG_MULTAPAGO.Value;
    TBPagarPAG_NOVOCODIGO.Value:=DM.TBPagarPAG_NOVOCODIGO.Value;
    TBPagarPAG_NUMDOCTO.Value:=DM.TBPagarPAG_NUMDOCTO.Value;
    //TBPagarPAG_OBSERVACOES.Value:=DM.TBPagarPAG_OBSERVACOES.Value+#13#10+'CONTA GERADA A PARTIR DA MULTIPLICACAO DA CONTA '+IntToStr(DM.TBPagarPAG_CODIGO.Value)+#13#10+'Multiplicador: '+Edit1.Text;
    TBPagarPAG_PARCELANUM.Value:=I+1;
    TBPagarPAG_PARCELAQTDE.Value:=StrToInt(Edit1.Text)+1;
    TBPagarPAG_PORCJUROS.Value:=DM.TBPagarPAG_PORCJUROS.Value;
    TBPagarPAG_STATUS.Value:='A';
    TBPagarPAG_TIPOBAIXA.Value:=DM.TBPagarPAG_TIPOBAIXA.Value;
    TBPagarPAG_TIPODOCTO.Value:=DM.TBPagarPAG_TIPODOCTO.Value;
    TBPagarPAG_USUARIO.Value:=DM.TBPagarPAG_USUARIO.Value;
    TBPagarPAG_VALOR.Value:=DM.TBPagarPAG_VALOR.Value;
    TBPagarPAG_VALORJUROS.Value:=DM.TBPagarPAG_VALORJUROS.Value;
    TBPagarPAG_VALORMULTA.Value:=DM.TBPagarPAG_VALORMULTA.Value;
    TBPagarPAG_VALORORIGINAL.Value:=DM.TBPagarPAG_VALORORIGINAL.Value;
    TBPagarPAG_VALORPAGO.Value:=DM.TBPagarPAG_VALORPAGO.Value;
    TBPagarFOR_NOME.Value:=DM.TBPagarFOR_NOME.Value;
    TBPagar.Post;
  end;
end;

end.
