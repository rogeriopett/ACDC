unit TeleVendas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, DBCtrls, Mask, Menus, Buttons, DBSBtn,
  ExtCtrls, ComCtrls, DB, System.UITypes, ImgList, PngImageList, PngSpeedButton,
  System.ImageList, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client, FireDAC.Comp.DataSet;

type
  TFormTeleVendas = class(TForm)
    Panel2: TPanel;
    Bevel4: TBevel;
    PrimeiroRegistro1Button: TDBSpeedButton;
    RegistroAnterior1Button: TDBSpeedButton;
    ProximoRegistro1Button: TDBSpeedButton;
    UltimoRegistro1Button: TDBSpeedButton;
    InserirRegistro1Button: TDBSpeedButton;
    EliminarRegistro1Button: TDBSpeedButton;
    SalvarRegistro1Button: TDBSpeedButton;
    CancelarRegistro1Button: TDBSpeedButton;
    Fechar1Button: TPngSpeedButton;
    Bevel7: TBevel;
    Bevel1: TBevel;
    Relatorios2Button: TPngSpeedButton;
    Localizar1Button: TPngSpeedButton;
    MainMenu1: TMainMenu;
    Arquivo1: TMenuItem;
    Localizar1: TMenuItem;
    Relatorios2: TMenuItem;
    N1: TMenuItem;
    Fechar1: TMenuItem;
    Navegacao1: TMenuItem;
    PrimeiroRegistro1: TMenuItem;
    RegistroAnterior1: TMenuItem;
    ProximoRegistro1: TMenuItem;
    UltimoRegistro1: TMenuItem;
    N4: TMenuItem;
    InserirRegistro1: TMenuItem;
    EliminarRegistro1: TMenuItem;
    N5: TMenuItem;
    SalvarRegistro1: TMenuItem;
    CancelarRegistro1: TMenuItem;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    DBText4: TDBText;
    DBText5: TDBText;
    DBText6: TDBText;
    DBText7: TDBText;
    DBText8: TDBText;
    HistoricosDoCliente1Button: TPngSpeedButton;
    HistoricosDoCliente1: TMenuItem;
    Agenda1Button: TPngSpeedButton;
    Agenda1: TMenuItem;
    Label16: TLabel;
    DBText10: TDBText;
    DSLigacoesDia: TDataSource;
    DBText11: TDBText;
    Label17: TLabel;
    DSReceber: TDataSource;
    DBText12: TDBText;
    DBText13: TDBText;
    CadastroDeClientes1: TMenuItem;
    CadastroDeClientes1Button: TPngSpeedButton;
    N2: TMenuItem;
    CadastroDeProdutos1: TMenuItem;
    CadastroDeProdutos1Button: TPngSpeedButton;
    BaixarAtendimento1Button: TPngSpeedButton;
    ReabrirAtendimento1Button: TPngSpeedButton;
    N6: TMenuItem;
    BaixarAtendimento1: TMenuItem;
    ReabrirAtendimento1: TMenuItem;
    CadastroDeVendedores1: TMenuItem;
    CadastroDeVendedores1Button: TPngSpeedButton;
    Bevel2: TBevel;
    Bevel3: TBevel;
    Ajuda1: TMenuItem;
    Ajuda2: TMenuItem;
    Ajuda2Button: TPngSpeedButton;
    Relatorios1: TMenuItem;
    N3: TMenuItem;
    ClientesSemAgendamento1: TMenuItem;
    ClientesNuncaAgendados1: TMenuItem;
    AtendimentosPorVendedor1: TMenuItem;
    AtendimentosPorVendedorETemperatura1: TMenuItem;
    Estatisticas1: TMenuItem;
    EditarRegistro1Button: TDBSpeedButton;
    EditarRegistro1: TMenuItem;
    TransferirAtendimentoParaOutroTelevenda1Button: TPngSpeedButton;
    TransferirAtendimentoParaOutroTelevenda1: TMenuItem;
    N7: TMenuItem;
    PedidoDeVendas1: TMenuItem;
    PedidoDeVendas1Button: TPngSpeedButton;
    PngImageList1: TPngImageList;
    Label19: TLabel;
    DBText9: TDBText;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    DBText15: TDBText;
    DBText14: TDBText;
    Label18: TLabel;
    DBText16: TDBText;
    Label12: TLabel;
    SpeedButton7: TPngSpeedButton;
    Label11: TLabel;
    Label13: TLabel;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    Label20: TLabel;
    Panel1: TPanel;
    DBMemo1: TDBMemo;
    DBGrid1: TDBGrid;
    Splitter1: TSplitter;
    Atendimentos1Button: TPngSpeedButton;
    Atendimentos1: TMenuItem;
    StatusBar1: TStatusBar;
    Label21: TLabel;
    DBEdit6: TDBEdit;
    Label22: TLabel;
    PngSpeedButton1: TPngSpeedButton;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    Label38: TLabel;
    DBComboBox3: TDBComboBox;
    CadastroDeViasDeContato1: TMenuItem;
    PngSpeedButton2: TPngSpeedButton;
    AtendimentosPorViaDeContato1: TMenuItem;
    PopupMenu1: TPopupMenu;
    FixarAtendimento1: TMenuItem;
    Panel3: TPanel;
    Panel4: TPanel;
    DBText17: TDBText;
    DBText18: TDBText;
    DBText19: TDBText;
    DBText20: TDBText;
    DBText21: TDBText;
    PngSpeedButton3: TPngSpeedButton;
    Label23: TLabel;
    PngSpeedButton4: TPngSpeedButton;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    DBText22: TDBText;
    DSFixa: TDataSource;
    Label24: TLabel;
    DBEdit14: TDBEdit;
    RestaurarVisualizaoOriginal1: TMenuItem;
    Dashboard1Button: TPngSpeedButton;
    Dashboard1: TMenuItem;
    QYFixa: TFDQuery;
    TRFixa: TFDTransaction;
    QYLigacoesDia: TFDQuery;
    TRLigacoesDia: TFDTransaction;
    QYLigacoesDiaTOTALLIGACOES: TLargeintField;
    TRReceber: TFDTransaction;
    QYReceber: TFDQuery;
    QYReceberVALOR: TFMTBCDField;
    QYReagendar: TFDQuery;
    TRReagendar: TFDTransaction;
    QYFixaTEV_CODIGO: TIntegerField;
    QYFixaTEV_CLIENTE: TIntegerField;
    QYFixaTEV_DATA: TDateField;
    QYFixaTEV_DATAPROX: TDateField;
    QYFixaTEV_DESCRICAO: TStringField;
    QYFixaTEV_STATUS: TStringField;
    QYFixaMOT_DESCRICAO: TStringField;
    QYFixaVEN_NOME: TStringField;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Fechar1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Localizar1Click(Sender: TObject);
    procedure Relatorios2Click(Sender: TObject);
    procedure HistoricosDoCliente1Click(Sender: TObject);
    procedure Agenda1Click(Sender: TObject);
    procedure DBEdit1Exit(Sender: TObject);
    procedure DBEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton7Click(Sender: TObject);
    procedure DBEdit7KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit8KeyPress(Sender: TObject; var Key: Char);
    procedure CadastroDeClientes1Click(Sender: TObject);
    procedure CadastroDeProdutos1Click(Sender: TObject);
    procedure DBText6Click(Sender: TObject);
    procedure BaixarAtendimento1Click(Sender: TObject);
    procedure ReabrirAtendimento1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure CadastroDeVendedores1Click(Sender: TObject);
    procedure Ajuda2Click(Sender: TObject);
    procedure ClientesSemAgendamento1Click(
      Sender: TObject);
    procedure ClientesNuncaAgendados1Click(Sender: TObject);
    procedure AtendimentosPorVendedor1Click(Sender: TObject);
    procedure AtendimentosPorVendedorETemperatura1Click(
      Sender: TObject);
    procedure Estatisticas1Click(Sender: TObject);
    procedure TransferirAtendimentoParaOutroTelevenda1Click(
      Sender: TObject);
    procedure PedidoDeVendas1Click(Sender: TObject);
    procedure DBEdit3KeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure Atendimentos1Click(Sender: TObject);
    procedure DBEdit1Enter(Sender: TObject);
    procedure DBEdit5KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit4KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure CadastroDeViasDeContato1Click(Sender: TObject);
    procedure DBEdit10Enter(Sender: TObject);
    procedure DBEdit10Exit(Sender: TObject);
    procedure DBEdit10KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBEdit10KeyPress(Sender: TObject; var Key: Char);
    procedure PngSpeedButton1Click(Sender: TObject);
    procedure AtendimentosPorViaDeContato1Click(Sender: TObject);
    procedure FixarAtendimento1Click(Sender: TObject);
    procedure PngSpeedButton3Click(Sender: TObject);
    procedure DBEdit12Exit(Sender: TObject);
    procedure DBEdit12Enter(Sender: TObject);
    procedure DBEdit12KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBEdit12KeyPress(Sender: TObject; var Key: Char);
    procedure PngSpeedButton4Click(Sender: TObject);
    procedure DSFixaDataChange(Sender: TObject; Field: TField);
    procedure DBText19DblClick(Sender: TObject);
    procedure RestaurarVisualizaoOriginal1Click(Sender: TObject);
    procedure Dashboard1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTeleVendas: TFormTeleVendas;
  SalvarColunas: Boolean = True;

