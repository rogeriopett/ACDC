unit Enderecos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DB, StdCtrls, Mask, DBCtrls, Menus, Buttons, DBSBtn,
  ExtCtrls, ComCtrls, ImgList, PngImageList, PngSpeedButton, System.ImageList,
  System.UITypes;

type
  TFormEnderecos = class(TForm)
    Panel1: TPanel;
    Bevel1: TBevel;
    InserirRegistro1Button: TDBSpeedButton;
    EliminarRegistro1Button: TDBSpeedButton;
    SalvarRegistro1Button: TDBSpeedButton;
    CancelarRegistro1Button: TDBSpeedButton;
    MainMenu1: TMainMenu;
    Arquivo1: TMenuItem;
    Fechar1: TMenuItem;
    Navegacao1: TMenuItem;
    InserirRegistro1: TMenuItem;
    EliminarRegistro1: TMenuItem;
    N5: TMenuItem;
    SalvarRegistro1: TMenuItem;
    CancelarRegistro1: TMenuItem;
    StatusBar1: TStatusBar;
    Fechar1Button: TPngSpeedButton;
    Bevel2: TBevel;
    Bevel3: TBevel;
    Relatorios1Button: TPngSpeedButton;
    N1: TMenuItem;
    Relatorios1: TMenuItem;
    Localizar1: TMenuItem;
    Localizar1Button: TPngSpeedButton;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    Label1: TLabel;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    Label7: TLabel;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    Label9: TLabel;
    Label11: TLabel;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    Label19: TLabel;
    DBEdit30: TDBEdit;
    DBEdit29: TDBEdit;
    SpeedButton2: TPngSpeedButton;
    Label14: TLabel;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    Label15: TLabel;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    SpeedButton4: TPngSpeedButton;
    Label6: TLabel;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    Label12: TLabel;
    DBEdit17: TDBEdit;
    DBEdit18: TDBEdit;
    Label13: TLabel;
    DBEdit19: TDBEdit;
    DBEdit20: TDBEdit;
    SpeedButton9: TPngSpeedButton;
    Ajuda2Button: TPngSpeedButton;
    Ajuda1: TMenuItem;
    Ajuda2: TMenuItem;
    EditarRegistro1Button: TDBSpeedButton;
    EditarRegistro1: TMenuItem;
    PngImageList1: TPngImageList;
    DBEdit21: TDBEdit;
    Label2: TLabel;
    TabSheet5: TTabSheet;
    Label5: TLabel;
    Label8: TLabel;
    DBEdit22: TDBEdit;
    DBEdit23: TDBEdit;
    DBEdit24: TDBEdit;
    Label10: TLabel;
    DBEdit25: TDBEdit;
    DBEdit26: TDBEdit;
    PngSpeedButton1: TPngSpeedButton;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    DBEdit27: TDBEdit;
    DBEdit28: TDBEdit;
    Label24: TLabel;
    DBEdit31: TDBEdit;
    DBEdit32: TDBEdit;
    Label25: TLabel;
    DBEdit33: TDBEdit;
    DBEdit34: TDBEdit;
    ConsultarCEPNosCorreios1: TMenuItem;
    ConsultarCEPNosCorreios1Button: TPngSpeedButton;
    N2: TMenuItem;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Fechar1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Relatorios1ButtonClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure PageControl1Changing(Sender: TObject;
      var AllowChange: Boolean);
    procedure DBEdit30Exit(Sender: TObject);
    procedure DBEdit30KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton2Click(Sender: TObject);
    procedure DBEdit13Exit(Sender: TObject);
    procedure DBEdit13KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton4Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBEdit19Exit(Sender: TObject);
    procedure DBEdit19KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton9Click(Sender: TObject);
    procedure Localizar1Click(Sender: TObject);
    procedure Ajuda2Click(Sender: TObject);
    procedure DBEdit25Exit(Sender: TObject);
    procedure DBEdit25KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure PngSpeedButton1Click(Sender: TObject);
    procedure Label17Click(Sender: TObject);
    procedure Label22Click(Sender: TObject);
    procedure ConsultarCEPNosCorreios1Click(Sender: TObject);
    procedure DBEdit19Enter(Sender: TObject);
    procedure DBEdit25Enter(Sender: TObject);
    procedure DBEdit30Enter(Sender: TObject);
    procedure DBEdit13Enter(Sender: TObject);
    procedure DBEdit19KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit13KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit30KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit25KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure AjustaNavegador(Source: TDataSource);
  end;

