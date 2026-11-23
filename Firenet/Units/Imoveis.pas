unit Imoveis;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, DB, ImgList, PngImageList, Menus, Buttons,
  PngSpeedButton, DBSBtn, ExtCtrls, System.ImageList, System.UITypes;

type
  TFormImoveis = class(TForm)
    Panel2: TPanel;
    Bevel4: TBevel;
    InserirRegistro1Button: TDBSpeedButton;
    EliminarRegistro1Button: TDBSpeedButton;
    SalvarRegistro1Button: TDBSpeedButton;
    CancelarRegistro1Button: TDBSpeedButton;
    Fechar1Button: TPngSpeedButton;
    Bevel7: TBevel;
    Localizar1Button: TPngSpeedButton;
    Bevel1: TBevel;
    Relatorios2Button: TPngSpeedButton;
    DBText1: TDBText;
    DBText2: TDBText;
    CadastroDeTiposDeImoveis1Button: TPngSpeedButton;
    CadastroDeEnderecos1Button: TPngSpeedButton;
    Ajuda2Button: TPngSpeedButton;
    EditarRegistro1Button: TDBSpeedButton;
    MainMenu1: TMainMenu;
    Arquivo1: TMenuItem;
    Localizar1: TMenuItem;
    N1: TMenuItem;
    CadastroDeTiposDeImoveis1: TMenuItem;
    CadastroDeClientes1: TMenuItem;
    CadastroDeEnderecos1: TMenuItem;
    N2: TMenuItem;
    Fechar1: TMenuItem;
    Navegacao1: TMenuItem;
    InserirRegistro1: TMenuItem;
    EliminarRegistro1: TMenuItem;
    N5: TMenuItem;
    SalvarRegistro1: TMenuItem;
    CancelarRegistro1: TMenuItem;
    EditarRegistro1: TMenuItem;
    Relatorios1: TMenuItem;
    Relatorios2: TMenuItem;
    N4: TMenuItem;
    Ajuda1: TMenuItem;
    Ajuda2: TMenuItem;
    PngImageList1: TPngImageList;
    Label57: TLabel;
    DBEdit55: TDBEdit;
    DBEdit56: TDBEdit;
    SpeedButton21: TPngSpeedButton;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Label2: TLabel;
    Label21: TLabel;
    DBEdit19: TDBEdit;
    Label26: TLabel;
    Label28: TLabel;
    DBEdit54: TDBEdit;
    Label25: TLabel;
    DBEdit24: TDBEdit;
    DBEdit23: TDBEdit;
    DBEdit20: TDBEdit;
    DBEdit21: TDBEdit;
    SpeedButton1: TPngSpeedButton;
    DBEdit25: TDBEdit;
    Label29: TLabel;
    Label27: TLabel;
    DBEdit22: TDBEdit;
    DBEdit3: TDBEdit;
    Label3: TLabel;
    CadastroDeClientes1Button: TPngSpeedButton;
    DBComboBox1: TDBComboBox;
    Label4: TLabel;
    DBComboBox2: TDBComboBox;
    Label5: TLabel;
    Label6: TLabel;
    DBComboBox3: TDBComboBox;
    DBEdit4: TDBEdit;
    Label7: TLabel;
    DBEdit5: TDBEdit;
    Label8: TLabel;
    Label9: TLabel;
    DBComboBox4: TDBComboBox;
    Label10: TLabel;
    DBEdit7: TDBEdit;
    Label11: TLabel;
    FotosDoImovel1Button: TPngSpeedButton;
    N3: TMenuItem;
    FotosDoImovel1: TMenuItem;
    DBComboBox5: TDBComboBox;
    Label12: TLabel;
    DBEdit8: TDBEdit;
    Label13: TLabel;
    DBEdit9: TDBEdit;
    Label14: TLabel;
    DBMemo1: TDBMemo;
    Label23: TLabel;
    Label15: TLabel;
    PngSpeedButton3: TPngSpeedButton;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBComboBox6: TDBComboBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Fechar1Click(Sender: TObject);
    procedure Localizar1Click(Sender: TObject);
    procedure Relatorios2Click(Sender: TObject);
    procedure Ajuda2Click(Sender: TObject);
    procedure CadastroDeTiposDeImoveis1Click(Sender: TObject);
    procedure CadastroDeClientes1Click(Sender: TObject);
    procedure CadastroDeEnderecos1Click(Sender: TObject);
    procedure DBEdit55Exit(Sender: TObject);
    procedure DBEdit55KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton21Click(Sender: TObject);
    procedure FotosDoImovel1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBEdit21Exit(Sender: TObject);
    procedure DBEdit21KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton1Click(Sender: TObject);
    procedure DBEdit10Exit(Sender: TObject);
    procedure DBEdit10KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure PngSpeedButton3Click(Sender: TObject);
    procedure DBEdit21Enter(Sender: TObject);
    procedure DBEdit55Enter(Sender: TObject);
    procedure DBEdit10Enter(Sender: TObject);
    procedure DBEdit10KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit55KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit21KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormImoveis: TFormImoveis;

