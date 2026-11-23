unit Cupom;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Vcl.Buttons, PngSpeedButton, DBSBtn, Vcl.ExtCtrls, System.ImageList, System.UITypes,
  Vcl.ImgList, PngImageList, Vcl.Menus, Data.DB, Vcl.Grids, Vcl.DBGrids, ACBrBase, ACBrDFe, ACBrPAFNFCe;

type
  TFormCupom = class(TForm)
    MainMenu1: TMainMenu;
    Arquivo1: TMenuItem;
    Localizar1: TMenuItem;
    N1: TMenuItem;
    CadastroDeImpressorasECF1: TMenuItem;
    N2: TMenuItem;
    Fechar1: TMenuItem;
    Relatorios1: TMenuItem;
    Relatorios2: TMenuItem;
    N4: TMenuItem;
    Ajuda1: TMenuItem;
    Ajuda2: TMenuItem;
    PngImageList1: TPngImageList;
    Panel2: TPanel;
    Bevel4: TBevel;
    Fechar1Button: TPngSpeedButton;
    Bevel7: TBevel;
    Localizar1Button: TPngSpeedButton;
    Relatorios2Button: TPngSpeedButton;
    DBText1: TDBText;
    DBText2: TDBText;
    Ajuda2Button: TPngSpeedButton;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    DBEdit5: TDBEdit;
    Label5: TLabel;
    DBEdit4: TDBEdit;
    DBEdit6: TDBEdit;
    Label6: TLabel;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    Label7: TLabel;
    DBEdit9: TDBEdit;
    Label8: TLabel;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    Label9: TLabel;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    Label10: TLabel;
    DBEdit14: TDBEdit;
    Label11: TLabel;
    DBEdit15: TDBEdit;
    Label12: TLabel;
    DBEdit16: TDBEdit;
    DBText3: TDBText;
    Label13: TLabel;
    DBText4: TDBText;
    Label14: TLabel;
    DBGrid1: TDBGrid;
    CuponsNoPeriodoPorVendedor1: TMenuItem;
    CuponsNoPeriodoPorCliente1: TMenuItem;
    Bevel1: TBevel;
    CadastroDeImpressorasECF1Button: TPngSpeedButton;
    LocalizarNoContasAReceber1: TMenuItem;
    LocalizarNoContasAReceber1Button: TPngSpeedButton;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label15: TLabel;
    DBEdit17: TDBEdit;
    Label16: TLabel;
    DBEdit18: TDBEdit;
    Label17: TLabel;
    DBEdit19: TDBEdit;
    Label18: TLabel;
    DBEdit20: TDBEdit;
    ACBrPAFNFCe1: TACBrPAFNFCe;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Localizar1Click(Sender: TObject);
    procedure CadastroDeImpressorasECF1Click(Sender: TObject);
    procedure Fechar1Click(Sender: TObject);
    procedure Relatorios2Click(Sender: TObject);
    procedure CuponsNoPeriodoPorVendedor1Click(Sender: TObject);
    procedure CuponsNoPeriodoPorCliente1Click(Sender: TObject);
    procedure Ajuda2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure LocalizarNoContasAReceber1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCupom: TFormCupom;

implementation
uses DataMod, DataMod2, Funcoes1, FuncoesFirenet, CupomLoc, Ecf, Main,
  ReceberLoc, Receber, CupomRel;
{$R *.dfm}

procedure TFormCupom.Ajuda2Click(Sender: TObject);
begin
  MostrarAjuda('');
end;

procedure TFormCupom.CadastroDeImpressorasECF1Click(Sender: TObject);
begin
  Application.CreateForm(TFormEcf, FormEcf);
  FormEcf.ShowModal;
  FormEcf.Free;
  FormEcf:=nil;
end;

