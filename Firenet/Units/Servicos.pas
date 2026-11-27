unit Servicos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Grids, DBGrids, Mask, ComCtrls, Buttons,
  Menus, DBSBtn, ExtCtrls, DB, ImgList, PngImageList, PngSpeedButton, PngBitBtn,
  System.ImageList, System.UITypes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client, FireDAC.Comp.DataSet;

type
  TFormServicos = class(TForm)
    Panel2: TPanel;
    Bevel4: TBevel;
    InserirRegistro1Button: TDBSpeedButton;
    EliminarRegistro1Button: TDBSpeedButton;
    SalvarRegistro1Button: TDBSpeedButton;
    CancelarRegistro1Button: TDBSpeedButton;
    Fechar1Button: TPngSpeedButton;
    Bevel7: TBevel;
    Relatorios2Button: TPngSpeedButton;
    Bevel1: TBevel;
    MainMenu1: TMainMenu;
    Arquivo1: TMenuItem;
    Fechar1: TMenuItem;
    Navegacao1: TMenuItem;
    InserirRegistro1: TMenuItem;
    EliminarRegistro1: TMenuItem;
    N5: TMenuItem;
    SalvarRegistro1: TMenuItem;
    CancelarRegistro1: TMenuItem;
    N1: TMenuItem;
    Relatorios2: TMenuItem;
    Localizar1: TMenuItem;
    Localizar1Button: TPngSpeedButton;
    ImprimirOrdemDeServicoA5Retrato1: TMenuItem;
    CadastroDeTecnicos1: TMenuItem;
    CadastroDeClientes1: TMenuItem;
    N3: TMenuItem;
    ImprimirOrdemDeServico1Button: TPngSpeedButton;
    DBText2: TDBText;
    DBText3: TDBText;
    Bevel2: TBevel;
    CadastroDeClientes1Button: TPngSpeedButton;
    CadastroDeTecnicos1Button: TPngSpeedButton;
    FinalizarOrdemDeServico1: TMenuItem;
    ReabrirOrdemDeServico1: TMenuItem;
    FinalizarOrdemDeServico1Button: TPngSpeedButton;
    ReabrirOrdemDeServico1Button: TPngSpeedButton;
    CadastroDeProdutos1: TMenuItem;
    CadastroDeProdutos1Button: TPngSpeedButton;
    BaixarOrdemDeServico1: TMenuItem;
    BaixarOrdemDeServico1Button: TPngSpeedButton;
    TransferirParaOutroCliente1: TMenuItem;
    TransferirParaOutroCliente1Button: TPngSpeedButton;
    LimparCampoLocalizacao1: TMenuItem;
    N4: TMenuItem;
    PedidoDeVendas1Button: TPngSpeedButton;
    Bevel3: TBevel;
    Bevel5: TBevel;
    Ajuda1: TMenuItem;
    Ajuda2: TMenuItem;
    Ajuda2Button: TPngSpeedButton;
    Relatorios1: TMenuItem;
    OrdensDeServicoPorCliente1: TMenuItem;
    OrdensDeServicoPorTecnico1: TMenuItem;
    N6: TMenuItem;
    EditarRegistro1: TMenuItem;
    EditarRegistro1Button: TDBSpeedButton;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Label1: TLabel;
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
    Label18: TLabel;
    Label19: TLabel;
    SpeedButton4: TPngSpeedButton;
    Label20: TLabel;
    SpeedButton3: TPngSpeedButton;
    Label2: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label27: TLabel;
    DBEdit16: TDBEdit;
    DBEdit1: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBMemo1: TDBMemo;
    DBMemo2: TDBMemo;
    DBEdit12: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit17: TDBEdit;
    DBEdit18: TDBEdit;
    DBEdit19: TDBEdit;
    DBEdit20: TDBEdit;
    DBEdit23: TDBEdit;
    TabSheet3: TTabSheet;
    DBMemo3: TDBMemo;
    DBText7: TDBText;
    DBText8: TDBText;
    Label30: TLabel;
    Label31: TLabel;
    DBGrid1: TDBGrid;
    BitBtn1: TPngBitBtn;
    BitBtn2: TPngBitBtn;
    BitBtn3: TPngBitBtn;
    BitBtn4: TPngBitBtn;
    Label32: TLabel;
    DBText9: TDBText;
    Label33: TLabel;
    DBText10: TDBText;
    DBComboBox3: TDBComboBox;
    Label39: TLabel;
    DBEdit25: TDBEdit;
    Label26: TLabel;
    InserirItem1: TMenuItem;
    EliminarItem1: TMenuItem;
    AtualizarItens1: TMenuItem;
    DBEdit13: TDBEdit;
    Label13: TLabel;
    N2: TMenuItem;
    PedidoDeVendas1: TMenuItem;
    CadastroDeHoras1: TMenuItem;
    CadastroDeHoras1Button: TPngSpeedButton;
    ImprimirOrdemDeServicoA41: TMenuItem;
    ImprimirOrdemDeServicoA5Paisagem1: TMenuItem;
    BitBtn5: TPngBitBtn;
    PngImageList1: TPngImageList;
    ReciboAvulso1Button: TPngSpeedButton;
    ReciboAvulso1: TMenuItem;
    ImprimirOrdemDeServicoA5Paisagem2vias1: TMenuItem;
    Label34: TLabel;
    DBEdit26: TDBEdit;
    DBText20: TDBText;
    ImprimirOrdemDeServicoMatricial1: TMenuItem;
    OrdensDeServicoPorClienteComValorAnalitico1: TMenuItem;
    OrdensDeServicoPorClienteComValorSintetico1: TMenuItem;
    OrdensDeServicoPorProduto1: TMenuItem;
    EnviarOrdemDeServicoPorEmail1Button: TPngSpeedButton;
    EnviarOrdemDeServicoPorEmail1: TMenuItem;
    OrdensDeServicoPorTecnicoComValor1: TMenuItem;
    Label35: TLabel;
    PngSpeedButton1: TPngSpeedButton;
    DBEdit27: TDBEdit;
    DBEdit28: TDBEdit;
    CadastroDeEquipamentos1: TMenuItem;
    Label16: TLabel;
    DBEdit2: TDBEdit;
    CadastroDeEquipamentos1Button: TPngSpeedButton;
    Label21: TLabel;
    DBEdit14: TDBEdit;
    Label22: TLabel;
    DBEdit21: TDBEdit;
    DBEdit22: TDBEdit;
    Label23: TLabel;
    Label29: TLabel;
    DBEdit24: TDBEdit;
    Label36: TLabel;
    DBEdit29: TDBEdit;
    Label37: TLabel;
    DBEdit30: TDBEdit;
    Label38: TLabel;
    DBComboBox1: TDBComboBox;
    CadastroDeChecklists1Button: TPngSpeedButton;
    CadastroDeChecklists1: TMenuItem;
    Checklist1: TMenuItem;
    Checklist1Button: TPngSpeedButton;
    PngSpeedButton2: TPngSpeedButton;
    QYServicos: TFDQuery;
    TRServicos: TFDTransaction;
    Panel1: TPanel;
    Label53: TLabel;
    DBText6: TDBText;
    Label106: TLabel;
    DBText4: TDBText;
    Label40: TLabel;
    DBText1: TDBText;
    Label141: TLabel;
    DBText5: TDBText;
    Label150: TLabel;
    DBText15: TDBText;
    Label151: TLabel;
    DBText25: TDBText;
    DBText26: TDBText;
    Label152: TLabel;
    DBText27: TDBText;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton4Click(Sender: TObject);
    procedure DBEdit13KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit8KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit9KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit10KeyPress(Sender: TObject; var Key: Char);
    procedure Fechar1Click(Sender: TObject);
    procedure ImprimirOrdemDeServicoA5Retrato1Click(Sender: TObject);
    procedure Relatorios2Click(Sender: TObject);
    procedure DBEdit16Exit(Sender: TObject);
    procedure CadastroDeTecnicos1Click(Sender: TObject);
    procedure CadastroDeClientes1Click(Sender: TObject);
    procedure DBEdit16KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure Localizar1Click(Sender: TObject);
    procedure DBEdit17Exit(Sender: TObject);
    procedure DBEdit17KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton3Click(Sender: TObject);
    procedure ReabrirOrdemDeServico1Click(Sender: TObject);
    procedure FinalizarOrdemDeServico1Click(Sender: TObject);
    procedure CadastroDeProdutos1Click(Sender: TObject);
    procedure BaixarOrdemDeServico1Click(Sender: TObject);
    procedure TransferirParaOutroCliente1Click(Sender: TObject);
    procedure LimparCampoLocalizacao1Click(Sender: TObject);
    procedure Ajuda2Click(Sender: TObject);
    procedure OrdensDeServicoPorCliente1Click(Sender: TObject);
    procedure OrdensDeServicoPorTecnico1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure InserirItem1Click(Sender: TObject);
    procedure EliminarItem1Click(Sender: TObject);
    procedure AtualizarItens1Click(Sender: TObject);
    procedure DBEdit13Exit(Sender: TObject);
    procedure DBEdit25Exit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure PedidoDeVendas1Click(Sender: TObject);
    procedure CadastroDeHoras1Click(Sender: TObject);
    procedure ImprimirOrdemDeServicoA41Click(Sender: TObject);
    procedure ImprimirOrdemDeServicoA5Paisagem1Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure ImprimirOrdemDeServico1ButtonClick(Sender: TObject);
    procedure ReciboAvulso1Click(Sender: TObject);
    procedure ImprimirOrdemDeServicoA5Paisagem2vias1Click(Sender: TObject);
    procedure DBEdit17Enter(Sender: TObject);
    procedure DBEdit16Enter(Sender: TObject);
    procedure ImprimirOrdemDeServicoMatricial1Click(Sender: TObject);
    procedure OrdensDeServicoPorClienteComValorAnalitico1Click(Sender: TObject);
    procedure OrdensDeServicoPorClienteComValorSintetico1Click(Sender: TObject);
    procedure DBEdit17KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit16KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure OrdensDeServicoPorProduto1Click(Sender: TObject);
    procedure EnviarOrdemDeServicoPorEmail1Click(Sender: TObject);
    procedure OrdensDeServicoPorTecnicoComValor1Click(Sender: TObject);
    procedure CadastroDeEquipamentos1Click(Sender: TObject);
    procedure DBEdit27Enter(Sender: TObject);
    procedure DBEdit27Exit(Sender: TObject);
    procedure DBEdit27KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBEdit27KeyPress(Sender: TObject; var Key: Char);
    procedure PngSpeedButton1Click(Sender: TObject);
    procedure CadastroDeChecklists1Click(Sender: TObject);
    procedure Checklist1Click(Sender: TObject);
    procedure PngSpeedButton2Click(Sender: TObject);
  private
    { Private declarations }
    procedure GerarEmailOrdemServico;
  public
    { Public declarations }
  end;

var
  FormServicos: TFormServicos;

implementation
uses DataMod, Main, ClientesLoc, ShellAPI, ServicosLoc, ServicosItens, Funcoes1, FuncoesFirenet,
  ServicosRel, Clientes, Produtos, Vendedores, Vendas, ServicosHoras, Recibos,
  DataModSearch, DataMod2, EmailsEnviar, ServicosFast, Equipamentos, Checklists, ServicosCheck, ConsultarPlaca;
{$R *.dfm}

procedure TFormServicos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if DM.TBServicos.State in [dsInsert, dsEdit] then
  begin
    Action:=caNone;
    MessageDlg('Salve os dados antes de fechar.',mtWarning,[mbOK],0);
  end;
end;

procedure TFormServicos.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormServicos.SpeedButton4Click(Sender: TObject);
begin
  AbortIf(DM.TBServicosSER_STATUS.Value='F','Não é possível alterar uma ordem de serviço finalizada.');

  LocVendedoresBotao(DBEdit16,DBEdit15,nil,DM.TBServicos);
end;

procedure TFormServicos.DBEdit13KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key=#46 then Key:=#44; //troca ponto por virgula.
end;

procedure TFormServicos.DBEdit8KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key=#8 then
  begin
    DM.TBServicos.Edit;
    DM.TBServicosSER_DTENTRADA.Clear;
  end;
end;

procedure TFormServicos.DBEdit9KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key=#8 then
  begin
    DM.TBServicos.Edit;
    DM.TBServicosSER_DTPREVISAO.Clear;
  end;
end;

procedure TFormServicos.DBGrid1DblClick(Sender: TObject);
begin
  BitBtn4.Click;
end;

procedure TFormServicos.DBEdit10KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key=#8 then
  begin
    DM.TBServicos.Edit;
    DM.TBServicosSER_DTSAIDA.Clear;
  end;
end;

procedure TFormServicos.Fechar1Click(Sender: TObject);
begin
  Close;
end;

