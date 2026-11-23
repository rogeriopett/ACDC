unit VeiculosVenda;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Mask, Buttons, DBSBtn, ExtCtrls, Menus,
  DB, ImgList, PngImageList, PngSpeedButton, System.ImageList, System.UITypes,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.Client, FireDAC.Comp.DataSet;

type
  TFormVeiculosVenda = class(TForm)
    MainMenu1: TMainMenu;
    Arquivo1: TMenuItem;
    Localizar1: TMenuItem;
    Relatorios2: TMenuItem;
    N1: TMenuItem;
    Fechar1: TMenuItem;
    Navegacao1: TMenuItem;
    InserirRegistro1: TMenuItem;
    EliminarRegistro1: TMenuItem;
    N5: TMenuItem;
    SalvarRegistro1: TMenuItem;
    CancelarRegistro1: TMenuItem;
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
    Localizar1Button: TPngSpeedButton;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    Label10: TLabel;
    DBEdit10: TDBEdit;
    Label11: TLabel;
    Label12: TLabel;
    DBEdit12: TDBEdit;
    DBComboBox1: TDBComboBox;
    DBMemo1: TDBMemo;
    EfetuarVenda1Button: TPngSpeedButton;
    SelecionarOpcionais1Button: TPngSpeedButton;
    Bevel2: TBevel;
    N2: TMenuItem;
    SelecionarOpcionais1: TMenuItem;
    EfetuarVenda1: TMenuItem;
    IncluirDespesa1Button: TPngSpeedButton;
    DespesasDoVeiculo1: TMenuItem;
    SpeedButton8: TPngSpeedButton;
    DBEdit22: TDBEdit;
    DBEdit6: TDBEdit;
    Label13: TLabel;
    DBComboBox2: TDBComboBox;
    Label14: TLabel;
    DBEdit11: TDBEdit;
    Label15: TLabel;
    DBComboBox3: TDBComboBox;
    DBEdit13: TDBEdit;
    Label16: TLabel;
    N4: TMenuItem;
    CadastroDeClientes1: TMenuItem;
    CadastroDeVendedores1: TMenuItem;
    CadastroDeVeiculos1: TMenuItem;
    DBText2: TDBText;
    DBText1: TDBText;
    CadastroDeClientes1Button: TPngSpeedButton;
    CadastroDeVendedores1Button: TPngSpeedButton;
    CadastroDeVeiculos1Button: TPngSpeedButton;
    DBEdit14: TDBEdit;
    Label17: TLabel;
    DBEdit15: TDBEdit;
    Label18: TLabel;
    Bevel3: TBevel;
    Label19: TLabel;
    EstornarVenda1: TMenuItem;
    EstornarVenda1Button: TPngSpeedButton;
    DBText3: TDBText;
    Label20: TLabel;
    SpeedButton12: TPngSpeedButton;
    DBEdit16: TDBEdit;
    DBEdit17: TDBEdit;
    Label21: TLabel;
    SpeedButton13: TPngSpeedButton;
    DBEdit18: TDBEdit;
    DBEdit19: TDBEdit;
    DBEdit20: TDBEdit;
    Label22: TLabel;
    DBMemo2: TDBMemo;
    Label23: TLabel;
    IncluirDespesa1: TMenuItem;
    DespesasDoVeiculo1Button: TPngSpeedButton;
    DBEdit21: TDBEdit;
    Label24: TLabel;
    CadastroDeOpcionais1: TMenuItem;
    CadastroDeOpcionais1Button: TPngSpeedButton;
    Label25: TLabel;
    DBEdit23: TDBEdit;
    IncluirVeiculoNoCadastroDoCliente1: TMenuItem;
    IncluirVeiculoNoCadastroDoCliente1Button: TPngSpeedButton;
    ImprimirFichaDeVenda1Button: TPngSpeedButton;
    ImprimirFichaDeVenda1: TMenuItem;
    N6: TMenuItem;
    ConsultarDadosDoVeiculoNoDetran1: TMenuItem;
    Bevel5: TBevel;
    ConsultarDadosDoVeiculoNoDetran1Button: TPngSpeedButton;
    Ajuda1: TMenuItem;
    Ajuda2: TMenuItem;
    Ajuda2Button: TPngSpeedButton;
    Relatorios1: TMenuItem;
    N3: TMenuItem;
    VeiculosAVenda1: TMenuItem;
    VendasPorVendedor1: TMenuItem;
    FichaDeVenda1: TMenuItem;
    CustoTotalDosVeiculosAVenda1: TMenuItem;
    RecalcularDespesasDoVeiculo1: TMenuItem;
    RecalcularDespesasDoVeiculo1Button: TPngSpeedButton;
    EditarRegistro1: TMenuItem;
    EditarRegistro1Button: TDBSpeedButton;
    PngImageList1: TPngImageList;
    QYVeiculosVenda: TFDQuery;
    TRVeiculosVenda: TFDTransaction;
    QYPagar: TFDQuery;
    TRPagar: TFDTransaction;
    procedure Localizar1Click(Sender: TObject);
    procedure Relatorios2Click(Sender: TObject);
    procedure Fechar1Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure SelecionarOpcionais1Click(Sender: TObject);
    procedure EfetuarVenda1Click(Sender: TObject);
    procedure DespesasDoVeiculo1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure DBEdit22Exit(Sender: TObject);
    procedure CadastroDeClientes1Click(Sender: TObject);
    procedure CadastroDeVendedores1Click(Sender: TObject);
    procedure CadastroDeVeiculos1Click(Sender: TObject);
    procedure EstornarVenda1Click(Sender: TObject);
    procedure DBEdit3Enter(Sender: TObject);
    procedure IncluirDespesa1Click(Sender: TObject);
    procedure DBEdit22KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBEdit17Exit(Sender: TObject);
    procedure DBEdit17KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure SpeedButton12Click(Sender: TObject);
    procedure DBEdit17KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit19Exit(Sender: TObject);
    procedure DBEdit19KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBEdit19KeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton13Click(Sender: TObject);
    procedure CadastroDeOpcionais1Click(Sender: TObject);
    procedure IncluirVeiculoNoCadastroDoCliente1Click(Sender: TObject);
    procedure ImprimirFichaDeVenda1Click(Sender: TObject);
    procedure ConsultarDadosDoVeiculoNoDetran1Click(Sender: TObject);
    procedure Ajuda2Click(Sender: TObject);
    procedure VeiculosAVenda1Click(Sender: TObject);
    procedure VendasPorVendedor1Click(Sender: TObject);
    procedure FichaDeVenda1Click(Sender: TObject);
    procedure CustoTotalDosVeiculosAVenda1Click(Sender: TObject);
    procedure RecalcularDespesasDoVeiculo1Click(Sender: TObject);
    procedure DBEdit22KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit19Enter(Sender: TObject);
    procedure DBEdit17Enter(Sender: TObject);
    procedure DBEdit22Enter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormVeiculosVenda: TFormVeiculosVenda;

