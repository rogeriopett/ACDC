unit Telas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, Mask, DBCtrls, Menus, Buttons, DBSBtn,
  ExtCtrls, ComCtrls, ImgList, PngImageList, PngSpeedButton, Data.DB,
  System.ImageList, System.UITypes;

type
  TFormTelas = class(TForm)
    Panel2: TPanel;
    Bevel4: TBevel;
    dbSBtnFirst1: TDBSpeedButton;
    dbSBtnPrior1: TDBSpeedButton;
    dbSBtnNext1: TDBSpeedButton;
    dbSBtnLast1: TDBSpeedButton;
    dbSBtnNew1: TDBSpeedButton;
    dbSBtnDelete1: TDBSpeedButton;
    dbSBtnSave1: TDBSpeedButton;
    dbSBtnCancel1: TDBSpeedButton;
    SpeedButton12: TPngSpeedButton;
    Bevel7: TBevel;
    MainMenu1: TMainMenu;
    Arquivo1: TMenuItem;
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
    SpeedButton1: TPngSpeedButton;
    Bevel1: TBevel;
    Listagemdetelaspormoduloenome1: TMenuItem;
    N1: TMenuItem;
    SpeedButton2: TPngSpeedButton;
    ObterListadeComponentes1: TMenuItem;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    DBEdit4: TDBEdit;
    DBGrid1: TDBGrid;
    Label18: TLabel;
    DBComboBox4: TDBComboBox;
    Label1: TLabel;
    N2: TMenuItem;
    CadastrodeMdulos1: TMenuItem;
    DBEdit1: TDBEdit;
    Label4: TLabel;
    Label3: TLabel;
    Listagemdetelaspornome1: TMenuItem;
    N3: TMenuItem;
    PngImageList1: TPngImageList;
    Localizar1: TMenuItem;
    N6: TMenuItem;
    PngSpeedButton1: TPngSpeedButton;
    VerificarCadastrodeTelas1: TMenuItem;
    StatusBar1: TStatusBar;
    procedure Fechar1Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Listagemdetelaspormoduloenome1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure CadastrodeMdulos1Click(Sender: TObject);
    procedure Listagemdetelaspornome1Click(Sender: TObject);
    procedure Localizar1Click(Sender: TObject);
    procedure ObterListadeComponentes1Click(Sender: TObject);
    procedure VerificarCadastrodeTelas1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTelas: TFormTelas;

implementation
uses DataMod, Funcoes1, TelasAtualizarComponentes, Modulos, TelasLoc, TelasFast,
  AtualizacoesBase;

{$R *.dfm}

procedure TFormTelas.Fechar1Click(Sender: TObject);
begin
  Close;
end;

procedure TFormTelas.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormTelas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if DM.TBTelas.State in [dsInsert, dsEdit] then
  begin
    Action:=caNone;
    MessageDlg('Salve os dados antes de fechar.',mtWarning,[mbOk],0);
  end;
  //volta o select original que é usado no controle de acessos.
  DM.TBTelas.Close;
  DM.TBTelas.SQL.Clear;
  DM.TBTelas.SQL.Add('select * from TELAS left join MODULOS on TEL_MODULO=MOD_CODIGO where TEL_STATUS=''A'' order by TEL_DESCRICAO');
  DM.TBTelas.Open;
end;

procedure TFormTelas.Listagemdetelaspornome1Click(Sender: TObject);
begin
  Application.CreateForm(TFormTelasFast, FormTelasFast);
  FormTelasFast.QY01.Close;
  FormTelasFast.QY01.SQL.Clear;
  FormTelasFast.QY01.SQL.Add('select * from TELAS left join MODULOS on TEL_MODULO=MOD_CODIGO order by TEL_NOMEFORM');
  FormTelasFast.QY01.Open;
  FormTelasFast.frxReport1.Variables['TITULO']:=QuotedStr('Listagem de telas por nome');
  FormTelasFast.frxReport1.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
  FormTelasFast.frxReport1.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
  FormTelasFast.frxReport1.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
  FormTelasFast.frxReport1.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
  FormTelasFast.frxReport1.ShowReport;
  FormTelasFast.Free;
  FormTelasFast:=nil;