implementation
uses DataMod2, Funcoes1, Main, Clientes, Enderecos, ImoveisTipos, ImoveisTiposLoc,
  EnderecosRuasLoc, DataMod, ClientesLoc, ImoveisLoc, ImoveisFotos,
  DataModSearch;
{$R *.dfm}

procedure TFormImoveis.Ajuda2Click(Sender: TObject);
begin
  MostrarAjuda('');
end;

procedure TFormImoveis.CadastroDeClientes1Click(Sender: TObject);
begin
  Application.CreateForm(TFormClientes, FormClientes);
  FormClientes.ShowModal;
  FormClientes.Free;
  FormClientes:=nil;
end;

procedure TFormImoveis.CadastroDeEnderecos1Click(Sender: TObject);
begin
  Application.CreateForm(TFormEnderecos, FormEnderecos);
  FormEnderecos.ShowModal;
  FormEnderecos.Free;
  FormEnderecos:=nil;
end;

procedure TFormImoveis.CadastroDeTiposDeImoveis1Click(Sender: TObject);
begin
  Application.CreateForm(TFormImoveisTipos, FormImoveisTipos);
  FormImoveisTipos.ShowModal;
  FormImoveisTipos.Free;
  FormImoveisTipos:=nil;
end;

procedure TFormImoveis.DBEdit10Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TDBEdit).Text;
end;

procedure TFormImoveis.DBEdit10Exit(Sender: TObject);
begin
  if (DM2.TBImoveis.State in [dsInsert, dsEdit]) and ((Sender as TDBEdit).Text='') then
  begin
    DM2.TBImoveisIMO_CLIENTE.Clear;
    DM2.TBImoveisCLI_NOME.Clear;
    Exit;
  end;
  if DM.CodigosOld=(Sender as TDBEdit).Text then
  Exit;
  if (DM2.TBImoveis.State in [dsInsert, dsEdit]) and ((Sender as TDBEdit).Text<>'') then
  begin
    DMS.QYClientes.Close;
    DMS.QYClientes.ParamByName('codigo').AsInteger:=StrToInt((Sender as TDBEdit).Text);
    DMS.QYClientes.Open;
    if not DMS.QYClientes.IsEmpty then
    begin
      DM2.TBImoveisIMO_CLIENTE.Value:=DMS.QYClientesCLI_CODIGO.Value;
      DM2.TBImoveisCLI_NOME.Value:=DMS.QYClientesCLI_NOME.Value;
    end else
    begin
      DM2.TBImoveisIMO_CLIENTE.Clear;
      DM2.TBImoveisCLI_NOME.Clear;
      MessageDlg('Cliente não encontrado.',mtInformation,[mbOk],0);
      (Sender as TDBEdit).SetFocus;
    end;
    DMS.QYClientes.Close;
  end;
end;

procedure TFormImoveis.DBEdit10KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  PngSpeedButton3.Click;
end;

procedure TFormImoveis.DBEdit10KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormImoveis.DBEdit21Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TDBEdit).Text;
end;

