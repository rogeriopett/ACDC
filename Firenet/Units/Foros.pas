unit Foros;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, Buttons, PngSpeedButton, DBSBtn, ExtCtrls, ImgList,
  PngImageList, Menus, StdCtrls, Mask, System.ImageList, System.UITypes;

type
  TFormForos = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label35: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit33: TDBEdit;
    MainMenu1: TMainMenu;
    Arquivo1: TMenuItem;
    Localizar1: TMenuItem;
    N1: TMenuItem;
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
    Ajuda1: TMenuItem;
    Ajuda2: TMenuItem;
    PngImageList1: TPngImageList;
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
    DBText1: TDBText;
    DBText2: TDBText;
    Bevel2: TBevel;
    CadastroDeEnderecos1Button: TPngSpeedButton;
    Ajuda2Button: TPngSpeedButton;
    EditarRegistro1Button: TDBSpeedButton;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    PngSpeedButton1: TPngSpeedButton;
    DBEdit21: TDBEdit;
    DBEdit22: TDBEdit;
    DBEdit24: TDBEdit;
    DBEdit25: TDBEdit;
    DBEdit20: TDBEdit;
    DBEdit54: TDBEdit;
    DBEdit23: TDBEdit;
    DBEdit4: TDBEdit;
    Label4: TLabel;
    procedure Fechar1Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Localizar1Click(Sender: TObject);
    procedure Relatorios2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Ajuda2Click(Sender: TObject);
    procedure CadastroDeEnderecos1Click(Sender: TObject);
    procedure DBEdit21Exit(Sender: TObject);
    procedure DBEdit21KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure PngSpeedButton1Click(Sender: TObject);
    procedure DBEdit21Enter(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBEdit21KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormForos: TFormForos;

implementation
uses Enderecos, DataMod2, Funcoes1, DB, DataMod, DataModSearch,
  EnderecosRuasLoc, ForosLoc, ForosFast, Main;

{$R *.dfm}

procedure TFormForos.Ajuda2Click(Sender: TObject);
begin
  MostrarAjuda('');
end;

procedure TFormForos.CadastroDeEnderecos1Click(Sender: TObject);
begin
  Application.CreateForm(TFormEnderecos, FormEnderecos);
  FormEnderecos.ShowModal;
  FormEnderecos.Free;
  FormEnderecos:=nil;
end;

procedure TFormForos.DBEdit21Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TDBEdit).Text;
end;

procedure TFormForos.DBEdit21Exit(Sender: TObject);
begin
  if DM.CodigosOld=(Sender as TDBEdit).Text then
  Exit;
  if (DM2.TBForos.State in [dsInsert, dsEdit]) and ((Sender as TDBEdit).Text='     -   ') then
  begin
    DM2.TBForosFRS_CEP.Clear;
    DM2.TBForosFRS_ENDERECO.Clear;
    DM2.TBForosFRS_BAIRRO.Clear;
    DM2.TBForosFRS_ESTADO.Clear;
    DM2.TBForosFRS_ESTADOCODIGO.Clear;
    DM2.TBForosFRS_CIDADE.Clear;
    DM2.TBForosFRS_CIDADECODIGO.Clear;
    Exit;
  end;
  if (DM2.TBForos.State in [dsInsert, dsEdit]) and ((Sender as TDBEdit).Text<>'     -   ') then
  begin
    DMS.QYRuas.Close;
    DMS.QYRuas.ParamByName('codigo').AsString:=(Sender as TDBEdit).Text;
    DMS.QYRuas.Open;
    if not DMS.QYRuas.IsEmpty then
    begin
      DM2.TBForosFRS_ENDERECO.Value:=DMS.QYRuasRUA_NOME.Value;
      DM2.TBForosFRS_BAIRRO.Value:=DMS.QYRuasBAI_NOME.Value;
      DM2.TBForosFRS_ESTADO.Value:=DMS.QYRuasESD_SIGLA.Value;
      DM2.TBForosFRS_ESTADOCODIGO.Value:=DMS.QYRuasRUA_ESTADO.Value;
      DM2.TBForosFRS_CIDADE.Value:=DMS.QYRuasCID_NOME.Value;
      DM2.TBForosFRS_CIDADECODIGO.Value:=DMS.QYRuasRUA_CIDADE.Value;
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
          DM2.TBForosFRS_ENDERECO.Value:=FormEnderecosRuasLoc.QYRuasRUA_NOME.Value;
          DM2.TBForosFRS_BAIRRO.Value:=FormEnderecosRuasLoc.QYRuasBAI_NOME.Value;
          DM2.TBForosFRS_ESTADO.Value:=FormEnderecosRuasLoc.QYRuasESD_SIGLA.Value;
          DM2.TBForosFRS_ESTADOCODIGO.Value:=FormEnderecosRuasLoc.QYRuasRUA_ESTADO.Value;
          DM2.TBForosFRS_CIDADE.Value:=FormEnderecosRuasLoc.QYRuasCID_NOME.Value;
          DM2.TBForosFRS_CIDADECODIGO.Value:=FormEnderecosRuasLoc.QYRuasCID_CODIGO.Value;
          DM2.TBForosFRS_CEP.Value:=FormEnderecosRuasLoc.QYRuasRUA_CEP.Value;
        end;
        FormEnderecosRuasLoc.Free;
        FormEnderecosRuasLoc:=nil;
      end;
    end else
    begin
      DM2.TBForosFRS_CEP.Clear;
      DM2.TBForosFRS_ENDERECO.Clear;
      DM2.TBForosFRS_BAIRRO.Clear;
      DM2.TBForosFRS_ESTADO.Clear;
      DM2.TBForosFRS_ESTADOCODIGO.Clear;
      DM2.TBForosFRS_CIDADE.Clear;
      DM2.TBForosFRS_CIDADECODIGO.Clear;
      MessageDlg('Endereço não encontrado.',mtInformation,[mbOk],0);
      (Sender as TDBEdit).SetFocus;
    end;
    DMS.QYRuas.Close;
  end;