procedure TFormServicos.ImprimirOrdemDeServicoA5Retrato1Click(Sender: TObject);
begin
  AbortIf(DM.TBServicos.IsEmpty,'Nenhuma ordem de serviço selecionada.');

  if DM.TBServicosSER_STATUS.Value='A' then
  begin
    Application.CreateForm(TFormServicosFast, FormServicosFast);
    FormServicosFast.QY01.Close;
    FormServicosFast.QY01.ParamByName('codigo').AsInteger:=DM.TBServicosSER_CODIGO.Value;
    FormServicosFast.QY01.Open;
    FormServicosFast.frxReport1.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
    FormServicosFast.frxReport1.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
    FormServicosFast.frxReport1.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_ENDERECO.Value+', '+DM.TBEmpresaEMP_NUMERO.Value+' '+DM.TBEmpresaEMP_BAIRRO.Value+' '+DM.TBEmpresaEMP_CEP.Value);
    FormServicosFast.frxReport1.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value+' - '+DM.TBEmpresaEMP_FONE1.Value);
    FormServicosFast.frxReport1.Variables['HEADER4']:=QuotedStr(DM.TBEmpresaEMP_EMAIL.Value+' - '+DM.TBEmpresaEMP_HOMEPAGE.Value);
    FormServicosFast.frxReport1.Variables['RODAPE']:=QuotedStr(DM.TBParametrosPAR_SERVICOSRPA.Value);
    FormServicosFast.frxReport1.ShowReport;
    FormServicosFast.Free;
    FormServicosFast:=nil;
  end;
  if (DM.TBServicosSER_STATUS.Value='F') or (DM.TBServicosSER_STATUS.Value='B') then
  begin
    Application.CreateForm(TFormServicosFast, FormServicosFast);
    FormServicosFast.QY02.Close;
    FormServicosFast.QY02.ParamByName('codigo').AsInteger:=DM.TBServicosSER_CODIGO.Value;
    FormServicosFast.QY02.Open;
    FormServicosFast.QY02b.Open;
    FormServicosFast.frxReport2.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
    FormServicosFast.frxReport2.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
    FormServicosFast.frxReport2.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_ENDERECO.Value+', '+DM.TBEmpresaEMP_NUMERO.Value+' '+DM.TBEmpresaEMP_BAIRRO.Value+' '+DM.TBEmpresaEMP_CEP.Value);
    FormServicosFast.frxReport2.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value+' - '+DM.TBEmpresaEMP_FONE1.Value);
    FormServicosFast.frxReport2.Variables['HEADER4']:=QuotedStr(DM.TBEmpresaEMP_EMAIL.Value+' - '+DM.TBEmpresaEMP_HOMEPAGE.Value);
    FormServicosFast.frxReport2.Variables['RODAPE']:=QuotedStr(DM.TBParametrosPAR_SERVICOSRPF.Value);
    FormServicosFast.frxReport2.ShowReport;
    FormServicosFast.Free;
    FormServicosFast:=nil;
  end;
end;

procedure TFormServicos.ImprimirOrdemDeServicoMatricial1Click(Sender: TObject);
begin
{  if DM.TBServicosSER_STATUS.Value='A' then
  begin
    ImprimirServicosA;
  end;
  if (DM.TBServicosSER_STATUS.Value='F') or (DM.TBServicosSER_STATUS.Value='B') then
  begin
    ImprimirServicosF;
  end; }
end;

procedure TFormServicos.ImprimirOrdemDeServicoA5Paisagem2vias1Click(
  Sender: TObject);
begin
  AbortIf(DM.TBServicos.IsEmpty,'Nenhuma ordem de serviço selecionada.');

  Application.CreateForm(TFormServicosFast, FormServicosFast);
  FormServicosFast.QY04.Close;
  FormServicosFast.QY04.ParamByName('codigo').AsInteger:=DM.TBServicosSER_CODIGO.Value;
  FormServicosFast.QY04.Open;
  FormServicosFast.frxReport4.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
  FormServicosFast.frxReport4.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
  FormServicosFast.frxReport4.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_ENDERECO.Value+', '+DM.TBEmpresaEMP_NUMERO.Value+' '+DM.TBEmpresaEMP_BAIRRO.Value+' '+DM.TBEmpresaEMP_CEP.Value);
  FormServicosFast.frxReport4.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value+' - '+DM.TBEmpresaEMP_FONE1.Value);
  FormServicosFast.frxReport4.Variables['HEADER4']:=QuotedStr(DM.TBEmpresaEMP_EMAIL.Value+' - '+DM.TBEmpresaEMP_HOMEPAGE.Value);
  if DM.TBServicosSER_STATUS.Value='A' then
  FormServicosFast.frxReport4.Variables['RODAPE']:=QuotedStr(DM.TBParametrosPAR_SERVICOSRPA.Value) else
  FormServicosFast.frxReport4.Variables['RODAPE']:=QuotedStr(DM.TBParametrosPAR_SERVICOSRPF.Value);
  FormServicosFast.frxReport4.ShowReport;
  FormServicosFast.Free;
  FormServicosFast:=nil;
end;

procedure TFormServicos.Relatorios2Click(Sender: TObject);
begin
  Application.CreateForm(TFormServicosRel, FormServicosRel);
  FormServicosRel.ShowModal;
  FormServicosRel.Free;
  FormServicosRel:=nil;
end;

procedure TFormServicos.DBEdit16Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TDBEdit).Text;
end;

procedure TFormServicos.DBEdit16Exit(Sender: TObject);
begin
  LocVendedoresExit(DBEdit16,DBEdit15,nil,DM.TBServicos);
end;

procedure TFormServicos.CadastroDeTecnicos1Click(Sender: TObject);
begin
  Application.CreateForm(TFormVendedores, FormVendedores);
  FormVendedores.ShowModal;
  FormVendedores.Free;
  FormVendedores:=nil;
end;

procedure TFormServicos.Checklist1Click(Sender: TObject);
begin
  AbortIf(DM.TBServicos.IsEmpty,'Nenhuma ordem de serviço selecionada.');

  Application.CreateForm(TFormServicosCheck, FormServicosCheck);
  FormServicosCheck.ShowModal;
  FormServicosCheck.Free;
  FormServicosCheck:=nil;
end;

procedure TFormServicos.CadastroDeChecklists1Click(Sender: TObject);
begin
  Application.CreateForm(TFormChecklists, FormChecklists);
  FormChecklists.ShowModal;
  FormChecklists.Free;
  FormChecklists:=nil;
end;

procedure TFormServicos.CadastroDeClientes1Click(Sender: TObject);
begin
  Application.CreateForm(TFormClientes, FormClientes);
  FormClientes.ShowModal;
  FormClientes.Free;
  FormClientes:=nil;
end;

procedure TFormServicos.CadastroDeEquipamentos1Click(Sender: TObject);
begin
  DM.TBEquipamentos.Close;
  DM.TBEquipamentos.ParamByName('codigo').AsInteger:=DM.TBServicosSER_EQUIPAMENTO.Value;
  DM.TBEquipamentos.Open;

  Application.CreateForm(TFormEquipamentos, FormEquipamentos);
  FormEquipamentos.ShowModal;
  FormEquipamentos.Free;
  FormEquipamentos:=nil;
end;

procedure TFormServicos.DBEdit16KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton4.Click;
end;

procedure TFormServicos.DBEdit16KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormServicos.FormShow(Sender: TObject);
begin
  FormMain.DesabilitarControles(FormServicos);
end;

procedure TFormServicos.Localizar1Click(Sender: TObject);
begin
  if DM.TBServicos.State in [dsBrowse] then
  begin
    Application.CreateForm(TFormServicosLoc, FormServicosLoc);
    FormServicosLoc.ShowModal;
    if ServicosLoc.Procurar=True then
    begin
      DM.TBServicos.Close;
      DM.TBServicos.ParamByName('codigo').AsInteger:=FormServicosLoc.QYServicosSER_CODIGO.Value;
      DM.TBServicos.Open;

      DM.TBServicosItens.Close;
      DM.TBServicosItens.Open;

      DM.TBServicosHoras.Close;
      DM.TBServicosHoras.Open;

      DM.TBServicosCheck.Close;
      DM.TBServicosCheck.Open;
    end;
    FormServicosLoc.Free;
    FormServicosLoc:=nil;
  end;
end;

procedure TFormServicos.DBEdit17Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TDBEdit).Text;
end;

procedure TFormServicos.DBEdit17Exit(Sender: TObject);
begin
  if (DM.TBServicos.State in [dsInsert, dsEdit]) and ((Sender as TDBEdit).Text='') then
  begin
    DM.TBServicosSER_CLIENTE.Clear;
    DM.TBServicosSER_ESTADO.Clear;
    DM.TBServicosCLI_NOME.Clear;
    DM.TBServicosCLI_FONE1.Clear;
    DM.TBServicosCLI_FONE2.Clear;
    DM.TBServicosCLI_EMAIL.Clear;
    Exit;
  end;
  if DM.CodigosOld=(Sender as TDBEdit).Text then
  Exit;
  if (DM.TBServicos.State in [dsInsert, dsEdit]) and ((Sender as TDBEdit).Text<>'') then
  begin
    DMS.QYClientes.Close;
    DMS.QYClientes.ParamByName('codigo').AsInteger:=StrToInt((Sender as TDBEdit).Text);
    DMS.QYClientes.Open;
    if not DMS.QYClientes.IsEmpty then
    begin
      DM.TBServicosSER_CLIENTE.Value:=DMS.QYClientesCLI_CODIGO.Value;
      DM.TBServicosSER_ESTADO.Value:=DMS.QYClientesCLI_ESTADO.Value;
      DM.TBServicosCLI_NOME.Value:=DMS.QYClientesCLI_NOME.Value;
      DM.TBServicosCLI_FONE1.Value:=DMS.QYClientesCLI_FONE1.Value;
      DM.TBServicosCLI_FONE2.Value:=DMS.QYClientesCLI_FONE2.Value;
      DM.TBServicosCLI_EMAIL.Value:=DMS.QYClientesCLI_EMAIL.Value;
    end else
    begin
      DM.TBServicosSER_CLIENTE.Clear;
      DM.TBServicosSER_ESTADO.Clear;
      DM.TBServicosCLI_NOME.Clear;
      DM.TBServicosCLI_FONE1.Clear;
      DM.TBServicosCLI_FONE2.Clear;
      DM.TBServicosCLI_EMAIL.Clear;
      MessageDlg('Cliente não encontrado.',mtInformation,[mbOk],0);
      (Sender as TDBEdit).SetFocus;
    end;
    DMS.QYClientes.Close;
  end;
end;

procedure TFormServicos.DBEdit17KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton3.Click;
end;

procedure TFormServicos.DBEdit17KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormServicos.SpeedButton3Click(Sender: TObject);
begin
  AbortIf(DM.TBServicosSER_STATUS.Value='F','Não é possível alterar uma ordem de serviço finalizada.');

  Application.CreateForm(TFormClientesLoc, FormClientesLoc);
  FormClientesLoc.ShowModal;
  if ClientesLoc.Procurar then
  begin
    DM.TBServicos.Edit;
    DM.TBServicosSER_CLIENTE.Value:=FormClientesLoc.QYClientesCLI_CODIGO.Value;
    DM.TBServicosSER_ESTADO.Value:=FormClientesLoc.QYClientesCLI_ESTADO.Value;
    DM.TBServicosCLI_NOME.Value:=FormClientesLoc.QYClientesCLI_NOME.Value;
    DM.TBServicosCLI_FONE1.Value:=FormClientesLoc.QYClientesCLI_FONE1.Value;
    DM.TBServicosCLI_FONE2.Value:=FormClientesLoc.QYClientesCLI_FONE2.Value;
    DM.TBServicosCLI_EMAIL.Value:=FormClientesLoc.QYClientesCLI_EMAIL.Value;
  end;
  FormClientesLoc.Free;
  FormClientesLoc:=nil;
end;