procedure TFormImoveis.DBEdit21Exit(Sender: TObject);
begin
  if DM.CodigosOld=(Sender as TDBEdit).Text then
  Exit;
  if (DM2.TBImoveis.State in [dsInsert, dsEdit]) and ((Sender as TDBEdit).Text='     -   ') then
  begin
    DM2.TBImoveisIMO_CEP.Clear;
    DM2.TBImoveisIMO_ENDERECO.Clear;
    DM2.TBImoveisIMO_BAIRRO.Clear;
    DM2.TBImoveisIMO_ESTADO.Clear;
    DM2.TBImoveisIMO_CIDADE.Clear;
    DM2.TBImoveisIMO_CIDADECODIGO.Clear;
    DM2.TBImoveisIMO_CIDADECODIGODIMOB.Clear;
    Exit;
  end;
  if (DM2.TBImoveis.State in [dsInsert, dsEdit]) and ((Sender as TDBEdit).Text<>'     -   ') then
  begin
    DMS.QYRuas.Close;
    DMS.QYRuas.ParamByName('codigo').AsString:=(Sender as TDBEdit).Text;
    DMS.QYRuas.Open;
    if not DMS.QYRuas.IsEmpty then
    begin
      DM2.TBImoveisIMO_ENDERECO.Value:=DMS.QYRuasRUA_NOME.Value;
      DM2.TBImoveisIMO_BAIRRO.Value:=DMS.QYRuasBAI_NOME.Value;
      DM2.TBImoveisIMO_ESTADO.Value:=DMS.QYRuasESD_SIGLA.Value;
      DM2.TBImoveisIMO_CIDADE.Value:=DMS.QYRuasCID_NOME.Value;
      DM2.TBImoveisIMO_CIDADECODIGO.Value:=DMS.QYRuasRUA_CIDADE.Value;
      DM2.TBImoveisIMO_CIDADECODIGODIMOB.Value:=DMS.QYRuasCID_DIMOB.Value;
      DMS.QYRuas.FetchAll;
      //se tiver mais de uma rua com o mesmo CEP, abre a tela de localização de ruas já com a listagem das ruas.
      if DMS.QYRuas.RecordCount>1 then
      begin
        Application.CreateForm(TFormEnderecosRuasLoc, FormEnderecosRuasLoc);
        FormEnderecosRuasLoc.QYRuas.SQL.Clear;
        FormEnderecosRuasLoc.QYRuas.SQL.Add('select * from RUAS '+
                                            'left join BAIRROS on RUA_BAIRRO=BAI_CODIGO '+
                                            'left join CIDADES on RUA_CIDADE=CID_CODIGO '+
                                            'left join ESTADOS on RUA_ESTADO=ESD_CODIGO '+
                                            'left join PAISES on RUA_PAIS=PAI_CODIGO '+
                                            'where RUA_CEP like '+QuotedStr('%'+(Sender as TDBEdit).Text+'%')+' order by RUA_NOME');
        FormEnderecosRuasLoc.QYRuas.Active:=True;
        EnderecosRuasLoc.FocoNoGrid:=True;
        FormEnderecosRuasLoc.ShowModal;
        if EnderecosRuasLoc.Procurar then
        begin
          DM2.TBImoveisIMO_ENDERECO.Value:=FormEnderecosRuasLoc.QYRuasRUA_NOME.Value;
          DM2.TBImoveisIMO_BAIRRO.Value:=FormEnderecosRuasLoc.QYRuasBAI_NOME.Value;
          DM2.TBImoveisIMO_ESTADO.Value:=FormEnderecosRuasLoc.QYRuasESD_SIGLA.Value;
          DM2.TBImoveisIMO_CIDADE.Value:=FormEnderecosRuasLoc.QYRuasCID_NOME.Value;
          DM2.TBImoveisIMO_CIDADECODIGO.Value:=FormEnderecosRuasLoc.QYRuasCID_CODIGO.Value;
          DM2.TBImoveisIMO_CIDADECODIGODIMOB.Value:=FormEnderecosRuasLoc.QYRuasCID_DIMOB.Value;
          DM2.TBImoveisIMO_CEP.Value:=FormEnderecosRuasLoc.QYRuasRUA_CEP.Value;
        end;
        FormEnderecosRuasLoc.Free;
        FormEnderecosRuasLoc:=nil;
      end;
    end else
    begin
      DM2.TBImoveisIMO_CEP.Clear;
      DM2.TBImoveisIMO_ENDERECO.Clear;
      DM2.TBImoveisIMO_BAIRRO.Clear;
      DM2.TBImoveisIMO_ESTADO.Clear;
      DM2.TBImoveisIMO_CIDADE.Clear;
      DM2.TBImoveisIMO_CIDADECODIGO.Clear;
      DM2.TBImoveisIMO_CIDADECODIGODIMOB.Clear;
      MessageDlg('Endereço não encontrado.',mtInformation,[mbOk],0);
      (Sender as TDBEdit).SetFocus;
    end;
    DMS.QYRuas.Close;
  end;