implementation
uses DataMod, Despesas, Main, VeiculosLoc, OpcionaisSelecionar, Funcoes1,
  Vendas, Clientes, Vendedores, Veiculos, Pagar, VeiculosVendaLoc,
  Opcionais, VeiculosVendaRel, VeiculosVendaQ03, ShellAPI, DataMod2, DataModSearch, FuncoesFirenet;

{$R *.dfm}

procedure TFormVeiculosVenda.Localizar1Click(Sender: TObject);
begin
  Application.CreateForm(TFormVeiculosVendaLoc, FormVeiculosVendaLoc);
  FormVeiculosVendaLoc.ShowModal;
  if VeiculosVendaLoc.Procurar then
  begin
    DM2.TBVeiculosVenda.Close;
    DM2.TBVeiculosVenda.ParamByName('codigo').AsInteger:=FormVeiculosVendaLoc.QYVeiculosVendaVEV_CODIGO.Value;
    DM2.TBVeiculosVenda.Open;
  end;
  FormVeiculosVendaLoc.Free;
  FormVeiculosVendaLoc:=nil;
end;

procedure TFormVeiculosVenda.Relatorios2Click(Sender: TObject);
begin
  Application.CreateForm(TFormVeiculosVendaRel, FormVeiculosVendaRel);
  FormVeiculosVendaRel.ShowModal;
  FormVeiculosVendaRel.Free;
  FormVeiculosVendaRel:=nil;
end;

procedure TFormVeiculosVenda.Fechar1Click(Sender: TObject);
begin
  Close;
end;

