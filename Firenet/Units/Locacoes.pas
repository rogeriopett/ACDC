unit Locacoes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBSBtn, ExtCtrls, Menus, DB, StdCtrls, DBCtrls, Mask, Grids, DBGrids,
  Buttons, ComCtrls, ImgList, PngImageList, PngSpeedButton, System.ImageList,
  System.UITypes, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client, FireDAC.Comp.DataSet;

type
  TFormLocacoes = class(TForm)
    GroupBox1: TGroupBox;
    DBText3: TDBText;
    DBText4: TDBText;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    DBText5: TDBText;
    DBText6: TDBText;
    DBText7: TDBText;
    DBText8: TDBText;
    DBText9: TDBText;
    DBText10: TDBText;
    Label16: TLabel;
    DBText11: TDBText;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label15: TLabel;
    SpeedButton7: TPngSpeedButton;
    Label11: TLabel;
    Label19: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label17: TLabel;
    DBText12: TDBText;
    Label20: TLabel;
    DBGrid1: TDBGrid;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBComboBox1: TDBComboBox;
    TabSheet2: TTabSheet;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label12: TLabel;
    Label18: TLabel;
    Label29: TLabel;
    DBGrid2: TDBGrid;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit10: TDBEdit;
    DBComboBox2: TDBComboBox;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    DBEdit17: TDBEdit;
    DBEdit18: TDBEdit;
    MainMenu1: TMainMenu;
    Arquivo1: TMenuItem;
    Localizar1: TMenuItem;
    Relatorios2: TMenuItem;
    N2: TMenuItem;
    BaixarLocacao1: TMenuItem;
    N3: TMenuItem;
    CadastroDeClientes1: TMenuItem;
    CadastroDeObjetos1: TMenuItem;
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
    BaixarLocacao1Button: TPngSpeedButton;
    Localizar1Button: TPngSpeedButton;
    DBText2: TDBText;
    DBText1: TDBText;
    CadastroDeClientes1Button: TPngSpeedButton;
    CadastroDeObjetos1Button: TPngSpeedButton;
    Bevel2: TBevel;
    Relatorios1: TMenuItem;
    Ajuda1: TMenuItem;
    Ajuda2: TMenuItem;
    Ajuda2Button: TPngSpeedButton;
    EditarRegistro1Button: TDBSpeedButton;
    EditarRegistro1: TMenuItem;
    N6: TMenuItem;
    LocacoesEmAbertoPorCliente1: TMenuItem;
    HistoricoDeLocacoesPorCliente1: TMenuItem;
    PngImageList1: TPngImageList;
    Label30: TLabel;
    DBEdit19: TDBEdit;
    Label31: TLabel;
    DBEdit20: TDBEdit;
    Label32: TLabel;
    DBEdit21: TDBEdit;
    QYLocado: TFDQuery;
    TRLocado: TFDTransaction;
    QYLocadoAberto: TFDQuery;
    TRLocadoAberto: TFDTransaction;
    QYLocadoQUANTIDADE: TLargeintField;
    QYLocadoAbertoLOC_CODIGO: TIntegerField;
    QYLocadoAbertoLOC_CLIENTE: TIntegerField;
    QYLocadoAbertoCLI_NOME: TStringField;
    procedure Fechar1Click(Sender: TObject);
    procedure Localizar1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit1Exit(Sender: TObject);
    procedure DBEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton7Click(Sender: TObject);
    procedure Relatorios2Click(Sender: TObject);
    procedure CadastroDeClientes1Click(Sender: TObject);
    procedure CadastroDeObjetos1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure BaixarLocacao1Click(Sender: TObject);
    procedure Ajuda2Click(Sender: TObject);
    procedure LocacoesEmAbertoPorCliente1Click(Sender: TObject);
    procedure HistoricoDeLocacoesPorCliente1Click(Sender: TObject);
    procedure DBEdit1Enter(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBEdit1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    procedure VerificarObjetoLocado;
    procedure VerificarObjetoLocadoAberto;
  public
    { Public declarations }
  end;

var
  FormLocacoes: TFormLocacoes;

implementation
uses DataMod, Clientes, ObjetosLoc, Objetos, LocacoesLoc, Funcoes1,
  LocacoesBaixar, DataMod2, LocacoesRel, DataModSearch, Main;
{$R *.dfm}

procedure TFormLocacoes.VerificarObjetoLocado;
begin
  QYLocado.Close;
  QYLocado.ParamByName('cliente').AsInteger:=DM2.TBLocacoesLOC_CLIENTE.Value;
  QYLocado.ParamByName('objeto').AsInteger:=DM2.TBLocacoesLOC_OBJETO.Value;
  QYLocado.Open;
  if QYLocado.FieldByName('quantidade').AsInteger>0 then
  MessageDlg('Este objeto já foi locado '+QYLocado.FieldByName('quantidade').AsString+' vezes pelo cliente!',mtInformation,[mbOk],0);
  QYLocado.Close;
end;

procedure TFormLocacoes.VerificarObjetoLocadoAberto;
begin
  QYLocadoAberto.Close;
  QYLocadoAberto.ParamByName('objeto').AsInteger:=DM2.TBLocacoesLOC_OBJETO.Value;
  QYLocadoAberto.Open;
  if not QYLocadoAberto.IsEmpty then
  begin
    MessageDlg('Este objeto já está locado para '+QYLocadoAbertoCLI_NOME.Value,mtInformation,[mbOk],0);
    DM2.TBLocacoesLOC_OBJETO.Clear;
    DM2.TBLocacoesOBJ_DESCRICAO.Clear;
  end;
  QYLocadoAberto.Close;
end;

procedure TFormLocacoes.Localizar1Click(Sender: TObject);
begin
  Application.CreateForm(TFormLocacoesLoc, FormLocacoesLoc);
  FormLocacoesLoc.ShowModal;
  if LocacoesLoc.Procurar then
  begin
    //ativa a página conforme o status da locação.
    if FormLocacoesLoc.QYLocacoesLOC_STATUS.Value='A' then
    PageControl1.ActivePageIndex:=0 else
    PageControl1.ActivePageIndex:=1;
    PageControl1Change(Self);
    //localiza o cliente e a locação.
    DM.TBClientes.Close;
    DM.TBClientes.ParamByName('codigo').AsInteger:=FormLocacoesLoc.QYLocacoesLOC_CLIENTE.Value;
    DM.TBClientes.Open;
    DM2.TBLocacoes.Locate('LOC_CODIGO',FormLocacoesLoc.QYLocacoesLOC_CODIGO.Value,[]);
  end;
  FormLocacoesLoc.Free;
  FormLocacoesLoc:=nil;
end;

procedure TFormLocacoes.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if DM2.TBLocacoes.State in [dsInsert, dsEdit] then
  begin
    MessageDlg('Salve os dados antes de fechar.',mtWarning,[mbOk],0);
    Action:=caNone;
  end;
end;

procedure TFormLocacoes.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormLocacoes.FormShow(Sender: TObject);
begin
  FormMain.DesabilitarControles(FormLocacoes);
end;

procedure TFormLocacoes.DBEdit1Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TDBEdit).Text;
end;

