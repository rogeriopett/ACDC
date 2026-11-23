unit Receituarios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids, DBSBtn,
  Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.Menus, System.ImageList,
  Vcl.ImgList, PngImageList, Vcl.Mask, Vcl.Buttons, PngSpeedButton, System.UITypes;

type
  TFormReceituarios = class(TForm)
    Label15: TLabel;
    SpeedButton7: TPngSpeedButton;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    PngImageList1: TPngImageList;
    MainMenu1: TMainMenu;
    Arquivo1: TMenuItem;
    Localizar1: TMenuItem;
    N6: TMenuItem;
    CadastroDeClientes1: TMenuItem;
    CadastroDeMedicamentos1: TMenuItem;
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
    Relatorios1: TMenuItem;
    Relatorios2: TMenuItem;
    N3: TMenuItem;
    Ajuda1: TMenuItem;
    Ajuda2: TMenuItem;
    GroupBox1: TGroupBox;
    DBText1: TDBText;
    DBText2: TDBText;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    DBText3: TDBText;
    DBText4: TDBText;
    DBText5: TDBText;
    DBText6: TDBText;
    DBText7: TDBText;
    DBText8: TDBText;
    Label16: TLabel;
    DBText10: TDBText;
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
    Localizar1Button: TPngSpeedButton;
    DBText12: TDBText;
    DBText13: TDBText;
    CadastroDeClientes1Button: TPngSpeedButton;
    CadastroDeMedicamentos1Button: TPngSpeedButton;
    Bevel2: TBevel;
    Ajuda2Button: TPngSpeedButton;
    EditarRegistro1Button: TDBSpeedButton;
    DBGrid1: TDBGrid;
    DBEdit3: TDBEdit;
    Label8: TLabel;
    N2: TMenuItem;
    PopupMenu1: TPopupMenu;
    DBComboBox1: TDBComboBox;
    Label20: TLabel;
    DBComboBox2: TDBComboBox;
    Label9: TLabel;
    DBComboBox3: TDBComboBox;
    Label10: TLabel;
    DBComboBox4: TDBComboBox;
    Label11: TLabel;
    DBComboBox5: TDBComboBox;
    Label12: TLabel;
    DBComboBox6: TDBComboBox;
    Label13: TLabel;
    DBComboBox7: TDBComboBox;
    Label14: TLabel;
    DBComboBox8: TDBComboBox;
    Label17: TLabel;
    DBComboBox9: TDBComboBox;
    Label18: TLabel;
    DBComboBox10: TDBComboBox;
    Label19: TLabel;
    DBComboBox11: TDBComboBox;
    Label21: TLabel;
    DBComboBox12: TDBComboBox;
    Label22: TLabel;
    DBComboBox13: TDBComboBox;
    Label23: TLabel;
    DBComboBox14: TDBComboBox;
    Label24: TLabel;
    DBComboBox15: TDBComboBox;
    Label25: TLabel;
    DBComboBox16: TDBComboBox;
    Label26: TLabel;
    DBComboBox17: TDBComboBox;
    Label27: TLabel;
    DBComboBox18: TDBComboBox;
    Label28: TLabel;
    DBComboBox19: TDBComboBox;
    Label29: TLabel;
    DBComboBox20: TDBComboBox;
    Label30: TLabel;
    DBComboBox21: TDBComboBox;
    Label31: TLabel;
    DBComboBox22: TDBComboBox;
    Label32: TLabel;
    DBComboBox23: TDBComboBox;
    Label33: TLabel;
    DBComboBox24: TDBComboBox;
    Label34: TLabel;
    DBComboBox25: TDBComboBox;
    Label35: TLabel;
    DBComboBox26: TDBComboBox;
    Label36: TLabel;
    DBComboBox27: TDBComboBox;
    Label37: TLabel;
    DBComboBox28: TDBComboBox;
    Label38: TLabel;
    DBComboBox29: TDBComboBox;
    Label39: TLabel;
    DBComboBox30: TDBComboBox;
    Label40: TLabel;
    DBComboBox31: TDBComboBox;
    Label41: TLabel;
    Label42: TLabel;
    DBEdit4: TDBEdit;
    RepetirParaTodosOsDias1: TMenuItem;
    PlanilhaDeReceituarios1: TMenuItem;
    procedure Localizar1Click(Sender: TObject);
    procedure CadastroDeClientes1Click(Sender: TObject);
    procedure CadastroDeMedicamentos1Click(Sender: TObject);
    procedure Fechar1Click(Sender: TObject);
    procedure Relatorios2Click(Sender: TObject);
    procedure Ajuda2Click(Sender: TObject);
    procedure DBEdit1Enter(Sender: TObject);
    procedure DBEdit1Exit(Sender: TObject);
    procedure DBEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton7Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure RepetirParaTodosOsDias1Click(Sender: TObject);
    procedure PlanilhaDeReceituarios1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormReceituarios: TFormReceituarios;

