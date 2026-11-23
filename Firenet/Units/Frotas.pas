unit Frotas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Buttons, PngSpeedButton, DBSBtn, ExtCtrls,
  ImgList, PngImageList, Menus, Mask, System.ImageList, System.UITypes;

type
  TFormFrotas = class(TForm)
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
    Fechar1Button: TPngSpeedButton;
    Bevel7: TBevel;
    Bevel1: TBevel;
    Relatorios2Button: TPngSpeedButton;
    Localizar1Button: TPngSpeedButton;
    DBText1: TDBText;
    DBText2: TDBText;
    Ajuda2Button: TPngSpeedButton;
    EditarRegistro1Button: TDBSpeedButton;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    Label11: TLabel;
    DBComboBox1: TDBComboBox;
    DBComboBox2: TDBComboBox;
    Label12: TLabel;
    DBEdit11: TDBEdit;
    Label13: TLabel;
    Label14: TLabel;
    DBEdit12: TDBEdit;
    Label15: TLabel;
    DBEdit13: TDBEdit;
    Label16: TLabel;
    DBEdit14: TDBEdit;
    Label17: TLabel;
    DBEdit15: TDBEdit;
    Label18: TLabel;
    DBComboBox3: TDBComboBox;
    Label19: TLabel;
    DBComboBox4: TDBComboBox;
    Label20: TLabel;
    DBComboBox5: TDBComboBox;
    Label21: TLabel;
    DBEdit16: TDBEdit;
    Label22: TLabel;
    DBEdit17: TDBEdit;
    Label23: TLabel;
    DBEdit18: TDBEdit;
    Label24: TLabel;
    DBEdit19: TDBEdit;
    Label25: TLabel;
    DBComboBox6: TDBComboBox;
    Label26: TLabel;
    DBEdit20: TDBEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure Fechar1Click(Sender: TObject);
    procedure Localizar1Click(Sender: TObject);
    procedure Relatorios2Click(Sender: TObject);
    procedure Ajuda2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormFrotas: TFormFrotas;

implementation
uses DataMod2, DataMod, Funcoes1, Main, DB, FrotasLoc, FrotasFast;
{$R *.dfm}

procedure TFormFrotas.Ajuda2Click(Sender: TObject);
begin
  MostrarAjuda('');
end;

procedure TFormFrotas.Fechar1Click(Sender: TObject);
begin
  Close;
end;

procedure TFormFrotas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if DM2.TBFrotas.State in [dsInsert, dsEdit] then
  begin
    MessageDlg('Salve os dados antes de fechar.',mtWarning,[mbOk],0);
    Action:=caNone;
  end;
end;

procedure TFormFrotas.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormFrotas.FormShow(Sender: TObject);
begin
  FormMain.DesabilitarControles(FormFrotas);
end;

procedure TFormFrotas.Localizar1Click(Sender: TObject);
begin
  Application.CreateForm(TFormFrotasLoc, FormFrotasLoc);
  FormFrotasLoc.ShowModal;
  if FrotasLoc.Procurar then
  begin
    DM2.TBFrotas.Close;
    DM2.TBFrotas.ParamByName('codigo').AsInteger:=FormFrotasLoc.QYFrotasFRO_CODIGO.value;
    DM2.TBFrotas.Open;
  end;
  FormFrotasLoc.Free;
  FormFrotasLoc:=nil;
end;

procedure TFormFrotas.Relatorios2Click(Sender: TObject);
begin
  Application.CreateForm(TFormFrotasFast, FormFrotasFast);
  FormFrotasFast.QY01.Close;
  FormFrotasFast.QY01.Open;
  FormFrotasFast.frxReport1.Variables['TITULO']:=QuotedStr('Frotas');
  FormFrotasFast.frxReport1.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
  FormFrotasFast.frxReport1.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
  FormFrotasFast.frxReport1.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
  FormFrotasFast.frxReport1.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
  FormFrotasFast.frxReport1.ShowReport;
  FormFrotasFast.Free;
  FormFrotasFast:=nil;
end;

initialization
  RegisterClass(TFormFrotas);

finalization
  UnRegisterClass(TFormFrotas);

end.
