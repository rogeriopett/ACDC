unit ProjetosHistorico;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, DBSBtn, ExtCtrls, Menus, Grids, DBGrids, StdCtrls,
  Mask, DBCtrls, ImgList, PngImageList, PngSpeedButton, Data.DB,
  System.ImageList, System.UITypes;

type
  TFormProjetosHistorico = class(TForm)
    Label1: TLabel;
    Label4: TLabel;
    DBEdit1: TDBEdit;
    DBEdit3: TDBEdit;
    DBGrid1: TDBGrid;
    MainMenu1: TMainMenu;
    Arquivo1: TMenuItem;
    Relatorios2: TMenuItem;
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
    EditarRegistro1: TMenuItem;
    Ajuda1: TMenuItem;
    Ajuda2: TMenuItem;
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
    Ajuda2Button: TPngSpeedButton;
    EditarRegistro1Button: TDBSpeedButton;
    Relatorios1: TMenuItem;
    DBText5: TDBText;
    DBText1: TDBText;
    Label2: TLabel;
    DBText3: TDBText;
    DBText2: TDBText;
    PngImageList1: TPngImageList;
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
  FormProjetosHistorico: TFormProjetosHistorico;

implementation
uses DataMod, Funcoes1, Main, ProjetosHistoricoFast, DataMod2;
{$R *.dfm}

procedure TFormProjetosHistorico.Fechar1Click(Sender: TObject);
begin
  Close;
end;

procedure TFormProjetosHistorico.Relatorios2Click(Sender: TObject);
begin
  Application.CreateForm(TFormProjetosHistoricoFast, FormProjetosHistoricoFast);
  FormProjetosHistoricoFast.QY01.Close;
  FormProjetosHistoricoFast.QY01.SQL.Clear;
  FormProjetosHistoricoFast.QY01.SQL.Add('select * from PROJETOSHISTORICO where PJH_PROJETO=:codigo order by PJH_DATA desc, PJH_CODIGO desc');
  FormProjetosHistoricoFast.QY01.ParamByName('codigo').AsInteger:=DM2.TBProjetosPRJ_CODIGO.Value;
  FormProjetosHistoricoFast.QY01.Open;
  FormProjetosHistoricoFast.frxReport1.Variables['TITULO']:=QuotedStr('Histórico do Projeto - '+IntToStr(DM2.TBProjetosPRJ_CODIGO.Value));
  FormProjetosHistoricoFast.frxReport1.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
  FormProjetosHistoricoFast.frxReport1.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
  FormProjetosHistoricoFast.frxReport1.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
  FormProjetosHistoricoFast.frxReport1.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
  FormProjetosHistoricoFast.frxReport1.ShowReport;
  FormProjetosHistoricoFast.Free;
  FormProjetosHistoricoFast:=nil;
end;

procedure TFormProjetosHistorico.Ajuda2Click(Sender: TObject);
begin
  MostrarAjuda('');
end;

procedure TFormProjetosHistorico.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if DM2.TBProjetosHistorico.State in [dsInsert, dsEdit] then
  begin
    MessageDlg('Salve os dados antes de fechar.',mtWarning,[mbOk],0);
    Action:=caNone;
  end;
end;

procedure TFormProjetosHistorico.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormProjetosHistorico.FormShow(Sender: TObject);
begin
  FormMain.DesabilitarControles(FormProjetosHistorico);
end;

initialization
  RegisterClass(TFormProjetosHistorico);

finalization
  UnRegisterClass(TFormProjetosHistorico);

end.
