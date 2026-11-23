unit Convenios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.DBCtrls, Vcl.Buttons,
  PngSpeedButton, DBSBtn, Vcl.ExtCtrls, System.ImageList, Vcl.ImgList,
  PngImageList, Vcl.Menus, Vcl.StdCtrls, Vcl.Mask;

type
  TFormConvenios = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    MainMenu1: TMainMenu;
    Arquivo1: TMenuItem;
    Localizar1: TMenuItem;
    N1: TMenuItem;
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
    SpeedButton5: TPngSpeedButton;
    Bevel1: TBevel;
    Relatorios2Button: TPngSpeedButton;
    Localizar1Button: TPngSpeedButton;
    DBText1: TDBText;
    DBText2: TDBText;
    Bevel2: TBevel;
    Ajuda2Button: TPngSpeedButton;
    EditarRegistro1Button: TDBSpeedButton;
    Fechar1Button: TPngSpeedButton;
    Label7: TLabel;
    DBComboBox2: TDBComboBox;
    procedure Localizar1Click(Sender: TObject);
    procedure Fechar1Click(Sender: TObject);
    procedure Ajuda2Click(Sender: TObject);
    procedure Relatorios2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormConvenios: TFormConvenios;

implementation
uses DataMod, Funcoes1, ConveniosLoc, DB, ConveniosFast;

{$R *.dfm}

procedure TFormConvenios.Ajuda2Click(Sender: TObject);
begin
  MostrarAjuda('');
end;

procedure TFormConvenios.Relatorios2Click(Sender: TObject);
begin
  Application.CreateForm(TFormConveniosFast, FormConveniosFast);
  FormConveniosFast.QY01.Close;
  FormConveniosFast.QY01.Open;
  FormConveniosFast.frxReport1.Variables['TITULO']:=QuotedStr('Convênios');
  FormConveniosFast.frxReport1.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
  FormConveniosFast.frxReport1.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
  FormConveniosFast.frxReport1.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
  FormConveniosFast.frxReport1.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
  FormConveniosFast.frxReport1.ShowReport;
  FormConveniosFast.Free;
  FormConveniosFast:=nil;
end;

procedure TFormConvenios.Fechar1Click(Sender: TObject);
begin
  Close;
end;

procedure TFormConvenios.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if DM.TBConvenios.State in [dsInsert, dsEdit] then
  begin
    MessageDlg('Salve os dados antes de fechar.',mtWarning,[mbOk],0);
    Action:=caNone;
  end;
end;

procedure TFormConvenios.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormConvenios.Localizar1Click(Sender: TObject);
begin
  Application.CreateForm(TFormConveniosLoc, FormConveniosLoc);
  FormConveniosLoc.ShowModal;
  if ConveniosLoc.Procurar then
  begin
    DM.TBConvenios.Close;
    DM.TBConvenios.ParamByName('codigo').AsInteger:=FormConveniosLoc.QYConveniosCOV_CODIGO.Value;
    DM.TBConvenios.Open;
  end;
  FormConveniosLoc.Free;
  FormConveniosLoc:=nil;
end;

initialization
  RegisterClass(TFormConvenios);

finalization
  UnRegisterClass(TFormConvenios);

end.
