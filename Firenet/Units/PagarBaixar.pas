unit PagarBaixar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Mask, StdCtrls, Buttons, ExtCtrls, DBCtrls, DB, PngBitBtn, PngSpeedButton,
  System.UITypes, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client, FireDAC.Comp.DataSet;

type
  TFormPagarBaixar = class(TForm)
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
    BitBtn1: TPngBitBtn;
    BitBtn2: TPngBitBtn;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Bevel2: TBevel;
    Label20: TLabel;
    SpeedButton4: TPngSpeedButton;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit30: TDBEdit;
    DBEdit29: TDBEdit;
    Label21: TLabel;
    Label22: TLabel;
    DBText14: TDBText;
    DBText15: TDBText;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    Label23: TLabel;
    Label24: TLabel;
    BitBtn3: TPngBitBtn;
    DBComboBox2: TDBComboBox;
    Label25: TLabel;
    QYContas: TFDQuery;
    TRContas: TFDTransaction;
    QYContasCON_CODIGO: TIntegerField;
    QYContasCON_NOME: TStringField;
    QYContasCON_SALDO: TFMTBCDField;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure DBEdit30Exit(Sender: TObject);
    procedure DBEdit30KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBEdit4Change(Sender: TObject);
    procedure DBEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit3KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit4KeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure DBEdit1Exit(Sender: TObject);
    procedure DBEdit2Exit(Sender: TObject);
    procedure DBEdit3Exit(Sender: TObject);
    procedure DBEdit5Exit(Sender: TObject);
    procedure DBEdit6Exit(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure DBEdit30Enter(Sender: TObject);
    procedure DBEdit30KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    procedure BaixarParcial;
    procedure BaixarTotal;
    procedure CalcularTotaisIniciais;
    procedure CalcularTotais;
  public
    { Public declarations }
  end;

var
  FormPagarBaixar: TFormPagarBaixar;
  Parcial: Boolean = False; //baixa parcial ou total?.
implementation
uses DataMod, ContasLoc, Main, DateUtils, Funcoes1;
{$R *.dfm}

procedure TFormPagarBaixar.BaixarParcial;
var
  NovoCod, Cod, Fornecedor, Despesa, Conta: Integer;
  Desc, Tipo, NumDoc, Obs: String;
  Emissao, Venc, Apos: TDate;
  Juros, JurosVlr, MultaVlr, Valor, ValorPago: Currency;
begin
  if DM.TBPagarPAG_VALORPAGO.Value>=DM.TBPagarPAG_VALOR.Value then
  begin
    MessageDlg('O Valor Pago informado deve ser menor que o valor da conta.',mtError,[mbOk],0);
    DBEdit4.SelectAll;
    DBEdit4.SetFocus;
    Exit;
  end;
  //Salva o documento original em memória.
  Cod:=DM.TBPagarPAG_CODIGO.Value;
  Fornecedor:=DM.TBPagarPAG_FORNECEDOR.Value;
  Despesa:=DM.TBPagarPAG_DESPESA.Value;
  Conta:=DM.TBPagarPAG_CONTA.Value;
  Desc:=DM.TBPagarPAG_DESCRICAO.Value;
  Tipo:=DM.TBPagarPAG_TIPODOCTO.Value;
  NumDoc:=DM.TBPagarPAG_NUMDOCTO.Value;
  Obs:=DM.TBPagarPAG_OBSERVACOES.Value;
  Emissao:=DM.TBPagarPAG_DTEMISSAO.Value;
  Venc:=DM.TBPagarPAG_DTVENCIMENTO.Value;
  Apos:=DM.TBPagarPAG_DTJUROSAPOS.Value;
  Juros:=DM.TBPagarPAG_PORCJUROS.AsExtended;
  JurosVlr:=DM.TBPagarPAG_VALORJUROS.AsExtended;
  MultaVlr:=DM.TBPagarPAG_VALORMULTA.AsExtended;
  Valor:=DM.TBPagarPAG_VALOR.AsExtended;
  ValorPago:=DM.TBPagarPAG_VALORPAGO.AsExtended; //o usuario digitou.

  //baixa o documento original, alterando o valor.
  DM.TBPagarPAG_VALORORIGINAL.Value:=DM.TBPagarPAG_VALOR.Value; //salva o valor original.
  DM.TBPagarPAG_VALOR.Value:=DM.TBPagarPAG_VALORPAGO.Value; //iguala o valor.
  //DM.TBPagarPAG_STATUS.Value:='B'; //não baixa ainda, para poder alterar depois quando colocar o campo ree_novocodigo.
  DM.TBPagarPAG_BAIXADOPOR.Value:=DM.UsuarioLogin;
  DM.TBPagarPAG_TIPOBAIXA.Value:='P';
  DM.TBPagar.Post;

  //gera lançamento no fluxo de caixa.
  DM.TBCaixa.Insert;
  DM.TBCaixaCAI_CONTA.Value:=DM.TBPagarPAG_CONTA.Value;
  DM.TBCaixaCAI_DATA.Value:=DM.ServerDate;
  DM.TBCaixaCAI_DESCRICAO.Value:=DM.TBPagarPAG_DESCRICAO.Value;
  DM.TBCaixaCAI_ENTRADASAIDA.Value:='S';
  DM.TBCaixaCAI_FORNECEDOR.Value:=DM.TBPagarPAG_FORNECEDOR.Value;
  DM.TBCaixaCAI_FORNECEDORNOME.Value:=DM.TBPagarFOR_NOME.Value;
  DM.TBCaixaCAI_NUMDOCTO.Value:=IntToStr(DM.TBPagarPAG_CODIGO.Value);
  DM.TBCaixaCAI_ORIGEM.Value:='CONTAS A PAGAR';
  DM.TBCaixaCAI_TIPODOCTO.Value:=DM.TBPagarPAG_TIPODOCTO.Value;
  DM.TBCaixaCAI_VALOR.Value:=DM.TBPagarPAG_VALORPAGO.Value;
  DM.TBCaixaCAI_VENDEDOR.Value:=DM.UsuarioVendedor;
  DM.TBCaixa.Post; //os saldos são calculados no evento onpost.

  //gera outro documento em aberto com a diferença entre o valor e o valor pago.
  DM.TBPagar.Insert;
  DM.TBPagarPAG_TIPODOCTO.Value:=Tipo;
  DM.TBPagarPAG_NUMDOCTO.Value:=NumDoc;
  DM.TBPagarPAG_FORNECEDOR.Value:=Fornecedor;
  DM.TBPagarPAG_DESCRICAO.Value:=Desc;
  DM.TBPagarPAG_DTEMISSAO.Value:=Emissao;
  DM.TBPagarPAG_DTVENCIMENTO.Value:=Venc;
  DM.TBPagarPAG_DTJUROSAPOS.Value:=Apos;
  DM.TBPagarPAG_VALORMULTA.Value:=MultaVlr;
  DM.TBPagarPAG_VALORJUROS.Value:=JurosVlr;
  DM.TBPagarPAG_PORCJUROS.Value:=Juros;
  DM.TBPagarPAG_CONTA.Value:=Conta;
  DM.TBPagarPAG_VALOR.Value:=Valor-ValorPago; //mesmo do valor pago.
  DM.TBPagarPAG_STATUS.Value:='A';
  DM.TBPagarPAG_OBSERVACOES.Value:=Obs+#13#10#13#10+'DOC. BAIXADO PARCIAL'+#13#10+'VALOR ORIGINAL: '+FloatToStr(Valor)+#13#10+'NUM. DOCUMENTO: '+IntToStr(Cod);
  DM.TBPagarPAG_DESPESA.Value:=Despesa;
  DM.TBPagar.Post;

  //localiza o documento original para colocar o codigo do novo documento no campo "ree_novocodigo".
  NovoCod:=DM.TBPagarPAG_CODIGO.Value;
  DM.TBPagar.Close;
  DM.TBPagar.ParamByName('codigo').AsInteger:=Cod;
  DM.TBPagar.Open;
  DM.TBPagar.Edit;
  DM.TBPagarPAG_NOVOCODIGO.Value:=NovoCod;
  DM.TBPagarPAG_STATUS.Value:='B';
  DM.TBPagar.Post;
  Close;
end;

procedure TFormPagarBaixar.BaixarTotal;
begin
//  if DM.TBPagarPAG_VALORPAGO.Value<DM.TBPagarPAG_VALOR.Value then
//  begin
//    MessageDlg('O Valor Pago informado deve ser maior ou igual ao valor da conta.',mtError,[mbOk],0);
//    DBEdit4.SelectAll;
//    DBEdit4.SetFocus;
//    Exit;
//  end;
  CalcularTotais;
  DM.TBPagarPAG_STATUS.Value:='B'; //baixada.
  DM.TBPagarPAG_BAIXADOPOR.Value:=DM.UsuarioLogin;
  DM.TBPagar.Post;

  //gera lancamento no fluxo de caixa.
  DM.TBCaixa.Insert;
  DM.TBCaixaCAI_CONTA.Value:=DM.TBPagarPAG_CONTA.Value;
  DM.TBCaixaCAI_DATA.Value:=DM.ServerDate;
  DM.TBCaixaCAI_DESCRICAO.Value:=DM.TBPagarPAG_DESCRICAO.Value;
  DM.TBCaixaCAI_ENTRADASAIDA.Value:='S';
  DM.TBCaixaCAI_FORNECEDOR.Value:=DM.TBPagarPAG_FORNECEDOR.Value;
  DM.TBCaixaCAI_FORNECEDORNOME.Value:=DM.TBPagarFOR_NOME.Value;
  DM.TBCaixaCAI_NUMDOCTO.Value:=IntToStr(DM.TBPagarPAG_CODIGO.Value);
  DM.TBCaixaCAI_ORIGEM.Value:='CONTAS A PAGAR';
  DM.TBCaixaCAI_TIPODOCTO.Value:=DM.TBPagarPAG_TIPODOCTO.Value;
  DM.TBCaixaCAI_VALOR.Value:=DM.TBPagarPAG_VALORPAGO.Value;
  DM.TBCaixaCAI_VENDEDOR.Value:=DM.UsuarioVendedor;
  DM.TBCaixa.Post; //os saldos são calculados no evento onpost.

  Close;
end;

procedure TFormPagarBaixar.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormPagarBaixar.CalcularTotaisIniciais;
var JurosDiario: Currency;
begin
  //calcula os juros e multa.
  if DM.TBPagarPAG_DTJUROSAPOS.Value<DM.TBPagarPAG_DTPAGAMENTO.Value then
  begin
    JurosDiario:=((DM.TBPagarPAG_VALOR.AsExtended/100)*DM.TBPagarPAG_PORCJUROS.AsFloat)/30;
    DM.TBPagarPAG_VALORJUROS.Value:=DaysBetween(DM.TBPagarPAG_DTJUROSAPOS.Value,DM.TBPagarPAG_DTPAGAMENTO.Value)*JurosDiario;
    DM.TBPagarPAG_JUROSPAGO.Value:=DM.TBPagarPAG_VALORJUROS.Value;
    DM.TBPagarPAG_VALORMULTA.Value:=DM.TBParametrosPAR_VALORMULTA.value;
    DM.TBPagarPAG_MULTAPAGO.Value:=DM.TBPagarPAG_VALORMULTA.Value;
  end;
  //calcula o valor a pagar com juros e multa.
  DM.TBPagarPAG_VALORPAGO.Value:=(DM.TBPagarPAG_VALOR.Value+
                                    DM.TBPagarPAG_JUROSPAGO.Value+
                                    DM.TBPagarPAG_MULTAPAGO.Value);
  //calcula o valor do desconto.
  DM.TBPagarPAG_DESCVALOR.Value:=(DM.TBPagarPAG_VALORPAGO.Value/100)*DM.TBPagarPAG_DESCPORC.Value;
  //calcula o desconto no valor final.
  DM.TBPagarPAG_VALORPAGO.Value:=(DM.TBPagarPAG_VALOR.Value+
                                  DM.TBPagarPAG_JUROSPAGO.Value+
                                  DM.TBPagarPAG_MULTAPAGO.Value)-
                                  DM.TBPagarPAG_DESCVALOR.Value;
end;

procedure TFormPagarBaixar.CalcularTotais;
begin
  DM.TBPagarPAG_VALORPAGO.Value:=(DM.TBPagarPAG_VALOR.Value+
                                  DM.TBPagarPAG_JUROSPAGO.Value+
                                  DM.TBPagarPAG_MULTAPAGO.Value)-
                                  DM.TBPagarPAG_DESCVALOR.Value;
end;

procedure TFormPagarBaixar.FormCreate(Sender: TObject);
begin
  //coloca a tabela em edição e preenche alguns campos.
  //se clicar em cancelar, dá um table.cancel.
  DM.TBPagar.Edit;
  DM.TBPagarPAG_DTPAGAMENTO.Value:=DM.ServerDate;
  CalcularTotaisIniciais;
end;

procedure TFormPagarBaixar.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TFormPagarBaixar.BitBtn1Click(Sender: TObject);
begin
  AbortIf(DateToStr(DM.TBPagarPAG_DTPAGAMENTO.Value,FS)='  /  /    ','Informe a data de pagamento.');

  if MessageDlg('Confirma a baixa do documento?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    if Parcial then BaixarParcial else BaixarTotal;
  end;
end;

procedure TFormPagarBaixar.SpeedButton4Click(Sender: TObject);
begin
  Application.CreateForm(TFormContasLoc, FormContasLoc);
  FormContasLoc.ShowModal;
  if ContasLoc.Procurar then
  begin
    DM.TBPagarPAG_CONTA.Value:=FormContasLoc.QYContasCON_CODIGO.Value;
    DM.TBPagarCON_NOME.Value:=FormContasLoc.QYContasCON_NOME.Value;
    DM.TBPagarCON_SALDO.Value:=FormContasLoc.QYContasCON_SALDO.Value;
  end;
  FormContasLoc.Free;
  FormContasLoc:=nil;
end;

procedure TFormPagarBaixar.DBEdit30Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TDBEdit).Text;
end;

procedure TFormPagarBaixar.DBEdit30Exit(Sender: TObject);
begin
  if (DM.TBPagar.State in [dsInsert, dsEdit]) and ((Sender as TDBEdit).Text='') then
  begin
    DM.TBPagarPAG_CONTA.Clear;
    DM.TBPagarCON_NOME.Clear;
    DM.TBPagarCON_SALDO.Clear;
    Exit;
  end;
  if DM.CodigosOld=(Sender as TDBEdit).Text then
  Exit;
  if (DM.TBPagar.State in [dsInsert, dsEdit]) and ((Sender as TDBEdit).Text<>'') then
  begin
    QYContas.Close;
    QYContas.ParamByName('codigo').AsInteger:=StrToInt((Sender as TDBEdit).Text);
    QYContas.Open;
    if not QYContas.IsEmpty then
    begin
      DM.TBPagarPAG_CONTA.Value:=QYContasCON_CODIGO.Value;
      DM.TBPagarCON_NOME.Value:=QYContasCON_NOME.Value;
      DM.TBPagarCON_SALDO.Value:=QYContasCON_SALDO.Value;
    end else
    begin
      DM.TBPagarPAG_CONTA.Clear;
      DM.TBPagarCON_NOME.Clear;
      DM.TBPagarCON_SALDO.Clear;
      MessageDlg('Conta não encontrada.',mtInformation,[mbOk],0);
      (Sender as TDBEdit).SetFocus;
    end;
    QYContas.Close;
  end;
end;

procedure TFormPagarBaixar.DBEdit30KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton4.Click;
end;

procedure TFormPagarBaixar.DBEdit30KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormPagarBaixar.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if DM.TBPagar.State in [dsInsert, dsEdit] then
  begin
    if MessageDlg('Cancelar a Baixa?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
    DM.TBPagar.Cancel else
    Action:=caNone;
  end;
end;

procedure TFormPagarBaixar.DBEdit4Change(Sender: TObject);
begin
  if Trim(DBEdit4.Text)='' then
  BitBtn1.Enabled:=False else
  BitBtn1.Enabled:=True;
end;

procedure TFormPagarBaixar.DBEdit2KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#46 then Key:=#44; //troca ponto por virgula.
end;

procedure TFormPagarBaixar.DBEdit3KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#46 then Key:=#44; //troca ponto por virgula.
end;

procedure TFormPagarBaixar.DBEdit4KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#46 then Key:=#44; //troca ponto por virgula.
end;

procedure TFormPagarBaixar.FormShow(Sender: TObject);
begin
  FormMain.DesabilitarControles(FormPagarBaixar);
end;

procedure TFormPagarBaixar.DBEdit1Exit(Sender: TObject);
begin
  CalcularTotaisIniciais;
end;

procedure TFormPagarBaixar.DBEdit2Exit(Sender: TObject);
begin
  CalcularTotais;
end;

procedure TFormPagarBaixar.DBEdit3Exit(Sender: TObject);
begin
  CalcularTotais;
end;

procedure TFormPagarBaixar.DBEdit5Exit(Sender: TObject);
begin
  DM.TBPagarPAG_VALORPAGO.Value:=(DM.TBPagarPAG_VALOR.Value+
                                  DM.TBPagarPAG_JUROSPAGO.Value+
                                  DM.TBPagarPAG_MULTAPAGO.Value);

  DM.TBPagarPAG_DESCVALOR.Value:=(DM.TBPagarPAG_VALORPAGO.Value/100)*DM.TBPagarPAG_DESCPORC.Value;
  CalcularTotais;
end;

procedure TFormPagarBaixar.DBEdit6Exit(Sender: TObject);
begin
  DM.TBPagarPAG_VALORPAGO.Value:=(DM.TBPagarPAG_VALOR.Value+
                                  DM.TBPagarPAG_JUROSPAGO.Value+
                                  DM.TBPagarPAG_MULTAPAGO.Value);
  DM.TBPagarPAG_DESCPORC.Value:=(DM.TBPagarPAG_DESCVALOR.Value/DM.TBPagarPAG_VALORPAGO.Value)*100;
  CalcularTotais;
end;

procedure TFormPagarBaixar.BitBtn3Click(Sender: TObject);
begin
  try
    WinExec('CALC.EXE',sw_ShowNormal);
  except on exception do
  ShowMessage('Não foi possível executar CALC.EXE. Verifique se o arquivo está instalado no Windows.');
  end; //try
end;

initialization
  RegisterClass(TFormPagarBaixar);

finalization
  UnRegisterClass(TFormPagarBaixar);

end.