const
  NomeArquivoFormTxt='FormTeleVendas.txt';

implementation
uses DataMod, ClientesLoc, TeleVendasAgenda, TeleVendasRel,
  ClientesHistoricos, Clientes, Produtos, ShellAPI, Vendedores, Funcoes1,
  Vendas, DataMod2, Main, Atendimentos, DataModSearch, Vias, ViasLoc, FuncoesFirenet, VendedoresLoc, Dashboard;
{$R *.dfm}

procedure TFormTeleVendas.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormTeleVendas.Fechar1Click(Sender: TObject);
begin
  Close;
end;

procedure TFormTeleVendas.FixarAtendimento1Click(Sender: TObject);
begin
  if DM2.TBTeleVendas.IsEmpty then
  Exit;

  //desmarca todas os atendimentos do cliente atual e vendedor logado.
  DM.QYAux.Close;
  DM.QYAux.SQL.Clear;
  DM.QYAux.SQL.Add('update TELEVENDAS set TEV_FIXA=''N'' where TEV_FIXA=''S'' and TEV_CLIENTE=:cliente');
  DM.QYAux.ParamByName('cliente').AsInteger:=DM2.TBTeleVendasTEV_CLIENTE.Value;
  //DM.QYAux.ParamByName('vendedor').AsInteger:=DM.UsuarioVendedor;
  DM.QYAux.ExecSQL;

  //marca o atendimento selecionado como fixo.
  DM.QYAux.Close;
  DM.QYAux.SQL.Clear;
  DM.QYAux.SQL.Add('update TELEVENDAS set TEV_FIXA=''S'' where TEV_CODIGO=:codigo');
  DM.QYAux.ParamByName('codigo').AsInteger:=DM2.TBTeleVendasTEV_CODIGO.Value;
  DM.QYAux.ExecSQL;

  QYFixa.Close;
  QYFixa.ParamByName('cliente').AsInteger:=DM2.TBTeleVendasTEV_CLIENTE.Value;
  QYFixa.Open;
  //o evento onDataChange do DSFixa faz a checagem para tornar visivel o panel4.
  //Panel4.Visible:=True;