procedure TFormServicos.ReabrirOrdemDeServico1Click(Sender: TObject);
begin
  AbortIf(DM.TBServicos.IsEmpty,'Nenhuma ordem de serviço selecionada.');
  AbortIf(DM.TBServicosSER_STATUS.Value='A','Esta ordem de serviço já está aberta.');
  AbortIf(DM.TBServicosSER_STATUS.Value='B','Esta ordem de serviço está baixada e não pode ser reaberta.');

  if MessageDlg('Reabrir ordem de serviço número '+IntToStr(DM.TBServicosSER_CODIGO.Value)+'?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    QYServicos.ParamByName('codigo').AsInteger:=DM.TBServicosSER_CODIGO.Value;
    QYServicos.ExecSQL;
    //DM.TBServicos.Refresh; o refresh nao tras novamente os campos que vem com left join.
    DM.TBServicos.Close;
    DM.TBServicos.Open;
    MessageDlg('Ordem de serviço reaberta.',mtInformation,[mbOk],0);
  end;
end;

procedure TFormServicos.ReciboAvulso1Click(Sender: TObject);
begin
  Application.CreateForm(TFormRecibos, FormRecibos);
  FormRecibos.ShowModal;
  FormRecibos.Free;
  FormRecibos:=nil;
end;

procedure TFormServicos.FinalizarOrdemDeServico1Click(Sender: TObject);
begin
  AbortIf(DM.TBServicos.IsEmpty,'Nenhuma ordem de serviço selecionada.');
  AbortIf(DM.TBServicosSER_STATUS.Value='B','Esta ordem de serviço está baixada e não pode ser finalizada.');
  AbortIf(DM.TBServicosSER_STATUS.Value='F','Esta ordem de serviço já está finalizada.');

  if MessageDlg('Finalizar ordem de serviço número '+IntToStr(DM.TBServicosSER_CODIGO.Value)+'?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    DM.TBServicos.Edit;
    DM.TBServicosSER_STATUS.Value:='F';
    DM.TBServicosSER_FINALIZADOPOR.Value:=DM.UsuarioLogin;
//    if DM.TBServicosSER_DTSAIDA.IsNull then
//    DM.TBServicosSER_DTSAIDA.Value:=DM.ServerDate;
    DM.TBServicos.Post;
    MessageDlg('Ordem de serviço finalizada.',mtInformation,[mbOk],0);
  end;
end;

procedure TFormServicos.CadastroDeProdutos1Click(Sender: TObject);
begin
  Application.CreateForm(TFormProdutos, FormProdutos);
  FormProdutos.ShowModal;
  FormProdutos.Free;
  FormProdutos:=nil;
end;

procedure TFormServicos.BaixarOrdemDeServico1Click(Sender: TObject);
begin
  AbortIf(DM.TBServicos.IsEmpty,'Nenhuma ordem de serviço selecionada.');
  AbortIf(DM.TBServicosSER_STATUS.Value='B','Esta ordem de serviço já está baixada.');

  if MessageDlg('Baixar ordem de serviço número '+IntToStr(DM.TBServicosSER_CODIGO.Value)+'?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    DM.TBServicos.DisableControls;
    DM.TBServicos.Edit;
    DM.TBServicosSER_STATUS.Value:='B';
    DM.TBServicosSER_BAIXADOPOR.Value:=DM.UsuarioLogin;
    if DM.TBServicosSER_FINALIZADOPOR.IsNull then
    DM.TBServicosSER_FINALIZADOPOR.Value:=DM.UsuarioLogin;
    if DM.TBServicosSER_DTSAIDA.IsNull then
    DM.TBServicosSER_DTSAIDA.Value:=DM.ServerDate;
    DM.TBServicos.Post;
    DM.TBServicos.EnableControls;

    //Gera um pedido de venda para depois disso, dar baixa no estoque.
    //VENDAS LISTA CAMPOS. - os campos comentados não se aplicam.
    DM.TBClientes.Close;
    DM.TBClientes.ParamByName('codigo').AsInteger:=DM.TBServicosSER_CLIENTE.Value;
    DM.TBClientes.Open;

    { TODO -oRogerio -cCampos : IGUALAR CAMPOS }
    DM.TBVendas.Insert;
    DM.TBVendasVED_ALIQICMSCREDSN.Value         :=DM.TBServicosSER_ALIQICMSCREDSN.Value;
    DM.TBVendasVED_BAIRRO.Value                 :=DM.TBClientesCLI_BAIRRO.Value;
    //DM.TBVendasVED_BAIXADATA.Value              :=
    //DM.TBVendasVED_BAIXAPOR.Value               :=
    DM.TBVendasVED_BASECOFINS.Value             :=DM.TBServicosSER_BASECOFINS.Value;
    DM.TBVendasVED_BASECOFINSST.Value           :=DM.TBServicosSER_BASECOFINSST.Value;
    DM.TBVendasVED_BASEIBSCBS.Value             :=DM.TBServicosSER_BASEIBSCBS.Value;
    DM.TBVendasVED_BASEICMS.Value               :=DM.TBServicosSER_BASEICMS.Value;
    DM.TBVendasVED_BASEICMSST.Value             :=DM.TBServicosSER_BASEICMSST.Value;
    DM.TBVendasVED_BASEII.Value                 :=0; //DM.TBServicosSER_BASEII.Value;
    DM.TBVendasVED_BASEIPI.Value                :=DM.TBServicosSER_BASEIPI.Value;
    DM.TBVendasVED_BASEIS.Value                 :=DM.TBServicosSER_BASEIS.Value;
    DM.TBVendasVED_BASEISS.Value                :=DM.TBServicosSER_BASEISS.Value;
    DM.TBVendasVED_BASEPIS.Value                :=DM.TBServicosSER_BASEPIS.Value;
    DM.TBVendasVED_BASEPISST.Value              :=DM.TBServicosSER_BASEPISST.Value;
    DM.TBVendasVED_CBSCREDPRES.Value            :=DM.TBServicosSER_CBSCREDPRES.Value;
    DM.TBVendasVED_CBSCREDPRESSUS.Value         :=DM.TBServicosSER_CBSCREDPRESSUS.Value;
    DM.TBVendasVED_CBSDEVOLUCAO.Value           :=DM.TBServicosSER_CBSDEVOLUCAO.Value;
    DM.TBVendasVED_CBSDIFERIMENTO.Value         :=DM.TBServicosSER_CBSDIFERIMENTO.Value;
    DM.TBVendasVED_CBSMONO.Value                :=DM.TBServicosSER_CBSMONO.Value;
    DM.TBVendasVED_CBSMONORETENCAO.Value        :=DM.TBServicosSER_CBSMONORETENCAO.Value;
    DM.TBVendasVED_CBSMONORETIDO.Value          :=DM.TBServicosSER_CBSMONORETIDO.Value;
    DM.TBVendasVED_CBSVALOR.Value               :=DM.TBServicosSER_CBSVALOR.Value;
    DM.TBVendasVED_CEP.Value                    :=DM.TBClientesCLI_CEP.Value;
    DM.TBVendasVED_CFOP.Value                   :=DM.TBServicosSER_CFOP.Value; //no after insert é preenchido esse CFOP.
    //DM.TBVendasVED_CFOPDESC.Value               :=
    DM.TBVendasVED_CIDADE.Value                 :=DM.TBClientesCLI_CIDADE.Value;
    DM.TBVendasVED_CIDADECODIGO.Value           :=DM.TBClientesCLI_CIDADECODIGO.Value;
    DM.TBVendasVED_CLIENTE.Value                :=DM.TBServicosSER_CLIENTE.Value;
    DM.TBVendasVED_CNPJ.Value                   :=DM.TBClientesCLI_CNPJ.Value;
    //QYVendasVED_CODIGO.Value                    :=
    //QYVendasVED_CODIMPORTACAO.Value             :=DM.TBVendasVED_CODIMPORTACAO.Value;
    DM.TBVendasVED_COMISSAO.Value               :=DM.TBServicosSER_COMISSAO.Value;
    //DM.TBVendasVED_COMISSAOPOR.Value            := nao tem
    DM.TBVendasVED_COMISSAOREP.Value            :=DM.TBServicosSER_COMISSAO.Value;
    DM.TBVendasVED_COMPLEMENTO.Value            :=DM.TBClientesCLI_COMPLEMENTO.Value;
    DM.TBVendasVED_CONDICAO.Value               :=DM.TBClientesCLI_CONDICAO.Value;
    //DM.TBVendasVED_CONDICAOMEMO.Value           :=
    DM.TBVendasVED_CONFERIDO.Value              :='N';
    DM.TBVendasVED_CONFERIDODATA.Clear;
    DM.TBVendasVED_CONFERIDOPOR.Clear;
    DM.TBVendasVED_CONTATO.Value                :=DM.TBClientesCLI_CONTATO.Value;
    DM.TBVendasVED_CPF.Value                    :=DM.TBClientesCLI_CPF.Value;
    DM.TBVendasVED_CUSTOTOTAL.Value             :=DM.TBServicosSER_CUSTOTOTAL.Value;
    DM.TBVendasVED_DAV.Value                    :='N';
    DM.TBVendasVED_DESCPORC.Value               :=DM.TBServicosSER_DESCPORC.Value;
    //DM.TBVendasVED_DESCPORCCLIENTE.Value        :=
    //DM.TBVendasVED_DESCPORCCONDICAO.Value       :=
    DM.TBVendasVED_DESCVALOR.Value              :=DM.TBServicosSER_DESCVALOR.Value;
    //DM.TBVendasVED_DESTACARIMPOSTOS.Value       :=
    //DM.TBVendasVED_DIAPREFERENCIAL.Value        :=
    //DM.TBVendasVED_DTATUALIZACAO.Value          :=
    //DM.TBVendasVED_DTCADASTRO.Value             :=
    //DM.TBVendasVED_DTEMISSAO.Value              :=
    //DM.TBVendasVED_DTENTREGA.Value              :=
    //DM.TBVendasVED_DTPRESTSERVICO.Value         :=
    //DM.TBVendasVED_DTSAIDA.Value                :=
    DM.TBVendasVED_ENDERECO.Value               :=DM.TBClientesCLI_ENDERECO.Value;
    //DM.TBVendasVED_ENTRADASAIDA.Value           :=
    //DM.TBVendasVED_ENTREGUE.Value               :=
    //DM.TBVendasVED_ESPECIE.Value                :=
    DM.TBVendasVED_ESTADO.Value                 :=DM.TBClientesCLI_ESTADO.Value;
    DM.TBVendasVED_ESTADOCODIGO.Value           :=DM.TBClientesCLI_ESTADOCODIGO.Value;
//    DM.TBVendasVED_EXLOCAL.Value                :=
    DM.TBVendasVED_EXPEDIDOPOR.Value            :=DM.TBServicosSER_TECNICO.Value; //tecnico=vendedor.
//    DM.TBVendasVED_EXUFSAIDA.Value              :=
    DM.TBVendasVED_FONE1.Value                  :=DM.TBClientesCLI_FONE1.Value;
    //DM.TBVendasVED_FORMAPAGTO.Value             :=
    //DM.TBVendasVED_FRETE.Value                  := nao tem
    DM.TBVendasVED_GOVERNAMENTAL.Value          :='0 - NENHUM';
    DM.TBVendasVED_GOVERNAMENTALALIQRED.Value   :=0;
    DM.TBVendasVED_GOVERNAMENTALOP.Value        :='0 - NENHUM';
    DM.TBVendasVED_HRATUALIZACAO.Value          :=DM.ServerTime;
    DM.TBVendasVED_HRCADASTRO.Value             :=DM.ServerTime;
    DM.TBVendasVED_IBSCREDPRES.Value            :=DM.TBServicosSER_IBSCREDPRES.Value;
    DM.TBVendasVED_IBSCREDPRESSUS.Value         :=DM.TBServicosSER_IBSCREDPRESSUS.Value;
    DM.TBVendasVED_IBSMONO.Value                :=DM.TBServicosSER_IBSMONO.Value;
    DM.TBVendasVED_IBSMONORETENCAO.Value        :=DM.TBServicosSER_IBSMONORETENCAO.Value;
    DM.TBVendasVED_IBSMONORETIDO.Value          :=DM.TBServicosSER_IBSMONORETIDO.Value;
    DM.TBVendasVED_IBSMUNDEVOLUCAO.Value        :=DM.TBServicosSER_IBSMUNDEVOLUCAO.Value;
    DM.TBVendasVED_IBSMUNDIFERIMENTO.Value      :=DM.TBServicosSER_IBSMUNDIFERIMENTO.Value;
    DM.TBVendasVED_IBSMUNVALOR.Value            :=DM.TBServicosSER_IBSMUNVALOR.Value;
    DM.TBVendasVED_IBSUFDEVOLUCAO.Value         :=DM.TBServicosSER_IBSUFDEVOLUCAO.Value;
    DM.TBVendasVED_IBSUFDIFERIMENTO.Value       :=DM.TBServicosSER_IBSUFDIFERIMENTO.Value;
    DM.TBVendasVED_IBSUFVALOR.Value             :=DM.TBServicosSER_IBSUFVALOR.Value;
    DM.TBVendasVED_IBSVALOR.Value               :=DM.TBServicosSER_IBSVALOR.Value;
//    DM.TBVendasVED_IDESTRANGEIRO.Value          :=
    DM.TBVendasVED_IE.Value                     :=DM.TBClientesCLI_IE.Value;
    //DM.TBVendasVED_INFOADICFISCO.Value          :=
    //DM.TBVendasVED_INFOCOMPLEMENTAR.Value       :=
    //DM.TBVendasVED_LACRES.Value                 :=
    DM.TBVendasVED_LUCROPORC.Value              :=DM.TBServicosSER_LUCROPORC.Value;
    DM.TBVendasVED_LUCROVALOR.Value             :=DM.TBServicosSER_LUCROVALOR.Value;
//    DM.TBVendasVED_MANUAL.Value                 :=
//    DM.TBVendasVED_MARCA.Value                  :=
    //DM.TBVendasVED_MOVIMENTAESTOQUE.Value       :=
    //DM.TBVendasVED_MOVIMENTAFINANCEIRO.Value    :=
    //DM.TBVendasVED_NFCE.Value                   :=
    //DM.TBVendasVED_NFE.Value                    :=
    DM.TBVendasVED_NOME.Value                   :=DM.TBServicosCLI_NOME.Value;
    //DM.TBVendasVED_NOTA.Value                   :=
    DM.TBVendasVED_NOTACREDITO.Value            :='00 - NENHUM'; //DM.TBServicosSER_NOTACREDITO.Value;
    DM.TBVendasVED_NOTADEBITO.Value             :='00 - NENHUM'; //DM.TBServicosSER_NOTADEBITO.Value;
    DM.TBVendasVED_NUMERO.Value                 :=DM.TBClientesCLI_NUMERO.Value;
    DM.TBVendasVED_OBSERVACOES.Value            :=DM.TBServicosSER_OBSERVACOES.Value;
    DM.TBVendasVED_PAIS.Value                   :=DM.TBClientesCLI_PAIS.Value;
    DM.TBVendasVED_PAISCODIGO.Value             :=DM.TBClientesCLI_PAISCODIGO.Value;
//    DM.TBVendasVED_PEDIDOCLIENTE.Value          :=
    //DM.TBVendasVED_PESOBRUTO.Value              :=
    DM.TBVendasVED_PESOLIQ.Value                :=DM.TBServicosSER_PESOLIQ.Value;
    //DM.TBVendasVED_PRODUCAO.Value               :=DM.TBVendasVED_PRODUCAO.Value;
    //DM.TBVendasVED_REBOQUEPLACA.Value           :=DM.TBVendasVED_REBOQUEPLACA.Value;
    //DM.TBVendasVED_REBOQUEPLACAUF.Value         :=DM.TBVendasVED_REBOQUEPLACAUF.Value;
//    DM.TBVendasVED_REBOQUERNTC.Value            :=DM.TBVendasVED_REBOQUERNTC.Value;
    DM.TBVendasVED_REPRESENTANTE.Value          :=DM.TBServicosSER_TECNICO.Value;
    DM.TBVendasVED_RG.Value                     :=DM.TBClientesCLI_RG.Value;
    DM.TBVendasVED_SEQUENCIAITEM.Value          :=DM.TBServicosSER_SEQUENCIAITEM.Value;
    //DM.TBVendasVED_STATUS.Value                 :=
    DM.TBVendasVED_SUFRAMA.Value                :=DM.TBClientesCLI_SUFRAMA.Value;
    DM.TBVendasVED_TABELAPRECO.Value            :=DM.TBServicosSER_TABELAPRECO.Value;
//    DM.TBVendasVED_TIPOATENDIMENTO.Value        :=
//    DM.TBVendasVED_TIPOCONSUMIDOR.Value         :=
//    DM.TBVendasVED_TIPOOPERACAO.Value           :=
    DM.TBVendasVED_TOTALADUANA.Value            :=0;
    DM.TBVendasVED_TOTALBRUTO.Value             :=DM.TBServicosSER_TOTALBRUTO.Value;
    DM.TBVendasVED_TOTALCOFINS.Value            :=DM.TBServicosSER_TOTALCOFINS.Value;
    DM.TBVendasVED_TOTALCOFINSST.Value          :=DM.TBServicosSER_TOTALCOFINSST.Value;
    DM.TBVendasVED_TOTALCOMISSAO.Value          :=DM.TBServicosSER_TOTALCOMISSAO.Value;
    DM.TBVendasVED_TOTALCOMISSAOREP.Value       :=DM.TBServicosSER_TOTALCOMISSAO.Value;
    DM.TBVendasVED_TOTALFCP.Value               :=DM.TBServicosSER_TOTALFCP.Value;
    DM.TBVendasVED_TOTALFCPST.Value             :=DM.TBServicosSER_TOTALFCPST.Value;
    DM.TBVendasVED_TOTALICMS.Value              :=DM.TBServicosSER_TOTALICMS.Value;
    DM.TBVendasVED_TOTALICMSCREDSN.Value        :=DM.TBServicosSER_TOTALICMSCREDSN.Value;
    DM.TBVendasVED_TOTALICMSST.Value            :=DM.TBServicosSER_TOTALICMSST.Value;
    DM.TBVendasVED_TOTALICMSUFDEST.Value        :=DM.TBServicosSER_TOTALICMSUFDEST.Value;
    DM.TBVendasVED_TOTALICMSUFREMET.Value       :=DM.TBServicosSER_TOTALICMSUFREMET.Value;
    DM.TBVendasVED_TOTALII.Value                :=0;
    DM.TBVendasVED_TOTALIOF.Value               :=0;
    DM.TBVendasVED_TOTALIPI.Value               :=DM.TBServicosSER_TOTALIPI.Value;
    DM.TBVendasVED_TOTALIS.Value                :=DM.TBServicosSER_TOTALIS.Value;
    DM.TBVendasVED_TOTALISS.Value               :=DM.TBServicosSER_TOTALISS.Value;
    DM.TBVendasVED_TOTALISSDEDUCAO.Value        :=DM.TBServicosSER_TOTALISSDEDUCAO.Value;
    DM.TBVendasVED_TOTALISSDESCCOND.Value       :=DM.TBServicosSER_TOTALISSDESCCOND.Value;
    DM.TBVendasVED_TOTALISSDESCINCOND.Value     :=DM.TBServicosSER_TOTALISSDESCINCOND.Value;
    DM.TBVendasVED_TOTALISSOUTROS.Value         :=DM.TBServicosSER_TOTALISSOUTROS.Value;
    DM.TBVendasVED_TOTALISSRETENCAO.Value       :=DM.TBServicosSER_TOTALISSRETENCAO.Value;
    DM.TBVendasVED_TOTALITENS.Value             :=DM.TBServicosSER_TOTALITENS.Value;
    DM.TBVendasVED_TOTALPIS.Value               :=DM.TBServicosSER_TOTALPIS.Value;
    DM.TBVendasVED_TOTALPISST.Value             :=DM.TBServicosSER_TOTALPISST.Value;
    DM.TBVendasVED_TOTALPRODUTOS.Value          :=DM.TBServicosSER_TOTALPRODUTOS.Value;
    DM.TBVendasVED_TOTALSERVICOS.Value          :=DM.TBServicosSER_TOTALSERVICOS.Value;
    DM.TBVendasVED_TOTALTRIBUTOS.Value          :=DM.TBServicosSER_TOTALTRIBUTOS.Value;
    DM.TBVendasVED_TOTALTRIBUTOSEST.Value       :=DM.TBServicosSER_TOTALTRIBUTOSEST.Value;
    DM.TBVendasVED_TOTALTRIBUTOSFED.Value       :=DM.TBServicosSER_TOTALTRIBUTOSFED.Value;
    DM.TBVendasVED_TOTALTRIBUTOSIMP.Value       :=DM.TBServicosSER_TOTALTRIBUTOSIMP.Value;
    DM.TBVendasVED_TOTALTRIBUTOSMUN.Value       :=DM.TBServicosSER_TOTALTRIBUTOSMUN.Value;
    //DM.TBVendasVED_TRANSPCIDADE.Value           := nao tem
    //DM.TBVendasVED_TRANSPCNPJ.Value             := nao tem
    //DM.TBVendasVED_TRANSPCPF.Value              := nao tem
    //DM.TBVendasVED_TRANSPEMAIL.Value            :=
    //DM.TBVendasVED_TRANSPENDERECO.Value         := nao tem
    //DM.TBVendasVED_TRANSPESTADO.Value           := nao tem
    //DM.TBVendasVED_TRANSPFONE.Value             := nao tem
    //DM.TBVendasVED_TRANSPIE.Value               := nao tem
    //DM.TBVendasVED_TRANSPNOME.Value             := nao tem
    //DM.TBVendasVED_TRANSPORTADORA.Value         := nao tem
    //DM.TBVendasVED_USUARIO.Value                :=
    DM.TBVendasVED_VALORDESPACES.Value          :=DM.TBServicosSER_VALORDESPACES.Value;
    DM.TBVendasVED_VALORFRETE.Value             :=DM.TBServicosSER_VALORFRETE.Value;
    DM.TBVendasVED_VALORSEGURO.Value            :=DM.TBServicosSER_VALORSEGURO.Value;
    DM.TBVendasVED_VALORTOTAL.Value             :=DM.TBServicosSER_VALORTOTAL.Value;
    DM.TBVendasVED_VALORTOTALRTC.Value          :=DM.TBServicosSER_VALORTOTALRTC.Value;
    //DM.TBVendasVED_VEICULOPLACA.Value           :=
    //DM.TBVendasVED_VEICULOPLACAUF.Value         :=
    //DM.TBVendasVED_VEICULORNTC.Value            :=
    DM.TBVendasVED_VENDEDOR.Value               :=DM.TBServicosSER_TECNICO.Value;
    //DM.TBVendasVED_VIAINTERNET.Value            :=
    //DM.TBVendasVED_VIAINTERNETSTATUS.Value      :=
    //DM.TBVendasVED_VOLUMES.Value                :=
    //DM.TBVendasVED_VOLUMESNUM.Value             :=
    DM.TBVendas.Post;

    DM.TBServicosItens.First;
    while not DM.TBServicosItens.Eof do
    begin
      { TODO -oRogerio -cCampos : IGUALAR CAMPOS }
      if DM.TBServicosItensSEI_TIPO.Value='P' then
      begin
        DM.TBVendasItens.Insert;
        DM.TBVendasItensVEI_ALIQCBS.Value            :=DM.TBServicosItensSEI_ALIQCBS.Value;
        DM.TBVendasItensVEI_ALIQCBSCREDPRES.Value    :=DM.TBServicosItensSEI_ALIQCBSCREDPRES.Value;
        DM.TBVendasItensVEI_ALIQCBSDIF.Value         :=DM.TBServicosItensSEI_ALIQCBSDIF.Value;
        DM.TBVendasItensVEI_ALIQCBSEFE.Value         :=DM.TBServicosItensSEI_ALIQCBSEFE.Value;
        DM.TBVendasItensVEI_ALIQCBSRED.Value         :=DM.TBServicosItensSEI_ALIQCBSRED.Value;
        DM.TBVendasItensVEI_ALIQCOFINS.Value         :=DM.TBServicosItensSEI_ALIQCOFINS.Value;
        DM.TBVendasItensVEI_ALIQCOFINSST.Value       :=DM.TBServicosItensSEI_ALIQCOFINSST.Value;
        DM.TBVendasItensVEI_ALIQFCP.Value            :=DM.TBServicosItensSEI_ALIQFCP.Value;
        DM.TBVendasItensVEI_ALIQFCPST.Value          :=DM.TBServicosItensSEI_ALIQFCPST.Value;
        DM.TBVendasItensVEI_ALIQIBSCREDPRES.Value    :=DM.TBServicosItensSEI_ALIQIBSCREDPRES.Value;
        DM.TBVendasItensVEI_ALIQIBSMUN.Value         :=DM.TBServicosItensSEI_ALIQIBSMUN.Value;
        DM.TBVendasItensVEI_ALIQIBSMUNDIF.Value      :=DM.TBServicosItensSEI_ALIQIBSMUNDIF.Value;
        DM.TBVendasItensVEI_ALIQIBSMUNEFE.Value      :=DM.TBServicosItensSEI_ALIQIBSMUNEFE.Value;
        DM.TBVendasItensVEI_ALIQIBSMUNRED.Value      :=DM.TBServicosItensSEI_ALIQIBSMUNRED.Value;
        DM.TBVendasItensVEI_ALIQIBSUF.Value          :=DM.TBServicosItensSEI_ALIQIBSUF.Value;
        DM.TBVendasItensVEI_ALIQIBSUFDIF.Value       :=DM.TBServicosItensSEI_ALIQIBSUFDIF.Value;
        DM.TBVendasItensVEI_ALIQIBSUFEFE.Value       :=DM.TBServicosItensSEI_ALIQIBSUFEFE.Value;
        DM.TBVendasItensVEI_ALIQIBSUFRED.Value       :=DM.TBServicosItensSEI_ALIQIBSUFRED.Value;
        DM.TBVendasItensVEI_ALIQICMS.Value           :=DM.TBServicosItensSEI_ALIQICMS.Value;
        DM.TBVendasItensVEI_ALIQICMSADICST.Value     :=DM.TBServicosItensSEI_ALIQICMSADICST.Value;
        DM.TBVendasItensVEI_ALIQICMSINTER.Value      :=DM.TBServicosItensSEI_ALIQICMSINTER.Value;
        DM.TBVendasItensVEI_ALIQICMSINTERPART.Value  :=DM.TBServicosItensSEI_ALIQICMSINTERPART.Value;
        DM.TBVendasItensVEI_ALIQICMSRED.Value        :=DM.TBServicosItensSEI_ALIQICMSRED.Value;
        DM.TBVendasItensVEI_ALIQICMSST.Value         :=DM.TBServicosItensSEI_ALIQICMSST.Value;
        DM.TBVendasItensVEI_ALIQICMSSTRET.Value      :=DM.TBServicosItensSEI_ALIQICMSSTRET.Value;
        DM.TBVendasItensVEI_ALIQII.Value             :=0; //DM.TBServicosItensSEI_ALIQII.Value;
        DM.TBVendasItensVEI_ALIQIPI.Value            :=DM.TBServicosItensSEI_ALIQIPI.Value;
        DM.TBVendasItensVEI_ALIQIS.Value             :=DM.TBServicosItensSEI_ALIQIS.Value;
        DM.TBVendasItensVEI_ALIQISESP.Value          :=DM.TBServicosItensSEI_ALIQISESP.Value;
        DM.TBVendasItensVEI_ALIQISS.Value            :=DM.TBServicosItensSEI_ALIQISS.Value;
        DM.TBVendasItensVEI_ALIQPIS.Value            :=DM.TBServicosItensSEI_ALIQPIS.Value;
        DM.TBVendasItensVEI_ALIQPISST.Value          :=DM.TBServicosItensSEI_ALIQPISST.Value;
        DM.TBVendasItensVEI_ALMOXARIFADO.Value       :=DM.TBServicosItensSEI_ALMOXARIFADO.Value;
        DM.TBVendasItensVEI_BASECOFINS.Value         :=DM.TBServicosItensSEI_BASECOFINS.Value;
        DM.TBVendasItensVEI_BASECOFINSST.Value       :=DM.TBServicosItensSEI_BASECOFINSST.Value;
        DM.TBVendasItensVEI_BASEIBSCBS.Value         :=DM.TBServicosItensSEI_BASEIBSCBS.Value;
        DM.TBVendasItensVEI_BASEICMS.Value           :=DM.TBServicosItensSEI_BASEICMS.Value;
        DM.TBVendasItensVEI_BASEICMSRED.Value        :=DM.TBServicosItensSEI_BASEICMSRED.Value;
        DM.TBVendasItensVEI_BASEICMSST.Value         :=DM.TBServicosItensSEI_BASEICMSST.Value;
        DM.TBVendasItensVEI_BASEICMSSTRET.Value      :=0; //DM.TBServicosItensSEI_BASEICMSSTRET.Value;
        DM.TBVendasItensVEI_BASEII.Value             :=0; //DM.TBServicosItensSEI_BASEII.Value;
        DM.TBVendasItensVEI_BASEIPI.Value            :=DM.TBServicosItensSEI_BASEIPI.Value;
        DM.TBVendasItensVEI_BASEIS.Value             :=DM.TBServicosItensSEI_BASEIS.Value;
        DM.TBVendasItensVEI_BASEISS.Value            :=DM.TBServicosItensSEI_BASEISS.Value;
        DM.TBVendasItensVEI_BASEPIS.Value            :=DM.TBServicosItensSEI_BASEPIS.Value;
        DM.TBVendasItensVEI_BASEPISST.Value          :=DM.TBServicosItensSEI_BASEPISST.Value;
        DM.TBVendasItensVEI_BENEFICIO.Value          :=DM.TBServicosItensSEI_BENEFICIO.Value;
        DM.TBVendasItensVEI_CBSCREDITOPRES.Value     :=DM.TBServicosItensSEI_CBSCREDITOPRES.Value;
        DM.TBVendasItensVEI_CEST.Value               :=DM.TBServicosItensSEI_CEST.Value;
        DM.TBVendasItensVEI_CFOP.Value               :=DM.TBServicosItensSEI_CFOP.Value;
        DM.TBVendasItensVEI_CIDADEISS.Value          :=DM.TBServicosItensSEI_CIDADEISS.Value;
        DM.TBVendasItensVEI_CLASSFISCAL.Value        :=DM.TBServicosItensSEI_CLASSFISCAL.Value;
        DM.TBVendasItensVEI_CLASSTRIBIBSCBS.Value    :=DM.TBServicosItensSEI_CLASSTRIBIBSCBS.Value;
        DM.TBVendasItensVEI_CLASSTRIBIS.Value        :=DM.TBServicosItensSEI_CLASSTRIBIS.Value;
        //DM.TBVendasItensVEI_CODIGO.Value:=
        DM.TBVendasItensVEI_CODIGOBARRAS.Value       :=DM.TBServicosItensSEI_CODIGOBARRAS.Value;
        DM.TBVendasItensVEI_CODIGOFAB.Value          :=DM.TBServicosItensSEI_CODIGOFAB.Value;
        DM.TBVendasItensVEI_COMISSAO.Value           :=DM.TBServicosItensSEI_COMISSAO.Value;
        DM.TBVendasItensVEI_COMISSAOREP.Value        :=DM.TBServicosItensSEI_COMISSAO.Value; //o mesmo
        DM.TBVendasItensVEI_COMPLEMENTO.Value        :=DM.TBServicosItensSEI_COMPLEMENTO.Value;
        DM.TBVendasItensVEI_COMPOEBASEICMS.Value     :=DM.TBServicosItensSEI_COMPOEBASEICMS.Value;
        DM.TBVendasItensVEI_COMPOEBASEICMSST.Value   :=DM.TBServicosItensSEI_COMPOEBASEICMSST.Value;
        DM.TBVendasItensVEI_COMPOETOTAL.Value        :=DM.TBServicosItensSEI_COMPOETOTAL.Value;
        DM.TBVendasItensVEI_CONVERSAO.Value          :=DM.TBServicosItensSEI_CONVERSAO.Value;
        DM.TBVendasItensVEI_CSTCOFINS.Value          :=DM.TBServicosItensSEI_CSTCOFINS.Value;
        DM.TBVendasItensVEI_CSTIBSCBS.Value          :=DM.TBServicosItensSEI_CSTIBSCBS.Value;
        DM.TBVendasItensVEI_CSTICMS.Value            :=DM.TBServicosItensSEI_CSTICMS.Value;
        DM.TBVendasItensVEI_CSTIPI.Value             :=DM.TBServicosItensSEI_CSTIPI.Value;
        DM.TBVendasItensVEI_CSTIS.Value              :=DM.TBServicosItensSEI_CSTIS.Value;
        DM.TBVendasItensVEI_CSTPIS.Value             :=DM.TBServicosItensSEI_CSTPIS.Value;
        DM.TBVendasItensVEI_DESCMAX.Value            :=DM.TBServicosItensSEI_DESCMAX.Value;
        DM.TBVendasItensVEI_DESCPORC.Value           :=DM.TBServicosItensSEI_DESCPORC.Value;
        DM.TBVendasItensVEI_DESCRICAO.Value          :=DM.TBServicosItensSEI_DESCRICAO.Value;
        DM.TBVendasItensVEI_DESCVALOR.Value          :=DM.TBServicosItensSEI_DESCVALOR.Value;
        DM.TBVendasItensVEI_DESONERACAO.Value        :='00 - NENHUM'; //DM.TBServicosItensSEI_DESONERACAO.Value;
        DM.TBVendasItensVEI_DFEREF.Value             :=''; //DM.TBServicosItensSEI_DFEREF.Value;
        DM.TBVendasItensVEI_DFEREFITEM.Clear;//         :=''; //DM.TBServicosItensSEI_DFEREFITEM.Value;
        //DM.TBVendasItensVEI_DICNPJ.Value:=
        //DM.TBVendasItensVEI_DIDATA.Value:=
        //DM.TBVendasItensVEI_DIDESEMBARACODATA.Value:=
        //DM.TBVendasItensVEI_DIDESEMBARACOLOCAL.Value:=
        //DM.TBVendasItensVEI_DIDESEMBARACOUF.Value:=
        //DM.TBVendasItensVEI_DIEXPORTADORCOD.Value:=
        //DM.TBVendasItensVEI_DIINTERMEDIO.Value:=
        //DM.TBVendasItensVEI_DINUMERO.Value:=
        //DM.TBVendasItensVEI_DITERCEIROUF.Value:=
        //DM.TBVendasItensVEI_DITRANSPORTE.Value:=
        //DM.TBVendasItensVEI_DIVALORAFRMM.Value:=
        //DM.TBVendasItensVEI_DTENTREGA.Value:=
        DM.TBVendasItensVEI_ENQUADRAMENTOIPI.Value   :=DM.TBServicosItensSEI_ENQUADRAMENTOIPI.Value;
        DM.TBVendasItensVEI_EXCECAO.Value            :=DM.TBServicosItensSEI_EXCECAO.Value;
        //DM.TBVendasItensVEI_EXCHAVEACESSO.Value:=
        //DM.TBVendasItensVEI_EXDRAWBACK.Value:=
        //DM.TBVendasItensVEI_EXQUANTIDADE.Value:=
        //DM.TBVendasItensVEI_EXREGISTRO.Value:=
        DM.TBVendasItensVEI_FCI.Value                :=DM.TBServicosItensSEI_FCI.Value;
        DM.TBVendasItensVEI_IBSCREDITOPRES.Value     :=DM.TBServicosItensSEI_IBSCREDITOPRES.Value;
        DM.TBVendasItensVEI_INCENTIVOISS.Value       :=DM.TBServicosItensSEI_INCENTIVOISS.Value;
        DM.TBVendasItensVEI_INDICADORISS.Value       :=DM.TBServicosItensSEI_INDICADORISS.Value;
        DM.TBVendasItensVEI_INFOADICIONAL.Value      :=DM.TBServicosItensSEI_INFOADICIONAL.Value;
        DM.TBVendasItensVEI_LOCALIZACAO.Value        :=DM.TBServicosItensSEI_LOCALIZACAO.Value;
        DM.TBVendasItensVEI_LOTE.Value               :=DM.TBServicosItensSEI_LOTE.Value;
        DM.TBVendasItensVEI_LUCROPORC.Value          :=DM.TBServicosItensSEI_LUCROPORC.Value;
        DM.TBVendasItensVEI_LUCROVALOR.Value         :=DM.TBServicosItensSEI_LUCROVALOR.Value;
        DM.TBVendasItensVEI_MODICMS.Value            :=DM.TBServicosItensSEI_MODICMS.Value;
        DM.TBVendasItensVEI_MODICMSST.Value          :=DM.TBServicosItensSEI_MODICMSST.Value;
        DM.TBVendasItensVEI_ORIGEM.Value             :=DM.TBServicosItensSEI_ORIGEM.Value;
        DM.TBVendasItensVEI_PAISISS.Value            :=DM.TBServicosItensSEI_PAISISS.Value;
        //DM.TBVendasItensVEI_PEDIDOCLIENTE.Value:=
        //DM.TBVendasItensVEI_PEDIDOCLIENTEITEM.Value:=
        DM.TBVendasItensVEI_PESO.Value               :=DM.TBServicosItensSEI_PESO.Value;
        DM.TBVendasItensVEI_PESOTOTAL.Value          :=DM.TBServicosItensSEI_PESOTOTAL.Value;
        DM.TBVendasItensVEI_PRECOCUSTO.Value         :=DM.TBServicosItensSEI_PRECOCUSTO.Value;
        DM.TBVendasItensVEI_PRECOCUSTOTOTAL.Value    :=DM.TBServicosItensSEI_PRECOCUSTOTOTAL.Value;
        DM.TBVendasItensVEI_PROCESSOISS.Value        :=DM.TBServicosItensSEI_PROCESSOISS.Value;
        DM.TBVendasItensVEI_PRODUTO.Value            :=DM.TBServicosItensSEI_PRODUTO.Value;
        DM.TBVendasItensVEI_PRODUTOREAL.Value        :=DM.TBServicosItensSEI_PRODUTOREAL.Value;
        DM.TBVendasItensVEI_QUANTIDADE.Value         :=DM.TBServicosItensSEI_QUANTIDADE.Value;
        DM.TBVendasItensVEI_QUANTIDADETROCA.Value    :=DM.TBServicosItensSEI_QUANTIDADETROCA.Value;
        DM.TBVendasItensVEI_SEQUENCIA.Value          :=DM.TBServicosItensSEI_SEQUENCIA.Value;
        DM.TBVendasItensVEI_SERVICOISS.Value         :=DM.TBServicosItensSEI_SERVICOISS.Value;
        DM.TBVendasItensVEI_SOMACOFINSST.Value       :='N'; //DM.TBServicosItensSEI_SOMACOFINSST.Value;
        DM.TBVendasItensVEI_SOMAPISST.Value          :='N'; //DM.TBServicosItensSEI_SOMAPISST.Value;
        DM.TBVendasItensVEI_TIPO.Value               :=DM.TBServicosItensSEI_TIPO.Value;
        DM.TBVendasItensVEI_TIPOISS.Value            :=DM.TBServicosItensSEI_TIPOISS.Value;
        DM.TBVendasItensVEI_UNIDADE.Value            :=DM.TBServicosItensSEI_UNIDADE.Value;
        DM.TBVendasItensVEI_VALORACESSORIAS.Value    :=DM.TBServicosItensSEI_VALORACESSORIAS.Value;
        DM.TBVendasItensVEI_VALORADUANA.Value        :=0; //DM.TBServicosItensSEI_VALORADUANA.Value;
        DM.TBVendasItensVEI_VALORCBS.Value           :=DM.TBServicosItensSEI_VALORCBS.Value;
        DM.TBVendasItensVEI_VALORCBSCREDPRES.Value   :=DM.TBServicosItensSEI_VALORCBSCREDPRES.Value;
        DM.TBVendasItensVEI_VALORCBSCREDPRESSUS.Value:=DM.TBServicosItensSEI_VALORCBSCREDPRESSUS.Value;
        DM.TBVendasItensVEI_VALORCBSDEV.Value        :=DM.TBServicosItensSEI_VALORCBSDEV.Value;
        DM.TBVendasItensVEI_VALORCBSDIF.Value        :=DM.TBServicosItensSEI_VALORCBSDIF.Value;
        DM.TBVendasItensVEI_VALORCOFINS.Value        :=DM.TBServicosItensSEI_VALORCOFINS.Value;
        DM.TBVendasItensVEI_VALORCOFINSST.Value      :=DM.TBServicosItensSEI_VALORCOFINSST.Value;
        DM.TBVendasItensVEI_VALORCOMISSAO.Value      :=DM.TBServicosItensSEI_VALORCOMISSAO.Value;
        DM.TBVendasItensVEI_VALORCOMISSAOREP.Value   :=DM.TBServicosItensSEI_VALORCOMISSAO.Value;
        DM.TBVendasItensVEI_VALORFCP.Value           :=DM.TBServicosItensSEI_VALORFCP.Value;
        DM.TBVendasItensVEI_VALORFCPST.Value         :=DM.TBServicosItensSEI_VALORFCPST.Value;
        DM.TBVendasItensVEI_VALORFRETE.Value         :=DM.TBServicosItensSEI_VALORFRETE.Value;
        DM.TBVendasItensVEI_VALORIBS.Value           :=DM.TBServicosItensSEI_VALORIBS.Value;
        DM.TBVendasItensVEI_VALORIBSCREDPRES.Value   :=DM.TBServicosItensSEI_VALORIBSCREDPRES.Value;
        DM.TBVendasItensVEI_VALORIBSCREDPRESSUS.Value:=DM.TBServicosItensSEI_VALORIBSCREDPRESSUS.Value;
        DM.TBVendasItensVEI_VALORIBSMUN.Value        :=DM.TBServicosItensSEI_VALORIBSMUN.Value;
        DM.TBVendasItensVEI_VALORIBSMUNDEV.Value     :=DM.TBServicosItensSEI_VALORIBSMUNDEV.Value;
        DM.TBVendasItensVEI_VALORIBSMUNDIF.Value     :=DM.TBServicosItensSEI_VALORIBSMUNDIF.Value;
        DM.TBVendasItensVEI_VALORIBSUF.Value         :=DM.TBServicosItensSEI_VALORIBSUF.Value;
        DM.TBVendasItensVEI_VALORIBSUFDEV.Value      :=DM.TBServicosItensSEI_VALORIBSUFDEV.Value;
        DM.TBVendasItensVEI_VALORIBSUFDIF.Value      :=DM.TBServicosItensSEI_VALORIBSUFDIF.Value;
        DM.TBVendasItensVEI_VALORICMS.Value          :=DM.TBServicosItensSEI_VALORICMS.Value;
        DM.TBVendasItensVEI_VALORICMSCREDSN.Value    :=DM.TBServicosItensSEI_VALORICMSCREDSN.Value;
        DM.TBVendasItensVEI_VALORICMSDESONERADO.Value:=0; //DM.TBServicosItensSEI_VALORICMSDESONERADO.Value;
        DM.TBVendasItensVEI_VALORICMSST.Value        :=DM.TBServicosItensSEI_VALORICMSST.Value;
        DM.TBVendasItensVEI_VALORICMSSTRET.Value     :=0; //DM.TBServicosItensSEI_VALORICMSSTRET.Value;
        DM.TBVendasItensVEI_VALORICMSSUBSTITUTO.Value:=0; //DM.TBServicosItensSEI_VALORICMSSUBSTITUTO.Value;
        DM.TBVendasItensVEI_VALORICMSUFDEST.Value    :=DM.TBServicosItensSEI_VALORICMSUFDEST.Value;
        DM.TBVendasItensVEI_VALORICMSUFREMET.Value   :=DM.TBServicosItensSEI_VALORICMSUFREMET.Value;
        DM.TBVendasItensVEI_VALORII.Value            :=0; //DM.TBServicosItensSEI_VALORII.Value;
        DM.TBVendasItensVEI_VALORIOF.Value           :=0; //DM.TBServicosItensSEI_VALORIOF.Value;
        DM.TBVendasItensVEI_VALORIPI.Value           :=DM.TBServicosItensSEI_VALORIPI.Value;
        DM.TBVendasItensVEI_VALORIS.Value            :=DM.TBServicosItensSEI_VALORIS.Value;
        DM.TBVendasItensVEI_VALORISS.Value           :=DM.TBServicosItensSEI_VALORISS.Value;
        DM.TBVendasItensVEI_VALORISSDEDUCAO.Value    :=DM.TBServicosItensSEI_VALORISSDEDUCAO.Value;
        DM.TBVendasItensVEI_VALORISSDESCCOND.Value   :=DM.TBServicosItensSEI_VALORISSDESCCOND.Value;
        DM.TBVendasItensVEI_VALORISSDESCINCOND.Value :=DM.TBServicosItensSEI_VALORISSDESCINCOND.Value;
        DM.TBVendasItensVEI_VALORISSOUTROS.Value     :=DM.TBServicosItensSEI_VALORISSOUTROS.Value;
        DM.TBVendasItensVEI_VALORISSRETENCAO.Value   :=DM.TBServicosItensSEI_VALORISSRETENCAO.Value;
        DM.TBVendasItensVEI_VALORPIS.Value           :=DM.TBServicosItensSEI_VALORPIS.Value;
        DM.TBVendasItensVEI_VALORPISST.Value         :=DM.TBServicosItensSEI_VALORPISST.Value;
        DM.TBVendasItensVEI_VALORSEGURO.Value        :=DM.TBServicosItensSEI_VALORSEGURO.Value;
        DM.TBVendasItensVEI_VALORTOTAL.Value         :=DM.TBServicosItensSEI_VALORTOTAL.Value;
        DM.TBVendasItensVEI_VALORTOTALBRUTO.Value    :=DM.TBServicosItensSEI_VALORTOTALBRUTO.Value;
        DM.TBVendasItensVEI_VALORTRIBUTOS.Value      :=DM.TBServicosItensSEI_VALORTRIBUTOS.Value;
        DM.TBVendasItensVEI_VALORTRIBUTOSEST.Value   :=DM.TBServicosItensSEI_VALORTRIBUTOSEST.Value;
        DM.TBVendasItensVEI_VALORTRIBUTOSFED.Value   :=DM.TBServicosItensSEI_VALORTRIBUTOSFED.Value;
        DM.TBVendasItensVEI_VALORTRIBUTOSIMP.Value   :=DM.TBServicosItensSEI_VALORTRIBUTOSIMP.Value;
        DM.TBVendasItensVEI_VALORTRIBUTOSMUN.Value   :=DM.TBServicosItensSEI_VALORTRIBUTOSMUN.Value;
        DM.TBVendasItensVEI_VALORUNIT.Value          :=DM.TBServicosItensSEI_VALORUNIT.Value;
        //DM.TBVendasItensVEI_VENDA.Value:=

        DM.TBVendasItensNAT_CALCULACOMISSAO.Value    :=DM.TBServicosItensNAT_CALCULACOMISSAO.Value;
        DM.TBVendasItensNAT_CALCULACREDITOSN.Value   :=DM.TBServicosItensNAT_CALCULACREDITOSN.Value;

        DM.TBVendasItens.Post;
      end;
      DM.TBServicosItens.Next;
    end;
    //...
    DM.CalcularTotaisVenda(True);

    MessageDlg('Baixa OK. Um novo pedido de venda foi gerado. A tela de pedido de venda será aberta.',mtInformation,[mbOk],0);
    if PedidodeVendas1.Enabled then
    PedidodeVendas1.Click;
  end;
end;

procedure TFormServicos.TransferirParaOutroCliente1Click(Sender: TObject);
var Codigo: Integer;
begin
  AbortIf(DM.TBServicos.IsEmpty,'Nenhuma ordem de serviço selecionada.');
  AbortIf(DM.TBServicosSER_STATUS.Value='B','Esta ordem de serviço está baixada e não pode ser transferida.');

  Application.CreateForm(TFormClientesLoc, FormClientesLoc);
  FormClientesLoc.ShowModal;
  if ClientesLoc.Procurar then
  begin
    if MessageDlg('Tem certeza que deseja transferir essa Ordem de Serviço para '+FormClientesLoc.QYClientesCLI_NOME.Value+'?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
    begin
      Codigo:=DM.TBServicosSER_CODIGO.Value;

      DM.QYAux.Close;
      DM.QYAux.SQL.Clear;
      DM.QYAux.SQL.Add('update SERVICOS set SER_CLIENTE=:cliente where SER_CODIGO=:codigo');
      DM.QYAux.ParamByName('cliente').AsInteger:=FormClientesLoc.QYClientesCLI_CODIGO.Value;
      DM.QYAux.ParamByName('codigo').AsInteger:=DM.TBServicosSER_CODIGO.Value;
      DM.QYAux.ExecSQL;

      DM.QYAux.Close;
      DM.QYAux.SQL.Clear;
      DM.QYAux.SQL.Add('update EQUIPAMENTOS set EQP_CLIENTE=:cliente where EQP_CODIGO=:codigo');
      DM.QYAux.ParamByName('cliente').AsInteger:=FormClientesLoc.QYClientesCLI_CODIGO.Value;
      DM.QYAux.ParamByName('codigo').AsInteger:=DM.TBServicosSER_EQUIPAMENTO.Value;
      DM.QYAux.ExecSQL;

      DM.TBServicos.Close;
      DM.TBServicos.ParamByName('codigo').AsInteger:=Codigo;
      DM.TBServicos.Open;
    end;
  end;
  FormClientesLoc.Free;
  FormClientesLoc:=nil;
end;

procedure TFormServicos.LimparCampoLocalizacao1Click(Sender: TObject);
begin
  if not DM.TBServicos.IsEmpty then
  begin
    QYServicos.ParamByName('codigo').AsInteger:=DM.TBServicosSER_CODIGO.Value;
    QYServicos.ExecSQL;
    DM.TBServicos.Refresh;
    MessageDlg('Ordem de serviço reaberta.',mtInformation,[mbOk],0);
  end;
end;

procedure TFormServicos.ImprimirOrdemDeServico1ButtonClick(Sender: TObject);
begin
  if DM.TBParametrosPAR_SERVICOSPRINTPADRAO.Value='A5 RETRATO' then
  ImprimirOrdemdeServicoA5Retrato1.Click else
  if DM.TBParametrosPAR_SERVICOSPRINTPADRAO.Value='A5 PAISAGEM' then
  ImprimirOrdemdeServicoA5Paisagem1.Click else
  if DM.TBParametrosPAR_SERVICOSPRINTPADRAO.Value='A5 PAISAGEM 2 VIAS' then
  ImprimirOrdemdeServicoA5Paisagem2vias1.Click else
  if DM.TBParametrosPAR_SERVICOSPRINTPADRAO.Value='A4 RETRATO' then
  ImprimirOrdemdeServicoA41.Click else
  if DM.TBParametrosPAR_SERVICOSPRINTPADRAO.Value='MATRICIAL' then
  ImprimirOrdemdeServicoMatricial1.Click;
end;

procedure TFormServicos.Ajuda2Click(Sender: TObject);
begin
  MostrarAjuda('');
end;

procedure TFormServicos.OrdensDeServicoPorCliente1Click(Sender: TObject);
begin
  Application.CreateForm(TFormServicosRel, FormServicosRel);
  FormServicosRel.ComboBox2.Enabled:=False;
  FormServicosRel.ComboBox2.ItemIndex:=0;
  FormServicosRel.ComboBox2Change(Self);
  FormServicosRel.ShowModal;
  FormServicosRel.Free;
  FormServicosRel:=nil;
end;

procedure TFormServicos.OrdensDeServicoPorClienteComValorAnalitico1Click(
  Sender: TObject);
begin
  Application.CreateForm(TFormServicosRel, FormServicosRel);
  FormServicosRel.ComboBox2.Enabled:=False;
  FormServicosRel.ComboBox2.ItemIndex:=1;
  FormServicosRel.ComboBox2Change(Self);
  FormServicosRel.ShowModal;
  FormServicosRel.Free;
  FormServicosRel:=nil;
end;

procedure TFormServicos.OrdensDeServicoPorClienteComValorSintetico1Click(
  Sender: TObject);
begin
  Application.CreateForm(TFormServicosRel, FormServicosRel);
  FormServicosRel.ComboBox2.Enabled:=False;
  FormServicosRel.ComboBox2.ItemIndex:=2;
  FormServicosRel.ComboBox2Change(Self);
  FormServicosRel.ShowModal;
  FormServicosRel.Free;
  FormServicosRel:=nil;
end;

procedure TFormServicos.OrdensDeServicoPorTecnico1Click(Sender: TObject);
begin
  Application.CreateForm(TFormServicosRel, FormServicosRel);
  FormServicosRel.ComboBox2.Enabled:=False;
  FormServicosRel.ComboBox2.ItemIndex:=3;
  FormServicosRel.ComboBox2Change(Self);
  FormServicosRel.ShowModal;
  FormServicosRel.Free;
  FormServicosRel:=nil;
end;

procedure TFormServicos.OrdensDeServicoPorProduto1Click(Sender: TObject);
begin
  Application.CreateForm(TFormServicosRel, FormServicosRel);
  FormServicosRel.ComboBox2.Enabled:=False;
  FormServicosRel.ComboBox2.ItemIndex:=4;
  FormServicosRel.ComboBox2Change(Self);
  FormServicosRel.ShowModal;
  FormServicosRel.Free;
  FormServicosRel:=nil;
end;

procedure TFormServicos.OrdensDeServicoPorTecnicoComValor1Click(Sender: TObject);
begin
  Application.CreateForm(TFormServicosRel, FormServicosRel);
  FormServicosRel.ComboBox2.Enabled:=False;
  FormServicosRel.ComboBox2.ItemIndex:=5;
  FormServicosRel.ComboBox2Change(Self);
  FormServicosRel.ShowModal;
  FormServicosRel.Free;
  FormServicosRel:=nil;
end;

procedure TFormServicos.BitBtn1Click(Sender: TObject);
begin
  AbortIf(DM.TBServicos.IsEmpty,'Nenhuma ordem de serviço selecionada.');
  AbortIf(DM.TBServicosSER_STATUS.Value='B','Ordem de serviço já baixada.');

  DM.TBServicosItens.Insert;
  Application.CreateForm(TFormServicosItens, FormServicosItens);
  FormServicosItens.ShowModal;
  FormServicosItens.Free;
  FormServicosItens:=nil;
end;

procedure TFormServicos.BitBtn2Click(Sender: TObject);
begin
  AbortIf(DM.TBServicosItens.IsEmpty,'Não existe nenhum item para excluir.');
  AbortIf(DM.TBServicosSER_STATUS.Value='B','Ordem de serviço já baixada.');

  if MessageDlg('Eliminar o item selecionado?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    DM.TBServicosItens.Delete;
    DM.CalcularTotaisServicos(True); //era true.
  end;
end;

procedure TFormServicos.BitBtn4Click(Sender: TObject);
begin
  AbortIf(DM.TBServicosItens.IsEmpty,'Não existe nenhum item para editar.');
  AbortIf(DM.TBServicosSER_STATUS.Value='B','Ordem de serviço já baixada.');

  DM.TBProdutos.Close; //localiza para poder mostrar o grupo, familia e estoque atual.
  DM.TBProdutos.ParamByName('codigo').AsInteger:=DM.TBServicosItensSEI_PRODUTO.Value;
  DM.TBProdutos.Open;
  DM.TBServicosItens.Edit;
  Application.CreateForm(TFormServicosItens, FormServicosItens);
  FormServicosItens.DBEdit5.Enabled:=False;
  FormServicosItens.DBEdit5.Color:=clBtnFace;
  FormServicosItens.SpeedButton9.Enabled:=False;
  FormServicosItens.ShowModal;
  FormServicosItens.Free;
  FormServicosItens:=nil;
end;

procedure TFormServicos.BitBtn3Click(Sender: TObject);
begin
  AbortIf(DM.TBServicos.IsEmpty,'Nenhuma ordem de serviço selecionada.');
  AbortIf(DM.TBServicosSER_STATUS.Value='B','Ordem de serviço já baixada.');

  if MessageDlg('Deseja atualizar os preços conforme a tabela '+DM.TBServicosSER_TABELAPRECO.Value+'?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    if DM.TBServicos.State in [dsInsert, dsEdit] then
    DM.TBServicos.Post;
    DM.TBServicos.DisableControls;
    DM.TBServicosItens.DisableControls;
    DM.TBServicosItens.First;
    while not DM.TBServicosItens.Eof do
    begin
      DM.TBProdutos.Close;
      DM.TBProdutos.ParamByName('codigo').AsInteger:=DM.TBServicosItensSEI_PRODUTO.Value;
      DM.TBProdutos.Open;
      DM.TBServicosItens.Edit;
      if DM.TBServicosSER_TABELAPRECO.Value='V' then
      DM.TBServicosItensSEI_VALORUNIT.Value:=DM.TBProdutosPRO_PRECOVENDA.Value else
      if DM.TBServicosSER_TABELAPRECO.Value='1' then
      DM.TBServicosItensSEI_VALORUNIT.Value:=DM.TBProdutosPRO_PRECO1.Value else
      if DM.TBServicosSER_TABELAPRECO.Value='2' then
      DM.TBServicosItensSEI_VALORUNIT.Value:=DM.TBProdutosPRO_PRECO2.Value else
      if DM.TBServicosSER_TABELAPRECO.Value='3' then
      DM.TBServicosItensSEI_VALORUNIT.Value:=DM.TBProdutosPRO_PRECO3.Value else
      if DM.TBServicosSER_TABELAPRECO.Value='4' then
      DM.TBServicosItensSEI_VALORUNIT.Value:=DM.TBProdutosPRO_PRECO4.Value else
      if DM.TBServicosSER_TABELAPRECO.Value='5' then
      DM.TBServicosItensSEI_VALORUNIT.Value:=DM.TBProdutosPRO_PRECO5.Value else
      if DM.TBServicosSER_TABELAPRECO.Value='6' then
      DM.TBServicosItensSEI_VALORUNIT.Value:=DM.TBProdutosPRO_PRECO6.Value;
      DM.TBServicosItens.Post;
      DM.TBServicosItens.Next;
    end;
    DM.TBServicosItens.EnableControls;
    DM.TBServicos.EnableControls;
  end;
end;

procedure TFormServicos.PageControl1Change(Sender: TObject);
begin
  case PageControl1.ActivePageIndex of
    01: begin
          if DM.TBServicos.State in [dsInsert, dsEdit] then
          try
            DM.TBServicos.Post;
            except on Exception do
            begin
              PageControl1.ActivePageIndex:=0;
              Abort;
            end;
          end;
        end;
  end;
end;

procedure TFormServicos.InserirItem1Click(Sender: TObject);
begin
  PageControl1.ActivePageIndex:=1;
  PageControl1Change(Self); //gera o evento.
  BitBtn1.Click;
end;

procedure TFormServicos.EliminarItem1Click(Sender: TObject);
begin
  if DBGrid1.Focused then
  BitBtn2.Click;
end;

procedure TFormServicos.GerarEmailOrdemServico;
var MM: TMemo;
  ArquivoPDF: String;
begin
  DM.TBClientes.Close;
  DM.TBClientes.ParamByName('codigo').AsInteger:=DM.TBServicosSER_CLIENTE.Value;
  DM.TBClientes.Open;
  DM.TBVendedores.Close;
  DM.TBVendedores.ParamByName('codigo').AsInteger:=DM.UsuarioVendedor;
  DM.TBVendedores.Open;
  //localiza o assunto e a conta de email padrao para o envio.
  DM2.TBAssuntos.Close;
  DM2.TBAssuntos.ParamByName('codigo').AsInteger:=DM.TBParametrosPAR_SERVICOSEMAILASSUNTO.Value;
  DM2.TBAssuntos.Open;
  DM2.TBEmailsContas.Close;
  DM2.TBEmailsContas.ParamByName('codigo').AsInteger:=DM.TBVendedoresVEN_EMAILCONTA.Value;
  DM2.TBEmailsContas.Open;

  //substitui as palavras-chave no texto padrão.
  MM:=TMemo.CreateParented(Application.Handle);
  MM.WordWrap:=False; //funcionou?!
  MM.Lines.Add(DM2.TBAssuntosASS_TEXTO.Value);
  MM.Text:=StringReplace(MM.Text,'|SER_CODIGO|',IntToStr(DM.TBServicosSER_CODIGO.Value),[rfReplaceAll]);
  MM.Text:=StringReplace(MM.Text,'|EQP_DESCRICAO|',DM.TBServicosEQP_DESCRICAO.Value,[rfReplaceAll]);
  MM.Text:=StringReplace(MM.Text,'|EQP_MARCA|',DM.TBServicosEQP_MODELO.Value,[rfReplaceAll]);
  MM.Text:=StringReplace(MM.Text,'|EQP_MODELO|',DM.TBServicosEQP_MODELO.Value,[rfReplaceAll]);
  MM.Text:=StringReplace(MM.Text,'|EQP_SERIE|',DM.TBServicosEQP_SERIE.Value,[rfReplaceAll]);
  MM.Text:=StringReplace(MM.Text,'|CLI_NOME|',DM.TBServicosCLI_NOME.Value,[rfReplaceAll]);

  //Gera o PDF.
  ArquivoPDF:=ExtractFilePath(Application.ExeName)+'\Print\OrdemServico.pdf';
  if (DM.TBServicosSER_STATUS.Value='F') or (DM.TBServicosSER_STATUS.Value='B') then
  begin
    Application.CreateForm(TFormServicosFast, FormServicosFast);
    FormServicosFast.QY06.Close;
    FormServicosFast.QY06.ParamByName('codigo').AsInteger:=DM.TBServicosSER_CODIGO.Value;
    FormServicosFast.QY06.Open;
    FormServicosFast.QY06b.Open;
    FormServicosFast.QY06c.Open;
    FormServicosFast.frxReport6.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
    FormServicosFast.frxReport6.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
    FormServicosFast.frxReport6.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_ENDERECO.Value+', '+DM.TBEmpresaEMP_NUMERO.Value+' '+DM.TBEmpresaEMP_BAIRRO.Value+' '+DM.TBEmpresaEMP_CEP.Value);
    FormServicosFast.frxReport6.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value+' - '+DM.TBEmpresaEMP_FONE1.Value);
    FormServicosFast.frxReport6.Variables['HEADER4']:=QuotedStr(DM.TBEmpresaEMP_EMAIL.Value+' - '+DM.TBEmpresaEMP_HOMEPAGE.Value);
    FormServicosFast.frxReport6.Variables['RODAPE']:=QuotedStr(DM.TBParametrosPAR_SERVICOSRPF.Value);
    FormServicosFast.frxPDFExport1.FileName:=ArquivoPDF;
    FormServicosFast.frxPDFExport1.ShowDialog:=False;
    FormServicosFast.frxReport6.PrintOptions.ShowDialog:=False;
    FormServicosFast.frxReport6.PrepareReport;
    FormServicosFast.frxReport6.Export(FormServicosFast.frxPDFExport1);
    FormServicosFast.Free;
    FormServicosFast:=nil;
  end else
  if DM.TBServicosSER_STATUS.Value='A' then
  begin
    Application.CreateForm(TFormServicosFast, FormServicosFast);
    FormServicosFast.QY05.Close;
    FormServicosFast.QY05.ParamByName('codigo').AsInteger:=DM.TBServicosSER_CODIGO.Value;
    FormServicosFast.QY05.Open;
    FormServicosFast.frxReport5.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
    FormServicosFast.frxReport5.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
    FormServicosFast.frxReport5.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_ENDERECO.Value+', '+DM.TBEmpresaEMP_NUMERO.Value+' '+DM.TBEmpresaEMP_BAIRRO.Value+' '+DM.TBEmpresaEMP_CEP.Value);
    FormServicosFast.frxReport5.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value+' - '+DM.TBEmpresaEMP_FONE1.Value);
    FormServicosFast.frxReport5.Variables['HEADER4']:=QuotedStr(DM.TBEmpresaEMP_EMAIL.Value+' - '+DM.TBEmpresaEMP_HOMEPAGE.Value);
    FormServicosFast.frxReport5.Variables['RODAPE']:=QuotedStr(DM.TBParametrosPAR_SERVICOSRPA.Value);
    FormServicosFast.frxPDFExport1.FileName:=ArquivoPDF;
    FormServicosFast.frxPDFExport1.ShowDialog:=False;
    FormServicosFast.frxReport6.PrintOptions.ShowDialog:=False;
    FormServicosFast.frxReport6.PrepareReport;
    FormServicosFast.frxReport6.Export(FormServicosFast.frxPDFExport1);
    FormServicosFast.Free;
    FormServicosFast:=nil;
  end;
  DM2.TBEmails.Insert;
  DM2.TBEmailsEMA_ANEXO.Value:=ExtractFilePath(Application.ExeName)+'Print\OrdemServico.pdf';
  DM2.TBEmailsEMA_ASSINATURA.Value:=DM2.TBEmailsEMC_ASSINATURA.Value;
  DM2.TBEmailsEMA_ASSUNTO.Value:=DM2.TBAssuntosASS_CODIGO.Value;
  DM2.TBEmailsEMA_CLIENTE.Value:=DM.TBClientesCLI_CODIGO.Value;
  DM2.TBEmailsEMA_COPIAOCULTA.Value:=DM.TBParametrosPAR_COMPRASEMAILBCC.Value;
  DM2.TBEmailsEMA_DESTINATARIOS.Value:=DM.TBClientesCLI_EMAIL.Value;
  if DM.TBClientesCLI_EMAIL2.Value<>'' then
  DM2.TBEmailsEMA_DESTINATARIOS.Value:=DM2.TBEmailsEMA_DESTINATARIOS.Value+','+DM.TBClientesCLI_EMAIL2.Value;
  DM2.TBEmailsEMA_EMAILCONTA.Value:=DM2.TBEmailsContasEMC_CODIGO.Value;
  DM2.TBEmailsEMA_HTML.Value:='S';
  DM2.TBEmailsEMA_MENSAGEM.Value:=MM.Lines.Text; //memo com texto substituido.
  DM2.TBEmailsEMA_MENSAGEM.Value:=DM2.TBEmailsEMA_MENSAGEM.Value+DM2.TBEmailsContasEMC_ASSINATURA.Value;

  //campos derivados.
  DM2.TBEmailsASS_DESCRICAO.Value:=DM2.TBAssuntosASS_DESCRICAO.Value;
  DM2.TBEmailsCLI_NOME.Value:=DM.TBClientesCLI_NOME.Value;
  DM2.TBEmailsEMC_CONFIRMACAO.Value:=DM2.TBEmailsContasEMC_CONFIRMACAO.Value;
  DM2.TBEmailsEMC_EMAIL.Value:=DM2.TBEmailsContasEMC_EMAIL.Value;
  DM2.TBEmailsEMC_LOGIN.Value:=DM2.TBEmailsContasEMC_LOGIN.Value;
  DM2.TBEmailsEMC_NOME.Value:=DM2.TBEmailsContasEMC_NOME.Value;
  DM2.TBEmailsEMC_POP.Value:=DM2.TBEmailsContasEMC_POP.Value;
  DM2.TBEmailsEMC_POPPORTA.Value:=DM2.TBEmailsContasEMC_POPPORTA.Value;
  DM2.TBEmailsEMC_REPLYTO.Value:=DM2.TBEmailsContasEMC_REPLYTO.Value;
  DM2.TBEmailsEMC_SENHA.Value:=DM2.TBEmailsContasEMC_SENHA.Value;
  DM2.TBEmailsEMC_SMTP.Value:=DM2.TBEmailsContasEMC_SMTP.Value;
  DM2.TBEmailsEMC_SMTPPORTA.Value:=DM2.TBEmailsContasEMC_SMTPPORTA.Value;
  DM2.TBEmailsEMC_SSL.Value:=DM2.TBEmailsContasEMC_SSL.Value;
  DM2.TBEmailsEMC_TLS.Value:=DM2.TBEmailsContasEMC_TLS.Value;
  DM2.TBEmailsVEN_NOME.Value:=DM.TBNfeVEN_NOME.Value;
end;

procedure TFormServicos.EnviarOrdemDeServicoPorEmail1Click(Sender: TObject);
begin
  AbortIf(DM.TBServicos.IsEmpty,'Nenhuma ordem de serviço selecionada.');
  AbortIf(DM.TBServicosCLI_EMAIL.IsNull,'Endereço de email do cliente inexistente.');

  GerarEmailOrdemServico;
  Application.CreateForm(TFormEmailsEnviar, FormEmailsEnviar);
  FormEmailsEnviar.ShowModal;
  FormEmailsEnviar.Free;
  FormEmailsEnviar:=nil;
end;

procedure TFormServicos.AtualizarItens1Click(Sender: TObject);
begin
  PageControl1.ActivePageIndex:=1;
  PageControl1Change(Self); //gera o evento.
  BitBtn3.Click;
end;

procedure TFormServicos.DBEdit13Exit(Sender: TObject);
begin
  if (DM.TBServicos.State in [dsInsert, dsEdit]) and (DM.TBServicosSER_DESCPORC.Value>0) then
  DM.TBServicosSER_DESCVALOR.Value:=0;
end;

procedure TFormServicos.DBEdit25Exit(Sender: TObject);
begin
  if (DM.TBServicos.State in [dsInsert, dsEdit]) and (DM.TBServicosSER_DESCVALOR.Value>0) then
  DM.TBServicosSER_DESCPORC.Value:=0;
end;

procedure TFormServicos.DBEdit27Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TDBEdit).Text;
end;

procedure TFormServicos.DBEdit27Exit(Sender: TObject);
begin
  DM.TBClientes.Close;
  DM.TBClientes.ParamByName('codigo').AsInteger:=DM.TBServicosSER_CLIENTE.Value;
  DM.TBClientes.Open;

  if (not DM.TBServicosSER_EQUIPAMENTO.IsNull) and (DM.TBServicosSER_EQUIPAMENTO.Value=0) then
  begin
    //DM.TBEquipamentos.Insert;
    Application.CreateForm(TFormEquipamentos, FormEquipamentos);
    FormEquipamentos.InserirNovo:=True;
    FormEquipamentos.ShowModal;
    FormEquipamentos.Free;
    FormEquipamentos:=nil;

    DM.TBServicosSER_EQUIPAMENTO.Value:=DM.TBEquipamentosEQP_CODIGO.Value;
    DM.TBServicosEQP_DESCRICAO.Value:=DM.TBEquipamentosEQP_DESCRICAO.Value;
    DM.TBServicosEQP_LOCALIZACAO.Value:=DM.TBEquipamentosEQP_LOCALIZACAO.Value;
    DM.TBServicosEQP_MARCA.Value:=DM.TBEquipamentosEQP_MARCA.Value;
    DM.TBServicosEQP_MODELO.Value:=DM.TBEquipamentosEQP_MODELO.Value;
    DM.TBServicosEQP_SERIE.Value:=DM.TBEquipamentosEQP_SERIE.Value;
    DM.TBServicosEQP_TAMANHO.Value:=DM.TBEquipamentosEQP_TAMANHO.Value;
    DM.TBServicosEQP_REVENDEDOR.Value:=DM.TBEquipamentosEQP_REVENDEDOR.Value;
  end else
  LocEquipamentosExit(DBEdit27,DBEdit28,DBEdit2,DBEdit3,DBEdit4,DBEdit5,DBEdit12,DBEdit7,DBEdit6,DBEdit21,DBEdit22,DBEdit24,DBEdit29,DBEdit30,DM.TBServicos);
end;

procedure TFormServicos.DBEdit27KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  PngSpeedButton1.Click;
end;

procedure TFormServicos.DBEdit27KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then
  begin
    DM.CodigosOld:='';
    DM.TBServicos.Edit;
    DM.TBServicosSER_EQUIPAMENTO.Clear;
  end;
end;

procedure TFormServicos.FormCreate(Sender: TObject);
begin
  PageControl1.ActivePageIndex:=0;
end;

procedure TFormServicos.PedidoDeVendas1Click(Sender: TObject);
begin
  Application.CreateForm(TFormVendas, FormVendas);
  FormVendas.ShowModal;
  FormVendas.Free;
  FormVendas:=nil;
end;

procedure TFormServicos.PngSpeedButton1Click(Sender: TObject);
begin
  AbortIf(DM.TBServicosSER_STATUS.Value='F','Não é possível alterar uma ordem de serviço finalizada.');

  DM.TBClientes.Close;
  DM.TBClientes.ParamByName('codigo').AsInteger:=DM.TBServicosSER_CLIENTE.Value;
  DM.TBClientes.Open;
  LocEquipamentosBotao(DBEdit27,DBEdit28,DBEdit2,DBEdit3,DBEdit4,DBEdit5,DBEdit12,DBEdit7,DBEdit6,DBEdit21,DBEdit22,DBEdit24,DBEdit29,DBEdit30,DM.TBServicos);
end;

procedure TFormServicos.PngSpeedButton2Click(Sender: TObject);
begin
  AbortIf(DM.TBServicos.IsEmpty,'Nenhuma ordem de serviço selecionada.');
  AbortIf(DM.TBServicosSER_STATUS.Value='B','Esta ordem de serviço já está baixada.');

  Application.CreateForm(TFormConsultarPlaca, FormConsultarPlaca);
  //if DM.TBServicosEQP_SERIE.Value<>'' then
  FormConsultarPlaca.AtualizarOS:=True; // else
  //FormConsultarPlaca.AtualizarOS:=False;
  FormConsultarPlaca.Cliente:=DM.TBServicosSER_CLIENTE.Value;
  FormConsultarPlaca.MaskEdit1.Text:=DM.TBServicosEQP_SERIE.Value;
  FormConsultarPlaca.ShowModal;
  FormConsultarPlaca.Free;
  FormConsultarPlaca:=nil;
end;

procedure TFormServicos.CadastroDeHoras1Click(Sender: TObject);
begin
  AbortIf(DM.TBServicos.IsEmpty,'Nenhuma ordem de serviço selecionada.');

  Application.CreateForm(TFormServicosHoras, FormServicosHoras);
  FormServicosHoras.ShowModal;
  FormServicosHoras.Free;
  FormServicosHoras:=nil;
end;

procedure TFormServicos.ImprimirOrdemDeServicoA41Click(Sender: TObject);
begin
  AbortIf(DM.TBServicos.IsEmpty,'Nenhuma ordem de serviço selecionada.');

  if (DM.TBServicosSER_STATUS.Value='F') or (DM.TBServicosSER_STATUS.Value='B') then
  begin
    Application.CreateForm(TFormServicosFast, FormServicosFast);
    FormServicosFast.QY06.Close;
    FormServicosFast.QY06.ParamByName('codigo').AsInteger:=DM.TBServicosSER_CODIGO.Value;
    FormServicosFast.QY06.Open;
    FormServicosFast.QY06b.Open;
    FormServicosFast.QY06c.Open;
    FormServicosFast.frxReport6.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
    FormServicosFast.frxReport6.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
    FormServicosFast.frxReport6.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_ENDERECO.Value+', '+DM.TBEmpresaEMP_NUMERO.Value+' '+DM.TBEmpresaEMP_BAIRRO.Value+' '+DM.TBEmpresaEMP_CEP.Value);
    FormServicosFast.frxReport6.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value+' - '+DM.TBEmpresaEMP_FONE1.Value);
    FormServicosFast.frxReport6.Variables['HEADER4']:=QuotedStr(DM.TBEmpresaEMP_EMAIL.Value+' - '+DM.TBEmpresaEMP_HOMEPAGE.Value);
    FormServicosFast.frxReport6.Variables['RODAPE']:=QuotedStr(DM.TBParametrosPAR_SERVICOSRPF.Value);
    FormServicosFast.frxReport6.ShowReport;
    FormServicosFast.Free;
    FormServicosFast:=nil;
  end else
  if DM.TBServicosSER_STATUS.Value='A' then
  begin
    Application.CreateForm(TFormServicosFast, FormServicosFast);
    FormServicosFast.QY05.Close;
    FormServicosFast.QY05.ParamByName('codigo').AsInteger:=DM.TBServicosSER_CODIGO.Value;
    FormServicosFast.QY05.Open;
    FormServicosFast.frxReport5.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
    FormServicosFast.frxReport5.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
    FormServicosFast.frxReport5.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_ENDERECO.Value+', '+DM.TBEmpresaEMP_NUMERO.Value+' '+DM.TBEmpresaEMP_BAIRRO.Value+' '+DM.TBEmpresaEMP_CEP.Value);
    FormServicosFast.frxReport5.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value+' - '+DM.TBEmpresaEMP_FONE1.Value);
    FormServicosFast.frxReport5.Variables['HEADER4']:=QuotedStr(DM.TBEmpresaEMP_EMAIL.Value+' - '+DM.TBEmpresaEMP_HOMEPAGE.Value);
    FormServicosFast.frxReport5.Variables['RODAPE']:=QuotedStr(DM.TBParametrosPAR_SERVICOSRPA.Value);
    FormServicosFast.frxReport5.ShowReport;
    FormServicosFast.Free;
    FormServicosFast:=nil;
  end;
