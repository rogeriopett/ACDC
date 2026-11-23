unit SegurosTipos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.DBCtrls, Vcl.Buttons,
  PngSpeedButton, DBSBtn, Vcl.ExtCtrls, System.ImageList, Vcl.ImgList,
  PngImageList, Vcl.Menus, Vcl.StdCtrls, Vcl.Mask;

type
  TFormSegurosTipos = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBComboBox1: TDBComboBox;
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
    Ajuda2Button: TPngSpeedButton;
    EditarRegistro1Button: TDBSpeedButton;
    procedure Localizar1Click(Sender: TObject);
    procedure Fechar1Click(Sender: TObject);
    procedure Relatorios2Click(Sender: TObject);
    procedure Ajuda2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormSegurosTipos: TFormSegurosTipos;

implementation
uses DataMod, DataMod2, Funcoes1, SegurosTiposFast, Main, SegurosTiposLoc, DB;
{$R *.dfm}

procedure TFormSegurosTipos.Ajuda2Click(Sender: TObject);
begin
  MostrarAjuda('');
end;

procedure TFormSegurosTipos.Fechar1Click(Sender: TObject);
begin
  Close;
end;

procedure TFormSegurosTipos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if DM2.TBSegurosTipos.State in [dsInsert, dsEdit] then
  begin
    MessageDlg('Salve os dados antes de fechar.',mtWarning,[mbOk],0);
    Action:=caNone;
  end;
end;

procedure TFormSegurosTipos.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormSegurosTipos.FormShow(Sender: TObject);
begin
  FormMain.DesabilitarControles(FormSegurosTipos);
end;

procedure TFormSegurosTipos.Localizar1Click(Sender: TObject);
begin
  Application.CreateForm(TFormSegurosTiposLoc, FormSegurosTiposLoc);
  FormSegurosTiposLoc.ShowModal;
  if SegurosTiposLoc.Procurar then
  begin
    DM2.TBSegurosTipos.Close;
    DM2.TBSegurosTipos.ParamByName('codigo').AsInteger:=FormSegurosTiposLoc.QYSegurosTiposSGT_CODIGO.Value;
    DM2.TBSegurosTipos.Open;
  end;
  FormSegurosTiposLoc.Free;
  FormSegurosTiposLoc:=nil;
end;

procedure TFormSegurosTipos.Relatorios2Click(Sender: TObject);
begin
  Application.CreateForm(TFormSegurosTiposFast, FormSegurosTiposFast);
  FormSegurosTiposFast.QY01.Close;
  FormSegurosTiposFast.QY01.Open;
  FormSegurosTiposFast.frxReport1.Variables['TITULO']:=QuotedStr('Tipos de Seguros');
  FormSegurosTiposFast.frxReport1.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
  FormSegurosTiposFast.frxReport1.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
  FormSegurosTiposFast.frxReport1.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
  FormSegurosTiposFast.frxReport1.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
  FormSegurosTiposFast.frxReport1.ShowReport;
  FormSegurosTiposFast.Free;
  FormSegurosTiposFast:=nil;
end;

initialization
  RegisterClass(TFormSegurosTipos);

finalization
  UnRegisterClass(TFormSegurosTipos);

end.