var
  FormEnderecos: TFormEnderecos;

implementation
uses DataMod, EnderecosEstadosLoc, EnderecosCidadesLoc, EnderecosBairrosLoc,
  EnderecosRuasLoc, EnderecosRel, Main, Funcoes1, DataModSearch,
  EnderecosPaisesLoc, ShellAPI, EnderecosBuscaCEP;

{$R *.dfm}
procedure TFormEnderecos.AjustaNavegador(Source: TDatasource);
begin //procedure para trocar o DataSource dos botões do navegador.
  InserirRegistro1Button.DataSource:=Source;
  EliminarRegistro1Button.DataSource:=Source;
  SalvarRegistro1Button.DataSource:=Source;
  CancelarRegistro1Button.DataSource:=Source;
  EditarRegistro1Button.DataSource:=Source;
end;

procedure TFormEnderecos.ConsultarCEPNosCorreios1Click(Sender: TObject);
begin
  Application.CreateForm(TFormEnderecosBuscaCEP, FormEnderecosBuscaCEP);
  FormEnderecosBuscaCEP.ShowModal;
  FormEnderecosBuscaCEP.Free;
  FormEnderecosBuscaCEP:=nil;
end;

procedure PesquisarPaises;
begin
  Application.CreateForm(TFormEnderecosPaisesLoc, FormEnderecosPaisesLoc);
  FormEnderecosPaisesLoc.ShowModal;
  if EnderecosPaisesLoc.Procurar=True then
  begin
    DM.TBPaises.Close;
    DM.TBPaises.ParamByName('codigo').AsInteger:=FormEnderecosPaisesLoc.QYPaisesPAI_CODIGO.Value;
    DM.TBPaises.Open;
  end;
  FormEnderecosPaisesLoc.Free;
  FormEnderecosPaisesLoc:=nil;
end;

procedure PesquisarEstados;
begin
  Application.CreateForm(TFormEnderecosEstadosLoc, FormEnderecosEstadosLoc);
  FormEnderecosEstadosLoc.ShowModal;
  if EnderecosEstadosLoc.Procurar=True then
  begin
    DM.TBEstados.Close;
    DM.TBEstados.ParamByName('codigo').AsInteger:=FormEnderecosEstadosLoc.QYEstadosESD_CODIGO.Value;
    DM.TBEstados.Open;
  end;
  FormEnderecosEstadosLoc.Free;
  FormEnderecosEstadosLoc:=nil;
end;

procedure PesquisarCidades;
begin
  Application.CreateForm(TFormEnderecosCidadesLoc, FormEnderecosCidadesLoc);
  FormEnderecosCidadesLoc.ShowModal;
  if EnderecosCidadesLoc.Procurar=True then
  begin
    DM.TBCidades.Close;
    DM.TBCidades.ParamByName('codigo').AsInteger:=FormEnderecosCidadesLoc.QYCidadesCID_CODIGO.Value;
    DM.TBCidades.Open;
  end;
  FormEnderecosCidadesLoc.Free;
  FormEnderecosCidadesLoc:=nil;
end;

procedure PesquisarBairros;
begin
  Application.CreateForm(TFormEnderecosBairrosLoc, FormEnderecosBairrosLoc);
  FormEnderecosBairrosLoc.ShowModal;
  if EnderecosBairrosLoc.Procurar=True then
  begin
    DM.TBBairros.Close;
    DM.TBBairros.ParamByName('codigo').AsInteger:=FormEnderecosBairrosLoc.QYBairrosBAI_CODIGO.Value;
    DM.TBBairros.Open;
  end;
  FormEnderecosBairrosLoc.Free;
  FormEnderecosBairrosLoc:=nil;
end;

procedure PesquisarRuas;
begin
  Application.CreateForm(TFormEnderecosRuasLoc, FormEnderecosRuasLoc);
  FormEnderecosRuasLoc.ShowModal;
  if EnderecosRuasLoc.Procurar=True then
  begin
    DM.TBRuas.Close;
    DM.TBRuas.ParamByName('codigo').AsInteger:=FormEnderecosRuasLoc.QYRuasRUA_CODIGO.Value;
    DM.TBRuas.Open;
  end;
  FormEnderecosRuasLoc.Free;
  FormEnderecosRuasLoc:=nil;
end;