end;

procedure TFormTeleVendas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if DM2.TBTeleVendas.State in [dsInsert, dsEdit] then
  begin
    MessageDlg('Salve os dados antes de fechar.',mtWarning,[mbOk],0);
    Action:=caNone;
  end;

  if SalvarColunas then
  DBGrid1.Columns.SaveToFile(GetTempDir+NomeArquivoFormTxt);
end;

procedure TFormTeleVendas.Localizar1Click(Sender: TObject);
begin
  Application.CreateForm(TFormClientesLoc, FormClientesLoc);
  FormClientesLoc.ShowModal;
  if ClientesLoc.Procurar then
  begin
    DM.TBClientes.Close;
    DM.TBClientes.ParamByName('codigo').AsInteger:=FormClientesLoc.QYClientesCLI_CODIGO.Value;
    DM.TBClientes.Open;
  end;
  FormClientesLoc.Free;
  FormClientesLoc:=nil;
end;

procedure TFormTeleVendas.Relatorios2Click(Sender: TObject);
begin
  Application.CreateForm(TFormTeleVendasRel, FormTeleVendasRel);
  FormTeleVendasRel.ShowModal;
  FormTeleVendasRel.Free;
  FormTeleVendasRel:=nil;
end;

procedure TFormTeleVendas.RestaurarVisualizaoOriginal1Click(Sender: TObject);
begin
  if FileExists(GetTempDir+NomeArquivoFormTxt) then
  DeleteFile(GetTempDir+NomeArquivoFormTxt);
  SalvarColunas:=False;
  MessageDlg('A visualização original das colunas foi restaurada.',mtInformation,[mbOk],0);
  Close;
