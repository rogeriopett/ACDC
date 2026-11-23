unit Pagar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, Buttons, DBSBtn, ExtCtrls, StdCtrls, DBCtrls, Mask, DB,
  ImgList, PngImageList, PngSpeedButton, System.ImageList, System.UITypes,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, FireDAC.Comp.Client, FireDAC.Comp.DataSet;

type
  TFormPagar = class(TForm)
    Panel2: TPanel;
    Bevel4: TBevel;
    InserirRegistro1Button: TDBSpeedButton;
    EliminarRegistro1Button: TDBSpeedButton;
    SalvarRegistro1Button: TDBSpeedButton;
    CancelarRegistro1Button: TDBSpeedButton;
    Fechar1Button: TPngSpeedButton;
    Bevel7: TBevel;
    Bevel1: TBevel;
    Relatorios2Button: TPngSpeedButton;
    BaixaTotal1Button: TPngSpeedButton;
    Localizar1Button: TPngSpeedButton;
    MainMenu1: TMainMenu;
    Arquivo1: TMenuItem;
    Localizar1: TMenuItem;
    Relatorios2: TMenuItem;
    N2: TMenuItem;
    BaixaTotal1: TMenuItem;
    N1: TMenuItem;
    Fechar1: TMenuItem;
    Navegacao1: TMenuItem;
    InserirRegistro1: TMenuItem;
    EliminarRegistro1: TMenuItem;
    N5: TMenuItem;
    SalvarRegistro1: TMenuItem;
    CancelarRegistro1: TMenuItem;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    Label10: TLabel;
    DBEdit10: TDBEdit;
    Label11: TLabel;
    DBEdit11: TDBEdit;
    Label12: TLabel;
    DBEdit12: TDBEdit;
    Label13: TLabel;
    DBEdit13: TDBEdit;
    Label14: TLabel;
    DBEdit14: TDBEdit;
    Label15: TLabel;
    DBEdit15: TDBEdit;
    Label16: TLabel;
    DBEdit16: TDBEdit;
    Label17: TLabel;
    DBEdit17: TDBEdit;
    Label18: TLabel;
    DBEdit18: TDBEdit;
    Label19: TLabel;
    DBEdit19: TDBEdit;
    Label20: TLabel;
    DBEdit20: TDBEdit;
    Label21: TLabel;
    DBEdit21: TDBEdit;
    Label23: TLabel;
    Label24: TLabel;
    DBMemo1: TDBMemo;
    DBText2: TDBText;
    DBText1: TDBText;
    DBEdit29: TDBEdit;
    SpeedButton7: TPngSpeedButton;
    DBEdit22: TDBEdit;
    SpeedButton3: TPngSpeedButton;
    DBText3: TDBText;
    DBEdit23: TDBEdit;
    BaixaParcial1: TMenuItem;
    BaixaParcial1Button: TPngSpeedButton;
    DBComboBox1: TDBComboBox;
    N3: TMenuItem;
    CadastroDeTiposDeDespesa1: TMenuItem;
    CadastroDeFornecedores1: TMenuItem;
    DBEdit2: TDBEdit;
    Label25: TLabel;
    CadastroDeFornecedores1Button: TPngSpeedButton;
    CadastroDeTiposDeDespesas1Button: TPngSpeedButton;
    Bevel2: TBevel;
    Bevel3: TBevel;
    Ajuda1: TMenuItem;
    Ajuda2: TMenuItem;
    Ajuda2Button: TPngSpeedButton;
    Relatorios1: TMenuItem;
    N4: TMenuItem;
    ContasAPagarPorFornecedor1: TMenuItem;
    ContasAPagarPorData1: TMenuItem;
    ContasAPagarPorDataSintetico1: TMenuItem;
    ContasAPagarPorDespesaSintetico1: TMenuItem;
    EditarRegistro1: TMenuItem;
    EditarRegistro1Button: TDBSpeedButton;
    ContasAPagarPorTipoDeDocumentoSintetico1: TMenuItem;
    ReciboDePagamento1Via1: TMenuItem;
    ReciboDePagamento2Vias1: TMenuItem;
    EstornarBaixa1: TMenuItem;
    EstornarBaixa1Button: TPngSpeedButton;
    Label27: TLabel;
    DBText4: TDBText;
    Label28: TLabel;
    DBText5: TDBText;
    DBEdit25: TDBEdit;
    DBEdit26: TDBEdit;
    Label26: TLabel;
    Label29: TLabel;
    PngImageList1: TPngImageList;
    DBEdit30: TDBEdit;
    Label31: TLabel;
    DBEdit31: TDBEdit;
    Label32: TLabel;
    FluxoDeCaixa1Button: TPngSpeedButton;
    FluxoDeCaixa1: TMenuItem;
    BaixaColetiva1Button: TPngSpeedButton;
    BaixaColetiva1: TMenuItem;
    CancelarContaAPagar1Button: TPngSpeedButton;
    CancelarContaAPagar1: TMenuItem;
    MultiplicarContaAPagar1Button: TPngSpeedButton;
    Bevel5: TBevel;
    N6: TMenuItem;
    MultiplicarContaAPagar1: TMenuItem;
    PngSpeedButton1: TPngSpeedButton;
    ContasAPagarPorDespesaAnalitico1: TMenuItem;
    QYPagar: TFDQuery;
    TRPagar: TFDTransaction;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Localizar1Click(Sender: TObject);
    procedure Relatorios2Click(Sender: TObject);
    procedure BaixaTotal1Click(Sender: TObject);
    procedure Fechar1Click(Sender: TObject);
    procedure DBEdit4Exit(Sender: TObject);
    procedure DBEdit4KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure SpeedButton7Click(Sender: TObject);
    procedure DBEdit5Exit(Sender: TObject);
    procedure DBEdit5KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure SpeedButton3Click(Sender: TObject);
    procedure BaixaParcial1Click(Sender: TObject);
    procedure DBEdit8KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit7KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit10KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit8Exit(Sender: TObject);
    procedure CadastroDeFornecedores1Click(Sender: TObject);
    procedure CadastroDeTiposDeDespesa1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Ajuda2Click(Sender: TObject);
    procedure ContasAPagarPorFornecedor1Click(Sender: TObject);
    procedure ContasAPagarPorData1Click(Sender: TObject);
    procedure ContasAPagarPorDataSintetico1Click(Sender: TObject);
    procedure ContasAPagarPorDespesaSintetico1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ContasAPagarPorTipoDeDocumentoSintetico1Click(Sender: TObject);
    procedure ReciboDePagamento1Via1Click(Sender: TObject);
    procedure ReciboDePagamento2Vias1Click(Sender: TObject);
    procedure EstornarBaixa1Click(Sender: TObject);
    procedure FluxoDeCaixa1Click(Sender: TObject);
    procedure BaixaColetiva1Click(Sender: TObject);
    procedure CancelarContaAPagar1Click(Sender: TObject);
    procedure MultiplicarContaAPagar1Click(Sender: TObject);
    procedure DBEdit5Enter(Sender: TObject);
    procedure DBEdit4Enter(Sender: TObject);
    procedure DBEdit15Enter(Sender: TObject);
    procedure DBEdit15Exit(Sender: TObject);
    procedure DBEdit15KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PngSpeedButton1Click(Sender: TObject);
    procedure DBEdit11KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit4KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit5KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit15KeyPress(Sender: TObject; var Key: Char);
    procedure ContasAPagarPorDespesaAnalitico1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPagar: TFormPagar;
  SQLLocalizar: String; //se esta string for <> de nula, apresenta tela de localização com este SQL.

