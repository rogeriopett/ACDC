unit FormasPagamento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, ImgList, PngImageList, Menus, Buttons,
  PngSpeedButton, DBSBtn, ExtCtrls, System.ImageList, System.UITypes;

type
  TFormFormasPagamento = class(TForm)
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
    Label3: TLabel;
    DBEdit3: TDBEdit;
    DBEdit2: TDBEdit;
    Label2: TLabel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label89: TLabel;
    DBComboBox4: TDBComboBox;
    Label4: TLabel;
    DBComboBox1: TDBComboBox;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    procedure Fechar1Click(Sender: TObject);
    procedure Localizar1Click(Sender: TObject);
    procedure Relatorios2Click(Sender: TObject);
    procedure Ajuda2Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormFormasPagamento: TFormFormasPagamento;

implementation
uses DataMod2, Main, Funcoes1, FormasPagamentoLoc, FormasPagamentoFast, DB,
  DataMod;
{$R *.dfm}

procedure TFormFormasPagamento.Ajuda2Click(Sender: TObject);
begin
  MostrarAjuda('');
end;

procedure TFormFormasPagamento.Fechar1Click(Sender: TObject);
begin
  Close;
end;

procedure TFormFormasPagamento.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if DM2.TBFormasPagamento.State in [dsInsert, dsEdit] then
  begin
    Action:=caNone;
    MessageDlg('Salve os dados antes de fechar.',mtWarning,[mbOK],0);
  end;
end;

procedure TFormFormasPagamento.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormFormasPagamento.FormShow(Sender: TObject);
begin
  FormMain.DesabilitarControles(FormFormasPagamento);
end;

procedure TFormFormasPagamento.Localizar1Click(Sender: TObject);
begin
  Application.CreateForm(TFormFormasPagamentoLoc, FormFormasPagamentoLoc);
  FormFormasPagamentoLoc.ShowModal;
  if FormasPagamentoLoc.Procurar then
  begin
    DM2.TBFormasPagamento.Close;
    DM2.TBFormasPagamento.ParamByName('codigo').AsInteger:=FormFormasPagamentoLoc.QYFormasPagamentoFPG_CODIGO.Value;
    DM2.TBFormasPagamento.Open;
  end;
  FormFormasPagamentoLoc.Free;
  FormFormasPagamentoLoc:=nil;
end;

procedure TFormFormasPagamento.Relatorios2Click(Sender: TObject);
begin
  Application.CreateForm(TFormFormasPagamentoFast, FormFormasPagamentoFast);
  FormFormasPagamentoFast.QY01.Close;
  FormFormasPagamentoFast.QY01.Open;
  FormFormasPagamentoFast.frxReport1.Variables['TITULO']:=QuotedStr('Formas de Pagamento para os Cupons Fiscais');
  FormFormasPagamentoFast.frxReport1.Variables['USUARIO']:=QuotedStr(UsuarioLogin);
  FormFormasPagamentoFast.frxReport1.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
  FormFormasPagamentoFast.frxReport1.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
  FormFormasPagamentoFast.frxReport1.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
  FormFormasPagamentoFast.frxReport1.ShowReport;
  FormFormasPagamentoFast.Free;
  FormFormasPagamentoFast:=nil;
end;

initialization
  RegisterClass(TFormFormasPagamento);

finalization
  UnRegisterClass(TFormFormasPagamento);

end.