procedure TFormVeiculosVenda.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormVeiculosVenda.SelecionarOpcionais1Click(Sender: TObject);
var I: Integer;
begin
  AbortIf(DM2.TBVeiculosVenda.IsEmpty,'Nenhum veículo selecionado.');

  Application.CreateForm(TFormOpcionaisSelecionar, FormOpcionaisSelecionar);
  FormOpcionaisSelecionar.ShowModal;
  if OpcionaisSelecionar.Acao='OK' then
  begin
    DBMemo1.SetFocus; //se nao colocar isso, qdo entrar no dbmemo ele limpa o texto.
    DM2.TBVeiculosVenda.Edit;
    DM2.TBVeiculosVendaVEV_OPCIONAIS.Clear;
    if FormOpcionaisSelecionar.DBGrid1.SelectedRows.Count>0 then
    for I:=0 to FormOpcionaisSelecionar.DBGrid1.SelectedRows.Count-1 do
    begin
      FormOpcionaisSelecionar.DBGrid1.DataSource.DataSet.GotoBookmark(FormOpcionaisSelecionar.DBGrid1.SelectedRows.Items[I]);
      DBMemo1.Lines.Add(FormOpcionaisSelecionar.DBGrid1.DataSource.DataSet.Fields[0].AsString);
    end;
  end;
  FormOpcionaisSelecionar.Free;
  FormOpcionaisSelecionar:=nil;
end;

procedure TFormVeiculosVenda.EfetuarVenda1Click(Sender: TObject);
begin
  AbortIf(DM2.TBVeiculosVenda.IsEmpty,'Nenhum veículo selecionado.');
  AbortIf(DM2.TBVeiculosVendaVEV_STATUS.Value='V','Este veículo já está vendido.');
  AbortIf((DM2.TBVeiculosVendaVEV_CLIENTE.IsNull) or (DM2.TBVeiculosVendaVEV_VENDEDOR.IsNull),'Informe o cliente e o vendedor.');

  if MessageDlg('Deseja efetuar a venda deste veículo?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    DM2.TBVeiculosVenda.Edit;
    DM2.TBVeiculosVendaVEV_STATUS.Value:='V';
    DM2.TBVeiculosVendaVEV_DTVENDA.Value:=DM.ServerDate;
    DM2.TBVeiculosVenda.Post;
  end;
end;

procedure TFormVeiculosVenda.DespesasDoVeiculo1Click(Sender: TObject);
begin
  AbortIf(DM2.TBVeiculosVenda.IsEmpty,'Nenhum veículo selecionado.');

  Pagar.SQLLocalizar:='select * from PAGAR left join FORNECEDORES on PAG_FORNECEDOR=FOR_CODIGO where PAG_NUMDOCTO='+QuotedStr(DM2.TBVeiculosVendaVEV_PLACA.Value+'/'+IntToStr(DM2.TBVeiculosVendaVEV_CODIGO.Value))+' order by PAG_DTVENCIMENTO';
  Application.CreateForm(TFormPagar, FormPagar);
  FormPagar.ShowModal;
  FormPagar.Free;
  FormPagar:=nil;
  Pagar.SQLLocalizar:='';
end;

procedure TFormVeiculosVenda.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if DM2.TBVeiculosVenda.State in [dsInsert, dsEdit] then
  begin
    Action:=caNone;
    MessageDlg('Salve os dados antes de fechar.',mtWarning,[mbOK],0);
  end;
end;

procedure TFormVeiculosVenda.FormShow(Sender: TObject);
begin
  FormMain.DesabilitarControles(FormVeiculosVenda);
end;

procedure TFormVeiculosVenda.SpeedButton8Click(Sender: TObject);
begin
  Application.CreateForm(TFormVeiculosLoc, FormVeiculosLoc);
  FormVeiculosLoc.ShowModal;
  if VeiculosLoc.Procurar then
  begin
    DM2.TBVeiculosVenda.Edit;
    DM2.TBVeiculosVendaVEV_VEICULO.Value:=FormVeiculosLoc.QYVeiculosVEL_CODIGO.Value;
    DM2.TBVeiculosVendaVEL_DESCRICAO.Value:=FormVeiculosLoc.QYVeiculosVEL_DESCRICAO.Value;
  end;
  FormVeiculosLoc.Free;
  FormVeiculosLoc:=nil;
end;

procedure TFormVeiculosVenda.DBEdit22Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TDBEdit).Text;
end;