end;

procedure TFormTeleVendas.HistoricosDoCliente1Click(Sender: TObject);
begin
  AbortIf(DM.TBClientes.IsEmpty,'Nenhum Cliente selecionado.');

  Application.CreateForm(TFormClientesHistoricos, FormClientesHistoricos);
  FormClientesHistoricos.ShowModal;
  FormClientesHistoricos.Free;
  FormClientesHistoricos:=nil;
end;

procedure TFormTeleVendas.Agenda1Click(Sender: TObject);
begin
  Application.CreateForm(TFormTeleVendasAgenda, FormTeleVendasAgenda);
  FormTeleVendasAgenda.ShowModal;
  FormTeleVendasAgenda.Free;
  FormTeleVendasAgenda:=nil;
end;

procedure TFormTeleVendas.Dashboard1Click(Sender: TObject);
begin
  Application.CreateForm(TFormDashBoard, FormDashBoard);
  FormDashBoard.ShowModal;
  FormDashBoard.Free;
  FormDashBoard:=nil;
end;

procedure TFormTeleVendas.DBEdit10Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TDBEdit).Text;
end;

procedure TFormTeleVendas.DBEdit10Exit(Sender: TObject);
begin
  LocViasExit(DBEdit10,DBEdit11,DM2.TBTeleVendas);
end;

procedure TFormTeleVendas.DBEdit10KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  PngSpeedButton1.Click;
end;

procedure TFormTeleVendas.DBEdit10KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormTeleVendas.DBEdit12Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TDBEdit).Text;
end;

procedure TFormTeleVendas.DBEdit12Exit(Sender: TObject);
begin
  LocMotivosExit(DBEdit12,DBEdit13,DM2.TBTeleVendas);
end;

procedure TFormTeleVendas.DBEdit12KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  PngSpeedButton4.Click;
end;

procedure TFormTeleVendas.DBEdit12KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormTeleVendas.DBEdit1Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TDBEdit).Text;
end;

procedure TFormTeleVendas.DBEdit1Exit(Sender: TObject);
begin
  LocVendedoresExit(DBEdit1,DBEdit2,nil,DM2.TBTeleVendas);
end;

procedure TFormTeleVendas.DBEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton7.Click;
end;

procedure TFormTeleVendas.DBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormTeleVendas.SpeedButton7Click(Sender: TObject);
begin
  LocVendedoresBotao(DBEdit1,DBEdit2,nil,DM2.TBTeleVendas);
end;

procedure TFormTeleVendas.DBEdit7KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then
  DM2.TBTeleVendasTEV_DATA.Clear;
end;

procedure TFormTeleVendas.DBEdit8KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then
  DM2.TBTeleVendasTEV_DATAPROX.Clear;
end;

procedure TFormTeleVendas.CadastroDeClientes1Click(Sender: TObject);
begin
  Application.CreateForm(TFormClientes, FormClientes);
  FormClientes.ShowModal;
  FormClientes.Free;
  FormClientes:=nil;
end;

procedure TFormTeleVendas.CadastroDeProdutos1Click(Sender: TObject);
begin
  Application.CreateForm(TFormProdutos, FormProdutos);
  FormProdutos.ShowModal;
  FormProdutos.Free;
  FormProdutos:=nil;
end;

procedure TFormTeleVendas.DBText19DblClick(Sender: TObject);
begin
  DM2.TBTeleVendas.Locate('TEV_CODIGO',QYFixaTEV_CODIGO.Value,[]);
end;

procedure TFormTeleVendas.DBText6Click(Sender: TObject);
begin
  if DM.TBClientesCLI_EMAIL.Value<>'' then
  ShellExecute(GetDesktopWindow,'open',PChar('mailto:'+DM.TBClientesCLI_EMAIL.Value+'?Subject='+DM.TBEmpresaEMP_NOMEFANTASIA.Value),nil,nil,sw_ShowNormal) else
  ShowMessage('Endereço de email não cadastrado!');