implementation
uses DataMod, DataMod2, Clientes, Medicamentos, Funcoes1, MedicamentosLoc,
  DataModSearch, Main, ClientesLoc, ReceituariosRel;
{$R *.dfm}

procedure TFormReceituarios.Ajuda2Click(Sender: TObject);
begin
  MostrarAjuda('');
end;

procedure TFormReceituarios.CadastroDeClientes1Click(Sender: TObject);
begin
  Application.CreateForm(TFormClientes, FormClientes);
  FormClientes.ShowModal;
  FormClientes.Free;
  FormClientes:=nil;
end;

procedure TFormReceituarios.CadastroDeMedicamentos1Click(Sender: TObject);
begin
  Application.CreateForm(TFormMedicamentos, FormMedicamentos);
  FormMedicamentos.ShowModal;
  FormMedicamentos.Free;
  FormMedicamentos:=nil;
end;

procedure TFormReceituarios.DBEdit1Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TDBEdit).Text;
end;

procedure TFormReceituarios.DBEdit1Exit(Sender: TObject);
begin
  if (DM2.TBReceituarios.State in [dsInsert, dsEdit]) and ((Sender as TDBEdit).Text='') then
  begin
    DM2.TBReceituariosRCT_MEDICAMENTO.Clear;
    DM2.TBReceituariosMTO_NOME.Clear;
    Exit;
  end;
  if DM.CodigosOld=(Sender as TDBEdit).Text then
  Exit;
  if (DM2.TBReceituarios.State in [dsInsert, dsEdit]) and ((Sender as TDBEdit).Text<>'') then
  begin
    DMS.QYMedicamentos.Close;
    DMS.QYMedicamentos.ParamByName('codigo').AsInteger:=StrToInt((Sender as TDBEdit).Text);
    DMS.QYMedicamentos.Open;
    if not DMS.QYMedicamentos.IsEmpty then
    begin
      DM2.TBReceituariosRCT_MEDICAMENTO.Value:=DMS.QYMedicamentosMTO_CODIGO.Value;
      DM2.TBReceituariosMTO_NOME.Value:=DMS.QYMedicamentosMTO_NOME.Value;
    end else
    begin
      DM2.TBReceituariosRCT_MEDICAMENTO.Clear;
      DM2.TBReceituariosMTO_NOME.Clear;
    end;
    DMS.QYMedicamentos.Close;
  end;
end;

procedure TFormReceituarios.DBEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton7.Click;
end;

procedure TFormReceituarios.DBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormReceituarios.Fechar1Click(Sender: TObject);
begin
  Close;
end;

procedure TFormReceituarios.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if DM2.TBReceituarios.State in [dsInsert, dsEdit] then
  begin
    MessageDlg('Salve os dados antes de fechar.',mtWarning,[mbOk],0);
    Action:=caNone;
  end;
end;

procedure TFormReceituarios.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormReceituarios.FormShow(Sender: TObject);
begin
  FormMain.DesabilitarControles(FormReceituarios);
end;

procedure TFormReceituarios.Localizar1Click(Sender: TObject);
begin
  Application.CreateForm(TFormClientesLoc, FormClientesLoc);
  FormClientesLoc.ShowModal;
  if ClientesLoc.Procurar then
  begin
    DM.TBClientes.Close;
    DM.TBClientes.ParamByName('codigo').AsInteger:=FormClientesLoc.QYClientesCLI_CODIGO.Value;
    DM.TBClientes.Open;
  end;
  FormClientesLoc.Free;
  FormClientesLoc:=nil;
end;

