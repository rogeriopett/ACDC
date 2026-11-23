unit Locais;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, Buttons, DBSBtn, ExtCtrls, Menus, StdCtrls, Mask, ImgList,
  PngImageList, PngSpeedButton, System.ImageList, System.UITypes;

type
  TFormLocais = class(TForm)
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
    EditarRegistro1: TMenuItem;
    Relatorios1: TMenuItem;
    Relatorios2: TMenuItem;
    Ajuda1: TMenuItem;
    Ajuda2: TMenuItem;
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
    EditarRegistro1Button: TDBSpeedButton;
    Ajuda2Button: TPngSpeedButton;
    Label22: TLabel;
    DBComboBox2: TDBComboBox;
    PngImageList1: TPngImageList;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Localizar1Click(Sender: TObject);
    procedure Relatorios2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Fechar1Click(Sender: TObject);
    procedure Ajuda2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormLocais: TFormLocais;

implementation
uses DataMod, Main, DB, LocaisLoc, LocaisFast, DataMod2, Funcoes1;

{$R *.dfm}

procedure TFormLocais.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormLocais.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if DM2.TBLocais.State in [dsInsert, dsEdit] then
  begin
    MessageDlg('Salve os dados antes de fechar.',mtWarning,[mbOk],0);
    Action:=caNone;
  end;
end;

procedure TFormLocais.Localizar1Click(Sender: TObject);
begin
  Application.CreateForm(TFormLocaisLoc, FormLocaisLoc);
  FormLocaisLoc.ShowModal;
  if LocaisLoc.Procurar then
  begin
    DM2.TBLocais.Close;
    DM2.TBLocais.ParamByName('codigo').AsInteger:=FormLocaisLoc.QYLocaisLCA_CODIGO.Value;
    DM2.TBLocais.Open;
  end;
  FormLocaisLoc.Free;
  FormLocaisLoc:=nil;
end;

procedure TFormLocais.Relatorios2Click(Sender: TObject);
begin
  Application.CreateForm(TFormLocaisFast, FormLocaisFast);
  FormLocaisFast.QY01.Close;
  FormLocaisFast.QY01.Open;
  FormLocaisFast.frxReport1.Variables['TITULO']:=QuotedStr('Locais');
  FormLocaisFast.frxReport1.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
  FormLocaisFast.frxReport1.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
  FormLocaisFast.frxReport1.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
  FormLocaisFast.frxReport1.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
  FormLocaisFast.frxReport1.ShowReport;
  FormLocaisFast.Free;
  FormLocaisFast:=nil;
end;

procedure TFormLocais.FormShow(Sender: TObject);
begin
  FormMain.DesabilitarControles(FormLocais);
end;

procedure TFormLocais.Fechar1Click(Sender: TObject);
begin
  Close;
end;

procedure TFormLocais.Ajuda2Click(Sender: TObject);
begin
  MostrarAjuda('');
end;

initialization
  RegisterClass(TFormLocais);

finalization
  UnRegisterClass(TFormLocais);

end.