end;

procedure TFormServicos.ImprimirOrdemDeServicoA5Paisagem1Click(
  Sender: TObject);
begin
  AbortIf(DM.TBServicos.IsEmpty,'Nenhuma ordem de serviço selecionada.');

  Application.CreateForm(TFormServicosFast, FormServicosFast);
  FormServicosFast.QY03.Close;
  FormServicosFast.QY03.ParamByName('codigo').AsInteger:=DM.TBServicosSER_CODIGO.Value;
  FormServicosFast.QY03.Open;
  FormServicosFast.frxReport3.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
  FormServicosFast.frxReport3.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
  FormServicosFast.frxReport3.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_ENDERECO.Value+', '+DM.TBEmpresaEMP_NUMERO.Value+' '+DM.TBEmpresaEMP_BAIRRO.Value+' '+DM.TBEmpresaEMP_CEP.Value);
  FormServicosFast.frxReport3.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value+' - '+DM.TBEmpresaEMP_FONE1.Value);
  FormServicosFast.frxReport3.Variables['HEADER4']:=QuotedStr(DM.TBEmpresaEMP_EMAIL.Value+' - '+DM.TBEmpresaEMP_HOMEPAGE.Value);
  if DM.TBServicosSER_STATUS.Value='A' then
  FormServicosFast.frxReport3.Variables['RODAPE']:=QuotedStr(DM.TBParametrosPAR_SERVICOSRPA.Value) else
  FormServicosFast.frxReport3.Variables['RODAPE']:=QuotedStr(DM.TBParametrosPAR_SERVICOSRPF.Value);
  FormServicosFast.frxReport3.ShowReport;
  FormServicosFast.Free;
  FormServicosFast:=nil;
end;

procedure TFormServicos.BitBtn5Click(Sender: TObject);
begin
  AbortIf(DM.TBServicosItens.IsEmpty,'Não existe nenhum item para excluir.');
  AbortIf(DM.TBServicosSER_STATUS.Value='B','Ordem de serviço já baixada.');

  if MessageDlg('Eliminar o item selecionado?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    Screen.Cursor:=crHourGlass;
    DM.TBServicosItens.First;
    while not DM.TBServicosItens.Eof do
    begin
      DM.TBServicosItens.Delete;
    end;
    DM.CalcularTotaisServicos(True); //era true.
    Screen.Cursor:=crDefault;
  end;
end;

initialization
  RegisterClass(TFormServicos);

finalization
  UnRegisterClass(TFormServicos);

end.