procedure TFormReceituarios.PlanilhaDeReceituarios1Click(Sender: TObject);
begin
  Application.CreateForm(TFormReceituariosRel, FormReceituariosRel);
  FormReceituariosRel.ComboBox1.Enabled:=False;
  FormReceituariosRel.ComboBox1.ItemIndex:=0;
  FormReceituariosRel.ComboBox1Click(Self);
  FormReceituariosRel.ShowModal;
  FormReceituariosRel.Free;
  FormReceituariosRel:=nil;
end;

procedure TFormReceituarios.Relatorios2Click(Sender: TObject);
begin
  Application.CreateForm(TFormReceituariosRel, FormReceituariosRel);
  FormReceituariosRel.ShowModal;
  FormReceituariosRel.Free;
  FormReceituariosRel:=nil;
end;

procedure TFormReceituarios.RepetirParaTodosOsDias1Click(Sender: TObject);
begin
  DM2.TBReceituariosRCT_DIA02.Value:=DBComboBox1.Text;
  DM2.TBReceituariosRCT_DIA03.Value:=DBComboBox1.Text;
  DM2.TBReceituariosRCT_DIA04.Value:=DBComboBox1.Text;
  DM2.TBReceituariosRCT_DIA05.Value:=DBComboBox1.Text;
  DM2.TBReceituariosRCT_DIA06.Value:=DBComboBox1.Text;
  DM2.TBReceituariosRCT_DIA07.Value:=DBComboBox1.Text;
  DM2.TBReceituariosRCT_DIA08.Value:=DBComboBox1.Text;
  DM2.TBReceituariosRCT_DIA09.Value:=DBComboBox1.Text;
  DM2.TBReceituariosRCT_DIA10.Value:=DBComboBox1.Text;
  DM2.TBReceituariosRCT_DIA11.Value:=DBComboBox1.Text;
  DM2.TBReceituariosRCT_DIA12.Value:=DBComboBox1.Text;
  DM2.TBReceituariosRCT_DIA13.Value:=DBComboBox1.Text;
  DM2.TBReceituariosRCT_DIA14.Value:=DBComboBox1.Text;
  DM2.TBReceituariosRCT_DIA15.Value:=DBComboBox1.Text;
  DM2.TBReceituariosRCT_DIA16.Value:=DBComboBox1.Text;
  DM2.TBReceituariosRCT_DIA17.Value:=DBComboBox1.Text;
  DM2.TBReceituariosRCT_DIA18.Value:=DBComboBox1.Text;
  DM2.TBReceituariosRCT_DIA19.Value:=DBComboBox1.Text;
  DM2.TBReceituariosRCT_DIA20.Value:=DBComboBox1.Text;
  DM2.TBReceituariosRCT_DIA21.Value:=DBComboBox1.Text;
  DM2.TBReceituariosRCT_DIA22.Value:=DBComboBox1.Text;
  DM2.TBReceituariosRCT_DIA23.Value:=DBComboBox1.Text;
  DM2.TBReceituariosRCT_DIA24.Value:=DBComboBox1.Text;
  DM2.TBReceituariosRCT_DIA25.Value:=DBComboBox1.Text;
  DM2.TBReceituariosRCT_DIA26.Value:=DBComboBox1.Text;
  DM2.TBReceituariosRCT_DIA27.Value:=DBComboBox1.Text;
  DM2.TBReceituariosRCT_DIA28.Value:=DBComboBox1.Text;
  DM2.TBReceituariosRCT_DIA29.Value:=DBComboBox1.Text;
  DM2.TBReceituariosRCT_DIA30.Value:=DBComboBox1.Text;
  DM2.TBReceituariosRCT_DIA31.Value:=DBComboBox1.Text;
end;

procedure TFormReceituarios.SpeedButton7Click(Sender: TObject);
begin
  Application.CreateForm(TFormMedicamentosLoc, FormMedicamentosLoc);
  FormMedicamentosLoc.ShowModal;
  if MedicamentosLoc.Procurar then
  begin
    DM2.TBReceituarios.Edit;
    DM2.TBReceituariosRCT_MEDICAMENTO.Value:=FormMedicamentosLoc.QYMedicamentosMTO_CODIGO.Value;
    DM2.TBReceituariosMTO_NOME.Value:=FormMedicamentosLoc.QYMedicamentosMTO_NOME.Value;
  end;
  FormMedicamentosLoc.Free;
  FormMedicamentosLoc:=nil;
end;

initialization
  RegisterClass(TFormReceituarios);

finalization
  UnRegisterClass(TFormReceituarios);

end.
