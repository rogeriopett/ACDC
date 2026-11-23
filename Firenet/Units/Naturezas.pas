unit Naturezas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, Buttons, DBSBtn, ExtCtrls, Menus, StdCtrls, Mask, ImgList,
  PngImageList, PngSpeedButton, System.ImageList, System.UITypes;

type
  TFormNaturezas = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    MainMenu1: TMainMenu;
    Arquivo1: TMenuItem;
    Localizar1: TMenuItem;
    N2: TMenuItem;
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
    NaturezasEmOrdemNumerica1Button: TPngSpeedButton;
    Localizar1Button: TPngSpeedButton;
    DBText1: TDBText;
    DBText2: TDBText;
    DBMemo1: TDBMemo;
    Label4: TLabel;
    Label5: TLabel;
    DBComboBox1: TDBComboBox;
    Ajuda1: TMenuItem;
    Ajuda2: TMenuItem;
    Ajuda2Button: TPngSpeedButton;
    Relatorios1: TMenuItem;
    EditarRegistro1: TMenuItem;
    EditarRegistro1Button: TDBSpeedButton;
    PngImageList1: TPngImageList;
    Label6: TLabel;
    Label7: TLabel;
    DBComboBox2: TDBComboBox;
    DBComboBox3: TDBComboBox;
    Label8: TLabel;
    DBComboBox4: TDBComboBox;
    NaturezasEmOrdemAlfabetica1: TMenuItem;
    NaturezasEmOrdemNumerica1: TMenuItem;
    Label9: TLabel;
    DBComboBox5: TDBComboBox;
    Label10: TLabel;
    DBComboBox6: TDBComboBox;
    Label11: TLabel;
    DBComboBox7: TDBComboBox;
    Label12: TLabel;
    DBComboBox8: TDBComboBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure Localizar1Click(Sender: TObject);
    procedure Fechar1Click(Sender: TObject);
    procedure Ajuda2Click(Sender: TObject);
    procedure NaturezasEmOrdemAlfabetica1Click(Sender: TObject);
    procedure NaturezasEmOrdemNumerica1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormNaturezas: TFormNaturezas;

implementation
uses DataMod, Main, DB, NaturezasLoc, NaturezasFast, Funcoes1;

{$R *.dfm}

procedure TFormNaturezas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if DM.TBNaturezas.State in [dsInsert, dsEdit] then
  begin
    MessageDlg('Salve os dados antes de fechar.',mtWarning,[mbOk],0);
    Action:=caNone;
  end;
end;

procedure TFormNaturezas.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;    
end;

procedure TFormNaturezas.FormShow(Sender: TObject);
begin
  FormMain.DesabilitarControles(FormNaturezas);
end;

procedure TFormNaturezas.Localizar1Click(Sender: TObject);
begin
  Application.CreateForm(TFormNaturezasLoc, FormNaturezasLoc);
  FormNaturezasLoc.ShowModal;
  if NaturezasLoc.Procurar then
  begin
    DM.TBNaturezas.Close;
    DM.TBNaturezas.ParamByName('codigo').AsInteger:=FormNaturezasLoc.QYNaturezasNAT_CODIGO.Value;
    DM.TBNaturezas.Open;
  end;
  FormNaturezasLoc.Free;
  FormNaturezasLoc:=nil;
end;

procedure TFormNaturezas.NaturezasEmOrdemAlfabetica1Click(Sender: TObject);
begin
  Application.CreateForm(TFormNaturezasFast, FormNaturezasFast);
  FormNaturezasFast.QY01.Close;
  FormNaturezasFast.QY01.SQL.Clear;
  FormNaturezasFast.QY01.SQL.Add(
    'select NAT_CALCULACOMISSAO, NAT_CALCULACREDITOSN, NAT_CODIGO, NAT_DESCRICAO, '+
    'NAT_DESTACARIMPOSTOS, NAT_ENTRADASAIDA, NAT_INFORMADIFAL from NATUREZAS order by NAT_DESCRICAO');
  FormNaturezasFast.QY01.Open;
  FormNaturezasFast.frxReport1.Variables['TITULO']:=QuotedStr('Naturezas de Operações (CFOP)');
  FormNaturezasFast.frxReport1.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
  FormNaturezasFast.frxReport1.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
  FormNaturezasFast.frxReport1.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
  FormNaturezasFast.frxReport1.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
  FormNaturezasFast.frxReport1.ShowReport;
  FormNaturezasFast.Free;
  FormNaturezasFast:=nil;
end;

procedure TFormNaturezas.NaturezasEmOrdemNumerica1Click(Sender: TObject);
begin
  Application.CreateForm(TFormNaturezasFast, FormNaturezasFast);
  FormNaturezasFast.QY01.Close;
  FormNaturezasFast.QY01.SQL.Clear;
  FormNaturezasFast.QY01.SQL.Add(
    'select NAT_CALCULACOMISSAO, NAT_CALCULACREDITOSN, NAT_CODIGO, NAT_DESCRICAO, '+
    'NAT_DESTACARIMPOSTOS, NAT_ENTRADASAIDA, NAT_INFORMADIFAL from NATUREZAS order by NAT_CODIGO');
  FormNaturezasFast.QY01.Open;
  FormNaturezasFast.frxReport1.Variables['TITULO']:=QuotedStr('Naturezas de Operações (CFOP)');
  FormNaturezasFast.frxReport1.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
  FormNaturezasFast.frxReport1.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
  FormNaturezasFast.frxReport1.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
  FormNaturezasFast.frxReport1.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
  FormNaturezasFast.frxReport1.ShowReport;
  FormNaturezasFast.Free;
  FormNaturezasFast:=nil;
end;

procedure TFormNaturezas.Fechar1Click(Sender: TObject);
begin
  Close;
end;

procedure TFormNaturezas.Ajuda2Click(Sender: TObject);
begin
  MostrarAjuda('');
end;

initialization
  RegisterClass(TFormNaturezas);

finalization
  UnRegisterClass(TFormNaturezas);

end.