procedure TFormLocacoes.DBEdit1Exit(Sender: TObject);
begin
  if (DM2.TBLocacoes.State in [dsInsert, dsEdit]) and ((Sender as TDBEdit).Text='') then
  begin
    DM2.TBLocacoesLOC_OBJETO.Clear;
    DM2.TBLocacoesLOC_VALOROBJETO.Value:=0;
    DM2.TBLocacoesLOC_VALORLOCACAO.Value:=0;
    DM2.TBLocacoesOBJ_DESCRICAO.Clear;
    DM2.TBLocacoesOBJ_SERIAL.Clear;
    Exit;
  end;
  if DM.CodigosOld=(Sender as TDBEdit).Text then
  Exit;
  if (DM2.TBLocacoes.State in [dsInsert, dsEdit]) and ((Sender as TDBEdit).Text<>'') then
  begin
    DMS.QYObjetos.Close;
    DMS.QYObjetos.ParamByName('codigo').AsInteger:=StrToInt((Sender as TDBEdit).Text);
    DMS.QYObjetos.Open;
    if not DMS.QYObjetos.IsEmpty then
    begin
      DM2.TBLocacoesLOC_OBJETO.Value:=DMS.QYObjetosOBJ_CODIGO.Value;
      DM2.TBLocacoesLOC_VALOROBJETO.Value:=DMS.QYObjetosOBJ_VALOR.Value;
      DM2.TBLocacoesLOC_VALORLOCACAO.Value:=DMS.QYObjetosOBJ_VALORLOCACAO.Value;
      DM2.TBLocacoesOBJ_DESCRICAO.Value:=DMS.QYObjetosOBJ_DESCRICAO.Value;
      DM2.TBLocacoesOBJ_SERIAL.Value:=DMS.QYObjetosOBJ_SERIAL.Value;
      VerificarObjetoLocadoAberto;
      VerificarObjetoLocado;
    end else
    begin
      DM2.TBLocacoesLOC_OBJETO.Clear;
      DM2.TBLocacoesLOC_VALOROBJETO.Value:=0;
      DM2.TBLocacoesLOC_VALORLOCACAO.Value:=0;
      DM2.TBLocacoesOBJ_DESCRICAO.Clear;
      DM2.TBLocacoesOBJ_SERIAL.Clear;
    end;
    DMS.QYObjetos.Close;
  end;
end;

procedure TFormLocacoes.DBEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton7.Click;
end;