end;

procedure TFormTelas.Listagemdetelaspormoduloenome1Click(Sender: TObject);
begin
  Application.CreateForm(TFormTelasFast, FormTelasFast);
  FormTelasFast.QY01.Close;
  FormTelasFast.QY01.SQL.Clear;
  FormTelasFast.QY01.SQL.Add('select * from TELAS left join MODULOS on TEL_MODULO=MOD_CODIGO order by MOD_NOME, TEL_NOMEFORM');
  FormTelasFast.QY01.Open;
  FormTelasFast.frxReport1.Variables['TITULO']:=QuotedStr('Listagem de telas por módulo e nome');
  FormTelasFast.frxReport1.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
  FormTelasFast.frxReport1.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
  FormTelasFast.frxReport1.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
  FormTelasFast.frxReport1.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
  FormTelasFast.frxReport1.ShowReport;
  FormTelasFast.Free;
  FormTelasFast:=nil;
end;

procedure TFormTelas.FormCreate(Sender: TObject);
begin
  //seleciona todas as telas.
  DM.TBTelas.Close;
  DM.TBTelas.SQL.Clear;
  DM.TBTelas.SQL.Add('select * from TELAS left join MODULOS on TEL_MODULO=MOD_CODIGO order by TEL_NOMEFORM');
  DM.TBTelas.Open;
end;

procedure TFormTelas.DBGrid1DblClick(Sender: TObject);
begin
  DM.TBTelas.Edit;
  if DM.TBTelasTEL_STATUS.Value='A' then
  DM.TBTelasTEL_STATUS.Value:='I' else
  DM.TBTelasTEL_STATUS.Value:='A';
  DM.TBTelas.Post;
  DBGrid1.SetFocus;
end;

procedure TFormTelas.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
  begin
    DM.TBTelas.Edit;
    if DM.TBTelasTEL_STATUS.Value='A' then
    DM.TBTelasTEL_STATUS.Value:='I' else
    DM.TBTelasTEL_STATUS.Value:='A';
    DM.TBTelas.Post;
    DBGrid1.SetFocus;
  end;
end;

procedure TFormTelas.CadastrodeMdulos1Click(Sender: TObject);
begin
  Application.CreateForm(TFormModulos, FormModulos);
  FormModulos.ShowModal;
  FormModulos.Free;
  FormModulos:=nil;
end;

procedure TFormTelas.Localizar1Click(Sender: TObject);
begin
  Application.CreateForm(TFormTelasLoc, FormTelasLoc);
  FormTelasLoc.ShowModal;
  if TelasLoc.Procurar then
  begin
    DM.TBTelas.Locate('TEL_NOMEFORM',FormTelasLoc.QYTelasTEL_NOMEFORM.Value,[]);
  end;
  FormTelasLoc.Free;
  FormTelasLoc:=nil;
end;

procedure TFormTelas.ObterListadeComponentes1Click(Sender: TObject);
begin
  if MessageDlg('Refazer lista de componentes???',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    DM.AtualizarUsuariosAcessos:=True;
    Application.CreateForm(TFormTelasAtualizarComponentes, FormTelasAtualizarComponentes);
    FormTelasAtualizarComponentes.ShowModal;
    FormTelasAtualizarComponentes.Free;
    FormTelasAtualizarComponentes:=nil;
    DM.AtualizarUsuariosAcessos:=False;
  end;
end;

procedure TFormTelas.VerificarCadastrodeTelas1Click(Sender: TObject);
begin
  if MessageDlg('Deseja verificar o cadastro das telas?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    StatusBar1.SimpleText:='Verificando telas...';
    VerificarTelas;
    StatusBar1.SimpleText:='';
    MessageDlg('Verificação concluída.',mtInformation,[mbOk],0);
  end;
end;

end.
