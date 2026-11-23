unit ReceberBaixar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, StdCtrls, DBCtrls, Mask, Buttons, ExtCtrls, PngBitBtn, PngSpeedButton,
  System.UITypes, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client, FireDAC.Comp.DataSet;

type
  TFormReceberBaixar = class(TForm)
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
    Label20: TLabel;
    SpeedButton4: TPngSpeedButton;
    BitBtn1: TPngBitBtn;
    BitBtn2: TPngBitBtn;
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
    DBText16: TDBText;
    Label25: TLabel;
    BitBtn3: TPngBitBtn;
    DBComboBox2: TDBComboBox;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    Label29: TLabel;
    Label30: TLabel;
    DBText17: TDBText;
    DBText18: TDBText;
    DBText19: TDBText;
    Label31: TLabel;
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
    procedure DBEdit4KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit3KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure DBEdit5Exit(Sender: TObject);
    procedure DBEdit6Exit(Sender: TObject);
    procedure DBEdit1Exit(Sender: TObject);
    procedure DBEdit2Exit(Sender: TObject);
    procedure DBEdit3Exit(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure DBEdit7Exit(Sender: TObject);
    procedure DBEdit8Exit(Sender: TObject);
    procedure DBEdit30Enter(Sender: TObject);
    procedure DBEdit30KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    procedure BaixarParcial;
    procedure BaixarTotal;
    procedure CalcularTotaisIniciais;
    procedure CalcularTotais;
    procedure RecalcularMultaJuros;
  public
    { Public declarations }
  end;

var
  FormReceberBaixar: TFormReceberBaixar;
  Parcial: Boolean = False; //baixa parcial ou total?.
implementation
uses DataMod, ContasLoc, Main, DateUtils, Funcoes1;
{$R *.dfm}

procedure TFormReceberBaixar.BaixarParcial;
var
  NovoCod, Cod, Cliente, Receita, Conta, Vendedor: Integer;
  Desc, Tipo, NumDoc, Obs: String;
  Emissao, Venc, Apos: TDate;
  Juros, JurosVlr, MultaVlr, Valor, ValorPago, AcreValor, AcrePorc: Currency;
begin
  if DM.TBReceberREE_VALORPAGO.Value>=(DM.TBReceberREE_VALOR.Value+DM.TBReceberREE_VALORMULTA.Value+DM.TBReceberREE_VALORJUROS.Value+DM.TBReceberREE_ACRESCIMOVALOR.Value) then
  begin
    MessageDlg('O Valor Pago informado deve ser menor que o valor da conta.',mtError,[mbOk],0);
    DBEdit4.SelectAll;
    DBEdit4.SetFocus;
    Exit;
  end;
  //Salva o documento original em memória.
  Cod:=DM.TBReceberREE_CODIGO.Value;
  Cliente:=DM.TBReceberREE_CLIENTE.Value;
  Vendedor:=DM.TBReceberREE_VENDEDOR.Value;
  Receita:=DM.TBReceberREE_RECEITA.Value;
  Conta:=DM.TBReceberREE_CONTA.Value;
  Desc:=DM.TBReceberREE_DESCRICAO.Value;
  Tipo:=DM.TBReceberREE_TIPODOCTO.Value;
  NumDoc:=DM.TBReceberREE_NUMDOCTO.Value;
  Obs:=DM.TBReceberREE_OBSERVACOES.Value;
  Emissao:=DM.TBReceberREE_DTEMISSAO.Value;
  Venc:=DM.TBReceberREE_DTVENCIMENTO.Value;
  Apos:=DM.TBReceberREE_DTJUROSAPOS.Value;
  Juros:=DM.TBReceberREE_PORCJUROS.AsFloat;
  JurosVlr:=DM.TBReceberREE_VALORJUROS.AsExtended;
  MultaVlr:=DM.TBReceberREE_VALORMULTA.AsExtended;
  AcreValor:=DM.TBReceberREE_ACRESCIMOVALOR.AsExtended;
  AcrePorc:=DM.TBReceberREE_ACRESCIMOPORC.AsFloat;
//  AcreValorPago:=DM.TBReceberREE_ACRESCIMOVALORPAGO.Value;
//  AcrePorcPago:=DM.TBReceberREE_ACRESCIMOPORCPAGO.Value;
  Valor:=DM.TBReceberREE_VALOR.AsExtended;
  ValorPago:=DM.TBReceberREE_VALORPAGO.AsExtended; //o usuario digitou.

  //baixa o documento original, alterando o valor.
  DM.TBReceberREE_VALORORIGINAL.Value:=DM.TBReceberREE_VALOR.Value; //salva o valor original.
  DM.TBReceberREE_VALOR.Value:=DM.TBReceberREE_VALORPAGO.Value; //iguala o valor.
  //DM.TBReceberREE_STATUS.Value:='B'; //não baixa ainda, para poder alterar depois quando colocar o campo ree_novocodigo.
  DM.TBReceberREE_BAIXADOPOR.Value:=DM.UsuarioLogin;
  DM.TBReceberREE_TIPOBAIXA.Value:='P';
  DM.TBReceber.Post;

  //gera lancamento do fluxo de caixa.
  DM.TBCaixa.Insert;
  DM.TBCaixaCAI_CONTA.Value:=DM.TBReceberREE_CONTA.Value;
  DM.TBCaixaCAI_CLIENTE.Value:=DM.TBReceberREE_CLIENTE.Value;
  DM.TBCaixaCAI_CLIENTENOME.Value:=DM.TBReceberCLI_NOME.Value;
  DM.TBCaixaCAI_DATA.Value:=DM.ServerDate;
  DM.TBCaixaCAI_DESCRICAO.Value:=DM.TBReceberREE_DESCRICAO.Value;
  DM.TBCaixaCAI_ENTRADASAIDA.Value:='E';
  DM.TBCaixaCAI_NUMDOCTO.Value:=IntToStr(DM.TBReceberREE_CODIGO.Value);
  DM.TBCaixaCAI_ORIGEM.Value:='CONTAS A RECEBER';
  DM.TBCaixaCAI_TIPODOCTO.Value:=DM.TBReceberREE_TIPODOCTO.Value;
  DM.TBCaixaCAI_VALOR.Value:=DM.TBReceberREE_VALORPAGO.Value;
  DM.TBCaixaCAI_VENDEDOR.Value:=DM.UsuarioVendedor;
  DM.TBCaixa.Post; //os saldos são calculados no evento onpost.

  //gera outro documento em aberto com a diferença entre o valor e o valor pago.
  DM.TBReceber.Insert;
  DM.TBReceberREE_CLIENTE.Value:=Cliente;
  DM.TBReceberREE_CONTA.Value:=Conta;
  DM.TBReceberREE_DESCRICAO.Value:=Desc;
  DM.TBReceberREE_DTEMISSAO.Value:=Emissao;
  DM.TBReceberREE_DTJUROSAPOS.Value:=Apos;
  DM.TBReceberREE_DTVENCIMENTO.Value:=Venc;
  DM.TBReceberREE_NUMDOCTO.Value:=NumDoc;
  DM.TBReceberREE_OBSERVACOES.Value:=Obs+#13#10#13#10+'DOC. BAIXADO PARCIAL'+#13#10+'VALOR ORIGINAL: '+FloatToStr(Valor)+#13#10+'NUM. DOCUMENTO: '+IntToStr(Cod);
  DM.TBReceberREE_PORCJUROS.Value:=Juros;
  DM.TBReceberREE_RECEITA.Value:=Receita;
  DM.TBReceberREE_STATUS.Value:='A';
  DM.TBReceberREE_TIPODOCTO.Value:=Tipo;
  DM.TBReceberREE_VALOR.Value:=(Valor+MultaVlr+JurosVlr+AcreValor)-ValorPago; //mesmo do valor pago.
  DM.TBReceberREE_VALORJUROS.Value:=JurosVlr;
  DM.TBReceberREE_VALORMULTA.Value:=MultaVlr;
  DM.TBReceberREE_VENDEDOR.Value:=Vendedor;
  DM.TBReceber.Post;

  //localiza o documento original para colocar o codigo do novo documento no campo "ree_novocodigo".
  NovoCod:=DM.TBReceberREE_CODIGO.Value;
  DM.TBReceber.Close;
  DM.TBReceber.ParamByName('codigo').AsInteger:=Cod;
  DM.TBReceber.Open;
  DM.TBReceber.Edit;
  DM.TBReceberREE_NOVOCODIGO.Value:=NovoCod;
  DM.TBReceberREE_STATUS.Value:='B';
  DM.TBReceber.Post;
  Close;
end;

procedure TFormReceberBaixar.BaixarTotal;
begin
  CalcularTotais;
  DM.TBReceberREE_STATUS.Value:='B'; //baixada.
  DM.TBReceberREE_BAIXADOPOR.Value:=DM.UsuarioLogin;
  DM.TBReceberREE_TIPOBAIXA.Value:='T'; //total.
  DM.TBReceberREE_NOVOCODIGO.Clear;
  DM.TBReceber.Post;

  DM.TBCaixa.Insert;
  DM.TBCaixaCAI_CLIENTE.Value:=DM.TBReceberREE_CLIENTE.Value;
  DM.TBCaixaCAI_CLIENTENOME.Value:=DM.TBReceberCLI_NOME.Value;
  DM.TBCaixaCAI_CONTA.Value:=DM.TBReceberREE_CONTA.Value;
  DM.TBCaixaCAI_DATA.Value:=DM.ServerDate;
  DM.TBCaixaCAI_DESCRICAO.Value:=DM.TBReceberREE_DESCRICAO.Value;
  DM.TBCaixaCAI_ENTRADASAIDA.Value:='E';
  DM.TBCaixaCAI_NUMDOCTO.Value:=IntToStr(DM.TBReceberREE_CODIGO.Value);
  DM.TBCaixaCAI_ORIGEM.Value:='CONTAS A RECEBER';
  DM.TBCaixaCAI_TIPODOCTO.Value:=DM.TBReceberREE_TIPODOCTO.Value;
  DM.TBCaixaCAI_VALOR.Value:=DM.TBReceberREE_VALORPAGO.Value;
  DM.TBCaixaCAI_VENDEDOR.Value:=DM.UsuarioVendedor;
  DM.TBCaixa.Post; //os saldos são calculados no evento onpost.

  Close;
end;

procedure TFormReceberBaixar.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormReceberBaixar.CalcularTotaisIniciais;
var JurosDiario: Currency;
begin
  //calcula o acréscimo, multa e juros.
  if DM.TBReceberREE_DTJUROSAPOS.Value<DM.TBReceberREE_DTPAGAMENTO.Value then
  begin
    //acréscimo.
    if DM.TBParametrosPAR_ACRESCIMOPOR.Value='P' then
    begin
      DM.TBReceberREE_ACRESCIMOPORC.Value:=DM.TBParametrosPAR_ACRESCIMOPORC.Value;
      DM.TBReceberREE_ACRESCIMOVALOR.Value:=(DM.TBReceberREE_VALOR.Value/100)*DM.TBReceberREE_ACRESCIMOPORC.Value;
      DM.TBReceberREE_ACRESCIMOPORCPAGO.Value:=DM.TBParametrosPAR_ACRESCIMOPORC.Value;
      DM.TBReceberREE_ACRESCIMOVALORPAGO.Value:=(DM.TBReceberREE_VALOR.Value/100)*DM.TBReceberREE_ACRESCIMOPORCPAGO.Value;
    end else
    begin //acrescimo por valor.
      DM.TBReceberREE_ACRESCIMOVALOR.Value:=DM.TBParametrosPAR_ACRESCIMOVALOR.Value;
      DM.TBReceberREE_ACRESCIMOPORC.Value:=(DM.TBReceberREE_ACRESCIMOVALOR.Value/DM.TBReceberREE_VALOR.Value)*100;
      DM.TBReceberREE_ACRESCIMOVALORPAGO.Value:=DM.TBParametrosPAR_ACRESCIMOVALOR.Value;
      DM.TBReceberREE_ACRESCIMOPORCPAGO.Value:=(DM.TBReceberREE_ACRESCIMOVALORPAGO.Value/DM.TBReceberREE_VALOR.Value)*100;
    end;
    //...

    //multa.
    if DM.TBParametrosPAR_MULTATIPO.Value='V' then
    DM.TBReceberREE_VALORMULTA.Value:=DM.TBParametrosPAR_VALORMULTA.value else
    DM.TBReceberREE_VALORMULTA.Value:=(((DM.TBReceberREE_VALOR.Value+DM.TBReceberREE_ACRESCIMOVALOR.Value)/100)*DM.TBParametrosPAR_MULTAPORC.Value);
    if DM.TBParametrosPAR_COBRARDESCONTO.Value='S' then
    DM.TBReceberREE_VALORMULTA.Value:=DM.TBReceberREE_VALORMULTA.Value+(DM.TBReceberREE_VALORSEMDESCONTO.Value-DM.TBReceberREE_VALOR.Value);
    DM.TBReceberREE_MULTAPAGO.Value:=DM.TBReceberREE_VALORMULTA.Value;
    //...

    //juros.
    JurosDiario:=(((DM.TBReceberREE_VALOR.AsExtended+DM.TBReceberREE_ACRESCIMOVALOR.AsExtended+DM.TBReceberREE_VALORMULTA.AsExtended)/100)*DM.TBReceberREE_PORCJUROS.AsFloat)/30;
    DM.TBReceberREE_VALORJUROS.Value:=DaysBetween(DM.TBReceberREE_DTJUROSAPOS.Value,DM.TBReceberREE_DTPAGAMENTO.Value)*JurosDiario;
    DM.TBReceberREE_JUROSPAGO.Value:=DM.TBReceberREE_VALORJUROS.Value;
    //...
  end else
  begin
    DM.TBReceberREE_VALORJUROS.Value:=0;
    DM.TBReceberREE_VALORMULTA.Value:=0;
  end;
  //calcula o valor a pagar com juros e multa e acréscimo.
  DM.TBReceberREE_VALORPAGO.Value:=(DM.TBReceberREE_VALOR.Value+
                                    DM.TBReceberREE_JUROSPAGO.Value+
                                    DM.TBReceberREE_MULTAPAGO.Value+
                                    DM.TBReceberREE_ACRESCIMOVALOR.Value+
                                    DM.TBReceberREE_VALORACESSORIAS.Value);
  //calcula o valor do desconto.
  DM.TBReceberREE_DESCVALOR.Value:=(DM.TBReceberREE_VALORPAGO.Value/100)*DM.TBReceberREE_DESCPORC.Value;
  //calcula o desconto no valor final.
  DM.TBReceberREE_VALORPAGO.Value:=(DM.TBReceberREE_VALOR.Value+
                                    DM.TBReceberREE_JUROSPAGO.Value+
                                    DM.TBReceberREE_MULTAPAGO.Value+
                                    DM.TBReceberREE_ACRESCIMOVALOR.Value+
                                    DM.TBReceberREE_VALORACESSORIAS.Value)-
                                    DM.TBReceberREE_DESCVALOR.Value;
end;

procedure TFormReceberBaixar.CalcularTotais;
begin
  DM.TBReceberREE_VALORPAGO.Value:=(DM.TBReceberREE_VALOR.Value+
                                   DM.TBReceberREE_JUROSPAGO.Value+
                                   DM.TBReceberREE_MULTAPAGO.Value+
                                   DM.TBReceberREE_ACRESCIMOVALORPAGO.Value+
                                   DM.TBReceberREE_VALORACESSORIAS.Value)-
                                   DM.TBReceberREE_DESCVALOR.Value;
end;

procedure TFormReceberBaixar.RecalcularMultaJuros;
var JurosDiario: Currency;
begin
  //multa. - só calcula se for por porcentagem.
  if DM.TBParametrosPAR_MULTATIPO.Value='P' then
  DM.TBReceberREE_VALORMULTA.Value:=(((DM.TBReceberREE_VALOR.Value+DM.TBReceberREE_ACRESCIMOVALORPAGO.Value)/100)*DM.TBParametrosPAR_MULTAPORC.Value);
  if DM.TBParametrosPAR_COBRARDESCONTO.Value='S' then
  DM.TBReceberREE_VALORMULTA.Value:=DM.TBReceberREE_VALORMULTA.Value+(DM.TBReceberREE_VALORSEMDESCONTO.Value-DM.TBReceberREE_VALOR.Value);
  DM.TBReceberREE_MULTAPAGO.Value:=DM.TBReceberREE_VALORMULTA.Value;
  //...

  //juros.
  JurosDiario:=(((DM.TBReceberREE_VALOR.AsExtended+DM.TBReceberREE_ACRESCIMOVALORPAGO.AsExtended+DM.TBReceberREE_VALORMULTA.AsExtended)/100)*DM.TBReceberREE_PORCJUROS.AsFloat)/30;
  DM.TBReceberREE_VALORJUROS.Value:=DaysBetween(DM.TBReceberREE_DTJUROSAPOS.Value,DM.TBReceberREE_DTPAGAMENTO.Value)*JurosDiario;
  DM.TBReceberREE_JUROSPAGO.Value:=DM.TBReceberREE_VALORJUROS.Value;
  //...
end;

procedure TFormReceberBaixar.FormCreate(Sender: TObject);
begin
  //coloca a tabela em edição e preenche alguns campos.
  //se clicar em cancelar, dá um table.cancel.
  DM.TBReceber.Edit;
  DM.TBReceberREE_DTPAGAMENTO.Value:=DM.ServerDate;

  if Date<=DM.TBReceberREE_DTVENCIMENTO.Value then
  DM.TBReceberREE_DESCPORC.Value:=DM.TBReceberREE_DESCPORCVENCIMENTO.Value else
  DM.TBReceberREE_DESCPORC.Value:=0;

  DM.TBReceberREE_DESCVALOR.Value:=0;
  CalcularTotaisIniciais;
end;

procedure TFormReceberBaixar.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TFormReceberBaixar.BitBtn1Click(Sender: TObject);
begin
  AbortIf(DateToStr(DM.TBReceberREE_DTPAGAMENTO.Value,FS)='  /  /    ','Informe a data de pagamento.');

  if MessageDlg('Confirma a baixa do documento?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    if Parcial then BaixarParcial else BaixarTotal;
  end;
end;

procedure TFormReceberBaixar.SpeedButton4Click(Sender: TObject);
begin
  Application.CreateForm(TFormContasLoc, FormContasLoc);
  FormContasLoc.ShowModal;
  if ContasLoc.Procurar then
  begin
    DM.TBReceberREE_CONTA.Value:=FormContasLoc.QYContasCON_CODIGO.Value;
    DM.TBReceberCON_NOME.Value:=FormContasLoc.QYContasCON_NOME.Value;
    DM.TBReceberCON_SALDO.Value:=FormContasLoc.QYContasCON_SALDO.Value;
  end;
  FormContasLoc.Free;
  FormContasLoc:=nil;
end;

procedure TFormReceberBaixar.DBEdit30Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TDBEdit).Text;
end;

procedure TFormReceberBaixar.DBEdit30Exit(Sender: TObject);
begin
  if (DM.TBReceber.State in [dsInsert, dsEdit]) and ((Sender as TDBEdit).Text='') then
  begin
    DM.TBReceberREE_CONTA.Clear;
    DM.TBReceberCON_NOME.Clear;
    DM.TBReceberCON_SALDO.Clear;
    Exit;
  end;
  if DM.CodigosOld=(Sender as TDBEdit).Text then
  Exit;
  if (DM.TBReceber.State in [dsInsert, dsEdit]) and ((Sender as TDBEdit).Text<>'') then
  begin
    QYContas.Close;
    QYContas.ParamByName('codigo').AsInteger:=StrToInt((Sender as TDBEdit).Text);
    QYContas.Open;
    if not QYContas.IsEmpty then
    begin
      DM.TBReceberREE_CONTA.Value:=QYContasCON_CODIGO.Value;
      DM.TBReceberCON_NOME.Value:=QYContasCON_NOME.Value;
      DM.TBReceberCON_SALDO.Value:=QYContasCON_SALDO.Value;
    end else
    begin
      DM.TBReceberREE_CONTA.Clear;
      DM.TBPagarCON_NOME.Clear;
      DM.TBReceberCON_SALDO.Clear;
      MessageDlg('Conta não encontrada.',mtInformation,[mbOk],0);
      (Sender as TDBEdit).SetFocus;
    end;
    QYContas.Close;
  end;
end;

procedure TFormReceberBaixar.DBEdit30KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton4.Click;
end;

procedure TFormReceberBaixar.DBEdit30KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormReceberBaixar.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if DM.TBReceber.State in [dsInsert, dsEdit] then
  begin
    if MessageDlg('Cancelar a Baixa?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
    DM.TBReceber.Cancel else
    Action:=caNone;
  end;
end;

procedure TFormReceberBaixar.DBEdit4Change(Sender: TObject);
begin
  if Trim(DBEdit4.Text)='' then
  BitBtn1.Enabled:=False else
  BitBtn1.Enabled:=True;
end;

procedure TFormReceberBaixar.DBEdit4KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key=#46 then Key:=#44; //troca ponto por virgula.
end;

procedure TFormReceberBaixar.DBEdit3KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key=#46 then Key:=#44; //troca ponto por virgula.
end;

procedure TFormReceberBaixar.DBEdit2KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key=#46 then Key:=#44; //troca ponto por virgula.
end;

procedure TFormReceberBaixar.FormShow(Sender: TObject);
begin
  FormMain.DesabilitarControles(FormReceberBaixar);
end;

procedure TFormReceberBaixar.DBEdit5Exit(Sender: TObject);
begin
  DM.TBReceberREE_VALORPAGO.Value:=(DM.TBReceberREE_VALOR.Value+
                                    DM.TBReceberREE_JUROSPAGO.Value+
                                    DM.TBReceberREE_MULTAPAGO.Value+
                                    DM.TBReceberREE_ACRESCIMOVALORPAGO.Value+
                                    DM.TBReceberREE_VALORACESSORIAS.Value);

  DM.TBReceberREE_DESCVALOR.Value:=(DM.TBReceberREE_VALORPAGO.Value/100)*DM.TBReceberREE_DESCPORC.Value;
  CalcularTotais;
end;

procedure TFormReceberBaixar.DBEdit6Exit(Sender: TObject);
begin
  DM.TBReceberREE_VALORPAGO.Value:=(DM.TBReceberREE_VALOR.Value+
                                    DM.TBReceberREE_JUROSPAGO.Value+
                                    DM.TBReceberREE_MULTAPAGO.Value+
                                    DM.TBReceberREE_ACRESCIMOVALORPAGO.Value+
                                    DM.TBReceberREE_VALORACESSORIAS.Value);
  DM.TBReceberREE_DESCPORC.Value:=(DM.TBReceberREE_DESCVALOR.Value/DM.TBReceberREE_VALORPAGO.Value)*100;
  CalcularTotais;
end;

procedure TFormReceberBaixar.DBEdit7Exit(Sender: TObject);
begin
  DM.TBReceberREE_ACRESCIMOVALORPAGO.Value:=(DM.TBReceberREE_VALOR.Value/100)*DM.TBReceberREE_ACRESCIMOPORCPAGO.Value;
  DM.TBReceberREE_VALORPAGO.Value:=(DM.TBReceberREE_VALOR.Value+
                                    DM.TBReceberREE_JUROSPAGO.Value+
                                    DM.TBReceberREE_MULTAPAGO.Value+
                                    DM.TBReceberREE_ACRESCIMOVALORPAGO.Value+
                                    DM.TBReceberREE_VALORACESSORIAS.Value);
  if DM.TBReceberREE_DTJUROSAPOS.Value<DM.TBReceberREE_DTPAGAMENTO.Value then
  RecalcularMultaJuros;
  CalcularTotais;
end;

procedure TFormReceberBaixar.DBEdit8Exit(Sender: TObject);
begin
  DM.TBReceberREE_ACRESCIMOPORCPAGO.Value:=(DM.TBReceberREE_ACRESCIMOVALORPAGO.Value/DM.TBReceberREE_VALOR.Value)*100;
  DM.TBReceberREE_VALORPAGO.Value:=(DM.TBReceberREE_VALOR.Value+
                                    DM.TBReceberREE_JUROSPAGO.Value+
                                    DM.TBReceberREE_MULTAPAGO.Value+
                                    DM.TBReceberREE_ACRESCIMOVALORPAGO.Value+
                                    DM.TBReceberREE_VALORACESSORIAS.Value);
  if DM.TBReceberREE_DTJUROSAPOS.Value<DM.TBReceberREE_DTPAGAMENTO.Value then
  RecalcularMultaJuros;
  CalcularTotais;
end;

procedure TFormReceberBaixar.DBEdit1Exit(Sender: TObject);
begin
  CalcularTotaisIniciais;
end;

procedure TFormReceberBaixar.DBEdit2Exit(Sender: TObject);
begin
  CalcularTotais;
end;

procedure TFormReceberBaixar.DBEdit3Exit(Sender: TObject);
begin
  CalcularTotais;
end;

procedure TFormReceberBaixar.BitBtn3Click(Sender: TObject);
begin
  try
    WinExec('CALC.EXE',sw_ShowNormal);
  except on exception do
  ShowMessage('Não foi possível executar CALC.EXE. Verifique se o arquivo está instalado no Windows.');
  end; //try
end;

initialization
  RegisterClass(TFormReceberBaixar);

finalization
  UnRegisterClass(TFormReceberBaixar);

end.