procedure TFormLocacoes.DBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormLocacoes.SpeedButton7Click(Sender: TObject);
begin
  Application.CreateForm(TFormObjetosLoc, FormObjetosLoc);
  FormObjetosLoc.ShowModal;
  if ObjetosLoc.Procurar then
  begin
    DM2.TBLocacoes.Edit;
    DM2.TBLocacoesLOC_OBJETO.Value:=FormObjetosLoc.QYObjetosOBJ_CODIGO.Value;
    DM2.TBLocacoesOBJ_DESCRICAO.Value:=FormObjetosLoc.QYObjetosOBJ_DESCRICAO.Value;
    DM2.TBLocacoesOBJ_SERIAL.Clear;
    VerificarObjetoLocadoAberto;
    VerificarObjetoLocado;
  end;
  FormObjetosLoc.Free;
  FormObjetosLoc:=nil;
end;

procedure TFormLocacoes.Fechar1Click(Sender: TObject);
begin
  Close;
end;

procedure TFormLocacoes.Relatorios2Click(Sender: TObject);
begin
  Application.CreateForm(TFormLocacoesRel, FormLocacoesRel);
  FormLocacoesRel.ShowModal;
  FormLocacoesRel.Free;
  FormLocacoesRel:=nil;
end;

procedure TFormLocacoes.CadastroDeClientes1Click(Sender: TObject);
begin
  Application.CreateForm(TFormClientes, FormClientes);
  FormClientes.ShowModal;
  FormClientes.Free;
  FormClientes:=nil;
end;

procedure TFormLocacoes.CadastroDeObjetos1Click(Sender: TObject);
begin
  Application.CreateForm(TFormObjetos, FormObjetos);
  FormObjetos.ShowModal;
  FormObjetos.Free;
  FormObjetos:=nil;
end;

procedure TFormLocacoes.FormCreate(Sender: TObject);
begin
  PageControl1.ActivePageIndex:=0;
  DM2.DSLocacoesDataChange(Self,nil); //dispara o evento para calcular o valor total da locação.
  Label14.Caption:='';
end;

procedure TFormLocacoes.PageControl1Change(Sender: TObject);
begin
  case PageControl1.ActivePageIndex of
    00: begin
          DM2.TBLocacoes.Close;
          DM2.TBLocacoes.SQL.Clear;
          DM2.TBLocacoes.SQL.Add('select * from LOCACOES '+
                                 'left join CLIENTES on LOC_CLIENTE=CLI_CODIGO '+
                                 'left join OBJETOS on LOC_OBJETO=OBJ_CODIGO '+
                                 'where LOC_CLIENTE=:CLI_CODIGO and LOC_STATUS=''A'' order by LOC_CODIGO desc');
          DM2.TBLocacoes.Open;
        end;
    01: begin
          DM2.TBLocacoes.Close;
          DM2.TBLocacoes.SQL.Clear;
          DM2.TBLocacoes.SQL.Add('select * from LOCACOES '+
                                 'left join CLIENTES on LOC_CLIENTE=CLI_CODIGO '+
                                 'left join OBJETOS on LOC_OBJETO=OBJ_CODIGO '+
                                 'where LOC_CLIENTE=:CLI_CODIGO and LOC_STATUS=''B'' order by LOC_CODIGO desc');
          DM2.TBLocacoes.Open;
        end;
  end;
end;

procedure TFormLocacoes.BaixarLocacao1Click(Sender: TObject);
begin
  AbortIf(DM2.TBLocacoes.IsEmpty,'Nenhuma locação selecionada.');
  AbortIf(DM2.TBLocacoesLOC_STATUS.Value='B','Locação já baixada.');

  Application.CreateForm(TFormLocacoesBaixar, FormLocacoesBaixar);
  FormLocacoesBaixar.ShowModal;
  FormLocacoesBaixar.Free;
  FormLocacoesBaixar:=nil;
end;

procedure TFormLocacoes.Ajuda2Click(Sender: TObject);
begin
  MostrarAjuda('');
end;

procedure TFormLocacoes.LocacoesEmAbertoPorCliente1Click(
  Sender: TObject);
begin
  Application.CreateForm(TFormLocacoesRel, FormLocacoesRel);
  FormLocacoesRel.ComboBox4.Enabled:=False;
  FormLocacoesRel.ComboBox4.ItemIndex:=0;
  FormLocacoesRel.ShowModal;
  FormLocacoesRel.Free;
  FormLocacoesRel:=nil;
end;

procedure TFormLocacoes.HistoricoDeLocacoesPorCliente1Click(
  Sender: TObject);
begin
  Application.CreateForm(TFormLocacoesRel, FormLocacoesRel);
  FormLocacoesRel.ComboBox4.Enabled:=False;
  FormLocacoesRel.ComboBox4.ItemIndex:=1;
  FormLocacoesRel.ShowModal;
  FormLocacoesRel.Free;
  FormLocacoesRel:=nil;
end;

initialization
  RegisterClass(TFormLocacoes);

finalization
  UnRegisterClass(TFormLocacoes);

end.