procedure TFormVeiculosVenda.DBEdit22Exit(Sender: TObject);
begin
  if (DM2.TBVeiculosVenda.State in [dsInsert, dsEdit]) and ((Sender as TDBEdit).Text='') then
  begin
    DM2.TBVeiculosVendaVEV_VEICULO.Clear;
    DM2.TBVeiculosVendaVEL_DESCRICAO.Clear;
    Exit;
  end;
  if DM.CodigosOld=(Sender as TDBEdit).Text then
  Exit;
  if (DM2.TBVeiculosVenda.State in [dsInsert, dsEdit]) and ((Sender as TDBEdit).Text<>'') then
  begin
    DMS.QYVeiculos.Close;
    DMS.QYVeiculos.ParamByName('codigo').AsInteger:=StrToInt((Sender as TDBEdit).Text);
    DMS.QYVeiculos.Open;
    if not DMS.QYVeiculos.IsEmpty then
    begin
      DM2.TBVeiculosVendaVEV_VEICULO.Value:=DMS.QYVeiculosVEL_CODIGO.Value;
      DM2.TBVeiculosVendaVEL_DESCRICAO.Value:=DMS.QYVeiculosVEL_DESCRICAO.Value;
    end else
    begin
      DM2.TBVeiculosVendaVEV_VEICULO.Clear;
      DM2.TBVeiculosVendaVEL_DESCRICAO.Clear;
      MessageDlg('Veículo não encontrado.',mtInformation,[mbOk],0);
      (Sender as TDBEdit).SetFocus;
    end;
    DMS.QYVeiculos.Close;
  end;
end;

procedure TFormVeiculosVenda.CadastroDeClientes1Click(Sender: TObject);
begin
  Application.CreateForm(TFormClientes, FormClientes);
  FormClientes.ShowModal;
  FormClientes.Free;
  FormClientes:=nil;
end;

procedure TFormVeiculosVenda.CadastroDeVendedores1Click(Sender: TObject);
begin
  Application.CreateForm(TFormVendedores, FormVendedores);
  FormVendedores.ShowModal;
  FormVendedores.Free;
  FormVendedores:=nil;
end;

procedure TFormVeiculosVenda.CadastroDeVeiculos1Click(Sender: TObject);
begin
  Application.CreateForm(TFormVeiculos, FormVeiculos);
  FormVeiculos.ShowModal;
  FormVeiculos.Free;
  FormVeiculos:=nil;
end;