implementation
uses DataMod, PagarBaixar, PagarLoc, PagarRel, Fornecedores, Despesas, Funcoes1, Main, Caixa,
  PagarBaixaColetiva, PagarMultiplicar, DataModSearch, PagarFast, FuncoesFirenet;

{$R *.dfm}

procedure TFormPagar.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if DM.TBPagar.State in [dsInsert, dsEdit] then
  begin
    MessageDlg('Salve os dados antes de fechar.',mtWarning,[mbOk],0);
    Action:=caNone;
  end;
end;

procedure TFormPagar.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;    
end;

procedure TFormPagar.Localizar1Click(Sender: TObject);
begin
  Application.CreateForm(TFormPagarLoc, FormPagarLoc);
  FormPagarLoc.ShowModal;
  if PagarLoc.Procurar then
  begin
    DM.TBPagar.Close;
    DM.TBPagar.ParamByName('codigo').AsInteger:=FormPagarLoc.QYPagarPAG_CODIGO.Value;
    DM.TBPagar.Open;
  end;
  FormPagarLoc.Free;
  FormPagarLoc:=nil;
end;

procedure TFormPagar.MultiplicarContaAPagar1Click(Sender: TObject);
begin
  AbortIf(DM.TBPagar.IsEmpty,'Nenhuma conta a pagar selecionada.');
  AbortIf(DM.TBPagarPAG_STATUS.Value<>'A','Somente contas a pagar em aberto podem ser multiplicadas.');

  Application.CreateForm(TFormPagarMultiplicar, FormPagarMultiplicar);
  FormPagarMultiplicar.ShowModal;
  FormPagarMultiplicar.Free;
  FormPagarMultiplicar:=nil;