procedure TFormEnderecos.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormEnderecos.Fechar1Click(Sender: TObject);
begin
  Close;
end;

procedure TFormEnderecos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if (DM.TBEstados.State in [dsInsert, dsEdit]) or
     (DM.TBCidades.State in [dsInsert, dsEdit]) or
     (DM.TBBairros.State in [dsInsert, dsEdit]) or
     (DM.TBRuas.State in [dsInsert, dsEdit]) then
  begin
    Action:=caNone;
    MessageDlg('Salve os dados antes de fechar.',mtWarning,[mbOk],0);
  end;
end;

procedure TFormEnderecos.Relatorios1ButtonClick(Sender: TObject);
begin
  Application.CreateForm(TFormEnderecosRel, FormEnderecosRel);
  FormEnderecosRel.ShowModal;
  FormEnderecosRel.Free;
  FormEnderecosRel:=nil;
end;

procedure TFormEnderecos.FormShow(Sender: TObject);
begin
  FormMain.DesabilitarControles(FormEnderecos);
end;

procedure TFormEnderecos.PageControl1Change(Sender: TObject);
begin
  case PageControl1.ActivePageIndex of
    00: begin
          AjustaNavegador(DM.DSRuas);
          StatusBar1.Panels[2].Text:='Cadastro de Ruas';
        end;
    01: begin
          AjustaNavegador(DM.DSBairros);
          StatusBar1.Panels[2].Text:='Cadastro de Bairros';
        end;
    02: begin
          AjustaNavegador(DM.DSCidades);
          StatusBar1.Panels[2].Text:='Cadastro de Cidades';
        end;
    03: begin
          AjustaNavegador(DM.DSEstados);
          StatusBar1.Panels[2].Text:='Cadastro de Estados';
        end;
    04: begin
          AjustaNavegador(DM.DSPaises);
          StatusBar1.Panels[2].Text:='Cadastro de Paises';
        end;
  end;
end;

procedure TFormEnderecos.PageControl1Changing(Sender: TObject;
  var AllowChange: Boolean);
begin
  case PageControl1.ActivePageIndex of
    00: AllowChange:=not (DM.TBRuas.State in [dsInsert, dsEdit]);
    01: AllowChange:=not (DM.TBBairros.State in [dsInsert, dsEdit]);
    02: AllowChange:=not (DM.TBCidades.State in [dsInsert, dsEdit]);
    03: AllowChange:=not (DM.TBEstados.State in [dsInsert, dsEdit]);
    04: AllowChange:=not (DM.TBPaises.State in [dsInsert, dsEdit]);
  end;
end;

procedure TFormEnderecos.PngSpeedButton1Click(Sender: TObject);
begin
  Application.CreateForm(TFormEnderecosPaisesLoc, FormEnderecosPaisesLoc);
  FormEnderecosPaisesLoc.ShowModal;
  if EnderecosPaisesLoc.Procurar then
  begin
    DM.TBEstados.Edit;
    DM.TBEstadosESD_PAIS.Value:=FormEnderecosPaisesLoc.QYPaisesPAI_CODIGO.Value;
    DM.TBEstadosPAI_NOME.Value:=FormEnderecosPaisesLoc.QYPaisesPAI_NOME.Value;
  end;
  FormEnderecosPaisesLoc.Free;
  FormEnderecosPaisesLoc:=nil;
end;

procedure TFormEnderecos.DBEdit30Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TDBEdit).Text;
end;

procedure TFormEnderecos.DBEdit30Exit(Sender: TObject);
begin
  if (DM.TBCidades.State in [dsInsert, dsEdit]) and ((Sender as TDBEdit).Text='') then
  begin
    DM.TBCidadesCID_PAIS.Clear;
    DM.TBCidadesPAI_NOME.Clear;
    DM.TBCidadesCID_ESTADO.Clear;
    DM.TBCidadesESD_NOME.Clear;
    Exit;
  end;
  if DM.CodigosOld=(Sender as TDBEdit).Text then
  Exit;
  if (DM.TBCidades.State in [dsInsert, dsEdit]) and ((Sender as TDBEdit).Text<>'') then
  begin
    DMS.QYEstados.Close;
    DMS.QYEstados.ParamByName('codigo').AsInteger:=StrToInt((Sender as TDBEdit).Text);
    DMS.QYEstados.Open;
    if not DMS.QYEstados.IsEmpty then
    begin
      DM.TBCidadesCID_PAIS.Value:=DMS.QYEstadosESD_PAIS.Value;
      DM.TBCidadesPAI_NOME.Value:=DMS.QYEstadosPAI_NOME.Value;
      DM.TBCidadesCID_ESTADO.Value:=DMS.QYEstadosESD_CODIGO.Value;
      DM.TBCidadesESD_NOME.Value:=DMS.QYEstadosESD_NOME.Value;
    end else
    begin
      DM.TBCidadesCID_PAIS.Clear;
      DM.TBCidadesPAI_NOME.Clear;
      DM.TBCidadesCID_ESTADO.Clear;
      DM.TBCidadesESD_NOME.Clear;
      MessageDlg('Estado não encontrado.',mtInformation,[mbOk],0);
      (Sender as TDBEdit).SetFocus;
    end;
    DMS.QYEstados.Close;
  end;