procedure TFormCupom.CuponsNoPeriodoPorCliente1Click(Sender: TObject);
begin
  Application.CreateForm(TFormCupomRel, FormCupomRel);
  FormCupomRel.ComboBox2.Enabled:=False;
  FormCupomRel.ComboBox2.ItemIndex:=1;
  FormCupomRel.ShowModal;
  FormCupomRel.Free;
  FormCupomRel:=nil;
end;

procedure TFormCupom.CuponsNoPeriodoPorVendedor1Click(Sender: TObject);
begin
  Application.CreateForm(TFormCupomRel, FormCupomRel);
  FormCupomRel.ComboBox2.Enabled:=False;
  FormCupomRel.ComboBox2.ItemIndex:=0;
  FormCupomRel.ShowModal;
  FormCupomRel.Free;
  FormCupomRel:=nil;
end;

procedure TFormCupom.Fechar1Click(Sender: TObject);
begin
  Close;
end;

procedure TFormCupom.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if DM.TBCupom.State in [dsInsert, dsEdit] then
  begin
    MessageDlg('Salve os dados antes de fechar.',mtWarning,[mbOk],0);
    Action:=caNone;
  end;
end;

procedure TFormCupom.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormCupom.FormShow(Sender: TObject);
begin
  FormMain.DesabilitarControles(FormCupom);
end;

procedure TFormCupom.Localizar1Click(Sender: TObject);
begin
  Application.CreateForm(TFormCupomLoc, FormCupomLoc);
  FormCupomLoc.ShowModal;
  if CupomLoc.Procurar then
  begin
    DM.TBCupom.Close;
    DM.TBCupom.ParamByName('codigo').AsInteger:=FormCupomLoc.QYCupomCUP_CODIGO.Value;
    DM.TBCupom.Open;
  end;
  FormCupomLoc.Free;
  FormCupomLoc:=nil;
end;

procedure TFormCupom.LocalizarNoContasAReceber1Click(Sender: TObject);
begin
  AbortIf(DM.TBCupom.IsEmpty,'Nenhum cupom selecionado.');
  AbortIf(DM.TBCupomCUP_STATUS.Value='A','Este cupom não está finalizado ou não cancelado.');

  //por padrão, utiliza o campo código... mas se tiver NF ou NFE...
  Application.CreateForm(TFormReceberLoc, FormReceberLoc);
  //FormReceberLoc.Height:=354;
  FormReceberLoc.Panel1.Visible:=False;
  FormReceberLoc.Panel2.Height:=FormReceberLoc.Panel2.Height+FormReceberLoc.Panel1.Height;
  FormReceberLoc.QYReceber.SQL.Clear;
  FormReceberLoc.QYReceber.SQL.Add('select * from RECEBER left join CLIENTES on REE_CLIENTE=CLI_CODIGO where REE_NUMDOCTO like '+QuotedStr('CF-'+IntToStr(DM.TBCupomCUP_CODIGO.Value)+'/%')+' order by REE_NUMDOCTO, REE_DTVENCIMENTO');
  FormReceberLoc.QYReceber.Open;
  FormReceberLoc.ShowModal;
  if ReceberLoc.Procurar then
  begin
    DM.TBReceber.Close;
    DM.TBReceber.ParamByName('codigo').AsInteger:=FormReceberLoc.QYReceberREE_CODIGO.Value;
    DM.TBReceber.Open;
    //liberamos o form antes de abrir o outro form.
    FormReceberLoc.Free;
    FormReceberLoc:=nil;

    Application.CreateForm(TFormReceber, FormReceber);
    FormReceber.ShowModal;
    FormReceber.Free;
    FormReceber:=nil;
  end else
  begin
    FormReceberLoc.Free;
    FormReceberLoc:=nil;
  end;
end;

procedure TFormCupom.Relatorios2Click(Sender: TObject);
begin
  Application.CreateForm(TFormCupomRel, FormCupomRel);
  FormCupomRel.ShowModal;
  FormCupomRel.Free;
  FormCupomRel:=nil;
end;

initialization
  RegisterClass(TFormCupom);

finalization
  UnRegisterClass(TFormCupom);

end.