end;

procedure TFormPagar.PngSpeedButton1Click(Sender: TObject);
begin
  LocContasBotao(DBEdit15,DBEdit23,DM.TBPagar);
end;

procedure TFormPagar.Relatorios2Click(Sender: TObject);
begin
  Application.CreateForm(TFormPagarRel, FormPagarRel);
  FormPagarRel.ShowModal;
  FormPagarRel.Free;
  FormPagarRel:=nil;
end;

procedure TFormPagar.BaixaTotal1Click(Sender: TObject);
begin
  AbortIf(DM.TBPagar.IsEmpty,'Nenhuma conta selecionada.');
  AbortIf(DM.TBPagarPAG_STATUS.Value='B','Conta já baixada.');

  Application.CreateForm(TFormPagarBaixar, FormPagarBaixar);
  PagarBaixar.Parcial:=False; //variavel para baixar parcial ou total.
  //desabilita possibilidade de alterar o valor pago na baixa total.
  FormPagarBaixar.DBEdit4.ReadOnly:=True;
  FormPagarBaixar.DBEdit4.Color:=clBtnFace;
  FormPagarBaixar.DBEdit4.TabStop:=False;
  //...
  FormPagarBaixar.Label18.Caption:='Baixa TOTAL !!!';
  FormPagarBaixar.ShowModal;
  FormPagarBaixar.Free;
  FormPagarBaixar:=nil;
end;

procedure TFormPagar.BaixaColetiva1Click(Sender: TObject);
begin
  Application.CreateForm(TFormPagarBaixaColetiva, FormPagarBaixaColetiva);
  FormPagarBaixaColetiva.ShowModal;
  FormPagarBaixaColetiva.Free;
  FormPagarBaixaColetiva:=nil;
end;

procedure TFormPagar.BaixaParcial1Click(Sender: TObject);
begin
  AbortIf(DM.TBPagar.IsEmpty,'Nenhuma conta selecionada.');
  AbortIf(DM.TBPagarPAG_STATUS.Value='B','Conta já baixada.');

  Application.CreateForm(TFormPagarBaixar, FormPagarBaixar);
  PagarBaixar.Parcial:=True; //variavel para baixar parcial ou total.
  //desabilita campos de desconto na baixa parcial.
  FormPagarBaixar.DBEdit5.Enabled:=False;
  FormPagarBaixar.DBEdit6.Enabled:=False;
  FormPagarBaixar.DBEdit5.TabStop:=False;
  FormPagarBaixar.DBEdit6.TabStop:=False;
  FormPagarBaixar.DBEdit5.Color:=clBtnFace;
  FormPagarBaixar.DBEdit6.Color:=clBtnFace;
  //...
  FormPagarBaixar.Label18.Caption:='Baixa PARCIAL !!!';
  FormPagarBaixar.ShowModal;
  FormPagarBaixar.Free;
  FormPagarBaixar:=nil;
end;

procedure TFormPagar.Fechar1Click(Sender: TObject);
begin
  Close;
end;

procedure TFormPagar.FluxoDeCaixa1Click(Sender: TObject);
begin
  Application.CreateForm(TFormCaixa, FormCaixa);
  FormCaixa.ShowModal;
  FormCaixa.Free;
  FormCaixa:=nil;
end;

procedure TFormPagar.DBEdit4Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TDBEdit).Text;
end;

procedure TFormPagar.DBEdit4Exit(Sender: TObject);
begin
  LocFornecedoresExit(DBEdit4,DBEdit29,nil,DM.TBPagar);
end;

procedure TFormPagar.DBEdit4KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton7.Click;
end;