end;

procedure TFormEnderecos.DBEdit30KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton2.Click;
end;

procedure TFormEnderecos.DBEdit30KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormEnderecos.SpeedButton2Click(Sender: TObject);
begin
  Application.CreateForm(TFormEnderecosEstadosLoc, FormEnderecosEstadosLoc);
  FormEnderecosEstadosLoc.ShowModal;
  if EnderecosEstadosLoc.Procurar then
  begin
    DM.TBCidades.Edit;
    DM.TBCidadesCID_PAIS.Value:=FormEnderecosEstadosLoc.QYEstadosESD_PAIS.Value;
    DM.TBCidadesPAI_NOME.Value:=FormEnderecosEstadosLoc.QYEstadosPAI_NOME.Value;
    DM.TBCidadesCID_ESTADO.Value:=FormEnderecosEstadosLoc.QYEstadosESD_CODIGO.Value;
    DM.TBCidadesESD_NOME.Value:=FormEnderecosEstadosLoc.QYEstadosESD_NOME.Value;
  end;
  FormEnderecosEstadosLoc.Free;
  FormEnderecosEstadosLoc:=nil;
end;

procedure TFormEnderecos.DBEdit13Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TDBEdit).Text;
end;

procedure TFormEnderecos.DBEdit13Exit(Sender: TObject);
begin
  if (DM.TBBairros.State in [dsInsert, dsEdit]) and ((Sender as TDBEdit).Text='') then
  begin
    DM.TBBairrosBAI_PAIS.Clear;
    DM.TBBairrosPAI_NOME.Clear;
    DM.TBBairrosBAI_ESTADO.Clear;
    DM.TBBairrosESD_NOME.Clear;
    DM.TBBairrosBAI_CIDADE.Clear;
    DM.TBBairrosCID_NOME.Clear;
    Exit;
  end;
  if DM.CodigosOld=(Sender as TDBEdit).Text then
  Exit;
  if (DM.TBBairros.State in [dsInsert, dsEdit]) and ((Sender as TDBEdit).Text<>'') then
  begin
    DMS.QYCidades.Close;
    DMS.QYCidades.ParamByName('codigo').AsInteger:=StrToInt((Sender as TDBEdit).Text);
    DMS.QYCidades.Open;
    if not DMS.QYCidades.IsEmpty then
    begin
      DM.TBBairrosBAI_PAIS.Value:=DMS.QYCidadesCID_PAIS.Value;
      DM.TBBairrosPAI_NOME.Value:=DMS.QYCidadesPAI_NOME.Value;
      DM.TBBairrosBAI_ESTADO.Value:=DMS.QYCidadesCID_ESTADO.Value;
      DM.TBBairrosESD_NOME.Value:=DMS.QYCidadesESD_NOME.Value;
      DM.TBBairrosBAI_CIDADE.Value:=DMS.QYCidadesCID_CODIGO.Value;
      DM.TBBairrosCID_NOME.Value:=DMS.QYCidadesCID_NOME.Value;
    end else
    begin
      DM.TBBairrosBAI_PAIS.Clear;
      DM.TBBairrosPAI_NOME.Clear;
      DM.TBBairrosBAI_ESTADO.Clear;
      DM.TBBairrosESD_NOME.Clear;
      DM.TBBairrosBAI_CIDADE.Clear;
      DM.TBBairrosCID_NOME.Clear;
      MessageDlg('Cidade não encontrada.',mtInformation,[mbOk],0);
      (Sender as TDBEdit).SetFocus;
    end;
    DMS.QYCidades.Close;
  end;
end;