procedure TFormVeiculosVenda.EstornarVenda1Click(Sender: TObject);
begin
  AbortIf(DM2.TBVeiculosVenda.IsEmpty,'Nenhum veículo selecionado.');
  AbortIf(DM2.TBVeiculosVendaVEV_STATUS.Value='A','Este veículo ainda não foi vendido.');

  if MessageDlg('Estornar a venda deste veículo?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    QYVeiculosVenda.Close;
    QYVeiculosVenda.SQL.Clear;
    QYVeiculosVenda.SQL.Add('update VEICULOSVENDA set VEV_STATUS=''A'', VEV_DTVENDA=null, VEV_CLIENTE=null, VEV_VENDEDOR=null where VEV_CODIGO=:codigo');
    QYVeiculosVenda.ParamByName('codigo').AsInteger:=DM2.TBVeiculosVendaVEV_CODIGO.Value;
    QYVeiculosVenda.ExecSQL;
    DM2.TBVeiculosVenda.Refresh;
  end;
end;

procedure TFormVeiculosVenda.DBEdit3Enter(Sender: TObject);
begin
  if (DM2.TBVeiculosVenda.State in [dsInsert, dsEdit]) and ((DM2.TBVeiculosVendaVEV_ANOMOD.Value='    ') or (DM2.TBVeiculosVendaVEV_ANOMOD.IsNull)) then
  DM2.TBVeiculosVendaVEV_ANOMOD.Value:=DM2.TBVeiculosVendaVEV_ANOFAB.Value;
end;

procedure TFormVeiculosVenda.IncluirDespesa1Click(Sender: TObject);
var TotalDespesas: Currency;
begin
  AbortIf(DM2.TBVeiculosVenda.IsEmpty,'Nenhum veículo selecionado.');
  AbortIf(DM2.TBVeiculosVendaVEV_STATUS.Value='V','Este veículo já foi vendido.');

  DM.TBPagar.Insert;
  DM.TBPagarPAG_NUMDOCTO.Value:=DM2.TBVeiculosVendaVEV_PLACA.Value+'/'+IntToStr(DM2.TBVeiculosVendaVEV_CODIGO.Value);
  Application.CreateForm(TFormPagar, FormPagar);
  FormMain.SetFields(FormPagar,True); //já foi feito o "insert", tem que chamar essa funcao pra habilitar os campos.
  FormPagar.ShowModal;
  FormPagar.Free;
  FormPagar:=nil;
  //atualiza o total de gastos com o veiculo.
  TotalDespesas:=0;
  QYPagar.Close;
  QYPagar.SQL.Clear;
  QYPagar.SQL.Add('select sum(PAG_VALORPAGO) as PAGO from PAGAR where PAG_NUMDOCTO='+QuotedStr(DM2.TBVeiculosVendaVEV_PLACA.Value+'/'+IntToStr(DM2.TBVeiculosVendaVEV_CODIGO.Value))+' and PAG_STATUS=''B''');
  QYPagar.Open;
  TotalDespesas:=TotalDespesas+QYPagar.FieldByName('PAGO').AsExtended;
  QYPagar.Close;
  QYPagar.SQL.Clear;
  QYPagar.SQL.Add('select sum(PAG_VALOR) as PAGAR from PAGAR where PAG_NUMDOCTO='+QuotedStr(DM2.TBVeiculosVendaVEV_PLACA.Value+'/'+IntToStr(DM2.TBVeiculosVendaVEV_CODIGO.Value))+' and PAG_STATUS=''A''');
  QYPagar.Open;
  TotalDespesas:=TotalDespesas+QYPagar.FieldByName('PAGAR').AsExtended;
  QYPagar.Close;
  DM2.TBVeiculosVenda.Edit;
  DM2.TBVeiculosVendaVEV_DESPESAS.Value:=TotalDespesas;
  DM2.TBVeiculosVendaVEV_VALORSUGERIDO.Value:=DM2.TBVeiculosVendaVEV_VALORCOMPRA.Value+DM2.TBVeiculosVendaVEV_DESPESAS.Value;
  DM2.TBVeiculosVenda.Post;
  //.........
end;

procedure TFormVeiculosVenda.DBEdit22KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton8.Click;
end;

procedure TFormVeiculosVenda.DBEdit22KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormVeiculosVenda.DBEdit17Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TDBEdit).Text;
end;

procedure TFormVeiculosVenda.DBEdit17Exit(Sender: TObject);
begin
  LocClientesExit(DBEdit17,DBEdit16,DM2.TBVeiculosVenda);
end;

procedure TFormVeiculosVenda.DBEdit17KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton12.Click;
end;

procedure TFormVeiculosVenda.SpeedButton12Click(Sender: TObject);
begin
  LocClientesBotao(DBEdit17,DBEdit16,DM2.TBVeiculosVenda);
end;

procedure TFormVeiculosVenda.DBEdit17KeyPress(Sender: TObject;
  var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormVeiculosVenda.DBEdit19Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TDBEdit).Text;
end;

procedure TFormVeiculosVenda.DBEdit19Exit(Sender: TObject);
begin
  LocVendedoresExit(DBEdit19,DBEdit18,nil,DM2.TBVeiculosVenda);
end;

procedure TFormVeiculosVenda.DBEdit19KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton13.Click;
end;