end;

procedure TFormImoveis.DBEdit21KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton1.Click;
end;

procedure TFormImoveis.DBEdit21KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormImoveis.DBEdit55Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TDBEdit).Text;
end;

procedure TFormImoveis.DBEdit55Exit(Sender: TObject);
begin
  if (DM2.TBImoveis.State in [dsInsert, dsEdit]) and ((Sender as TDBEdit).Text='') then
  begin
    DM2.TBImoveisIMO_TIPOIMOVEL.Clear;
    DM2.TBImoveisIMT_DESCRICAO.Clear;
    Exit;
  end;
  if DM.CodigosOld=(Sender as TDBEdit).Text then
  Exit;
  if (DM2.TBImoveis.State in [dsInsert, dsEdit]) and ((Sender as TDBEdit).Text<>'') then
  begin
    DMS.QYImoveisTipos.Close;
    DMS.QYImoveisTipos.ParamByName('codigo').AsInteger:=StrToInt((Sender as TDBEdit).Text);
    DMS.QYImoveisTipos.Open;
    if not DMS.QYImoveisTipos.IsEmpty then
    begin
      DM2.TBImoveisIMO_TIPOIMOVEL.Value:=DMS.QYImoveisTiposIMT_CODIGO.Value;
      DM2.TBImoveisIMT_DESCRICAO.Value:=DMS.QYImoveisTiposIMT_DESCRICAO.Value;
    end else
    begin
      DM2.TBImoveisIMO_TIPOIMOVEL.Clear;
      DM2.TBImoveisIMT_DESCRICAO.Clear;
      MessageDlg('Tipo de imóvel não encontrado.',mtInformation,[mbOk],0);
      (Sender as TDBEdit).SetFocus;
    end;
    DMS.QYImoveisTipos.Close;
  end;
end;

procedure TFormImoveis.DBEdit55KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton21.Click;
end;

procedure TFormImoveis.DBEdit55KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormImoveis.Fechar1Click(Sender: TObject);
begin
  Close;
end;

procedure TFormImoveis.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if DM2.TBImoveis.State in [dsInsert, dsEdit] then
  begin
    MessageDlg('Salve os dados antes de fechar.',mtWarning,[mbOk],0);
    Action:=caNone;
  end;
end;

procedure TFormImoveis.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormImoveis.FormShow(Sender: TObject);
begin
  FormMain.DesabilitarControles(FormImoveis);
end;