procedure TFormEnderecos.DBEdit13KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton4.Click;
end;

procedure TFormEnderecos.DBEdit13KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormEnderecos.SpeedButton4Click(Sender: TObject);
begin
  Application.CreateForm(TFormEnderecosCidadesLoc, FormEnderecosCidadesLoc);
  FormEnderecosCidadesLoc.ShowModal;
  if EnderecosCidadesLoc.Procurar then
  begin
    DM.TBBairros.Edit;
    DM.TBBairrosBAI_PAIS.Value:=FormEnderecosCidadesLoc.QYCidadesCID_PAIS.Value;
    DM.TBBairrosPAI_NOME.Value:=FormEnderecosCidadesLoc.QYCidadesPAI_NOME.Value;
    DM.TBBairrosBAI_ESTADO.Value:=FormEnderecosCidadesLoc.QYCidadesCID_ESTADO.Value;
    DM.TBBairrosESD_NOME.Value:=FormEnderecosCidadesLoc.QYCidadesESD_NOME.Value;
    DM.TBBairrosBAI_CIDADE.Value:=FormEnderecosCidadesLoc.QYCidadesCID_CODIGO.Value;
    DM.TBBairrosCID_NOME.Value:=FormEnderecosCidadesLoc.QYCidadesCID_NOME.Value;
  end;
  FormEnderecosCidadesLoc.Free;
  FormEnderecosCidadesLoc:=nil;
end;

procedure TFormEnderecos.FormCreate(Sender: TObject);
begin
  PageControl1.ActivePageIndex:=0;
  PageControl1Change(Sender);
end;

procedure TFormEnderecos.DBEdit19Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TDBEdit).Text;
end;

procedure TFormEnderecos.DBEdit19Exit(Sender: TObject);
begin
  if (DM.TBRuas.State in [dsInsert, dsEdit]) and ((Sender as TDBEdit).Text='') then
  begin
    DM.TBRuasRUA_PAIS.Clear;
    DM.TBRuasPAI_NOME.Clear;
    DM.TBRuasRUA_ESTADO.Clear;
    DM.TBRuasESD_NOME.Clear;
    DM.TBRuasRUA_CIDADE.Clear;
    DM.TBRuasCID_NOME.Clear;
    DM.TBRuasRUA_BAIRRO.Clear;
    DM.TBRuasBAI_NOME.Clear;
    Exit;
  end;
  if DM.CodigosOld=(Sender as TDBEdit).Text then
  Exit;
  if (DM.TBRuas.State in [dsInsert, dsEdit]) and ((Sender as TDBEdit).Text<>'') then
  begin
    DMS.QYBairros.Close;
    DMS.QYBairros.ParamByName('codigo').AsInteger:=StrToInt((Sender as TDBEdit).Text);
    DMS.QYBairros.Open;
    if not DMS.QYBairros.IsEmpty then
    begin
      DM.TBRuasRUA_PAIS.Value:=DMS.QYBairrosBAI_PAIS.Value;
      DM.TBRuasPAI_NOME.Value:=DMS.QYBairrosPAI_NOME.Value;
      DM.TBRuasRUA_ESTADO.Value:=DMS.QYBairrosBAI_ESTADO.Value;
      DM.TBRuasESD_NOME.Value:=DMS.QYBairrosESD_NOME.Value;
      DM.TBRuasRUA_CIDADE.Value:=DMS.QYBairrosBAI_CIDADE.Value;
      DM.TBRuasCID_NOME.Value:=DMS.QYBairrosCID_NOME.Value;
      DM.TBRuasRUA_BAIRRO.Value:=DMS.QYBairrosBAI_CODIGO.Value;
      DM.TBRuasBAI_NOME.Value:=DMS.QYBairrosBAI_NOME.Value;
    end else
    begin
      DM.TBRuasRUA_PAIS.Clear;
      DM.TBRuasPAI_NOME.Clear;
      DM.TBRuasRUA_ESTADO.Clear;
      DM.TBRuasESD_NOME.Clear;
      DM.TBRuasRUA_CIDADE.Clear;
      DM.TBRuasCID_NOME.Clear;
      DM.TBRuasRUA_BAIRRO.Clear;
      DM.TBRuasBAI_NOME.Clear;
      MessageDlg('Bairro não encontrado.',mtInformation,[mbOk],0);
      (Sender as TDBEdit).SetFocus;
    end;
    DMS.QYBairros.Close;
  end;