end;

procedure TFormForos.DBEdit21KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  PngSpeedButton1.Click;
end;

procedure TFormForos.DBEdit21KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormForos.Fechar1Click(Sender: TObject);
begin
  Close;
end;

procedure TFormForos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if DM2.TBForos.State in [dsInsert, dsEdit] then
  begin
    MessageDlg('Salve os dados antes de fechar.',mtWarning,[mbOk],0);
    Action:=caNone;
  end;
end;

procedure TFormForos.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormForos.FormShow(Sender: TObject);
begin
  FormMain.DesabilitarControles(FormForos);
end;

procedure TFormForos.Localizar1Click(Sender: TObject);
begin
  Application.CreateForm(TFormForosLoc, FormForosLoc);
  FormForosLoc.ShowModal;
  if ForosLoc.Procurar then
  begin
    DM2.TBForos.Close;
    DM2.TBForos.ParamByName('codigo').AsInteger:=FormForosLoc.QYForosFRS_CODIGO.Value;
    DM2.TBForos.Open;
  end;
  FormForosLoc.Free;
  FormForosLoc:=nil;
end;

procedure TFormForos.PngSpeedButton1Click(Sender: TObject);
begin
  DBEdit25.SetFocus; //tira o foco do campo CEP.
  Application.CreateForm(TFormEnderecosRuasLoc, FormEnderecosRuasLoc);
  FormEnderecosRuasLoc.ShowModal;
  if EnderecosRuasLoc.Procurar then
  begin
    DM2.TBForos.Edit;
    DM2.TBForosFRS_ESTADO.Value:=FormEnderecosRuasLoc.QYRuasESD_SIGLA.Value;
    DM2.TBForosFRS_ESTADOCODIGO.Value:=FormEnderecosRuasLoc.QYRuasRUA_ESTADO.Value;
    DM2.TBForosFRS_CIDADE.Value:=FormEnderecosRuasLoc.QYRuasCID_NOME.Value;
    DM2.TBForosFRS_CIDADECODIGO.Value:=FormEnderecosRuasLoc.QYRuasCID_CODIGO.Value; //tabela ibge.
    DM2.TBForosFRS_BAIRRO.Value:=FormEnderecosRuasLoc.QYRuasBAI_NOME.Value;
    DM2.TBForosFRS_ENDERECO.Value:=FormEnderecosRuasLoc.QYRuasRUA_NOME.Value;
    DM2.TBForosFRS_CEP.Value:=FormEnderecosRuasLoc.QYRuasRUA_CEP.Value;
  end;
  FormEnderecosRuasLoc.Free;
  FormEnderecosRuasLoc:=nil;
end;

procedure TFormForos.Relatorios2Click(Sender: TObject);
begin
  Application.CreateForm(TFormForosFast, FormForosFast);
  FormForosFast.QY01.Close;
  FormForosFast.QY01.Open;
  FormForosFast.frxReport1.Variables['TITULO']:=QuotedStr('Foros');
  FormForosFast.frxReport1.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
  FormForosFast.frxReport1.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
  FormForosFast.frxReport1.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
  FormForosFast.frxReport1.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
  FormForosFast.frxReport1.ShowReport;
  FormForosFast.Free;
  FormForosFast:=nil;
end;

initialization
  RegisterClass(TFormForos);

finalization
  UnRegisterClass(TFormForos);

end.