procedure TFormImoveis.FotosDoImovel1Click(Sender: TObject);
var Pasta: String;
begin
  AbortIf(DM2.TBImoveis.IsEmpty,'Nenhum imóvel selecionado.');
  AbortIf(DM.TBParametrosPAR_LOCALFOTOSIMOVEIS.Value='','Parâmetro de localização das fotos não definido.'+#13+'Defina em Parâmetros do Sistema.');

  Pasta:=IncludeTrailingPathDelimiter(DM.TBParametrosPAR_LOCALFOTOSIMOVEIS.Value);
  Pasta:=Pasta+AlignText(IntToStr(DM2.TBImoveisIMO_CODIGO.Value),'0',8,taRight)+'\';
  AbortIf(not System.SysUtils.ForceDirectories(Pasta),'Não foi possível criar as pastas'+#13#13+Pasta);

  Application.CreateForm(TFormImoveisFotos, FormImoveisFotos);
  FormImoveisFotos.Pasta:=Pasta;
  FormImoveisFotos.FileListBox1.Directory:=Pasta;
  FormImoveisFotos.FileListBox1.ItemIndex:=0;
  FormImoveisFotos.FileListBox1Change(nil);
  FormImoveisFotos.OpenPictureDialog1.InitialDir:=ExtractFilePath(Application.ExeName);
  FormImoveisFotos.ShowModal;
  FormImoveisFotos.Free;
  FormImoveisFotos:=nil;
end;

procedure TFormImoveis.Localizar1Click(Sender: TObject);
begin
  Application.CreateForm(TFormImoveisLoc, FormImoveisLoc);
  FormImoveisLoc.ShowModal;
  if ImoveisLoc.Procurar then
  begin
    DM2.TBImoveis.Close;
    DM2.TBImoveis.ParamByName('codigo').AsInteger:=FormImoveisLoc.QYImoveisIMO_CODIGO.Value;
    DM2.TBImoveis.Open;
  end;
  FormImoveisLoc.Free;
  FormImoveisLoc:=nil;
end;

procedure TFormImoveis.PngSpeedButton3Click(Sender: TObject);
begin
  Application.CreateForm(TFormClientesLoc, FormClientesLoc);
  FormClientesLoc.ShowModal;
  if ClientesLoc.Procurar then
  begin
    DM2.TBImoveis.Edit;
    DM2.TBImoveisIMO_CLIENTE.Value:=FormClientesLoc.QYClientesCLI_CODIGO.Value;
    DM2.TBImoveisCLI_NOME.Value:=FormClientesLoc.QYClientesCLI_NOME.Value;
  end;
  FormClientesLoc.Free;
  FormClientesLoc:=nil;
end;

procedure TFormImoveis.Relatorios2Click(Sender: TObject);
begin
  MessageDlg('Ainda não disponível.',mtInformation,[mbOk],0);
end;

procedure TFormImoveis.SpeedButton1Click(Sender: TObject);
begin
  DBEdit25.SetFocus; //tira o foco do campo CEP.
  Application.CreateForm(TFormEnderecosRuasLoc, FormEnderecosRuasLoc);
  FormEnderecosRuasLoc.ShowModal;
  if EnderecosRuasLoc.Procurar then
  begin
    DM2.TBImoveis.Edit;
    DM2.TBImoveisIMO_ESTADO.Value:=FormEnderecosRuasLoc.QYRuasESD_SIGLA.Value;
    DM2.TBImoveisIMO_CIDADE.Value:=FormEnderecosRuasLoc.QYRuasCID_NOME.Value;
    DM2.TBImoveisIMO_CIDADECODIGO.Value:=FormEnderecosRuasLoc.QYRuasCID_CODIGO.Value; //tabela ibge.
    DM2.TBImoveisIMO_CIDADECODIGODIMOB.Value:=FormEnderecosRuasLoc.QYRuasCID_DIMOB.Value;
    DM2.TBImoveisIMO_BAIRRO.Value:=FormEnderecosRuasLoc.QYRuasBAI_NOME.Value;
    DM2.TBImoveisIMO_ENDERECO.Value:=FormEnderecosRuasLoc.QYRuasRUA_NOME.Value;
    DM2.TBImoveisIMO_CEP.Value:=FormEnderecosRuasLoc.QYRuasRUA_CEP.Value;
  end;
  FormEnderecosRuasLoc.Free;
  FormEnderecosRuasLoc:=nil;
end;

procedure TFormImoveis.SpeedButton21Click(Sender: TObject);
begin
  Application.CreateForm(TFormImoveisTiposLoc, FormImoveisTiposLoc);
  FormImoveisTiposLoc.ShowModal;
  if ImoveisTiposLoc.Procurar then
  begin
    DM2.TBImoveis.Edit;
    DM2.TBImoveisIMO_TIPOIMOVEL.Value:=FormImoveisTiposLoc.QYImoveisTiposIMT_CODIGO.Value;
    DM2.TBImoveisIMT_DESCRICAO.Value:=FormImoveisTiposLoc.QYImoveisTiposIMT_DESCRICAO.Value;
  end;
  FormImoveisTiposLoc.Free;
  FormImoveisTiposLoc:=nil;
end;

initialization
  RegisterClass(TFormImoveis);

finalization
  UnRegisterClass(TFormImoveis);

end.