end;

procedure TFormEnderecos.DBEdit19KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton9.Click;
end;

procedure TFormEnderecos.DBEdit19KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormEnderecos.DBEdit25Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TDBEdit).Text;
end;

procedure TFormEnderecos.DBEdit25Exit(Sender: TObject);
begin
  if (DM.TBEstados.State in [dsInsert, dsEdit]) and ((Sender as TDBEdit).Text='') then
  begin
    DM.TBEstadosESD_PAIS.Clear;
    DM.TBEstadosPAI_NOME.Clear;
    Exit;
  end;
  if DM.CodigosOld=(Sender as TDBEdit).Text then
  Exit;
  if (DM.TBEstados.State in [dsInsert, dsEdit]) and ((Sender as TDBEdit).Text<>'') then
  begin
    DMS.QYPaises.Close;
    DMS.QYPaises.ParamByName('codigo').AsInteger:=StrToInt((Sender as TDBEdit).Text);
    DMS.QYPaises.Open;
    if not DMS.QYPaises.IsEmpty then
    begin
      DM.TBEstadosESD_PAIS.Value:=DMS.QYPaisesPAI_CODIGO.Value;
      DM.TBEstadosPAI_NOME.Value:=DMS.QYPaisesPAI_NOME.Value;
    end else
    begin
      DM.TBEstadosESD_PAIS.Clear;
      DM.TBEstadosPAI_NOME.Clear;
      MessageDlg('País não encontrado.',mtInformation,[mbOk],0);
      (Sender as TDBEdit).SetFocus;
    end;
    DMS.QYPaises.Close;
  end;
end;

procedure TFormEnderecos.DBEdit25KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  PngSpeedButton1.Click;
end;

procedure TFormEnderecos.DBEdit25KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormEnderecos.SpeedButton9Click(Sender: TObject);
begin
  Application.CreateForm(TFormEnderecosBairrosLoc, FormEnderecosBairrosLoc);
  FormEnderecosBairrosLoc.ShowModal;
  if EnderecosBairrosLoc.Procurar then
  begin
    DM.TBRuas.Edit;
    DM.TBRuasRUA_PAIS.Value:=FormEnderecosBairrosLoc.QYBairrosBAI_PAIS.Value;
    DM.TBRuasPAI_NOME.Value:=FormEnderecosBairrosLoc.QYBairrosPAI_NOME.Value;
    DM.TBRuasRUA_ESTADO.Value:=FormEnderecosBairrosLoc.QYBairrosBAI_ESTADO.Value;
    DM.TBRuasESD_NOME.Value:=FormEnderecosBairrosLoc.QYBairrosESD_NOME.Value;
    DM.TBRuasRUA_CIDADE.Value:=FormEnderecosBairrosLoc.QYBairrosBAI_CIDADE.Value;
    DM.TBRuasCID_NOME.Value:=FormEnderecosBairrosLoc.QYBairrosCID_NOME.Value;
    DM.TBRuasRUA_BAIRRO.Value:=FormEnderecosBairrosLoc.QYBairrosBAI_CODIGO.Value;
    DM.TBRuasBAI_NOME.Value:=FormEnderecosBairrosLoc.QYBairrosBAI_NOME.Value;
  end;
  FormEnderecosBairrosLoc.Free;
  FormEnderecosBairrosLoc:=nil;
end;

procedure TFormEnderecos.Label17Click(Sender: TObject);
begin
  ShellExecute(GetDesktopWindow,'open',PChar('http://www.ibge.gov.br/home/geociencias/areaterritorial/area.shtm'),nil,nil,sw_ShowNormal);
end;

procedure TFormEnderecos.Label22Click(Sender: TObject);
begin
  ShellExecute(GetDesktopWindow,'open',PChar('http://www.bcb.gov.br/?RED-TABELAPAISES'),nil,nil,sw_ShowNormal);
end;

procedure TFormEnderecos.Localizar1Click(Sender: TObject);
begin
  case PageControl1.ActivePageIndex of
    00: PesquisarRuas;
    01: PesquisarBairros;
    02: PesquisarCidades;
    03: PesquisarEstados;
    04: PesquisarPaises;
  end;
end;

procedure TFormEnderecos.Ajuda2Click(Sender: TObject);
begin
  MostrarAjuda('');
end;

initialization
  RegisterClass(TFormEnderecos);

finalization
  UnRegisterClass(TFormEnderecos);

end.