procedure TFormVeiculosVenda.DBEdit19KeyPress(Sender: TObject;
  var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormVeiculosVenda.SpeedButton13Click(Sender: TObject);
begin
  LocVendedoresBotao(DBEdit19,DBEdit18,nil,DM2.TBVeiculosVenda);
end;

procedure TFormVeiculosVenda.CadastroDeOpcionais1Click(Sender: TObject);
begin
  Application.CreateForm(TFormOpcionais, FormOpcionais);
  FormOpcionais.ShowModal;
  FormOpcionais.Free;
  FormOpcionais:=nil;
end;

procedure TFormVeiculosVenda.IncluirVeiculoNoCadastroDoCliente1Click(
  Sender: TObject);
begin
  AbortIf(DM2.TBVeiculosVenda.IsEmpty,'Nenhum veículo selecionado.');
  AbortIf(DM2.TBVeiculosVendaVEV_STATUS.Value='A','Este veículo ainda não foi vendido.');

  if MessageDlg('Incluir '+DM2.TBVeiculosVendaVEL_DESCRICAO.Value+' no cadastro de veículos do cliente '+DM2.TBVeiculosVendaCLI_NOME.Value+'?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    DM2.TBVeiculosCliente.Insert;
    DM2.TBVeiculosClienteVEC_CLIENTE.Value:=DM2.TBVeiculosVendaVEV_CLIENTE.Value;
    DM2.TBVeiculosClienteVEC_VEICULO.Value:=DM2.TBVeiculosVendaVEV_VEICULO.Value;

    DM2.TBVeiculosClienteVEC_CATEGORIA.Value:=DM2.TBVeiculosVendaVEV_CATEGORIA.Value;
    DM2.TBVeiculosClienteVEC_ANOFAB.Value:=DM2.TBVeiculosVendaVEV_ANOFAB.Value;
    DM2.TBVeiculosClienteVEC_ANOMOD.Value:=DM2.TBVeiculosVendaVEV_ANOMOD.Value;
    DM2.TBVeiculosClienteVEC_COR.Value:=DM2.TBVeiculosVendaVEV_COR.Value;
    DM2.TBVeiculosClienteVEC_PLACA.Value:=DM2.TBVeiculosVendaVEV_PLACA.Value;
    DM2.TBVeiculosClienteVEC_RENAVAN.Value:=DM2.TBVeiculosVendaVEV_RENAVAN.Value;
    DM2.TBVeiculosClienteVEC_EXPROPRIETARIO.Value:=DM2.TBVeiculosVendaVEV_EXPROPRIETARIO.Value;
    DM2.TBVeiculosClienteVEC_KM.Value:=DM2.TBVeiculosVendaVEV_KM.Value;
    DM2.TBVeiculosClienteVEC_TIPO.Value:=DM2.TBVeiculosVendaVEV_TIPO.Value;
    DM2.TBVeiculosClienteVEC_VALORVENDA.Value:=DM2.TBVeiculosVendaVEV_VALORVENDIDO.Value;
    DM2.TBVeiculosClienteVEC_OPCIONAIS.Value:=DM2.TBVeiculosVendaVEV_OPCIONAIS.Value;
    DM2.TBVeiculosClienteVEC_MESA.Value:=DM2.TBVeiculosVendaVEV_MESA.Value;
    DM2.TBVeiculosClienteVEC_DTVENDA.Value:=DM2.TBVeiculosVendaVEV_DTVENDA.Value;
    DM2.TBVeiculosClienteVEC_COMBUSTIVEL.Value:=DM2.TBVeiculosVendaVEV_COMBUSTIVEL.Value;
    DM2.TBVeiculosCliente.Post;
    MessageDlg('Veículo incluído com sucesso!',mtInformation,[mbOk],0);
  end;
end;

procedure TFormVeiculosVenda.ImprimirFichaDeVenda1Click(Sender: TObject);
begin
  AbortIf(DM2.TBVeiculosVenda.IsEmpty,'Nenhum veículo selecionado.');
  AbortIf(DM2.TBVeiculosVendaVEV_STATUS.Value='A','Este veículo ainda não foi vendido.');

  Application.CreateForm(TFormVeiculosVendaQ03, FormVeiculosVendaQ03);
  FormVeiculosVendaQ03.QRLabel12.Caption:='Ficha de venda de veículo - '+IntToStr(DM2.TBVeiculosVendaVEV_CODIGO.Value);
  FormVeiculosVendaQ03.FDQuery1.ParamByName('codigo').AsInteger:=DM2.TBVeiculosVendaVEV_CODIGO.Value;
  FormVeiculosVendaQ03.FDQuery1.Open;
  FormVeiculosVendaQ03.QuickRep1.PreviewModal;
  FormVeiculosVendaQ03.Free;
  FormVeiculosVendaQ03:=nil;
end;

procedure TFormVeiculosVenda.ConsultarDadosDoVeiculoNoDetran1Click(
  Sender: TObject);
var Link, Placa: String;
begin
  AbortIf(DM2.TBVeiculosVenda.IsEmpty,'Nenhum veículo selecionado.');
  AbortIf((Trim(DM2.TBVeiculosVendaVEV_PLACA.Value)='') or (DM2.TBVeiculosVendaVEV_RENAVAN.Value=''),'Placa e/ou renavam incompletos.');

  Placa:=DM2.TBVeiculosVendaVEV_PLACA.Value;
  Delete(Placa,4,1); //retira o "-".
  Link:='http://consultas.detrannet.sc.gov.br/servicos/consultaveiculo.asp?placa='+Placa+'&renavam='+DM2.TBVeiculosVendaVEV_RENAVAN.Value;
  ShellExecute(GetDesktopWindow,'open',PChar(Link),nil,nil,sw_ShowNormal);
end;

procedure TFormVeiculosVenda.Ajuda2Click(Sender: TObject);
begin
  MostrarAjuda('');
end;

procedure TFormVeiculosVenda.VeiculosAVenda1Click(Sender: TObject);
begin
  Application.CreateForm(TFormVeiculosVendaRel, FormVeiculosVendaRel);
  FormVeiculosVendaRel.ComboBox1.Enabled:=False;
  FormVeiculosVendaRel.ComboBox1.ItemIndex:=0;
  FormVeiculosVendaRel.ComboBox1Change(Self);
  FormVeiculosVendaRel.ShowModal;
  FormVeiculosVendaRel.Free;
  FormVeiculosVendaRel:=nil;
end;

procedure TFormVeiculosVenda.VendasPorVendedor1Click(Sender: TObject);
begin
  Application.CreateForm(TFormVeiculosVendaRel, FormVeiculosVendaRel);
  FormVeiculosVendaRel.ComboBox1.Enabled:=False;
  FormVeiculosVendaRel.ComboBox1.ItemIndex:=1;
  FormVeiculosVendaRel.ComboBox1Change(Self);
  FormVeiculosVendaRel.ShowModal;
  FormVeiculosVendaRel.Free;
  FormVeiculosVendaRel:=nil;
end;

procedure TFormVeiculosVenda.FichaDeVenda1Click(Sender: TObject);
begin
  Application.CreateForm(TFormVeiculosVendaRel, FormVeiculosVendaRel);
  FormVeiculosVendaRel.ComboBox1.Enabled:=False;
  FormVeiculosVendaRel.ComboBox1.ItemIndex:=2;
  FormVeiculosVendaRel.ComboBox1Change(Self);
  FormVeiculosVendaRel.ShowModal;
  FormVeiculosVendaRel.Free;
  FormVeiculosVendaRel:=nil;
end;

procedure TFormVeiculosVenda.CustoTotalDosVeiculosAVenda1Click(
  Sender: TObject);
begin
  Application.CreateForm(TFormVeiculosVendaRel, FormVeiculosVendaRel);
  FormVeiculosVendaRel.ComboBox1.Enabled:=False;
  FormVeiculosVendaRel.ComboBox1.ItemIndex:=3;
  FormVeiculosVendaRel.ComboBox1Change(Self);
  FormVeiculosVendaRel.ShowModal;
  FormVeiculosVendaRel.Free;
  FormVeiculosVendaRel:=nil;
end;

procedure TFormVeiculosVenda.RecalcularDespesasDoVeiculo1Click(
  Sender: TObject);
begin
  AbortIf(DM2.TBVeiculosVenda.IsEmpty,'Nenhum veículo selecionado.');
  AbortIf(DM2.TBVeiculosVendaVEV_STATUS.Value='V','Este veículo já está vendido.');

  QYVeiculosVenda.Close;
  QYVeiculosVenda.SQL.Clear;
  QYVeiculosVenda.SQL.Add('select sum(PAG_VALOR) from PAGAR '+
                          'left join FORNECEDORES on PAG_FORNECEDOR=FOR_CODIGO '+
                          'where PAG_NUMDOCTO='+QuotedStr(DM2.TBVeiculosVendaVEV_PLACA.Value+'/'+IntToStr(DM2.TBVeiculosVendaVEV_CODIGO.Value)));
  QYVeiculosVenda.Open;
  DM2.TBVeiculosVenda.Edit;
  DM2.TBVeiculosVendaVEV_DESPESAS.Value:=QYVeiculosVenda.Fields[0].AsExtended;
end;

initialization
  RegisterClass(TFormVeiculosVenda);

finalization
  UnRegisterClass(TFormVeiculosVenda);

end.