procedure TFormPagar.DBEdit4KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormPagar.SpeedButton7Click(Sender: TObject);
begin
  LocFornecedoresBotao(DBEdit4,DBEdit29,nil,DM.TBPagar);
end;

procedure TFormPagar.DBEdit5Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TDBEdit).Text;
end;

procedure TFormPagar.DBEdit5Exit(Sender: TObject);
begin
  LocDespesasExit(DBEdit5,DBEdit22,DM.TBPagar);
end;

procedure TFormPagar.DBEdit5KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton3.Click;
end;

procedure TFormPagar.DBEdit5KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormPagar.SpeedButton3Click(Sender: TObject);
begin
  LocDespesasBotao(DBEdit5,DBEdit22,DM.TBPagar);
end;

procedure TFormPagar.DBEdit8KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then
  DM.TBPagarPAG_DTVENCIMENTO.Clear;
end;

procedure TFormPagar.DBEdit7KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then
  DM.TBPagarPAG_DTEMISSAO.Clear;
end;

procedure TFormPagar.DBEdit10KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then
  DM.TBPagarPAG_DTJUROSAPOS.Clear;
end;

procedure TFormPagar.DBEdit11KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#46 then Key:=#44; //troca ponto por virgula.
end;

procedure TFormPagar.DBEdit15Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TDBEdit).Text;
end;

procedure TFormPagar.DBEdit15Exit(Sender: TObject);
begin
  LocContasExit(DBEdit15,DBEdit23,DM.TBPagar);
end;

procedure TFormPagar.DBEdit15KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  PngSpeedButton1.Click;
end;

procedure TFormPagar.DBEdit15KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormPagar.DBEdit8Exit(Sender: TObject);
begin
  if (DM.TBPagarPAG_DTJUROSAPOS.IsNull) and (DM.TBPagar.State in [dsInsert, dsEdit]) and (not DM.TBPagarPAG_DTVENCIMENTO.IsNull) then
  DM.TBPagarPAG_DTJUROSAPOS.Value:=DM.TBPagarPAG_DTVENCIMENTO.Value;
end;

procedure TFormPagar.CadastroDeFornecedores1Click(Sender: TObject);
begin
  Application.CreateForm(TFormFornecedores, FormFornecedores);
  FormFornecedores.ShowModal;
  FormFornecedores.Free;
  FormFornecedores:=nil;
end;

procedure TFormPagar.CadastroDeTiposDeDespesa1Click(Sender: TObject);
begin
  Application.CreateForm(TFormDespesas, FormDespesas);
  FormDespesas.ShowModal;
  FormDespesas.Free;
  FormDespesas:=nil;
end;