end;

procedure TFormTeleVendas.DSFixaDataChange(Sender: TObject; Field: TField);
begin
  Panel4.Visible:=not QYFixa.IsEmpty; //fica visível caso tenha algum registro.
end;

procedure TFormTeleVendas.Atendimentos1Click(Sender: TObject);
begin
  Application.CreateForm(TFormAtendimentos, FormAtendimentos);
  FormAtendimentos.ShowModal;
  FormAtendimentos.Free;
  FormAtendimentos:=nil;
end;

procedure TFormTeleVendas.BaixarAtendimento1Click(Sender: TObject);
begin
  AbortIf(DM2.TBTeleVendas.IsEmpty,'Nenhum atendimento selecionado.');
  AbortIf(DM2.TBTeleVendasTEV_STATUS.Value='B','Este atendimento já está baixado.');
  AbortIf(DM2.TBTeleVendasTEV_VENDEDOR.Value<>DM.UsuarioVendedor,'Não é possível baixar o atendimento de outro vendedor.');

  if MessageDlg('Baixar atendimento?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    DM2.TBTeleVendas.Edit;
    DM2.TBTeleVendasTEV_STATUS.Value:='B';
    DM2.TBTeleVendasTEV_BAIXADOPOR.Value:=DM.UsuarioLogin;
    DM2.TBTeleVendasTEV_DATABAIXA.Value:=DM.ServerDate;
    DM2.TBTeleVendasTEV_REAGENDADO.Value:='N';
    DM2.TBTeleVendas.Post;
  end;
end;

procedure TFormTeleVendas.ReabrirAtendimento1Click(Sender: TObject);
begin
  AbortIf(DM2.TBTeleVendas.IsEmpty,'Nenhum atendimento selecionado.');
  AbortIf(DM2.TBTeleVendasTEV_STATUS.Value='A','Este atendimento já está aberto.');

  if MessageDlg('Reabir atendimento?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    DM.CodigoMark:=DM2.TBTeleVendasTEV_CODIGO.Value;

    DM.QYAux.Close;
    DM.QYAux.SQL.Clear;
    DM.QYAux.SQL.Add('update TELEVENDAS set TEV_STATUS=''A'' where TEV_CODIGO=:codigo');
    DM.QYAux.ParamByName('codigo').AsInteger:=DM2.TBTeleVendasTEV_CODIGO.Value;
    DM.QYAux.ExecSQL;

    DM2.TBTeleVendas.Close;
    DM2.TBTeleVendas.Open;
    DM2.TBTeleVendas.Locate('TEV_CODIGO',DM.CodigoMark,[]);

    //DM2.TBTeleVendasTEV_STATUS.Value:='A';
    //DM2.TBTeleVendasTEV_BAIXADOPOR.Clear;
    //DM2.TBTeleVendasTEV_DATABAIXA.Clear;
    //DM2.TBTeleVendas.Post;
  end;
end;

procedure TFormTeleVendas.FormCreate(Sender: TObject);
begin
  if not DM.AtualizarUsuariosAcessos then //evita aparecer a mensagem quando está atualizando o sistema.
  begin

    SalvarColunas:=True;
    if FileExists(GetTempDir+NomeArquivoFormTxt) then
    DBGrid1.Columns.LoadFromFile(GetTempDir+NomeArquivoFormTxt);

    if DM.UsuarioVendedor<>0 then
    begin
      QYReagendar.Close;
      QYReagendar.SQL.Clear;
      QYReagendar.SQL.Add('select count(TEV_CODIGO) as QTDE from TELEVENDAS where (TEV_DATAPROX<:data) and (TEV_STATUS=''A'') and (TEV_VENDEDOR='+IntToStr(DM.UsuarioVendedor)+')');
      QYReagendar.ParamByName('data').AsDate:=DM.ServerDate;
      QYReagendar.Open;
      if QYReagendar.FieldByName('QTDE').AsInteger>0 then
      if MessageDlg('Existem '+QYReagendar.FieldByName('QTDE').AsString+' contatos atrasados.'+#13#13+'Deseja reagendá-los para hoje? ('+DateToStr(Date,FS)+')',mtConfirmation,[mbYes,mbNo],0)=mrYes then
      begin
        QYReagendar.Close;
        QYReagendar.SQL.Clear;
        QYReagendar.SQL.Add('update TELEVENDAS set TEV_DATAPROX=:data, TEV_REAGENDADO=''S'' where (TEV_DATAPROX<:data) and (TEV_STATUS=''A'') and (TEV_VENDEDOR='+IntToStr(DM.UsuarioVendedor)+')');
        QYReagendar.ParamByName('data').AsDate:=DM.ServerDate;
        QYReagendar.ExecSQL;

        DM2.TBTeleVendas.Close;
        DM2.TBTeleVendas.Open;
      end;
      QYReagendar.Close;
    end;

    //esconde botao do cadastro de atendimentos se o modulo escolar nao estiver ativo.
    DM.TBModulos.Locate('MOD_NOME','Escolar',[]);
    if DM.TBModulosMOD_ACESSO.Value='N' then
    begin
      Atendimentos1.Visible:=False;
      Atendimentos1Button.Visible:=False;
    end;
  end;
end;

procedure TFormTeleVendas.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if DM2.TBTeleVendasTEV_REAGENDADO.Value='S' then
  DBGrid1.Canvas.Font.Color:=clRed;
  DBGrid1.DefaultDrawDataCell(Rect,DBGrid1.Columns[DataCol].Field,State);
end;

procedure TFormTeleVendas.CadastroDeVendedores1Click(Sender: TObject);
begin
  Application.CreateForm(TFormVendedores, FormVendedores);
  FormVendedores.ShowModal;
  FormVendedores.Free;
  FormVendedores:=nil;
end;

procedure TFormTeleVendas.CadastroDeViasDeContato1Click(Sender: TObject);
begin
  Application.CreateForm(TFormVias, FormVias);
  FormVias.ShowModal;
  FormVias.Free;
  FormVias:=nil;
end;

procedure TFormTeleVendas.Ajuda2Click(Sender: TObject);
begin
  MostrarAjuda('');
end;

procedure TFormTeleVendas.ClientesSemAgendamento1Click(Sender: TObject);
begin
  Application.CreateForm(TFormTeleVendasRel, FormTeleVendasRel);
  FormTeleVendasRel.ComboBox1.Enabled:=False;
  FormTeleVendasRel.ComboBox1.ItemIndex:=0;
  FormTeleVendasRel.ComboBox1Change(Self);
  FormTeleVendasRel.ShowModal;
  FormTeleVendasRel.Free;
  FormTeleVendasRel:=nil;
end;

procedure TFormTeleVendas.ClientesNuncaAgendados1Click(Sender: TObject);
begin
  Application.CreateForm(TFormTeleVendasRel, FormTeleVendasRel);
  FormTeleVendasRel.ComboBox1.Enabled:=False;
  FormTeleVendasRel.ComboBox1.ItemIndex:=1;
  FormTeleVendasRel.ComboBox1Change(Self);
  FormTeleVendasRel.ShowModal;
  FormTeleVendasRel.Free;
  FormTeleVendasRel:=nil;
end;

procedure TFormTeleVendas.AtendimentosPorVendedor1Click(Sender: TObject);
begin
  Application.CreateForm(TFormTeleVendasRel, FormTeleVendasRel);
  FormTeleVendasRel.ComboBox1.Enabled:=False;
  FormTeleVendasRel.ComboBox1.ItemIndex:=2;
  FormTeleVendasRel.ComboBox1Change(Self);
  FormTeleVendasRel.ShowModal;
  FormTeleVendasRel.Free;
  FormTeleVendasRel:=nil;
end;

procedure TFormTeleVendas.AtendimentosPorVendedorETemperatura1Click(
  Sender: TObject);
begin
  Application.CreateForm(TFormTeleVendasRel, FormTeleVendasRel);
  FormTeleVendasRel.ComboBox1.Enabled:=False;
  FormTeleVendasRel.ComboBox1.ItemIndex:=3;
  FormTeleVendasRel.ComboBox1Change(Self);
  FormTeleVendasRel.ShowModal;
  FormTeleVendasRel.Free;
  FormTeleVendasRel:=nil;
end;

procedure TFormTeleVendas.AtendimentosPorViaDeContato1Click(Sender: TObject);
begin
  Application.CreateForm(TFormTeleVendasRel, FormTeleVendasRel);
  FormTeleVendasRel.ComboBox1.Enabled:=False;
  FormTeleVendasRel.ComboBox1.ItemIndex:=4;
  FormTeleVendasRel.ComboBox1Change(Self);
  FormTeleVendasRel.ShowModal;
  FormTeleVendasRel.Free;
  FormTeleVendasRel:=nil;
end;

procedure TFormTeleVendas.Estatisticas1Click(Sender: TObject);
begin
  Application.CreateForm(TFormTeleVendasRel, FormTeleVendasRel);
  FormTeleVendasRel.ComboBox1.Enabled:=False;
  FormTeleVendasRel.ComboBox1.ItemIndex:=5;
  FormTeleVendasRel.ComboBox1Change(Self);
  FormTeleVendasRel.ShowModal;
  FormTeleVendasRel.Free;
  FormTeleVendasRel:=nil;
end;

procedure TFormTeleVendas.TransferirAtendimentoParaOutroTelevenda1Click(
  Sender: TObject);
begin
  Application.CreateForm(TFormVendedoresLoc, FormVendedoresLoc);
  FormVendedoresLoc.ShowModal;
  if VendedoresLoc.Procurar then
  begin
    if MessageDlg('Deseja realmente transferir este atendimento para '+FormVendedoresLoc.QYVendedoresVEN_NOME.Value+'?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
    begin
      DM2.TBTeleVendas.Edit;
      DM2.TBTeleVendasTEV_VENDEDOR.Value:=FormVendedoresLoc.QYVendedoresVEN_CODIGO.Value;
      DM2.TBTeleVendasVEN_NOME.Value:=FormVendedoresLoc.QYVendedoresVEN_NOME.Value;
    end;
  end;
  FormVendedoresLoc.Free;
  FormVendedoresLoc:=nil;
end;

procedure TFormTeleVendas.PedidoDeVendas1Click(Sender: TObject);
begin
  if not DM2.TBTeleVendasTEV_VENDA.IsNull then
  begin
    DM.TBVendas.Close;
    DM.TBVendas.ParamByName('codigo').AsInteger:=DM2.TBTeleVendasTEV_VENDA.Value;
    DM.TBVendas.Open;
  end;
  Application.CreateForm(TFormVendas, FormVendas);
  FormVendas.ShowModal;
  FormVendas.Free;
  FormVendas:=nil;
end;

procedure TFormTeleVendas.PngSpeedButton1Click(Sender: TObject);
begin
  LocViasBotao(DBEdit10,DBEdit11,DM2.TBTeleVendas);
end;

procedure TFormTeleVendas.PngSpeedButton3Click(Sender: TObject);
begin
  DM.QYAux.Close;
  DM.QYAux.SQL.Clear;
  DM.QYAux.SQL.Add('update TELEVENDAS set TEV_FIXA=''N'' where TEV_CODIGO=:codigo');
  DM.QYAux.ParamByName('codigo').AsInteger:=QYFixaTEV_CODIGO.Value;
  DM.QYAux.ExecSQL;

  QYFixa.Close;
  QYFixa.Open;
  //Panel4.Visible:=False;
end;

procedure TFormTeleVendas.PngSpeedButton4Click(Sender: TObject);
begin
  LocMotivosBotao(DBEdit12,DBEdit13,DM2.TBTeleVendas);
end;

procedure TFormTeleVendas.DBEdit3KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then
  DM2.TBTeleVendasTEV_DEMODATA.Clear;
end;

procedure TFormTeleVendas.DBEdit4KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then
  DM2.TBTeleVendasTEV_DEMOHORA.Clear;
end;

procedure TFormTeleVendas.DBEdit5KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then
  DM2.TBTeleVendasTEV_HORAPROX.Clear;
end;

procedure TFormTeleVendas.FormShow(Sender: TObject);
begin
  FormMain.DesabilitarControles(FormTeleVendas);
  DM2.DSTeleVendasDataChange(nil,nil);
end;

initialization
  RegisterClass(TFormTeleVendas);

finalization
  UnRegisterClass(TFormTeleVendas);

end.