procedure TFormPagar.CancelarContaAPagar1Click(Sender: TObject);
begin
  AbortIf(DM.TBPagar.IsEmpty,'Nenhuma conta selecionada.');
  AbortIf(DM.TBPagarPAG_STATUS.Value='C','Esta conta já está cancelada.');
  AbortIf(DM.TBPagarPAG_STATUS.Value='B','Esta conta está baixada. Para cancelar deve-se primeiro estorná-la.');

  if MessageDlg('Deseja cancelar a conta a pagar?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    DM.TBPagar.Edit;
    DM.TBPagarPAG_BAIXADOPOR.Value:=DM.UsuarioLogin;
    DM.TBPagarPAG_STATUS.Value:='C';
    DM.TBPagar.Post;
    MessageDlg('A conta foi cancelada.',mtInformation,[mbOk],0);
  end;
end;

procedure TFormPagar.FormCreate(Sender: TObject);
begin
  if SQLLocalizar<>'' then
  begin
    Application.CreateForm(TFormPagarLoc, FormPagarLoc);
    FormPagarLoc.QYPagar.SQL.Clear;
    FormPagarLoc.QYPagar.SQL.Add(SQLLocalizar);
    FormPagarLoc.QYPagar.Open;
    FormPagarLoc.ShowModal;
    if PagarLoc.Procurar then
    begin
      DM.TBPagar.Close;
      DM.TBPagar.ParamByName('codigo').AsInteger:=FormPagarLoc.QYPagarPAG_CODIGO.Value;
      DM.TBPagar.Open;
    end;
    FormPagarLoc.Free;
    FormPagarLoc:=nil;
  end;
end;

procedure TFormPagar.Ajuda2Click(Sender: TObject);
begin
  MostrarAjuda('');
end;

procedure TFormPagar.ContasAPagarPorFornecedor1Click(Sender: TObject);
begin
  Application.CreateForm(TFormPagarRel, FormPagarRel);
  FormPagarRel.ComboBox1.Enabled:=False;
  FormPagarRel.ComboBox1.ItemIndex:=0;
  FormPagarRel.ComboBox1Change(Self);
  FormPagarRel.ShowModal;
  FormPagarRel.Free;
  FormPagarRel:=nil;
end;

procedure TFormPagar.ContasAPagarPorData1Click(Sender: TObject);
begin
  Application.CreateForm(TFormPagarRel, FormPagarRel);
  FormPagarRel.ComboBox1.Enabled:=False;
  FormPagarRel.ComboBox1.ItemIndex:=1;
  FormPagarRel.ComboBox1Change(Self);
  FormPagarRel.ShowModal;
  FormPagarRel.Free;
  FormPagarRel:=nil;
end;

procedure TFormPagar.ContasAPagarPorDataSintetico1Click(Sender: TObject);
begin
  Application.CreateForm(TFormPagarRel, FormPagarRel);
  FormPagarRel.ComboBox1.Enabled:=False;
  FormPagarRel.ComboBox1.ItemIndex:=2;
  FormPagarRel.ComboBox1Change(Self);
  FormPagarRel.ShowModal;
  FormPagarRel.Free;
  FormPagarRel:=nil;
end;

procedure TFormPagar.ContasAPagarPorDespesaAnalitico1Click(Sender: TObject);
begin
  Application.CreateForm(TFormPagarRel, FormPagarRel);
  FormPagarRel.ComboBox1.Enabled:=False;
  FormPagarRel.ComboBox1.ItemIndex:=3;
  FormPagarRel.ComboBox1Change(Self);
  FormPagarRel.ShowModal;
  FormPagarRel.Free;
  FormPagarRel:=nil;
end;

procedure TFormPagar.ContasAPagarPorDespesaSintetico1Click(Sender: TObject);
begin
  Application.CreateForm(TFormPagarRel, FormPagarRel);
  FormPagarRel.ComboBox1.Enabled:=False;
  FormPagarRel.ComboBox1.ItemIndex:=4;
  FormPagarRel.ComboBox1Change(Self);
  FormPagarRel.ShowModal;
  FormPagarRel.Free;
  FormPagarRel:=nil;
end;

procedure TFormPagar.ContasAPagarPorTipoDeDocumentoSintetico1Click(Sender: TObject);
begin
  Application.CreateForm(TFormPagarRel, FormPagarRel);
  FormPagarRel.ComboBox1.Enabled:=False;
  FormPagarRel.ComboBox1.ItemIndex:=5;
  FormPagarRel.ComboBox1Change(Self);
  FormPagarRel.ShowModal;
  FormPagarRel.Free;
  FormPagarRel:=nil;
end;

procedure TFormPagar.ReciboDePagamento1Via1Click(Sender: TObject);
begin
  AbortIf(DM.TBPagar.IsEmpty,'Nenhuma conta selecionada.');
  AbortIf(DM.TBPagarPAG_STATUS.Value='A','Somente contas baixadas podem ser impressas.');

  Application.CreateForm(TFormPagarFast, FormPagarFast);
  FormPagarFast.QY06.Close;
  FormPagarFast.QY06.ParamByName('codigo').AsInteger:=DM.TBPagarPAG_CODIGO.Value;
  FormPagarFast.QY06.Open;
  FormPagarFast.frxReport6.Variables['TITULO']:=QuotedStr('Recibo de Pagamento.');
  FormPagarFast.frxReport6.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
  FormPagarFast.frxReport6.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
  FormPagarFast.frxReport6.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
  FormPagarFast.frxReport6.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
  FormPagarFast.frxReport6.Variables['VALOREXTENSO']:=QuotedStr(Extenso(DM.TBPagarPAG_VALORPAGO.AsExtended));
  FormPagarFast.frxReport6.ShowReport;
  FormPagarFast.Free;
  FormPagarFast:=nil;
end;

procedure TFormPagar.ReciboDePagamento2Vias1Click(Sender: TObject);
begin
  AbortIf(DM.TBPagar.IsEmpty,'Nenhuma conta selecionada.');
  AbortIf(DM.TBPagarPAG_STATUS.Value='A','Somente contas baixadas podem ser impressas.');

  Application.CreateForm(TFormPagarFast, FormPagarFast);
  FormPagarFast.QY07.Close;
  FormPagarFast.QY07.ParamByName('codigo').AsInteger:=DM.TBPagarPAG_CODIGO.Value;
  FormPagarFast.QY07.Open;
  FormPagarFast.frxReport7.Variables['TITULO']:=QuotedStr('Recibo de Pagamento.');
  FormPagarFast.frxReport7.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
  FormPagarFast.frxReport7.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
  FormPagarFast.frxReport7.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
  FormPagarFast.frxReport7.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
  FormPagarFast.frxReport7.Variables['VALOREXTENSO']:=QuotedStr(Extenso(DM.TBPagarPAG_VALORPAGO.AsExtended));
  FormPagarFast.frxReport7.ShowReport;
  FormPagarFast.Free;
  FormPagarFast:=nil;
end;

procedure TFormPagar.FormShow(Sender: TObject);
begin
  FormMain.DesabilitarControles(FormPagar);
end;

procedure TFormPagar.EstornarBaixa1Click(Sender: TObject);
begin
  AbortIf(DM.TBPagar.IsEmpty,'Nenhuma conta selecionada.');
  AbortIf(DM.TBPagarPAG_STATUS.Value='A','Esta conta não está baixada.');

  if DM.TBPagarPAG_TIPOBAIXA.Value='P' then
  begin
    MessageDlg('Esta conta foi baixada parcialmente. Estorne todas as contas manualmente. '+#13#10+'Para localizar as contas subsequentes, utilize a busca por código e digite o código que está no campo "Novo Código".',mtWarning,[mbOk],0);
  end;
  if MessageDlg('Estornar baixa?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    //gera lançamento no fluxo de caixa.
    DM.TBCaixa.Insert;
    DM.TBCaixaCAI_CONTA.Value:=DM.TBPagarPAG_CONTA.Value;
    DM.TBCaixaCAI_DATA.Value:=DM.ServerDate;
    DM.TBCaixaCAI_DESCRICAO.Value:=Copy(DM.TBPagarPAG_DESCRICAO.Value+' (ESTORNO)',1,50); //'ESTORNO AUTOM. CONTAS A PAGAR';
    DM.TBCaixaCAI_ENTRADASAIDA.Value:='E'; //estornar conta a pagar é receber o $$ devolta.
    DM.TBCaixaCAI_FORNECEDOR.Value:=DM.TBPagarPAG_FORNECEDOR.Value;
    DM.TBCaixaCAI_FORNECEDORNOME.Value:=DM.TBPagarFOR_NOME.Value;
    DM.TBCaixaCAI_NUMDOCTO.Value:=DM.TBPagarPAG_NUMDOCTO.Value;
    DM.TBCaixaCAI_ORIGEM.Value:='CONTAS A PAGAR';
    DM.TBCaixaCAI_TIPODOCTO.Value:=DM.TBPagarPAG_TIPODOCTO.Value;
    DM.TBCaixaCAI_VALOR.Value:=DM.TBPagarPAG_VALORPAGO.Value;
    DM.TBCaixaCAI_VENDEDOR.Value:=DM.UsuarioVendedor;
    DM.TBCaixa.Post;
    //...

    QYPagar.SQL.Clear;
    QYPagar.SQL.Add('update PAGAR set PAG_STATUS=''A'', PAG_VALORPAGO=null, PAG_JUROSPAGO=null, PAG_MULTAPAGO=null, PAG_DESCPORC=null, PAG_DESCVALOR=null where PAG_CODIGO=:codigo');
    QYPagar.ParamByName('codigo').AsInteger:=DM.TBPagarPAG_CODIGO.Value;
    QYPagar.ExecSQL;

    DM.CodigoMark:=DM.TBPagarPAG_CODIGO.Value;
    DM.TBPagar.Close;
    DM.TBPagar.ParamByName('codigo').AsInteger:=DM.CodigoMark;
    DM.TBPagar.Open;
    //DM.TBPagar.Locate('PAG_CODIGO',DM.CodigoMark,[]);
    MessageDlg('Estorno realizado!',mtInformation,[mbOk],0);
  end;
end;

initialization
  RegisterClass(TFormPagar);

finalization
  UnRegisterClass(TFormPagar);

end.
