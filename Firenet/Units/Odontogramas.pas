//Atualizacoes:
//2026.11.24 - Relatorio do odontograma no FastReport (FormOdontogramasFast, ODO01); o QuickReport (FormOdontogramasQ01) ficou comentado.
unit Odontogramas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Imaging.pngimage, Vcl.Menus, System.ImageList,
  Vcl.ImgList, PngImageList, Vcl.Buttons, PngSpeedButton, DBSBtn, Data.DB, Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids,
  Vcl.ComCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client, FireDAC.Comp.DataSet;

type
  TFormOdontogramas = class(TForm)
    ImageD18: TImage;
    ImageD17: TImage;
    ImageD16: TImage;
    ImageD15: TImage;
    ImageD14: TImage;
    ImageD13: TImage;
    ImageD12: TImage;
    ImageD11: TImage;
    ImageD21: TImage;
    ImageD22: TImage;
    ImageD23: TImage;
    ImageD24: TImage;
    ImageD25: TImage;
    ImageD26: TImage;
    ImageD27: TImage;
    ImageD28: TImage;
    ImageD48: TImage;
    ImageD47: TImage;
    ImageD46: TImage;
    ImageD45: TImage;
    ImageD44: TImage;
    ImageD43: TImage;
    ImageD42: TImage;
    ImageD41: TImage;
    ImageD31: TImage;
    ImageD32: TImage;
    ImageD33: TImage;
    ImageD34: TImage;
    ImageD35: TImage;
    ImageD36: TImage;
    ImageD37: TImage;
    ImageD38: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
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
    Ajuda2Button: TPngSpeedButton;
    EditarRegistro1Button: TDBSpeedButton;
    CadastroDeCores1Button: TPngSpeedButton;
    PngImageList1: TPngImageList;
    MainMenu1: TMainMenu;
    Arquivo1: TMenuItem;
    Localizar1: TMenuItem;
    Relatorios2: TMenuItem;
    N2: TMenuItem;
    CadastroDeCores1: TMenuItem;
    N1: TMenuItem;
    Fechar1: TMenuItem;
    Navegacao1: TMenuItem;
    InserirRegistro1: TMenuItem;
    EliminarRegistro1: TMenuItem;
    N5: TMenuItem;
    SalvarRegistro1: TMenuItem;
    CancelarRegistro1: TMenuItem;
    EditarRegistro1: TMenuItem;
    Ajuda1: TMenuItem;
    Ajuda2: TMenuItem;
    DBMemo1: TDBMemo;
    DSOdontogramasOpcoes: TDataSource;
    Panel1: TPanel;
    Panel3: TPanel;
    DBGrid2: TDBGrid;
    Splitter1: TSplitter;
    DBGrid1: TDBGrid;
    Label33: TLabel;
    DBText3: TDBText;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText4: TDBText;
    Relatorios1: TMenuItem;
    CadastroDeClientes1Button: TPngSpeedButton;
    CadastroDeClientes1: TMenuItem;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Shape18A: TShape;
    Shape18B: TShape;
    Shape18C: TShape;
    Shape18D: TShape;
    Shape18E: TShape;
    Shape17A: TShape;
    Shape17B: TShape;
    Shape17C: TShape;
    Shape17D: TShape;
    Shape17E: TShape;
    Shape16A: TShape;
    Shape16B: TShape;
    Shape16C: TShape;
    Shape16D: TShape;
    Shape16E: TShape;
    Shape15A: TShape;
    Shape15B: TShape;
    Shape15C: TShape;
    Shape15D: TShape;
    Shape15E: TShape;
    Shape14A: TShape;
    Shape14B: TShape;
    Shape14C: TShape;
    Shape14D: TShape;
    Shape14E: TShape;
    Shape13A: TShape;
    Shape13B: TShape;
    Shape13C: TShape;
    Shape13D: TShape;
    Shape13E: TShape;
    Shape12A: TShape;
    Shape12B: TShape;
    Shape12C: TShape;
    Shape12D: TShape;
    Shape12E: TShape;
    Shape11A: TShape;
    Shape11B: TShape;
    Shape11C: TShape;
    Shape11D: TShape;
    Shape11E: TShape;
    Shape21A: TShape;
    Shape21B: TShape;
    Shape21C: TShape;
    Shape21D: TShape;
    Shape21E: TShape;
    Shape22A: TShape;
    Shape22B: TShape;
    Shape22C: TShape;
    Shape22D: TShape;
    Shape22E: TShape;
    Shape23A: TShape;
    Shape23B: TShape;
    Shape23C: TShape;
    Shape23D: TShape;
    Shape23E: TShape;
    Shape24A: TShape;
    Shape24B: TShape;
    Shape24C: TShape;
    Shape24D: TShape;
    Shape24E: TShape;
    Shape25A: TShape;
    Shape25B: TShape;
    Shape25C: TShape;
    Shape25D: TShape;
    Shape25E: TShape;
    Shape26A: TShape;
    Shape26B: TShape;
    Shape26C: TShape;
    Shape26D: TShape;
    Shape26E: TShape;
    Shape27A: TShape;
    Shape27B: TShape;
    Shape27C: TShape;
    Shape27D: TShape;
    Shape27E: TShape;
    Shape28A: TShape;
    Shape28B: TShape;
    Shape28C: TShape;
    Shape28D: TShape;
    Shape28E: TShape;
    Shape48A: TShape;
    Shape48B: TShape;
    Shape48C: TShape;
    Shape48D: TShape;
    Shape48E: TShape;
    Shape47A: TShape;
    Shape47B: TShape;
    Shape47C: TShape;
    Shape47D: TShape;
    Shape47E: TShape;
    Shape46A: TShape;
    Shape46B: TShape;
    Shape46C: TShape;
    Shape46D: TShape;
    Shape46E: TShape;
    Shape45A: TShape;
    Shape45B: TShape;
    Shape45C: TShape;
    Shape45D: TShape;
    Shape45E: TShape;
    Shape44A: TShape;
    Shape44B: TShape;
    Shape44C: TShape;
    Shape44D: TShape;
    Shape44E: TShape;
    Shape43A: TShape;
    Shape43B: TShape;
    Shape43C: TShape;
    Shape43D: TShape;
    Shape43E: TShape;
    Shape42A: TShape;
    Shape42B: TShape;
    Shape42C: TShape;
    Shape42D: TShape;
    Shape42E: TShape;
    Shape41A: TShape;
    Shape41B: TShape;
    Shape41C: TShape;
    Shape41D: TShape;
    Shape41E: TShape;
    Shape31A: TShape;
    Shape31B: TShape;
    Shape31C: TShape;
    Shape31D: TShape;
    Shape31E: TShape;
    Shape32A: TShape;
    Shape32B: TShape;
    Shape32C: TShape;
    Shape32D: TShape;
    Shape32E: TShape;
    Shape33A: TShape;
    Shape33B: TShape;
    Shape33C: TShape;
    Shape33D: TShape;
    Shape33E: TShape;
    Shape34A: TShape;
    Shape34B: TShape;
    Shape34C: TShape;
    Shape34D: TShape;
    Shape34E: TShape;
    Shape35A: TShape;
    Shape35B: TShape;
    Shape35C: TShape;
    Shape35D: TShape;
    Shape35E: TShape;
    Shape36A: TShape;
    Shape36B: TShape;
    Shape36C: TShape;
    Shape36D: TShape;
    Shape36E: TShape;
    Shape37A: TShape;
    Shape37B: TShape;
    Shape37C: TShape;
    Shape37D: TShape;
    Shape37E: TShape;
    Shape38A: TShape;
    Shape38B: TShape;
    Shape38C: TShape;
    Shape38D: TShape;
    Shape38E: TShape;
    Bevel2: TBevel;
    Bevel3: TBevel;
    Bevel5: TBevel;
    Bevel6: TBevel;
    Bevel8: TBevel;
    Bevel9: TBevel;
    Bevel10: TBevel;
    Bevel11: TBevel;
    Bevel12: TBevel;
    Bevel13: TBevel;
    Bevel14: TBevel;
    Bevel15: TBevel;
    Bevel16: TBevel;
    Bevel17: TBevel;
    Bevel18: TBevel;
    Bevel19: TBevel;
    Bevel20: TBevel;
    Bevel21: TBevel;
    Bevel22: TBevel;
    Bevel23: TBevel;
    Bevel24: TBevel;
    Bevel25: TBevel;
    Bevel26: TBevel;
    Bevel27: TBevel;
    Bevel28: TBevel;
    Bevel29: TBevel;
    Bevel30: TBevel;
    Bevel31: TBevel;
    Bevel32: TBevel;
    Bevel33: TBevel;
    Bevel34: TBevel;
    Bevel35: TBevel;
    ImageD55: TImage;
    ImageD54: TImage;
    ImageD53: TImage;
    ImageD52: TImage;
    ImageD51: TImage;
    ImageD61: TImage;
    ImageD62: TImage;
    ImageD63: TImage;
    ImageD64: TImage;
    ImageD65: TImage;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    Bevel39: TBevel;
    Bevel40: TBevel;
    Bevel41: TBevel;
    Bevel42: TBevel;
    Bevel43: TBevel;
    Bevel44: TBevel;
    Bevel45: TBevel;
    Bevel46: TBevel;
    Bevel47: TBevel;
    Bevel48: TBevel;
    ImageD85: TImage;
    ImageD84: TImage;
    ImageD83: TImage;
    ImageD82: TImage;
    ImageD81: TImage;
    ImageD71: TImage;
    ImageD72: TImage;
    ImageD73: TImage;
    ImageD74: TImage;
    ImageD75: TImage;
    Label39: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    Label49: TLabel;
    Label50: TLabel;
    Label51: TLabel;
    Label52: TLabel;
    Label53: TLabel;
    Bevel36: TBevel;
    Bevel37: TBevel;
    Bevel38: TBevel;
    Bevel49: TBevel;
    Bevel50: TBevel;
    Bevel51: TBevel;
    Bevel52: TBevel;
    Bevel53: TBevel;
    Bevel54: TBevel;
    Bevel55: TBevel;
    Shape55A: TShape;
    Shape55B: TShape;
    Shape55C: TShape;
    Shape55D: TShape;
    Shape55E: TShape;
    Shape54A: TShape;
    Shape54B: TShape;
    Shape54C: TShape;
    Shape54D: TShape;
    Shape54E: TShape;
    Shape53A: TShape;
    Shape53B: TShape;
    Shape53C: TShape;
    Shape53D: TShape;
    Shape53E: TShape;
    Shape52A: TShape;
    Shape52B: TShape;
    Shape52C: TShape;
    Shape52D: TShape;
    Shape52E: TShape;
    Shape51A: TShape;
    Shape51B: TShape;
    Shape51C: TShape;
    Shape51D: TShape;
    Shape51E: TShape;
    Shape61A: TShape;
    Shape61B: TShape;
    Shape61C: TShape;
    Shape61D: TShape;
    Shape61E: TShape;
    Shape62A: TShape;
    Shape62B: TShape;
    Shape62C: TShape;
    Shape62D: TShape;
    Shape62E: TShape;
    Shape63A: TShape;
    Shape63B: TShape;
    Shape63C: TShape;
    Shape63D: TShape;
    Shape63E: TShape;
    Shape64A: TShape;
    Shape64B: TShape;
    Shape64C: TShape;
    Shape64D: TShape;
    Shape64E: TShape;
    Shape65A: TShape;
    Shape65B: TShape;
    Shape65C: TShape;
    Shape65D: TShape;
    Shape65E: TShape;
    Shape85A: TShape;
    Shape85B: TShape;
    Shape85C: TShape;
    Shape85D: TShape;
    Shape85E: TShape;
    Shape84A: TShape;
    Shape84B: TShape;
    Shape84C: TShape;
    Shape84D: TShape;
    Shape84E: TShape;
    Shape83A: TShape;
    Shape83B: TShape;
    Shape83C: TShape;
    Shape83D: TShape;
    Shape83E: TShape;
    Shape82A: TShape;
    Shape82B: TShape;
    Shape82C: TShape;
    Shape82D: TShape;
    Shape82E: TShape;
    Shape81A: TShape;
    Shape81B: TShape;
    Shape81C: TShape;
    Shape81D: TShape;
    Shape81E: TShape;
    Shape71A: TShape;
    Shape71B: TShape;
    Shape71C: TShape;
    Shape71D: TShape;
    Shape71E: TShape;
    Shape72A: TShape;
    Shape72B: TShape;
    Shape72C: TShape;
    Shape72D: TShape;
    Shape72E: TShape;
    Shape73A: TShape;
    Shape73B: TShape;
    Shape73C: TShape;
    Shape73D: TShape;
    Shape73E: TShape;
    Shape74A: TShape;
    Shape74B: TShape;
    Shape74C: TShape;
    Shape74D: TShape;
    Shape74E: TShape;
    Shape75A: TShape;
    Shape75B: TShape;
    Shape75C: TShape;
    Shape75D: TShape;
    Shape75E: TShape;
    AnexosDoCliente1Button: TPngSpeedButton;
    AnexosDoCliente1: TMenuItem;
    PopupMenu1: TPopupMenu;
    AlterarData1: TMenuItem;
    QYOdontogramasOpcoes: TFDQuery;
    TROdontogramasOpcoes: TFDTransaction;
    QYOdontogramasOpcoesODP_COR: TIntegerField;
    QYOdontogramasOpcoesODP_DESCRICAO: TStringField;
    QYOdontogramasOpcoesODP_D11: TStringField;
    QYOdontogramasOpcoesODP_D12: TStringField;
    QYOdontogramasOpcoesODP_D13: TStringField;
    QYOdontogramasOpcoesODP_D14: TStringField;
    QYOdontogramasOpcoesODP_D15: TStringField;
    QYOdontogramasOpcoesODP_D16: TStringField;
    QYOdontogramasOpcoesODP_D17: TStringField;
    QYOdontogramasOpcoesODP_D18: TStringField;
    QYOdontogramasOpcoesODP_D21: TStringField;
    QYOdontogramasOpcoesODP_D22: TStringField;
    QYOdontogramasOpcoesODP_D23: TStringField;
    QYOdontogramasOpcoesODP_D24: TStringField;
    QYOdontogramasOpcoesODP_D25: TStringField;
    QYOdontogramasOpcoesODP_D26: TStringField;
    QYOdontogramasOpcoesODP_D27: TStringField;
    QYOdontogramasOpcoesODP_D28: TStringField;
    QYOdontogramasOpcoesODP_D31: TStringField;
    QYOdontogramasOpcoesODP_D32: TStringField;
    QYOdontogramasOpcoesODP_D33: TStringField;
    QYOdontogramasOpcoesODP_D34: TStringField;
    QYOdontogramasOpcoesODP_D35: TStringField;
    QYOdontogramasOpcoesODP_D36: TStringField;
    QYOdontogramasOpcoesODP_D37: TStringField;
    QYOdontogramasOpcoesODP_D38: TStringField;
    QYOdontogramasOpcoesODP_D41: TStringField;
    QYOdontogramasOpcoesODP_D42: TStringField;
    QYOdontogramasOpcoesODP_D43: TStringField;
    QYOdontogramasOpcoesODP_D44: TStringField;
    QYOdontogramasOpcoesODP_D45: TStringField;
    QYOdontogramasOpcoesODP_D46: TStringField;
    QYOdontogramasOpcoesODP_D47: TStringField;
    QYOdontogramasOpcoesODP_D48: TStringField;
    QYOdontogramasOpcoesODP_D51: TStringField;
    QYOdontogramasOpcoesODP_D52: TStringField;
    QYOdontogramasOpcoesODP_D53: TStringField;
    QYOdontogramasOpcoesODP_D54: TStringField;
    QYOdontogramasOpcoesODP_D55: TStringField;
    QYOdontogramasOpcoesODP_D61: TStringField;
    QYOdontogramasOpcoesODP_D62: TStringField;
    QYOdontogramasOpcoesODP_D63: TStringField;
    QYOdontogramasOpcoesODP_D64: TStringField;
    QYOdontogramasOpcoesODP_D65: TStringField;
    QYOdontogramasOpcoesODP_D71: TStringField;
    QYOdontogramasOpcoesODP_D72: TStringField;
    QYOdontogramasOpcoesODP_D73: TStringField;
    QYOdontogramasOpcoesODP_D74: TStringField;
    QYOdontogramasOpcoesODP_D75: TStringField;
    QYOdontogramasOpcoesODP_D81: TStringField;
    QYOdontogramasOpcoesODP_D82: TStringField;
    QYOdontogramasOpcoesODP_D83: TStringField;
    QYOdontogramasOpcoesODP_D84: TStringField;
    QYOdontogramasOpcoesODP_D85: TStringField;
    QYOdontogramasOpcoesODP_ESTILO: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Fechar1Click(Sender: TObject);
    procedure Localizar1Click(Sender: TObject);
    procedure Relatorios2Click(Sender: TObject);
    procedure CadastroDeCores1Click(Sender: TObject);
    procedure Ajuda2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Shape11AMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure DBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure FormShow(Sender: TObject);
    procedure CadastroDeClientes1Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure ImageD18DblClick(Sender: TObject);
    procedure ImageD17DblClick(Sender: TObject);
    procedure ImageD16DblClick(Sender: TObject);
    procedure ImageD15DblClick(Sender: TObject);
    procedure ImageD14DblClick(Sender: TObject);
    procedure ImageD13DblClick(Sender: TObject);
    procedure ImageD12DblClick(Sender: TObject);
    procedure ImageD11DblClick(Sender: TObject);
    procedure ImageD21DblClick(Sender: TObject);
    procedure ImageD22DblClick(Sender: TObject);
    procedure ImageD23DblClick(Sender: TObject);
    procedure ImageD24DblClick(Sender: TObject);
    procedure ImageD25DblClick(Sender: TObject);
    procedure ImageD26DblClick(Sender: TObject);
    procedure ImageD27DblClick(Sender: TObject);
    procedure ImageD28DblClick(Sender: TObject);
    procedure ImageD31DblClick(Sender: TObject);
    procedure ImageD32DblClick(Sender: TObject);
    procedure ImageD33DblClick(Sender: TObject);
    procedure ImageD34DblClick(Sender: TObject);
    procedure ImageD35DblClick(Sender: TObject);
    procedure ImageD36DblClick(Sender: TObject);
    procedure ImageD37DblClick(Sender: TObject);
    procedure ImageD38DblClick(Sender: TObject);
    procedure ImageD41DblClick(Sender: TObject);
    procedure ImageD42DblClick(Sender: TObject);
    procedure ImageD43DblClick(Sender: TObject);
    procedure ImageD44DblClick(Sender: TObject);
    procedure ImageD45DblClick(Sender: TObject);
    procedure ImageD46DblClick(Sender: TObject);
    procedure ImageD47DblClick(Sender: TObject);
    procedure ImageD48DblClick(Sender: TObject);
    procedure ImageD51DblClick(Sender: TObject);
    procedure ImageD52DblClick(Sender: TObject);
    procedure ImageD53DblClick(Sender: TObject);
    procedure ImageD54DblClick(Sender: TObject);
    procedure ImageD55DblClick(Sender: TObject);
    procedure ImageD61DblClick(Sender: TObject);
    procedure ImageD62DblClick(Sender: TObject);
    procedure ImageD63DblClick(Sender: TObject);
    procedure ImageD64DblClick(Sender: TObject);
    procedure ImageD65DblClick(Sender: TObject);
    procedure ImageD71DblClick(Sender: TObject);
    procedure ImageD72DblClick(Sender: TObject);
    procedure ImageD73DblClick(Sender: TObject);
    procedure ImageD74DblClick(Sender: TObject);
    procedure ImageD75DblClick(Sender: TObject);
    procedure ImageD81DblClick(Sender: TObject);
    procedure ImageD82DblClick(Sender: TObject);
    procedure ImageD83DblClick(Sender: TObject);
    procedure ImageD84DblClick(Sender: TObject);
    procedure ImageD85DblClick(Sender: TObject);
    procedure AnexosDoCliente1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure SalvarDadosDentes(var Estilos: String);
    procedure MostrarDadosDentes(Estilos: String);
  end;

var
  FormOdontogramas: TFormOdontogramas;

implementation
uses DataMod, DataMod2, Funcoes1, Main, OdontogramasOpcoes, FuncoesFirenet,
  ClientesLoc, Clientes, OdontogramasFast, InputDate, ClientesAnexos;
{$R *.dfm}

procedure TFormOdontogramas.Ajuda2Click(Sender: TObject);
begin
  MostrarAjuda('');
end;

procedure TFormOdontogramas.AnexosDoCliente1Click(Sender: TObject);
begin
  AbortIf(DM.TBClientes.IsEmpty,'Nenhum cliente selecionado.');
  AbortIf(DM.TBParametrosPAR_LOCALANEXOSCLIENTES.Value='','Parâmetro de localização dos anexos não definido.'+#13+'Defina em Parâmetros do Sistema.');

  Application.CreateForm(TFormClientesAnexos, FormClientesAnexos);
  FormClientesAnexos.ShowModal;
  FormClientesAnexos.Free;
  FormClientesAnexos:=nil;
end;

procedure TFormOdontogramas.CadastroDeClientes1Click(Sender: TObject);
begin
  Application.CreateForm(TFormClientes, FormClientes);
  FormClientes.ShowModal;
  FormClientes.Free;
  FormClientes:=nil;
end;

procedure TFormOdontogramas.CadastroDeCores1Click(Sender: TObject);
begin
  Application.CreateForm(TFormOdontogramasOpcoes, FormOdontogramasOpcoes);
  FormOdontogramasOpcoes.ShowModal;
  FormOdontogramasOpcoes.Free;
  FormOdontogramasOpcoes:=nil;

  QYOdontogramasOpcoes.Close;
  QYOdontogramasOpcoes.Open;
end;

procedure TFormOdontogramas.DBGrid1DblClick(Sender: TObject);
begin
  AbortIf(DM2.TBOdontogramas.IsEmpty,'Nenhum odontograma selecionado.');

  Application.CreateForm(TFormInputDate, FormInputDate);

  FormInputDate.Caption:='Informe a Data do Odontograma';
  FormInputDate.Label1.Caption:='Informe a Data:';
  FormInputDate.ShowModal;
  if InputDate.Retorno then
  begin
    DM2.TBOdontogramas.Edit;
    DM2.TBOdontogramasODO_DATA.Value:=StrToDate(FormInputDate.MaskEdit1.Text);
  end;
  FormInputDate.Free;
  FormInputDate:=nil;
end;

procedure TFormOdontogramas.DBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  //pinta o fundo da celula com a cor da opção.
  if Column.Field=QYOdontogramasOpcoesODP_COR then
  begin
    DBGrid2.Canvas.Font.Color:=TColor(QYOdontogramasOpcoesODP_COR.Value);
    DBGrid2.Canvas.Brush.Color:=TColor(QYOdontogramasOpcoesODP_COR.Value);
    //DBGrid2.Canvas.Brush.Style:=StrToBrushStyle(QYOdontogramasOpcoesODP_ESTILO.Value);
    DBGrid2.Canvas.FillRect(Rect);
    DBGrid2.DefaultDrawDataCell(Rect,Column.Field,State);
  end;
end;

procedure TFormOdontogramas.Fechar1Click(Sender: TObject);
begin
  Close;
end;

procedure TFormOdontogramas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if DM2.TBOdontogramas.State in [dsInsert, dsEdit] then
  begin
    MessageDlg('Salve os dados antes de fechar.',mtWarning,[mbOk],0);
    Action:=caNone;
  end;
end;

procedure TFormOdontogramas.FormCreate(Sender: TObject);
begin
  PageControl1.ActivePageIndex:=0;
  QYOdontogramasOpcoes.Open;
  DM2.TBOdontogramas.Last;
  MostrarDadosDentes(DM2.TBOdontogramasODO_ESTILOS.Value);
end;

procedure TFormOdontogramas.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormOdontogramas.FormShow(Sender: TObject);
begin
  FormMain.DesabilitarControles(FormOdontogramas);
end;

procedure TFormOdontogramas.ImageD11DblClick(Sender: TObject);
begin
  if (not DM2.TBOdontogramas.IsEmpty) and (not QYOdontogramasOpcoes.IsEmpty) then
  begin
    if DM2.TBOdontogramas.State in [dsInsert, dsEdit] then
    begin
      DM2.TBOdontogramasODO_D11.Value:=QYOdontogramasOpcoesODP_D11.Value;
      ImageD11.Picture.LoadFromFile(DM.TBParametrosPAR_LOCALDENTES.Value+'\'+DM2.TBOdontogramasODO_D11.Value);
    end;
  end;
end;

procedure TFormOdontogramas.ImageD12DblClick(Sender: TObject);
begin
  if (not DM2.TBOdontogramas.IsEmpty) and (not QYOdontogramasOpcoes.IsEmpty) then
  begin
    if DM2.TBOdontogramas.State in [dsInsert, dsEdit] then
    begin
      DM2.TBOdontogramasODO_D12.Value:=QYOdontogramasOpcoesODP_D12.Value;
      ImageD12.Picture.LoadFromFile(DM.TBParametrosPAR_LOCALDENTES.Value+'\'+DM2.TBOdontogramasODO_D12.Value);
    end;
  end;
end;

procedure TFormOdontogramas.ImageD13DblClick(Sender: TObject);
begin
  if (not DM2.TBOdontogramas.IsEmpty) and (not QYOdontogramasOpcoes.IsEmpty) then
  begin
    if DM2.TBOdontogramas.State in [dsInsert, dsEdit] then
    begin
      DM2.TBOdontogramasODO_D13.Value:=QYOdontogramasOpcoesODP_D13.Value;
      ImageD13.Picture.LoadFromFile(DM.TBParametrosPAR_LOCALDENTES.Value+'\'+DM2.TBOdontogramasODO_D13.Value);
    end;
  end;
end;

procedure TFormOdontogramas.ImageD14DblClick(Sender: TObject);
begin
  if (not DM2.TBOdontogramas.IsEmpty) and (not QYOdontogramasOpcoes.IsEmpty) then
  begin
    if DM2.TBOdontogramas.State in [dsInsert, dsEdit] then
    begin
      DM2.TBOdontogramasODO_D14.Value:=QYOdontogramasOpcoesODP_D14.Value;
      ImageD14.Picture.LoadFromFile(DM.TBParametrosPAR_LOCALDENTES.Value+'\'+DM2.TBOdontogramasODO_D14.Value);
    end;
  end;
end;

procedure TFormOdontogramas.ImageD15DblClick(Sender: TObject);
begin
  if (not DM2.TBOdontogramas.IsEmpty) and (not QYOdontogramasOpcoes.IsEmpty) then
  begin
    if DM2.TBOdontogramas.State in [dsInsert, dsEdit] then
    begin
      DM2.TBOdontogramasODO_D15.Value:=QYOdontogramasOpcoesODP_D15.Value;
      ImageD15.Picture.LoadFromFile(DM.TBParametrosPAR_LOCALDENTES.Value+'\'+DM2.TBOdontogramasODO_D15.Value);
    end;
  end;
end;

procedure TFormOdontogramas.ImageD16DblClick(Sender: TObject);
begin
  if (not DM2.TBOdontogramas.IsEmpty) and (not QYOdontogramasOpcoes.IsEmpty) then
  begin
    if DM2.TBOdontogramas.State in [dsInsert, dsEdit] then
    begin
      DM2.TBOdontogramasODO_D16.Value:=QYOdontogramasOpcoesODP_D16.Value;
      ImageD16.Picture.LoadFromFile(DM.TBParametrosPAR_LOCALDENTES.Value+'\'+DM2.TBOdontogramasODO_D16.Value);
    end;
  end;
end;

procedure TFormOdontogramas.ImageD17DblClick(Sender: TObject);
begin
  if (not DM2.TBOdontogramas.IsEmpty) and (not QYOdontogramasOpcoes.IsEmpty) then
  begin
    if DM2.TBOdontogramas.State in [dsInsert, dsEdit] then
    begin
      DM2.TBOdontogramasODO_D17.Value:=QYOdontogramasOpcoesODP_D17.Value;
      ImageD17.Picture.LoadFromFile(DM.TBParametrosPAR_LOCALDENTES.Value+'\'+DM2.TBOdontogramasODO_D17.Value);
    end;
  end;
end;

procedure TFormOdontogramas.ImageD18DblClick(Sender: TObject);
begin
  if (not DM2.TBOdontogramas.IsEmpty) and (not QYOdontogramasOpcoes.IsEmpty) then
  begin
    if DM2.TBOdontogramas.State in [dsInsert, dsEdit] then
    begin
      DM2.TBOdontogramasODO_D18.Value:=QYOdontogramasOpcoesODP_D18.Value;
      ImageD18.Picture.LoadFromFile(DM.TBParametrosPAR_LOCALDENTES.Value+'\'+DM2.TBOdontogramasODO_D18.Value);
    end;
  end;
end;

procedure TFormOdontogramas.ImageD21DblClick(Sender: TObject);
begin
  if (not DM2.TBOdontogramas.IsEmpty) and (not QYOdontogramasOpcoes.IsEmpty) then
  begin
    if DM2.TBOdontogramas.State in [dsInsert, dsEdit] then
    begin
      DM2.TBOdontogramasODO_D21.Value:=QYOdontogramasOpcoesODP_D21.Value;
      ImageD21.Picture.LoadFromFile(DM.TBParametrosPAR_LOCALDENTES.Value+'\'+DM2.TBOdontogramasODO_D21.Value);
    end;
  end;
end;

procedure TFormOdontogramas.ImageD22DblClick(Sender: TObject);
begin
  if (not DM2.TBOdontogramas.IsEmpty) and (not QYOdontogramasOpcoes.IsEmpty) then
  begin
    if DM2.TBOdontogramas.State in [dsInsert, dsEdit] then
    begin
      DM2.TBOdontogramasODO_D22.Value:=QYOdontogramasOpcoesODP_D22.Value;
      ImageD22.Picture.LoadFromFile(DM.TBParametrosPAR_LOCALDENTES.Value+'\'+DM2.TBOdontogramasODO_D22.Value);
    end;
  end;
end;

procedure TFormOdontogramas.ImageD23DblClick(Sender: TObject);
begin
  if (not DM2.TBOdontogramas.IsEmpty) and (not QYOdontogramasOpcoes.IsEmpty) then
  begin
    if DM2.TBOdontogramas.State in [dsInsert, dsEdit] then
    begin
      DM2.TBOdontogramasODO_D23.Value:=QYOdontogramasOpcoesODP_D23.Value;
      ImageD23.Picture.LoadFromFile(DM.TBParametrosPAR_LOCALDENTES.Value+'\'+DM2.TBOdontogramasODO_D23.Value);
    end;
  end;
end;

procedure TFormOdontogramas.ImageD24DblClick(Sender: TObject);
begin
  if (not DM2.TBOdontogramas.IsEmpty) and (not QYOdontogramasOpcoes.IsEmpty) then
  begin
    if DM2.TBOdontogramas.State in [dsInsert, dsEdit] then
    begin
      DM2.TBOdontogramasODO_D24.Value:=QYOdontogramasOpcoesODP_D24.Value;
      ImageD24.Picture.LoadFromFile(DM.TBParametrosPAR_LOCALDENTES.Value+'\'+DM2.TBOdontogramasODO_D24.Value);
    end;
  end;
end;

procedure TFormOdontogramas.ImageD25DblClick(Sender: TObject);
begin
  if (not DM2.TBOdontogramas.IsEmpty) and (not QYOdontogramasOpcoes.IsEmpty) then
  begin
    if DM2.TBOdontogramas.State in [dsInsert, dsEdit] then
    begin
      DM2.TBOdontogramasODO_D25.Value:=QYOdontogramasOpcoesODP_D25.Value;
      ImageD25.Picture.LoadFromFile(DM.TBParametrosPAR_LOCALDENTES.Value+'\'+DM2.TBOdontogramasODO_D25.Value);
    end;
  end;
end;

procedure TFormOdontogramas.ImageD26DblClick(Sender: TObject);
begin
  if (not DM2.TBOdontogramas.IsEmpty) and (not QYOdontogramasOpcoes.IsEmpty) then
  begin
    if DM2.TBOdontogramas.State in [dsInsert, dsEdit] then
    begin
      DM2.TBOdontogramasODO_D26.Value:=QYOdontogramasOpcoesODP_D26.Value;
      ImageD26.Picture.LoadFromFile(DM.TBParametrosPAR_LOCALDENTES.Value+'\'+DM2.TBOdontogramasODO_D26.Value);
    end;
  end;
end;

procedure TFormOdontogramas.ImageD27DblClick(Sender: TObject);
begin
  if (not DM2.TBOdontogramas.IsEmpty) and (not QYOdontogramasOpcoes.IsEmpty) then
  begin
    if DM2.TBOdontogramas.State in [dsInsert, dsEdit] then
    begin
      DM2.TBOdontogramasODO_D27.Value:=QYOdontogramasOpcoesODP_D27.Value;
      ImageD27.Picture.LoadFromFile(DM.TBParametrosPAR_LOCALDENTES.Value+'\'+DM2.TBOdontogramasODO_D27.Value);
    end;
  end;
end;

procedure TFormOdontogramas.ImageD28DblClick(Sender: TObject);
begin
  if (not DM2.TBOdontogramas.IsEmpty) and (not QYOdontogramasOpcoes.IsEmpty) then
  begin
    if DM2.TBOdontogramas.State in [dsInsert, dsEdit] then
    begin
      DM2.TBOdontogramasODO_D28.Value:=QYOdontogramasOpcoesODP_D28.Value;
      ImageD28.Picture.LoadFromFile(DM.TBParametrosPAR_LOCALDENTES.Value+'\'+DM2.TBOdontogramasODO_D28.Value);
    end;
  end;
end;

procedure TFormOdontogramas.ImageD31DblClick(Sender: TObject);
begin
  if (not DM2.TBOdontogramas.IsEmpty) and (not QYOdontogramasOpcoes.IsEmpty) then
  begin
    if DM2.TBOdontogramas.State in [dsInsert, dsEdit] then
    begin
      DM2.TBOdontogramasODO_D31.Value:=QYOdontogramasOpcoesODP_D31.Value;
      ImageD31.Picture.LoadFromFile(DM.TBParametrosPAR_LOCALDENTES.Value+'\'+DM2.TBOdontogramasODO_D31.Value);
    end;
  end;
end;

procedure TFormOdontogramas.ImageD32DblClick(Sender: TObject);
begin
  if (not DM2.TBOdontogramas.IsEmpty) and (not QYOdontogramasOpcoes.IsEmpty) then
  begin
    if DM2.TBOdontogramas.State in [dsInsert, dsEdit] then
    begin
      DM2.TBOdontogramasODO_D32.Value:=QYOdontogramasOpcoesODP_D32.Value;
      ImageD32.Picture.LoadFromFile(DM.TBParametrosPAR_LOCALDENTES.Value+'\'+DM2.TBOdontogramasODO_D32.Value);
    end;
  end;
end;

procedure TFormOdontogramas.ImageD33DblClick(Sender: TObject);
begin
  if (not DM2.TBOdontogramas.IsEmpty) and (not QYOdontogramasOpcoes.IsEmpty) then
  begin
    if DM2.TBOdontogramas.State in [dsInsert, dsEdit] then
    begin
      DM2.TBOdontogramasODO_D33.Value:=QYOdontogramasOpcoesODP_D33.Value;
      ImageD33.Picture.LoadFromFile(DM.TBParametrosPAR_LOCALDENTES.Value+'\'+DM2.TBOdontogramasODO_D33.Value);
    end;
  end;
end;

procedure TFormOdontogramas.ImageD34DblClick(Sender: TObject);
begin
  if (not DM2.TBOdontogramas.IsEmpty) and (not QYOdontogramasOpcoes.IsEmpty) then
  begin
    if DM2.TBOdontogramas.State in [dsInsert, dsEdit] then
    begin
      DM2.TBOdontogramasODO_D34.Value:=QYOdontogramasOpcoesODP_D34.Value;
      ImageD34.Picture.LoadFromFile(DM.TBParametrosPAR_LOCALDENTES.Value+'\'+DM2.TBOdontogramasODO_D34.Value);
    end;
  end;
end;

procedure TFormOdontogramas.ImageD35DblClick(Sender: TObject);
begin
  if (not DM2.TBOdontogramas.IsEmpty) and (not QYOdontogramasOpcoes.IsEmpty) then
  begin
    if DM2.TBOdontogramas.State in [dsInsert, dsEdit] then
    begin
      DM2.TBOdontogramasODO_D35.Value:=QYOdontogramasOpcoesODP_D35.Value;
      ImageD35.Picture.LoadFromFile(DM.TBParametrosPAR_LOCALDENTES.Value+'\'+DM2.TBOdontogramasODO_D35.Value);
    end;
  end;
end;

procedure TFormOdontogramas.ImageD36DblClick(Sender: TObject);
begin
  if (not DM2.TBOdontogramas.IsEmpty) and (not QYOdontogramasOpcoes.IsEmpty) then
  begin
    if DM2.TBOdontogramas.State in [dsInsert, dsEdit] then
    begin
      DM2.TBOdontogramasODO_D36.Value:=QYOdontogramasOpcoesODP_D36.Value;
      ImageD36.Picture.LoadFromFile(DM.TBParametrosPAR_LOCALDENTES.Value+'\'+DM2.TBOdontogramasODO_D36.Value);
    end;
  end;
end;

procedure TFormOdontogramas.ImageD37DblClick(Sender: TObject);
begin
  if (not DM2.TBOdontogramas.IsEmpty) and (not QYOdontogramasOpcoes.IsEmpty) then
  begin
    if DM2.TBOdontogramas.State in [dsInsert, dsEdit] then
    begin
      DM2.TBOdontogramasODO_D37.Value:=QYOdontogramasOpcoesODP_D37.Value;
      ImageD37.Picture.LoadFromFile(DM.TBParametrosPAR_LOCALDENTES.Value+'\'+DM2.TBOdontogramasODO_D37.Value);
    end;
  end;
end;

procedure TFormOdontogramas.ImageD38DblClick(Sender: TObject);
begin
  if (not DM2.TBOdontogramas.IsEmpty) and (not QYOdontogramasOpcoes.IsEmpty) then
  begin
    if DM2.TBOdontogramas.State in [dsInsert, dsEdit] then
    begin
      DM2.TBOdontogramasODO_D38.Value:=QYOdontogramasOpcoesODP_D38.Value;
      ImageD38.Picture.LoadFromFile(DM.TBParametrosPAR_LOCALDENTES.Value+'\'+DM2.TBOdontogramasODO_D38.Value);
    end;
  end;
end;

procedure TFormOdontogramas.ImageD41DblClick(Sender: TObject);
begin
  if (not DM2.TBOdontogramas.IsEmpty) and (not QYOdontogramasOpcoes.IsEmpty) then
  begin
    if DM2.TBOdontogramas.State in [dsInsert, dsEdit] then
    begin
      DM2.TBOdontogramasODO_D41.Value:=QYOdontogramasOpcoesODP_D41.Value;
      ImageD41.Picture.LoadFromFile(DM.TBParametrosPAR_LOCALDENTES.Value+'\'+DM2.TBOdontogramasODO_D41.Value);
    end;
  end;
end;

procedure TFormOdontogramas.ImageD42DblClick(Sender: TObject);
begin
  if (not DM2.TBOdontogramas.IsEmpty) and (not QYOdontogramasOpcoes.IsEmpty) then
  begin
    if DM2.TBOdontogramas.State in [dsInsert, dsEdit] then
    begin
      DM2.TBOdontogramasODO_D42.Value:=QYOdontogramasOpcoesODP_D42.Value;
      ImageD42.Picture.LoadFromFile(DM.TBParametrosPAR_LOCALDENTES.Value+'\'+DM2.TBOdontogramasODO_D42.Value);
    end;
  end;
end;

procedure TFormOdontogramas.ImageD43DblClick(Sender: TObject);
begin
  if (not DM2.TBOdontogramas.IsEmpty) and (not QYOdontogramasOpcoes.IsEmpty) then
  begin
    if DM2.TBOdontogramas.State in [dsInsert, dsEdit] then
    begin
      DM2.TBOdontogramasODO_D43.Value:=QYOdontogramasOpcoesODP_D43.Value;
      ImageD43.Picture.LoadFromFile(DM.TBParametrosPAR_LOCALDENTES.Value+'\'+DM2.TBOdontogramasODO_D43.Value);
    end;
  end;
end;

procedure TFormOdontogramas.ImageD44DblClick(Sender: TObject);
begin
  if (not DM2.TBOdontogramas.IsEmpty) and (not QYOdontogramasOpcoes.IsEmpty) then
  begin
    if DM2.TBOdontogramas.State in [dsInsert, dsEdit] then
    begin
      DM2.TBOdontogramasODO_D44.Value:=QYOdontogramasOpcoesODP_D44.Value;
      ImageD44.Picture.LoadFromFile(DM.TBParametrosPAR_LOCALDENTES.Value+'\'+DM2.TBOdontogramasODO_D44.Value);
    end;
  end;
end;

procedure TFormOdontogramas.ImageD45DblClick(Sender: TObject);
begin
  if (not DM2.TBOdontogramas.IsEmpty) and (not QYOdontogramasOpcoes.IsEmpty) then
  begin
    if DM2.TBOdontogramas.State in [dsInsert, dsEdit] then
    begin
      DM2.TBOdontogramasODO_D45.Value:=QYOdontogramasOpcoesODP_D45.Value;
      ImageD45.Picture.LoadFromFile(DM.TBParametrosPAR_LOCALDENTES.Value+'\'+DM2.TBOdontogramasODO_D45.Value);
    end;
  end;
end;

procedure TFormOdontogramas.ImageD46DblClick(Sender: TObject);
begin
  if (not DM2.TBOdontogramas.IsEmpty) and (not QYOdontogramasOpcoes.IsEmpty) then
  begin
    if DM2.TBOdontogramas.State in [dsInsert, dsEdit] then
    begin
      DM2.TBOdontogramasODO_D46.Value:=QYOdontogramasOpcoesODP_D46.Value;
      ImageD46.Picture.LoadFromFile(DM.TBParametrosPAR_LOCALDENTES.Value+'\'+DM2.TBOdontogramasODO_D46.Value);
    end;
  end;
end;

procedure TFormOdontogramas.ImageD47DblClick(Sender: TObject);
begin
  if (not DM2.TBOdontogramas.IsEmpty) and (not QYOdontogramasOpcoes.IsEmpty) then
  begin
    if DM2.TBOdontogramas.State in [dsInsert, dsEdit] then
    begin
      DM2.TBOdontogramasODO_D47.Value:=QYOdontogramasOpcoesODP_D47.Value;
      ImageD47.Picture.LoadFromFile(DM.TBParametrosPAR_LOCALDENTES.Value+'\'+DM2.TBOdontogramasODO_D47.Value);
    end;
  end;
end;

procedure TFormOdontogramas.ImageD48DblClick(Sender: TObject);
begin
  if (not DM2.TBOdontogramas.IsEmpty) and (not QYOdontogramasOpcoes.IsEmpty) then
  begin
    if DM2.TBOdontogramas.State in [dsInsert, dsEdit] then
    begin
      DM2.TBOdontogramasODO_D48.Value:=QYOdontogramasOpcoesODP_D48.Value;
      ImageD48.Picture.LoadFromFile(DM.TBParametrosPAR_LOCALDENTES.Value+'\'+DM2.TBOdontogramasODO_D48.Value);
    end;
  end;
end;

procedure TFormOdontogramas.ImageD51DblClick(Sender: TObject);
begin
  if (not DM2.TBOdontogramas.IsEmpty) and (not QYOdontogramasOpcoes.IsEmpty) then
  begin
    if DM2.TBOdontogramas.State in [dsInsert, dsEdit] then
    begin
      DM2.TBOdontogramasODO_D51.Value:=QYOdontogramasOpcoesODP_D51.Value;
      ImageD51.Picture.LoadFromFile(DM.TBParametrosPAR_LOCALDENTES.Value+'\'+DM2.TBOdontogramasODO_D51.Value);
    end;
  end;
end;

procedure TFormOdontogramas.ImageD52DblClick(Sender: TObject);
begin
  if (not DM2.TBOdontogramas.IsEmpty) and (not QYOdontogramasOpcoes.IsEmpty) then
  begin
    if DM2.TBOdontogramas.State in [dsInsert, dsEdit] then
    begin
      DM2.TBOdontogramasODO_D52.Value:=QYOdontogramasOpcoesODP_D52.Value;
      ImageD52.Picture.LoadFromFile(DM.TBParametrosPAR_LOCALDENTES.Value+'\'+DM2.TBOdontogramasODO_D52.Value);
    end;
  end;
end;

procedure TFormOdontogramas.ImageD53DblClick(Sender: TObject);
begin
  if (not DM2.TBOdontogramas.IsEmpty) and (not QYOdontogramasOpcoes.IsEmpty) then
  begin
    if DM2.TBOdontogramas.State in [dsInsert, dsEdit] then
    begin
      DM2.TBOdontogramasODO_D53.Value:=QYOdontogramasOpcoesODP_D53.Value;
      ImageD53.Picture.LoadFromFile(DM.TBParametrosPAR_LOCALDENTES.Value+'\'+DM2.TBOdontogramasODO_D53.Value);
    end;
  end;
end;

procedure TFormOdontogramas.ImageD54DblClick(Sender: TObject);
begin
  if (not DM2.TBOdontogramas.IsEmpty) and (not QYOdontogramasOpcoes.IsEmpty) then
  begin
    if DM2.TBOdontogramas.State in [dsInsert, dsEdit] then
    begin
      DM2.TBOdontogramasODO_D54.Value:=QYOdontogramasOpcoesODP_D54.Value;
      ImageD54.Picture.LoadFromFile(DM.TBParametrosPAR_LOCALDENTES.Value+'\'+DM2.TBOdontogramasODO_D54.Value);
    end;
  end;
end;

procedure TFormOdontogramas.ImageD55DblClick(Sender: TObject);
begin
  if (not DM2.TBOdontogramas.IsEmpty) and (not QYOdontogramasOpcoes.IsEmpty) then
  begin
    if DM2.TBOdontogramas.State in [dsInsert, dsEdit] then
    begin
      DM2.TBOdontogramasODO_D55.Value:=QYOdontogramasOpcoesODP_D55.Value;
      ImageD55.Picture.LoadFromFile(DM.TBParametrosPAR_LOCALDENTES.Value+'\'+DM2.TBOdontogramasODO_D55.Value);
    end;
  end;
end;

procedure TFormOdontogramas.ImageD61DblClick(Sender: TObject);
begin
  if (not DM2.TBOdontogramas.IsEmpty) and (not QYOdontogramasOpcoes.IsEmpty) then
  begin
    if DM2.TBOdontogramas.State in [dsInsert, dsEdit] then
    begin
      DM2.TBOdontogramasODO_D61.Value:=QYOdontogramasOpcoesODP_D61.Value;
      ImageD61.Picture.LoadFromFile(DM.TBParametrosPAR_LOCALDENTES.Value+'\'+DM2.TBOdontogramasODO_D61.Value);
    end;
  end;
end;

procedure TFormOdontogramas.ImageD62DblClick(Sender: TObject);
begin
  if (not DM2.TBOdontogramas.IsEmpty) and (not QYOdontogramasOpcoes.IsEmpty) then
  begin
    if DM2.TBOdontogramas.State in [dsInsert, dsEdit] then
    begin
      DM2.TBOdontogramasODO_D62.Value:=QYOdontogramasOpcoesODP_D62.Value;
      ImageD62.Picture.LoadFromFile(DM.TBParametrosPAR_LOCALDENTES.Value+'\'+DM2.TBOdontogramasODO_D62.Value);
    end;
  end;
end;

procedure TFormOdontogramas.ImageD63DblClick(Sender: TObject);
begin
  if (not DM2.TBOdontogramas.IsEmpty) and (not QYOdontogramasOpcoes.IsEmpty) then
  begin
    if DM2.TBOdontogramas.State in [dsInsert, dsEdit] then
    begin
      DM2.TBOdontogramasODO_D63.Value:=QYOdontogramasOpcoesODP_D63.Value;
      ImageD63.Picture.LoadFromFile(DM.TBParametrosPAR_LOCALDENTES.Value+'\'+DM2.TBOdontogramasODO_D63.Value);
    end;
  end;
end;

procedure TFormOdontogramas.ImageD64DblClick(Sender: TObject);
begin
  if (not DM2.TBOdontogramas.IsEmpty) and (not QYOdontogramasOpcoes.IsEmpty) then
  begin
    if DM2.TBOdontogramas.State in [dsInsert, dsEdit] then
    begin
      DM2.TBOdontogramasODO_D64.Value:=QYOdontogramasOpcoesODP_D64.Value;
      ImageD64.Picture.LoadFromFile(DM.TBParametrosPAR_LOCALDENTES.Value+'\'+DM2.TBOdontogramasODO_D64.Value);
    end;
  end;
end;

procedure TFormOdontogramas.ImageD65DblClick(Sender: TObject);
begin
  if (not DM2.TBOdontogramas.IsEmpty) and (not QYOdontogramasOpcoes.IsEmpty) then
  begin
    if DM2.TBOdontogramas.State in [dsInsert, dsEdit] then
    begin
      DM2.TBOdontogramasODO_D65.Value:=QYOdontogramasOpcoesODP_D65.Value;
      ImageD65.Picture.LoadFromFile(DM.TBParametrosPAR_LOCALDENTES.Value+'\'+DM2.TBOdontogramasODO_D65.Value);
    end;
  end;
end;

procedure TFormOdontogramas.ImageD71DblClick(Sender: TObject);
begin
  if (not DM2.TBOdontogramas.IsEmpty) and (not QYOdontogramasOpcoes.IsEmpty) then
  begin
    if DM2.TBOdontogramas.State in [dsInsert, dsEdit] then
    begin
      DM2.TBOdontogramasODO_D71.Value:=QYOdontogramasOpcoesODP_D71.Value;
      ImageD71.Picture.LoadFromFile(DM.TBParametrosPAR_LOCALDENTES.Value+'\'+DM2.TBOdontogramasODO_D71.Value);
    end;
  end;
end;

procedure TFormOdontogramas.ImageD72DblClick(Sender: TObject);
begin
  if (not DM2.TBOdontogramas.IsEmpty) and (not QYOdontogramasOpcoes.IsEmpty) then
  begin
    if DM2.TBOdontogramas.State in [dsInsert, dsEdit] then
    begin
      DM2.TBOdontogramasODO_D72.Value:=QYOdontogramasOpcoesODP_D72.Value;
      ImageD72.Picture.LoadFromFile(DM.TBParametrosPAR_LOCALDENTES.Value+'\'+DM2.TBOdontogramasODO_D72.Value);
    end;
  end;
end;

procedure TFormOdontogramas.ImageD73DblClick(Sender: TObject);
begin
  if (not DM2.TBOdontogramas.IsEmpty) and (not QYOdontogramasOpcoes.IsEmpty) then
  begin
    if DM2.TBOdontogramas.State in [dsInsert, dsEdit] then
    begin
      DM2.TBOdontogramasODO_D73.Value:=QYOdontogramasOpcoesODP_D73.Value;
      ImageD73.Picture.LoadFromFile(DM.TBParametrosPAR_LOCALDENTES.Value+'\'+DM2.TBOdontogramasODO_D73.Value);
    end;
  end;
end;

procedure TFormOdontogramas.ImageD74DblClick(Sender: TObject);
begin
  if (not DM2.TBOdontogramas.IsEmpty) and (not QYOdontogramasOpcoes.IsEmpty) then
  begin
    if DM2.TBOdontogramas.State in [dsInsert, dsEdit] then
    begin
      DM2.TBOdontogramasODO_D74.Value:=QYOdontogramasOpcoesODP_D74.Value;
      ImageD74.Picture.LoadFromFile(DM.TBParametrosPAR_LOCALDENTES.Value+'\'+DM2.TBOdontogramasODO_D74.Value);
    end;
  end;
end;

procedure TFormOdontogramas.ImageD75DblClick(Sender: TObject);
begin
  if (not DM2.TBOdontogramas.IsEmpty) and (not QYOdontogramasOpcoes.IsEmpty) then
  begin
    if DM2.TBOdontogramas.State in [dsInsert, dsEdit] then
    begin
      DM2.TBOdontogramasODO_D75.Value:=QYOdontogramasOpcoesODP_D75.Value;
      ImageD75.Picture.LoadFromFile(DM.TBParametrosPAR_LOCALDENTES.Value+'\'+DM2.TBOdontogramasODO_D75.Value);
    end;
  end;
end;

procedure TFormOdontogramas.ImageD81DblClick(Sender: TObject);
begin
  if (not DM2.TBOdontogramas.IsEmpty) and (not QYOdontogramasOpcoes.IsEmpty) then
  begin
    if DM2.TBOdontogramas.State in [dsInsert, dsEdit] then
    begin
      DM2.TBOdontogramasODO_D81.Value:=QYOdontogramasOpcoesODP_D81.Value;
      ImageD81.Picture.LoadFromFile(DM.TBParametrosPAR_LOCALDENTES.Value+'\'+DM2.TBOdontogramasODO_D81.Value);
    end;
  end;
end;

procedure TFormOdontogramas.ImageD82DblClick(Sender: TObject);
begin
  if (not DM2.TBOdontogramas.IsEmpty) and (not QYOdontogramasOpcoes.IsEmpty) then
  begin
    if DM2.TBOdontogramas.State in [dsInsert, dsEdit] then
    begin
      DM2.TBOdontogramasODO_D82.Value:=QYOdontogramasOpcoesODP_D82.Value;
      ImageD82.Picture.LoadFromFile(DM.TBParametrosPAR_LOCALDENTES.Value+'\'+DM2.TBOdontogramasODO_D82.Value);
    end;
  end;
end;

procedure TFormOdontogramas.ImageD83DblClick(Sender: TObject);
begin
  if (not DM2.TBOdontogramas.IsEmpty) and (not QYOdontogramasOpcoes.IsEmpty) then
  begin
    if DM2.TBOdontogramas.State in [dsInsert, dsEdit] then
    begin
      DM2.TBOdontogramasODO_D83.Value:=QYOdontogramasOpcoesODP_D83.Value;
      ImageD83.Picture.LoadFromFile(DM.TBParametrosPAR_LOCALDENTES.Value+'\'+DM2.TBOdontogramasODO_D83.Value);
    end;
  end;
end;

procedure TFormOdontogramas.ImageD84DblClick(Sender: TObject);
begin
  if (not DM2.TBOdontogramas.IsEmpty) and (not QYOdontogramasOpcoes.IsEmpty) then
  begin
    if DM2.TBOdontogramas.State in [dsInsert, dsEdit] then
    begin
      DM2.TBOdontogramasODO_D84.Value:=QYOdontogramasOpcoesODP_D84.Value;
      ImageD84.Picture.LoadFromFile(DM.TBParametrosPAR_LOCALDENTES.Value+'\'+DM2.TBOdontogramasODO_D84.Value);
    end;
  end;
end;

procedure TFormOdontogramas.ImageD85DblClick(Sender: TObject);
begin
  if (not DM2.TBOdontogramas.IsEmpty) and (not QYOdontogramasOpcoes.IsEmpty) then
  begin
    if DM2.TBOdontogramas.State in [dsInsert, dsEdit] then
    begin
      DM2.TBOdontogramasODO_D85.Value:=QYOdontogramasOpcoesODP_D85.Value;
      ImageD85.Picture.LoadFromFile(DM.TBParametrosPAR_LOCALDENTES.Value+'\'+DM2.TBOdontogramasODO_D85.Value);
    end;
  end;
end;

procedure TFormOdontogramas.Localizar1Click(Sender: TObject);
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

procedure TFormOdontogramas.Relatorios2Click(Sender: TObject);
begin
  AbortIf(DM2.TBOdontogramas.IsEmpty,'Nenhum odontograma selecionado.');

  //QuickReport antigo (FormOdontogramasQ01), trocado pelo FastReport (FormOdontogramasFast, ODO01) em 2026.11.24:
  //Application.CreateForm(TFormOdontogramasQ01, FormOdontogramasQ01);
  //FormOdontogramasQ01.FDQuery1.SQL.Clear;
  //FormOdontogramasQ01.FDQuery1.SQL.Add('select ODO_CLIENTE, ODO_CODIGO, ODO_CORES, ODO_DATA, '+
  //                                     'ODO_ESTILOS, ODO_OBSERVACOES, CLI_NOME from ODONTOGRAMAS '+
  //                                     //'ODO_DESCRICOES, ODO_ESTILOS, ODO_OBSERVACOES, CLI_NOME from ODONTOGRAMAS '+
  //                                     'left join CLIENTES on ODO_CLIENTE=CLI_CODIGO '+
  //                                     'where ODO_CLIENTE=:cliente '+
  //                                     'order by ODO_DATA desc');
  //FormOdontogramasQ01.FDQuery1.ParamByName('cliente').AsInteger:=DM.TBClientesCLI_CODIGO.Value;
  //FormOdontogramasQ01.FDQuery1.Open;
  //FormOdontogramasQ01.QuickRep1.PreviewModal;
  //FormOdontogramasQ01.Free;
  //FormOdontogramasQ01:=nil;
  Application.CreateForm(TFormOdontogramasFast, FormOdontogramasFast);
  FormOdontogramasFast.QY01.ParamByName('cliente').AsInteger:=DM.TBClientesCLI_CODIGO.Value;
  FormOdontogramasFast.QY01.Open;
  FormOdontogramasFast.Mostrar(FormOdontogramasFast.frxReport1,'Odontogramas');
  FormOdontogramasFast.Free;
  FormOdontogramasFast:=nil;
end;

procedure TFormOdontogramas.MostrarDadosDentes(Estilos: String);
var SL: TStringList;
begin
  {$REGION 'Cores 10'}
  Shape11A.Brush.Color:=TColor(DM2.TBOdontogramasODO_D11A.Value); //TColor(StrToInt(SL.Strings[1]));
  Shape11B.Brush.Color:=TColor(DM2.TBOdontogramasODO_D11B.Value); //TColor(StrToInt(SL.Strings[2]));
  Shape11C.Brush.Color:=TColor(DM2.TBOdontogramasODO_D11C.Value); //TColor(StrToInt(SL.Strings[3]));
  Shape11D.Brush.Color:=TColor(DM2.TBOdontogramasODO_D11D.Value); //TColor(StrToInt(SL.Strings[4]));
  Shape11E.Brush.Color:=TColor(DM2.TBOdontogramasODO_D11E.Value); //TColor(StrToInt(SL.Strings[5]));

  Shape12A.Brush.Color:=TColor(DM2.TBOdontogramasODO_D12A.Value);
  Shape12B.Brush.Color:=TColor(DM2.TBOdontogramasODO_D12B.Value);
  Shape12C.Brush.Color:=TColor(DM2.TBOdontogramasODO_D12C.Value);
  Shape12D.Brush.Color:=TColor(DM2.TBOdontogramasODO_D12D.Value);
  Shape12E.Brush.Color:=TColor(DM2.TBOdontogramasODO_D12E.Value);

  Shape13A.Brush.Color:=TColor(DM2.TBOdontogramasODO_D13A.Value);
  Shape13B.Brush.Color:=TColor(DM2.TBOdontogramasODO_D13B.Value);
  Shape13C.Brush.Color:=TColor(DM2.TBOdontogramasODO_D13C.Value);
  Shape13D.Brush.Color:=TColor(DM2.TBOdontogramasODO_D13D.Value);
  Shape13E.Brush.Color:=TColor(DM2.TBOdontogramasODO_D13E.Value);

  Shape14A.Brush.Color:=TColor(DM2.TBOdontogramasODO_D14A.Value);
  Shape14B.Brush.Color:=TColor(DM2.TBOdontogramasODO_D14B.Value);
  Shape14C.Brush.Color:=TColor(DM2.TBOdontogramasODO_D14C.Value);
  Shape14D.Brush.Color:=TColor(DM2.TBOdontogramasODO_D14D.Value);
  Shape14E.Brush.Color:=TColor(DM2.TBOdontogramasODO_D14E.Value);

  Shape15A.Brush.Color:=TColor(DM2.TBOdontogramasODO_D15A.Value);
  Shape15B.Brush.Color:=TColor(DM2.TBOdontogramasODO_D15B.Value);
  Shape15C.Brush.Color:=TColor(DM2.TBOdontogramasODO_D15C.Value);
  Shape15D.Brush.Color:=TColor(DM2.TBOdontogramasODO_D15D.Value);
  Shape15E.Brush.Color:=TColor(DM2.TBOdontogramasODO_D15E.Value);

  Shape16A.Brush.Color:=TColor(DM2.TBOdontogramasODO_D16A.Value);
  Shape16B.Brush.Color:=TColor(DM2.TBOdontogramasODO_D16B.Value);
  Shape16C.Brush.Color:=TColor(DM2.TBOdontogramasODO_D16C.Value);
  Shape16D.Brush.Color:=TColor(DM2.TBOdontogramasODO_D16D.Value);
  Shape16E.Brush.Color:=TColor(DM2.TBOdontogramasODO_D16E.Value);

  Shape17A.Brush.Color:=TColor(DM2.TBOdontogramasODO_D17A.Value);
  Shape17B.Brush.Color:=TColor(DM2.TBOdontogramasODO_D17B.Value);
  Shape17C.Brush.Color:=TColor(DM2.TBOdontogramasODO_D17C.Value);
  Shape17D.Brush.Color:=TColor(DM2.TBOdontogramasODO_D17D.Value);
  Shape17E.Brush.Color:=TColor(DM2.TBOdontogramasODO_D17E.Value);

  Shape18A.Brush.Color:=TColor(DM2.TBOdontogramasODO_D18A.Value);
  Shape18B.Brush.Color:=TColor(DM2.TBOdontogramasODO_D18B.Value);
  Shape18C.Brush.Color:=TColor(DM2.TBOdontogramasODO_D18C.Value);
  Shape18D.Brush.Color:=TColor(DM2.TBOdontogramasODO_D18D.Value);
  Shape18E.Brush.Color:=TColor(DM2.TBOdontogramasODO_D18E.Value);
  {$ENDREGION}

  {$REGION 'Cores 20'}
  Shape21A.Brush.Color:=TColor(DM2.TBOdontogramasODO_D21A.Value);
  Shape21B.Brush.Color:=TColor(DM2.TBOdontogramasODO_D21B.Value);
  Shape21C.Brush.Color:=TColor(DM2.TBOdontogramasODO_D21C.Value);
  Shape21D.Brush.Color:=TColor(DM2.TBOdontogramasODO_D21D.Value);
  Shape21E.Brush.Color:=TColor(DM2.TBOdontogramasODO_D21E.Value);

  Shape22A.Brush.Color:=TColor(DM2.TBOdontogramasODO_D22A.Value);
  Shape22B.Brush.Color:=TColor(DM2.TBOdontogramasODO_D22B.Value);
  Shape22C.Brush.Color:=TColor(DM2.TBOdontogramasODO_D22C.Value);
  Shape22D.Brush.Color:=TColor(DM2.TBOdontogramasODO_D22D.Value);
  Shape22E.Brush.Color:=TColor(DM2.TBOdontogramasODO_D22E.Value);

  Shape23A.Brush.Color:=TColor(DM2.TBOdontogramasODO_D23A.Value);
  Shape23B.Brush.Color:=TColor(DM2.TBOdontogramasODO_D23B.Value);
  Shape23C.Brush.Color:=TColor(DM2.TBOdontogramasODO_D23C.Value);
  Shape23D.Brush.Color:=TColor(DM2.TBOdontogramasODO_D23D.Value);
  Shape23E.Brush.Color:=TColor(DM2.TBOdontogramasODO_D23E.Value);

  Shape24A.Brush.Color:=TColor(DM2.TBOdontogramasODO_D24A.Value);
  Shape24B.Brush.Color:=TColor(DM2.TBOdontogramasODO_D24B.Value);
  Shape24C.Brush.Color:=TColor(DM2.TBOdontogramasODO_D24C.Value);
  Shape24D.Brush.Color:=TColor(DM2.TBOdontogramasODO_D24D.Value);
  Shape24E.Brush.Color:=TColor(DM2.TBOdontogramasODO_D24E.Value);

  Shape25A.Brush.Color:=TColor(DM2.TBOdontogramasODO_D25A.Value);
  Shape25B.Brush.Color:=TColor(DM2.TBOdontogramasODO_D25B.Value);
  Shape25C.Brush.Color:=TColor(DM2.TBOdontogramasODO_D25C.Value);
  Shape25D.Brush.Color:=TColor(DM2.TBOdontogramasODO_D25D.Value);
  Shape25E.Brush.Color:=TColor(DM2.TBOdontogramasODO_D25E.Value);

  Shape26A.Brush.Color:=TColor(DM2.TBOdontogramasODO_D26A.Value);
  Shape26B.Brush.Color:=TColor(DM2.TBOdontogramasODO_D26B.Value);
  Shape26C.Brush.Color:=TColor(DM2.TBOdontogramasODO_D26C.Value);
  Shape26D.Brush.Color:=TColor(DM2.TBOdontogramasODO_D26D.Value);
  Shape26E.Brush.Color:=TColor(DM2.TBOdontogramasODO_D26E.Value);

  Shape27A.Brush.Color:=TColor(DM2.TBOdontogramasODO_D27A.Value);
  Shape27B.Brush.Color:=TColor(DM2.TBOdontogramasODO_D27B.Value);
  Shape27C.Brush.Color:=TColor(DM2.TBOdontogramasODO_D27C.Value);
  Shape27D.Brush.Color:=TColor(DM2.TBOdontogramasODO_D27D.Value);
  Shape27E.Brush.Color:=TColor(DM2.TBOdontogramasODO_D27E.Value);

  Shape28A.Brush.Color:=TColor(DM2.TBOdontogramasODO_D28A.Value);
  Shape28B.Brush.Color:=TColor(DM2.TBOdontogramasODO_D28B.Value);
  Shape28C.Brush.Color:=TColor(DM2.TBOdontogramasODO_D28C.Value);
  Shape28D.Brush.Color:=TColor(DM2.TBOdontogramasODO_D28D.Value);
  Shape28E.Brush.Color:=TColor(DM2.TBOdontogramasODO_D28E.Value);
  {$ENDREGION}

  {$REGION 'Cores 30'}
  Shape31A.Brush.Color:=TColor(DM2.TBOdontogramasODO_D31A.Value);
  Shape31B.Brush.Color:=TColor(DM2.TBOdontogramasODO_D31B.Value);
  Shape31C.Brush.Color:=TColor(DM2.TBOdontogramasODO_D31C.Value);
  Shape31D.Brush.Color:=TColor(DM2.TBOdontogramasODO_D31D.Value);
  Shape31E.Brush.Color:=TColor(DM2.TBOdontogramasODO_D31E.Value);

  Shape32A.Brush.Color:=TColor(DM2.TBOdontogramasODO_D32A.Value);
  Shape32B.Brush.Color:=TColor(DM2.TBOdontogramasODO_D32B.Value);
  Shape32C.Brush.Color:=TColor(DM2.TBOdontogramasODO_D32C.Value);
  Shape32D.Brush.Color:=TColor(DM2.TBOdontogramasODO_D32D.Value);
  Shape32E.Brush.Color:=TColor(DM2.TBOdontogramasODO_D32E.Value);

  Shape33A.Brush.Color:=TColor(DM2.TBOdontogramasODO_D33A.Value);
  Shape33B.Brush.Color:=TColor(DM2.TBOdontogramasODO_D33B.Value);
  Shape33C.Brush.Color:=TColor(DM2.TBOdontogramasODO_D33C.Value);
  Shape33D.Brush.Color:=TColor(DM2.TBOdontogramasODO_D33D.Value);
  Shape33E.Brush.Color:=TColor(DM2.TBOdontogramasODO_D33E.Value);

  Shape34A.Brush.Color:=TColor(DM2.TBOdontogramasODO_D34A.Value);
  Shape34B.Brush.Color:=TColor(DM2.TBOdontogramasODO_D34B.Value);
  Shape34C.Brush.Color:=TColor(DM2.TBOdontogramasODO_D34C.Value);
  Shape34D.Brush.Color:=TColor(DM2.TBOdontogramasODO_D34D.Value);
  Shape34E.Brush.Color:=TColor(DM2.TBOdontogramasODO_D34E.Value);

  Shape35A.Brush.Color:=TColor(DM2.TBOdontogramasODO_D35A.Value);
  Shape35B.Brush.Color:=TColor(DM2.TBOdontogramasODO_D35B.Value);
  Shape35C.Brush.Color:=TColor(DM2.TBOdontogramasODO_D35C.Value);
  Shape35D.Brush.Color:=TColor(DM2.TBOdontogramasODO_D35D.Value);
  Shape35E.Brush.Color:=TColor(DM2.TBOdontogramasODO_D35E.Value);

  Shape36A.Brush.Color:=TColor(DM2.TBOdontogramasODO_D36A.Value);
  Shape36B.Brush.Color:=TColor(DM2.TBOdontogramasODO_D36B.Value);
  Shape36C.Brush.Color:=TColor(DM2.TBOdontogramasODO_D36C.Value);
  Shape36D.Brush.Color:=TColor(DM2.TBOdontogramasODO_D36D.Value);
  Shape36E.Brush.Color:=TColor(DM2.TBOdontogramasODO_D36E.Value);

  Shape37A.Brush.Color:=TColor(DM2.TBOdontogramasODO_D37A.Value);
  Shape37B.Brush.Color:=TColor(DM2.TBOdontogramasODO_D37B.Value);
  Shape37C.Brush.Color:=TColor(DM2.TBOdontogramasODO_D37C.Value);
  Shape37D.Brush.Color:=TColor(DM2.TBOdontogramasODO_D37D.Value);
  Shape37E.Brush.Color:=TColor(DM2.TBOdontogramasODO_D37E.Value);

  Shape38A.Brush.Color:=TColor(DM2.TBOdontogramasODO_D38A.Value);
  Shape38B.Brush.Color:=TColor(DM2.TBOdontogramasODO_D38B.Value);
  Shape38C.Brush.Color:=TColor(DM2.TBOdontogramasODO_D38C.Value);
  Shape38D.Brush.Color:=TColor(DM2.TBOdontogramasODO_D38D.Value);
  Shape38E.Brush.Color:=TColor(DM2.TBOdontogramasODO_D38E.Value);
  {$ENDREGION}

  {$REGION 'Cores 40'}
  Shape41A.Brush.Color:=TColor(DM2.TBOdontogramasODO_D41A.Value);
  Shape41B.Brush.Color:=TColor(DM2.TBOdontogramasODO_D41B.Value);
  Shape41C.Brush.Color:=TColor(DM2.TBOdontogramasODO_D41C.Value);
  Shape41D.Brush.Color:=TColor(DM2.TBOdontogramasODO_D41D.Value);
  Shape41E.Brush.Color:=TColor(DM2.TBOdontogramasODO_D41E.Value);

  Shape42A.Brush.Color:=TColor(DM2.TBOdontogramasODO_D42A.Value);
  Shape42B.Brush.Color:=TColor(DM2.TBOdontogramasODO_D42B.Value);
  Shape42C.Brush.Color:=TColor(DM2.TBOdontogramasODO_D42C.Value);
  Shape42D.Brush.Color:=TColor(DM2.TBOdontogramasODO_D42D.Value);
  Shape42E.Brush.Color:=TColor(DM2.TBOdontogramasODO_D42E.Value);

  Shape43A.Brush.Color:=TColor(DM2.TBOdontogramasODO_D43A.Value);
  Shape43B.Brush.Color:=TColor(DM2.TBOdontogramasODO_D43B.Value);
  Shape43C.Brush.Color:=TColor(DM2.TBOdontogramasODO_D43C.Value);
  Shape43D.Brush.Color:=TColor(DM2.TBOdontogramasODO_D43D.Value);
  Shape43E.Brush.Color:=TColor(DM2.TBOdontogramasODO_D43E.Value);

  Shape44A.Brush.Color:=TColor(DM2.TBOdontogramasODO_D44A.Value);
  Shape44B.Brush.Color:=TColor(DM2.TBOdontogramasODO_D44B.Value);
  Shape44C.Brush.Color:=TColor(DM2.TBOdontogramasODO_D44C.Value);
  Shape44D.Brush.Color:=TColor(DM2.TBOdontogramasODO_D44D.Value);
  Shape44E.Brush.Color:=TColor(DM2.TBOdontogramasODO_D44E.Value);

  Shape45A.Brush.Color:=TColor(DM2.TBOdontogramasODO_D45A.Value);
  Shape45B.Brush.Color:=TColor(DM2.TBOdontogramasODO_D45B.Value);
  Shape45C.Brush.Color:=TColor(DM2.TBOdontogramasODO_D45C.Value);
  Shape45D.Brush.Color:=TColor(DM2.TBOdontogramasODO_D45D.Value);
  Shape45E.Brush.Color:=TColor(DM2.TBOdontogramasODO_D45E.Value);

  Shape46A.Brush.Color:=TColor(DM2.TBOdontogramasODO_D46A.Value);
  Shape46B.Brush.Color:=TColor(DM2.TBOdontogramasODO_D46B.Value);
  Shape46C.Brush.Color:=TColor(DM2.TBOdontogramasODO_D46C.Value);
  Shape46D.Brush.Color:=TColor(DM2.TBOdontogramasODO_D46D.Value);
  Shape46E.Brush.Color:=TColor(DM2.TBOdontogramasODO_D46E.Value);

  Shape47A.Brush.Color:=TColor(DM2.TBOdontogramasODO_D47A.Value);
  Shape47B.Brush.Color:=TColor(DM2.TBOdontogramasODO_D47B.Value);
  Shape47C.Brush.Color:=TColor(DM2.TBOdontogramasODO_D47C.Value);
  Shape47D.Brush.Color:=TColor(DM2.TBOdontogramasODO_D47D.Value);
  Shape47E.Brush.Color:=TColor(DM2.TBOdontogramasODO_D47E.Value);

  Shape48A.Brush.Color:=TColor(DM2.TBOdontogramasODO_D48A.Value);
  Shape48B.Brush.Color:=TColor(DM2.TBOdontogramasODO_D48B.Value);
  Shape48C.Brush.Color:=TColor(DM2.TBOdontogramasODO_D48C.Value);
  Shape48D.Brush.Color:=TColor(DM2.TBOdontogramasODO_D48D.Value);
  Shape48E.Brush.Color:=TColor(DM2.TBOdontogramasODO_D48E.Value);
  {$ENDREGION}

  {$REGION 'Cores 50'}
  Shape51A.Brush.Color:=TColor(DM2.TBOdontogramasODO_D51A.Value);
  Shape51B.Brush.Color:=TColor(DM2.TBOdontogramasODO_D51B.Value);
  Shape51C.Brush.Color:=TColor(DM2.TBOdontogramasODO_D51C.Value);
  Shape51D.Brush.Color:=TColor(DM2.TBOdontogramasODO_D51D.Value);
  Shape51E.Brush.Color:=TColor(DM2.TBOdontogramasODO_D51E.Value);

  Shape52A.Brush.Color:=TColor(DM2.TBOdontogramasODO_D52A.Value);
  Shape52B.Brush.Color:=TColor(DM2.TBOdontogramasODO_D52B.Value);
  Shape52C.Brush.Color:=TColor(DM2.TBOdontogramasODO_D52C.Value);
  Shape52D.Brush.Color:=TColor(DM2.TBOdontogramasODO_D52D.Value);
  Shape52E.Brush.Color:=TColor(DM2.TBOdontogramasODO_D52E.Value);

  Shape53A.Brush.Color:=TColor(DM2.TBOdontogramasODO_D53A.Value);
  Shape53B.Brush.Color:=TColor(DM2.TBOdontogramasODO_D53B.Value);
  Shape53C.Brush.Color:=TColor(DM2.TBOdontogramasODO_D53C.Value);
  Shape53D.Brush.Color:=TColor(DM2.TBOdontogramasODO_D53D.Value);
  Shape53E.Brush.Color:=TColor(DM2.TBOdontogramasODO_D53E.Value);

  Shape54A.Brush.Color:=TColor(DM2.TBOdontogramasODO_D54A.Value);
  Shape54B.Brush.Color:=TColor(DM2.TBOdontogramasODO_D54B.Value);
  Shape54C.Brush.Color:=TColor(DM2.TBOdontogramasODO_D54C.Value);
  Shape54D.Brush.Color:=TColor(DM2.TBOdontogramasODO_D54D.Value);
  Shape54E.Brush.Color:=TColor(DM2.TBOdontogramasODO_D54E.Value);

  Shape55A.Brush.Color:=TColor(DM2.TBOdontogramasODO_D55A.Value);
  Shape55B.Brush.Color:=TColor(DM2.TBOdontogramasODO_D55B.Value);
  Shape55C.Brush.Color:=TColor(DM2.TBOdontogramasODO_D55C.Value);
  Shape55D.Brush.Color:=TColor(DM2.TBOdontogramasODO_D55D.Value);
  Shape55E.Brush.Color:=TColor(DM2.TBOdontogramasODO_D55E.Value);
  {$ENDREGION}

  {$REGION 'Cores 60'}
  Shape61A.Brush.Color:=TColor(DM2.TBOdontogramasODO_D61A.Value);
  Shape61B.Brush.Color:=TColor(DM2.TBOdontogramasODO_D61B.Value);
  Shape61C.Brush.Color:=TColor(DM2.TBOdontogramasODO_D61C.Value);
  Shape61D.Brush.Color:=TColor(DM2.TBOdontogramasODO_D61D.Value);
  Shape61E.Brush.Color:=TColor(DM2.TBOdontogramasODO_D61E.Value);

  Shape62A.Brush.Color:=TColor(DM2.TBOdontogramasODO_D62A.Value);
  Shape62B.Brush.Color:=TColor(DM2.TBOdontogramasODO_D62B.Value);
  Shape62C.Brush.Color:=TColor(DM2.TBOdontogramasODO_D62C.Value);
  Shape62D.Brush.Color:=TColor(DM2.TBOdontogramasODO_D62D.Value);
  Shape62E.Brush.Color:=TColor(DM2.TBOdontogramasODO_D62E.Value);

  Shape63A.Brush.Color:=TColor(DM2.TBOdontogramasODO_D63A.Value);
  Shape63B.Brush.Color:=TColor(DM2.TBOdontogramasODO_D63B.Value);
  Shape63C.Brush.Color:=TColor(DM2.TBOdontogramasODO_D63C.Value);
  Shape63D.Brush.Color:=TColor(DM2.TBOdontogramasODO_D63D.Value);
  Shape63E.Brush.Color:=TColor(DM2.TBOdontogramasODO_D63E.Value);

  Shape64A.Brush.Color:=TColor(DM2.TBOdontogramasODO_D64A.Value);
  Shape64B.Brush.Color:=TColor(DM2.TBOdontogramasODO_D64B.Value);
  Shape64C.Brush.Color:=TColor(DM2.TBOdontogramasODO_D64C.Value);
  Shape64D.Brush.Color:=TColor(DM2.TBOdontogramasODO_D64D.Value);
  Shape64E.Brush.Color:=TColor(DM2.TBOdontogramasODO_D64E.Value);

  Shape65A.Brush.Color:=TColor(DM2.TBOdontogramasODO_D65A.Value);
  Shape65B.Brush.Color:=TColor(DM2.TBOdontogramasODO_D65B.Value);
  Shape65C.Brush.Color:=TColor(DM2.TBOdontogramasODO_D65C.Value);
  Shape65D.Brush.Color:=TColor(DM2.TBOdontogramasODO_D65D.Value);
  Shape65E.Brush.Color:=TColor(DM2.TBOdontogramasODO_D65E.Value);
  {$ENDREGION}

  {$REGION 'Cores 70'}
  Shape71A.Brush.Color:=TColor(DM2.TBOdontogramasODO_D71A.Value);
  Shape71B.Brush.Color:=TColor(DM2.TBOdontogramasODO_D71B.Value);
  Shape71C.Brush.Color:=TColor(DM2.TBOdontogramasODO_D71C.Value);
  Shape71D.Brush.Color:=TColor(DM2.TBOdontogramasODO_D71D.Value);
  Shape71E.Brush.Color:=TColor(DM2.TBOdontogramasODO_D71E.Value);

  Shape72A.Brush.Color:=TColor(DM2.TBOdontogramasODO_D72A.Value);
  Shape72B.Brush.Color:=TColor(DM2.TBOdontogramasODO_D72B.Value);
  Shape72C.Brush.Color:=TColor(DM2.TBOdontogramasODO_D72C.Value);
  Shape72D.Brush.Color:=TColor(DM2.TBOdontogramasODO_D72D.Value);
  Shape72E.Brush.Color:=TColor(DM2.TBOdontogramasODO_D72E.Value);

  Shape73A.Brush.Color:=TColor(DM2.TBOdontogramasODO_D73A.Value);
  Shape73B.Brush.Color:=TColor(DM2.TBOdontogramasODO_D73B.Value);
  Shape73C.Brush.Color:=TColor(DM2.TBOdontogramasODO_D73C.Value);
  Shape73D.Brush.Color:=TColor(DM2.TBOdontogramasODO_D73D.Value);
  Shape73E.Brush.Color:=TColor(DM2.TBOdontogramasODO_D73E.Value);

  Shape74A.Brush.Color:=TColor(DM2.TBOdontogramasODO_D74A.Value);
  Shape74B.Brush.Color:=TColor(DM2.TBOdontogramasODO_D74B.Value);
  Shape74C.Brush.Color:=TColor(DM2.TBOdontogramasODO_D74C.Value);
  Shape74D.Brush.Color:=TColor(DM2.TBOdontogramasODO_D74D.Value);
  Shape74E.Brush.Color:=TColor(DM2.TBOdontogramasODO_D74E.Value);

  Shape75A.Brush.Color:=TColor(DM2.TBOdontogramasODO_D75A.Value);
  Shape75B.Brush.Color:=TColor(DM2.TBOdontogramasODO_D75B.Value);
  Shape75C.Brush.Color:=TColor(DM2.TBOdontogramasODO_D75C.Value);
  Shape75D.Brush.Color:=TColor(DM2.TBOdontogramasODO_D75D.Value);
  Shape75E.Brush.Color:=TColor(DM2.TBOdontogramasODO_D75E.Value);
  {$ENDREGION}

  {$REGION 'Cores 80'}
  Shape81A.Brush.Color:=TColor(DM2.TBOdontogramasODO_D81A.Value);
  Shape81B.Brush.Color:=TColor(DM2.TBOdontogramasODO_D81B.Value);
  Shape81C.Brush.Color:=TColor(DM2.TBOdontogramasODO_D81C.Value);
  Shape81D.Brush.Color:=TColor(DM2.TBOdontogramasODO_D81D.Value);
  Shape81E.Brush.Color:=TColor(DM2.TBOdontogramasODO_D81E.Value);

  Shape82A.Brush.Color:=TColor(DM2.TBOdontogramasODO_D82A.Value);
  Shape82B.Brush.Color:=TColor(DM2.TBOdontogramasODO_D82B.Value);
  Shape82C.Brush.Color:=TColor(DM2.TBOdontogramasODO_D82C.Value);
  Shape82D.Brush.Color:=TColor(DM2.TBOdontogramasODO_D82D.Value);
  Shape82E.Brush.Color:=TColor(DM2.TBOdontogramasODO_D82E.Value);

  Shape83A.Brush.Color:=TColor(DM2.TBOdontogramasODO_D83A.Value);
  Shape83B.Brush.Color:=TColor(DM2.TBOdontogramasODO_D83B.Value);
  Shape83C.Brush.Color:=TColor(DM2.TBOdontogramasODO_D83C.Value);
  Shape83D.Brush.Color:=TColor(DM2.TBOdontogramasODO_D83D.Value);
  Shape83E.Brush.Color:=TColor(DM2.TBOdontogramasODO_D83E.Value);

  Shape84A.Brush.Color:=TColor(DM2.TBOdontogramasODO_D84A.Value);
  Shape84B.Brush.Color:=TColor(DM2.TBOdontogramasODO_D84B.Value);
  Shape84C.Brush.Color:=TColor(DM2.TBOdontogramasODO_D84C.Value);
  Shape84D.Brush.Color:=TColor(DM2.TBOdontogramasODO_D84D.Value);
  Shape84E.Brush.Color:=TColor(DM2.TBOdontogramasODO_D84E.Value);

  Shape85A.Brush.Color:=TColor(DM2.TBOdontogramasODO_D85A.Value);
  Shape85B.Brush.Color:=TColor(DM2.TBOdontogramasODO_D85B.Value);
  Shape85C.Brush.Color:=TColor(DM2.TBOdontogramasODO_D85C.Value);
  Shape85D.Brush.Color:=TColor(DM2.TBOdontogramasODO_D85D.Value);
  Shape85E.Brush.Color:=TColor(DM2.TBOdontogramasODO_D85E.Value);
  {$ENDREGION}

  if Estilos='' then
  Estilos:='|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0'+
           '|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0'+
           '|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0'+
           '|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0'+
           '|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0';
  SL:=TStringList.Create;
  SL.StrictDelimiter:=True;
  SL.Delimiter:='|';
  SL.DelimitedText:=Estilos;

  {$REGION 'Estilos 10'}
  Shape11A.Brush.Style:=StrToBrushStyle(SL.Strings[1]);
  Shape11B.Brush.Style:=StrToBrushStyle(SL.Strings[2]);
  Shape11C.Brush.Style:=StrToBrushStyle(SL.Strings[3]);
  Shape11D.Brush.Style:=StrToBrushStyle(SL.Strings[4]);
  Shape11E.Brush.Style:=StrToBrushStyle(SL.Strings[5]);

  Shape12A.Brush.Style:=StrToBrushStyle(SL.Strings[6]);
  Shape12B.Brush.Style:=StrToBrushStyle(SL.Strings[7]);
  Shape12C.Brush.Style:=StrToBrushStyle(SL.Strings[8]);
  Shape12D.Brush.Style:=StrToBrushStyle(SL.Strings[9]);
  Shape12E.Brush.Style:=StrToBrushStyle(SL.Strings[10]);

  Shape13A.Brush.Style:=StrToBrushStyle(SL.Strings[11]);
  Shape13B.Brush.Style:=StrToBrushStyle(SL.Strings[12]);
  Shape13C.Brush.Style:=StrToBrushStyle(SL.Strings[13]);
  Shape13D.Brush.Style:=StrToBrushStyle(SL.Strings[14]);
  Shape13E.Brush.Style:=StrToBrushStyle(SL.Strings[15]);

  Shape14A.Brush.Style:=StrToBrushStyle(SL.Strings[16]);
  Shape14B.Brush.Style:=StrToBrushStyle(SL.Strings[17]);
  Shape14C.Brush.Style:=StrToBrushStyle(SL.Strings[18]);
  Shape14D.Brush.Style:=StrToBrushStyle(SL.Strings[19]);
  Shape14E.Brush.Style:=StrToBrushStyle(SL.Strings[20]);

  Shape15A.Brush.Style:=StrToBrushStyle(SL.Strings[21]);
  Shape15B.Brush.Style:=StrToBrushStyle(SL.Strings[22]);
  Shape15C.Brush.Style:=StrToBrushStyle(SL.Strings[23]);
  Shape15D.Brush.Style:=StrToBrushStyle(SL.Strings[24]);
  Shape15E.Brush.Style:=StrToBrushStyle(SL.Strings[25]);

  Shape16A.Brush.Style:=StrToBrushStyle(SL.Strings[26]);
  Shape16B.Brush.Style:=StrToBrushStyle(SL.Strings[27]);
  Shape16C.Brush.Style:=StrToBrushStyle(SL.Strings[28]);
  Shape16D.Brush.Style:=StrToBrushStyle(SL.Strings[29]);
  Shape16E.Brush.Style:=StrToBrushStyle(SL.Strings[30]);

  Shape17A.Brush.Style:=StrToBrushStyle(SL.Strings[31]);
  Shape17B.Brush.Style:=StrToBrushStyle(SL.Strings[32]);
  Shape17C.Brush.Style:=StrToBrushStyle(SL.Strings[33]);
  Shape17D.Brush.Style:=StrToBrushStyle(SL.Strings[34]);
  Shape17E.Brush.Style:=StrToBrushStyle(SL.Strings[35]);

  Shape18A.Brush.Style:=StrToBrushStyle(SL.Strings[36]);
  Shape18B.Brush.Style:=StrToBrushStyle(SL.Strings[37]);
  Shape18C.Brush.Style:=StrToBrushStyle(SL.Strings[38]);
  Shape18D.Brush.Style:=StrToBrushStyle(SL.Strings[39]);
  Shape18E.Brush.Style:=StrToBrushStyle(SL.Strings[40]);
  {$ENDREGION}

  {$REGION 'Estilos 20'}
  Shape21A.Brush.Style:=StrToBrushStyle(SL.Strings[41]);
  Shape21B.Brush.Style:=StrToBrushStyle(SL.Strings[42]);
  Shape21C.Brush.Style:=StrToBrushStyle(SL.Strings[43]);
  Shape21D.Brush.Style:=StrToBrushStyle(SL.Strings[44]);
  Shape21E.Brush.Style:=StrToBrushStyle(SL.Strings[45]);

  Shape22A.Brush.Style:=StrToBrushStyle(SL.Strings[46]);
  Shape22B.Brush.Style:=StrToBrushStyle(SL.Strings[47]);
  Shape22C.Brush.Style:=StrToBrushStyle(SL.Strings[48]);
  Shape22D.Brush.Style:=StrToBrushStyle(SL.Strings[49]);
  Shape22E.Brush.Style:=StrToBrushStyle(SL.Strings[50]);

  Shape23A.Brush.Style:=StrToBrushStyle(SL.Strings[51]);
  Shape23B.Brush.Style:=StrToBrushStyle(SL.Strings[52]);
  Shape23C.Brush.Style:=StrToBrushStyle(SL.Strings[53]);
  Shape23D.Brush.Style:=StrToBrushStyle(SL.Strings[54]);
  Shape23E.Brush.Style:=StrToBrushStyle(SL.Strings[55]);

  Shape24A.Brush.Style:=StrToBrushStyle(SL.Strings[56]);
  Shape24B.Brush.Style:=StrToBrushStyle(SL.Strings[57]);
  Shape24C.Brush.Style:=StrToBrushStyle(SL.Strings[58]);
  Shape24D.Brush.Style:=StrToBrushStyle(SL.Strings[59]);
  Shape24E.Brush.Style:=StrToBrushStyle(SL.Strings[60]);

  Shape25A.Brush.Style:=StrToBrushStyle(SL.Strings[61]);
  Shape25B.Brush.Style:=StrToBrushStyle(SL.Strings[62]);
  Shape25C.Brush.Style:=StrToBrushStyle(SL.Strings[63]);
  Shape25D.Brush.Style:=StrToBrushStyle(SL.Strings[64]);
  Shape25E.Brush.Style:=StrToBrushStyle(SL.Strings[65]);

  Shape26A.Brush.Style:=StrToBrushStyle(SL.Strings[66]);
  Shape26B.Brush.Style:=StrToBrushStyle(SL.Strings[67]);
  Shape26C.Brush.Style:=StrToBrushStyle(SL.Strings[68]);
  Shape26D.Brush.Style:=StrToBrushStyle(SL.Strings[69]);
  Shape26E.Brush.Style:=StrToBrushStyle(SL.Strings[70]);

  Shape27A.Brush.Style:=StrToBrushStyle(SL.Strings[71]);
  Shape27B.Brush.Style:=StrToBrushStyle(SL.Strings[72]);
  Shape27C.Brush.Style:=StrToBrushStyle(SL.Strings[73]);
  Shape27D.Brush.Style:=StrToBrushStyle(SL.Strings[74]);
  Shape27E.Brush.Style:=StrToBrushStyle(SL.Strings[75]);

  Shape28A.Brush.Style:=StrToBrushStyle(SL.Strings[76]);
  Shape28B.Brush.Style:=StrToBrushStyle(SL.Strings[77]);
  Shape28C.Brush.Style:=StrToBrushStyle(SL.Strings[78]);
  Shape28D.Brush.Style:=StrToBrushStyle(SL.Strings[79]);
  Shape28E.Brush.Style:=StrToBrushStyle(SL.Strings[80]);
  {$ENDREGION}

  {$REGION 'Estilos 30'}
  Shape31A.Brush.Style:=StrToBrushStyle(SL.Strings[81]);
  Shape31B.Brush.Style:=StrToBrushStyle(SL.Strings[82]);
  Shape31C.Brush.Style:=StrToBrushStyle(SL.Strings[83]);
  Shape31D.Brush.Style:=StrToBrushStyle(SL.Strings[84]);
  Shape31E.Brush.Style:=StrToBrushStyle(SL.Strings[85]);

  Shape32A.Brush.Style:=StrToBrushStyle(SL.Strings[86]);
  Shape32B.Brush.Style:=StrToBrushStyle(SL.Strings[87]);
  Shape32C.Brush.Style:=StrToBrushStyle(SL.Strings[88]);
  Shape32D.Brush.Style:=StrToBrushStyle(SL.Strings[89]);
  Shape32E.Brush.Style:=StrToBrushStyle(SL.Strings[90]);

  Shape33A.Brush.Style:=StrToBrushStyle(SL.Strings[91]);
  Shape33B.Brush.Style:=StrToBrushStyle(SL.Strings[92]);
  Shape33C.Brush.Style:=StrToBrushStyle(SL.Strings[93]);
  Shape33D.Brush.Style:=StrToBrushStyle(SL.Strings[94]);
  Shape33E.Brush.Style:=StrToBrushStyle(SL.Strings[95]);

  Shape34A.Brush.Style:=StrToBrushStyle(SL.Strings[96]);
  Shape34B.Brush.Style:=StrToBrushStyle(SL.Strings[97]);
  Shape34C.Brush.Style:=StrToBrushStyle(SL.Strings[98]);
  Shape34D.Brush.Style:=StrToBrushStyle(SL.Strings[99]);
  Shape34E.Brush.Style:=StrToBrushStyle(SL.Strings[100]);

  Shape35A.Brush.Style:=StrToBrushStyle(SL.Strings[101]);
  Shape35B.Brush.Style:=StrToBrushStyle(SL.Strings[102]);
  Shape35C.Brush.Style:=StrToBrushStyle(SL.Strings[103]);
  Shape35D.Brush.Style:=StrToBrushStyle(SL.Strings[104]);
  Shape35E.Brush.Style:=StrToBrushStyle(SL.Strings[105]);

  Shape36A.Brush.Style:=StrToBrushStyle(SL.Strings[106]);
  Shape36B.Brush.Style:=StrToBrushStyle(SL.Strings[107]);
  Shape36C.Brush.Style:=StrToBrushStyle(SL.Strings[108]);
  Shape36D.Brush.Style:=StrToBrushStyle(SL.Strings[109]);
  Shape36E.Brush.Style:=StrToBrushStyle(SL.Strings[110]);

  Shape37A.Brush.Style:=StrToBrushStyle(SL.Strings[111]);
  Shape37B.Brush.Style:=StrToBrushStyle(SL.Strings[112]);
  Shape37C.Brush.Style:=StrToBrushStyle(SL.Strings[113]);
  Shape37D.Brush.Style:=StrToBrushStyle(SL.Strings[114]);
  Shape37E.Brush.Style:=StrToBrushStyle(SL.Strings[115]);

  Shape38A.Brush.Style:=StrToBrushStyle(SL.Strings[116]);
  Shape38B.Brush.Style:=StrToBrushStyle(SL.Strings[117]);
  Shape38C.Brush.Style:=StrToBrushStyle(SL.Strings[118]);
  Shape38D.Brush.Style:=StrToBrushStyle(SL.Strings[119]);
  Shape38E.Brush.Style:=StrToBrushStyle(SL.Strings[120]);
  {$ENDREGION}

  {$REGION 'Estilos 40'}
  Shape41A.Brush.Style:=StrToBrushStyle(SL.Strings[121]);
  Shape41B.Brush.Style:=StrToBrushStyle(SL.Strings[122]);
  Shape41C.Brush.Style:=StrToBrushStyle(SL.Strings[123]);
  Shape41D.Brush.Style:=StrToBrushStyle(SL.Strings[124]);
  Shape41E.Brush.Style:=StrToBrushStyle(SL.Strings[125]);

  Shape42A.Brush.Style:=StrToBrushStyle(SL.Strings[126]);
  Shape42B.Brush.Style:=StrToBrushStyle(SL.Strings[127]);
  Shape42C.Brush.Style:=StrToBrushStyle(SL.Strings[128]);
  Shape42D.Brush.Style:=StrToBrushStyle(SL.Strings[129]);
  Shape42E.Brush.Style:=StrToBrushStyle(SL.Strings[130]);

  Shape43A.Brush.Style:=StrToBrushStyle(SL.Strings[131]);
  Shape43B.Brush.Style:=StrToBrushStyle(SL.Strings[132]);
  Shape43C.Brush.Style:=StrToBrushStyle(SL.Strings[133]);
  Shape43D.Brush.Style:=StrToBrushStyle(SL.Strings[134]);
  Shape43E.Brush.Style:=StrToBrushStyle(SL.Strings[135]);

  Shape44A.Brush.Style:=StrToBrushStyle(SL.Strings[136]);
  Shape44B.Brush.Style:=StrToBrushStyle(SL.Strings[137]);
  Shape44C.Brush.Style:=StrToBrushStyle(SL.Strings[138]);
  Shape44D.Brush.Style:=StrToBrushStyle(SL.Strings[139]);
  Shape44E.Brush.Style:=StrToBrushStyle(SL.Strings[140]);

  Shape45A.Brush.Style:=StrToBrushStyle(SL.Strings[141]);
  Shape45B.Brush.Style:=StrToBrushStyle(SL.Strings[142]);
  Shape45C.Brush.Style:=StrToBrushStyle(SL.Strings[143]);
  Shape45D.Brush.Style:=StrToBrushStyle(SL.Strings[144]);
  Shape45E.Brush.Style:=StrToBrushStyle(SL.Strings[145]);

  Shape46A.Brush.Style:=StrToBrushStyle(SL.Strings[146]);
  Shape46B.Brush.Style:=StrToBrushStyle(SL.Strings[147]);
  Shape46C.Brush.Style:=StrToBrushStyle(SL.Strings[148]);
  Shape46D.Brush.Style:=StrToBrushStyle(SL.Strings[149]);
  Shape46E.Brush.Style:=StrToBrushStyle(SL.Strings[150]);

  Shape47A.Brush.Style:=StrToBrushStyle(SL.Strings[151]);
  Shape47B.Brush.Style:=StrToBrushStyle(SL.Strings[152]);
  Shape47C.Brush.Style:=StrToBrushStyle(SL.Strings[153]);
  Shape47D.Brush.Style:=StrToBrushStyle(SL.Strings[154]);
  Shape47E.Brush.Style:=StrToBrushStyle(SL.Strings[155]);

  Shape48A.Brush.Style:=StrToBrushStyle(SL.Strings[156]);
  Shape48B.Brush.Style:=StrToBrushStyle(SL.Strings[157]);
  Shape48C.Brush.Style:=StrToBrushStyle(SL.Strings[158]);
  Shape48D.Brush.Style:=StrToBrushStyle(SL.Strings[159]);
  Shape48E.Brush.Style:=StrToBrushStyle(SL.Strings[160]);
  {$ENDREGION}

  {$REGION 'Estilos 50'}
  Shape51A.Brush.Style:=StrToBrushStyle(SL.Strings[161]);
  Shape51B.Brush.Style:=StrToBrushStyle(SL.Strings[162]);
  Shape51C.Brush.Style:=StrToBrushStyle(SL.Strings[163]);
  Shape51D.Brush.Style:=StrToBrushStyle(SL.Strings[164]);
  Shape51E.Brush.Style:=StrToBrushStyle(SL.Strings[165]);

  Shape52A.Brush.Style:=StrToBrushStyle(SL.Strings[166]);
  Shape52B.Brush.Style:=StrToBrushStyle(SL.Strings[167]);
  Shape52C.Brush.Style:=StrToBrushStyle(SL.Strings[168]);
  Shape52D.Brush.Style:=StrToBrushStyle(SL.Strings[169]);
  Shape52E.Brush.Style:=StrToBrushStyle(SL.Strings[170]);

  Shape53A.Brush.Style:=StrToBrushStyle(SL.Strings[171]);
  Shape53B.Brush.Style:=StrToBrushStyle(SL.Strings[172]);
  Shape53C.Brush.Style:=StrToBrushStyle(SL.Strings[173]);
  Shape53D.Brush.Style:=StrToBrushStyle(SL.Strings[174]);
  Shape53E.Brush.Style:=StrToBrushStyle(SL.Strings[175]);

  Shape54A.Brush.Style:=StrToBrushStyle(SL.Strings[176]);
  Shape54B.Brush.Style:=StrToBrushStyle(SL.Strings[177]);
  Shape54C.Brush.Style:=StrToBrushStyle(SL.Strings[178]);
  Shape54D.Brush.Style:=StrToBrushStyle(SL.Strings[179]);
  Shape54E.Brush.Style:=StrToBrushStyle(SL.Strings[180]);

  Shape55A.Brush.Style:=StrToBrushStyle(SL.Strings[181]);
  Shape55B.Brush.Style:=StrToBrushStyle(SL.Strings[182]);
  Shape55C.Brush.Style:=StrToBrushStyle(SL.Strings[183]);
  Shape55D.Brush.Style:=StrToBrushStyle(SL.Strings[184]);
  Shape55E.Brush.Style:=StrToBrushStyle(SL.Strings[185]);
  {$ENDREGION}

  {$REGION 'Estilos 60'}
  Shape61A.Brush.Style:=StrToBrushStyle(SL.Strings[186]);
  Shape61B.Brush.Style:=StrToBrushStyle(SL.Strings[187]);
  Shape61C.Brush.Style:=StrToBrushStyle(SL.Strings[188]);
  Shape61D.Brush.Style:=StrToBrushStyle(SL.Strings[189]);
  Shape61E.Brush.Style:=StrToBrushStyle(SL.Strings[190]);

  Shape62A.Brush.Style:=StrToBrushStyle(SL.Strings[191]);
  Shape62B.Brush.Style:=StrToBrushStyle(SL.Strings[192]);
  Shape62C.Brush.Style:=StrToBrushStyle(SL.Strings[193]);
  Shape62D.Brush.Style:=StrToBrushStyle(SL.Strings[194]);
  Shape62E.Brush.Style:=StrToBrushStyle(SL.Strings[195]);

  Shape63A.Brush.Style:=StrToBrushStyle(SL.Strings[196]);
  Shape63B.Brush.Style:=StrToBrushStyle(SL.Strings[197]);
  Shape63C.Brush.Style:=StrToBrushStyle(SL.Strings[198]);
  Shape63D.Brush.Style:=StrToBrushStyle(SL.Strings[199]);
  Shape63E.Brush.Style:=StrToBrushStyle(SL.Strings[200]);

  Shape64A.Brush.Style:=StrToBrushStyle(SL.Strings[201]);
  Shape64B.Brush.Style:=StrToBrushStyle(SL.Strings[202]);
  Shape64C.Brush.Style:=StrToBrushStyle(SL.Strings[203]);
  Shape64D.Brush.Style:=StrToBrushStyle(SL.Strings[204]);
  Shape64E.Brush.Style:=StrToBrushStyle(SL.Strings[205]);

  Shape65A.Brush.Style:=StrToBrushStyle(SL.Strings[206]);
  Shape65B.Brush.Style:=StrToBrushStyle(SL.Strings[207]);
  Shape65C.Brush.Style:=StrToBrushStyle(SL.Strings[208]);
  Shape65D.Brush.Style:=StrToBrushStyle(SL.Strings[209]);
  Shape65E.Brush.Style:=StrToBrushStyle(SL.Strings[210]);
  {$ENDREGION}

  {$REGION 'Estilos 70'}
  Shape71A.Brush.Style:=StrToBrushStyle(SL.Strings[211]);
  Shape71B.Brush.Style:=StrToBrushStyle(SL.Strings[212]);
  Shape71C.Brush.Style:=StrToBrushStyle(SL.Strings[213]);
  Shape71D.Brush.Style:=StrToBrushStyle(SL.Strings[214]);
  Shape71E.Brush.Style:=StrToBrushStyle(SL.Strings[215]);

  Shape72A.Brush.Style:=StrToBrushStyle(SL.Strings[216]);
  Shape72B.Brush.Style:=StrToBrushStyle(SL.Strings[217]);
  Shape72C.Brush.Style:=StrToBrushStyle(SL.Strings[218]);
  Shape72D.Brush.Style:=StrToBrushStyle(SL.Strings[219]);
  Shape72E.Brush.Style:=StrToBrushStyle(SL.Strings[220]);

  Shape73A.Brush.Style:=StrToBrushStyle(SL.Strings[221]);
  Shape73B.Brush.Style:=StrToBrushStyle(SL.Strings[222]);
  Shape73C.Brush.Style:=StrToBrushStyle(SL.Strings[223]);
  Shape73D.Brush.Style:=StrToBrushStyle(SL.Strings[224]);
  Shape73E.Brush.Style:=StrToBrushStyle(SL.Strings[225]);

  Shape74A.Brush.Style:=StrToBrushStyle(SL.Strings[226]);
  Shape74B.Brush.Style:=StrToBrushStyle(SL.Strings[227]);
  Shape74C.Brush.Style:=StrToBrushStyle(SL.Strings[228]);
  Shape74D.Brush.Style:=StrToBrushStyle(SL.Strings[229]);
  Shape74E.Brush.Style:=StrToBrushStyle(SL.Strings[230]);

  Shape75A.Brush.Style:=StrToBrushStyle(SL.Strings[231]);
  Shape75B.Brush.Style:=StrToBrushStyle(SL.Strings[232]);
  Shape75C.Brush.Style:=StrToBrushStyle(SL.Strings[233]);
  Shape75D.Brush.Style:=StrToBrushStyle(SL.Strings[234]);
  Shape75E.Brush.Style:=StrToBrushStyle(SL.Strings[235]);
  {$ENDREGION}

  {$REGION 'Estilos 80'}
  Shape81A.Brush.Style:=StrToBrushStyle(SL.Strings[236]);
  Shape81B.Brush.Style:=StrToBrushStyle(SL.Strings[237]);
  Shape81C.Brush.Style:=StrToBrushStyle(SL.Strings[238]);
  Shape81D.Brush.Style:=StrToBrushStyle(SL.Strings[239]);
  Shape81E.Brush.Style:=StrToBrushStyle(SL.Strings[240]);

  Shape82A.Brush.Style:=StrToBrushStyle(SL.Strings[241]);
  Shape82B.Brush.Style:=StrToBrushStyle(SL.Strings[242]);
  Shape82C.Brush.Style:=StrToBrushStyle(SL.Strings[243]);
  Shape82D.Brush.Style:=StrToBrushStyle(SL.Strings[244]);
  Shape82E.Brush.Style:=StrToBrushStyle(SL.Strings[245]);

  Shape83A.Brush.Style:=StrToBrushStyle(SL.Strings[246]);
  Shape83B.Brush.Style:=StrToBrushStyle(SL.Strings[247]);
  Shape83C.Brush.Style:=StrToBrushStyle(SL.Strings[248]);
  Shape83D.Brush.Style:=StrToBrushStyle(SL.Strings[249]);
  Shape83E.Brush.Style:=StrToBrushStyle(SL.Strings[250]);

  Shape84A.Brush.Style:=StrToBrushStyle(SL.Strings[251]);
  Shape84B.Brush.Style:=StrToBrushStyle(SL.Strings[252]);
  Shape84C.Brush.Style:=StrToBrushStyle(SL.Strings[253]);
  Shape84D.Brush.Style:=StrToBrushStyle(SL.Strings[254]);
  Shape84E.Brush.Style:=StrToBrushStyle(SL.Strings[255]);

  Shape85A.Brush.Style:=StrToBrushStyle(SL.Strings[256]);
  Shape85B.Brush.Style:=StrToBrushStyle(SL.Strings[257]);
  Shape85C.Brush.Style:=StrToBrushStyle(SL.Strings[258]);
  Shape85D.Brush.Style:=StrToBrushStyle(SL.Strings[259]);
  Shape85E.Brush.Style:=StrToBrushStyle(SL.Strings[260]);
  {$ENDREGION}

  SL.Destroy;

  //carrega a imagem dos dentes.
  if DM2.TBOdontogramasODO_D11.Value<>'' then ImageD11.Picture.LoadFromFile(DM.TBParametrosPAR_LOCALDENTES.Value+'\'+DM2.TBOdontogramasODO_D11.Value) else ImageD11.Picture:=nil;
  if DM2.TBOdontogramasODO_D12.Value<>'' then ImageD12.Picture.LoadFromFile(DM.TBParametrosPAR_LOCALDENTES.Value+'\'+DM2.TBOdontogramasODO_D12.Value) else ImageD12.Picture:=nil;
  if DM2.TBOdontogramasODO_D13.Value<>'' then ImageD13.Picture.LoadFromFile(DM.TBParametrosPAR_LOCALDENTES.Value+'\'+DM2.TBOdontogramasODO_D13.Value) else ImageD13.Picture:=nil;
  if DM2.TBOdontogramasODO_D14.Value<>'' then ImageD14.Picture.LoadFromFile(DM.TBParametrosPAR_LOCALDENTES.Value+'\'+DM2.TBOdontogramasODO_D14.Value) else ImageD14.Picture:=nil;
  if DM2.TBOdontogramasODO_D15.Value<>'' then ImageD15.Picture.LoadFromFile(DM.TBParametrosPAR_LOCALDENTES.Value+'\'+DM2.TBOdontogramasODO_D15.Value) else ImageD15.Picture:=nil;
  if DM2.TBOdontogramasODO_D16.Value<>'' then ImageD16.Picture.LoadFromFile(DM.TBParametrosPAR_LOCALDENTES.Value+'\'+DM2.TBOdontogramasODO_D16.Value) else ImageD16.Picture:=nil;
  if DM2.TBOdontogramasODO_D17.Value<>'' then ImageD17.Picture.LoadFromFile(DM.TBParametrosPAR_LOCALDENTES.Value+'\'+DM2.TBOdontogramasODO_D17.Value) else ImageD17.Picture:=nil;
  if DM2.TBOdontogramasODO_D18.Value<>'' then ImageD18.Picture.LoadFromFile(DM.TBParametrosPAR_LOCALDENTES.Value+'\'+DM2.TBOdontogramasODO_D18.Value) else ImageD18.Picture:=nil;

  if DM2.TBOdontogramasODO_D21.Value<>'' then ImageD21.Picture.LoadFromFile(DM.TBParametrosPAR_LOCALDENTES.Value+'\'+DM2.TBOdontogramasODO_D21.Value) else ImageD21.Picture:=nil;
  if DM2.TBOdontogramasODO_D22.Value<>'' then ImageD22.Picture.LoadFromFile(DM.TBParametrosPAR_LOCALDENTES.Value+'\'+DM2.TBOdontogramasODO_D22.Value) else ImageD22.Picture:=nil;
  if DM2.TBOdontogramasODO_D23.Value<>'' then ImageD23.Picture.LoadFromFile(DM.TBParametrosPAR_LOCALDENTES.Value+'\'+DM2.TBOdontogramasODO_D23.Value) else ImageD23.Picture:=nil;
  if DM2.TBOdontogramasODO_D24.Value<>'' then ImageD24.Picture.LoadFromFile(DM.TBParametrosPAR_LOCALDENTES.Value+'\'+DM2.TBOdontogramasODO_D24.Value) else ImageD24.Picture:=nil;
  if DM2.TBOdontogramasODO_D25.Value<>'' then ImageD25.Picture.LoadFromFile(DM.TBParametrosPAR_LOCALDENTES.Value+'\'+DM2.TBOdontogramasODO_D25.Value) else ImageD25.Picture:=nil;
  if DM2.TBOdontogramasODO_D26.Value<>'' then ImageD26.Picture.LoadFromFile(DM.TBParametrosPAR_LOCALDENTES.Value+'\'+DM2.TBOdontogramasODO_D26.Value) else ImageD26.Picture:=nil;
  if DM2.TBOdontogramasODO_D27.Value<>'' then ImageD27.Picture.LoadFromFile(DM.TBParametrosPAR_LOCALDENTES.Value+'\'+DM2.TBOdontogramasODO_D27.Value) else ImageD27.Picture:=nil;
  if DM2.TBOdontogramasODO_D28.Value<>'' then ImageD28.Picture.LoadFromFile(DM.TBParametrosPAR_LOCALDENTES.Value+'\'+DM2.TBOdontogramasODO_D28.Value) else ImageD28.Picture:=nil;

  if DM2.TBOdontogramasODO_D31.Value<>'' then ImageD31.Picture.LoadFromFile(DM.TBParametrosPAR_LOCALDENTES.Value+'\'+DM2.TBOdontogramasODO_D31.Value) else ImageD31.Picture:=nil;
  if DM2.TBOdontogramasODO_D32.Value<>'' then ImageD32.Picture.LoadFromFile(DM.TBParametrosPAR_LOCALDENTES.Value+'\'+DM2.TBOdontogramasODO_D32.Value) else ImageD32.Picture:=nil;
  if DM2.TBOdontogramasODO_D33.Value<>'' then ImageD33.Picture.LoadFromFile(DM.TBParametrosPAR_LOCALDENTES.Value+'\'+DM2.TBOdontogramasODO_D33.Value) else ImageD33.Picture:=nil;
  if DM2.TBOdontogramasODO_D34.Value<>'' then ImageD34.Picture.LoadFromFile(DM.TBParametrosPAR_LOCALDENTES.Value+'\'+DM2.TBOdontogramasODO_D34.Value) else ImageD34.Picture:=nil;
  if DM2.TBOdontogramasODO_D35.Value<>'' then ImageD35.Picture.LoadFromFile(DM.TBParametrosPAR_LOCALDENTES.Value+'\'+DM2.TBOdontogramasODO_D35.Value) else ImageD35.Picture:=nil;
  if DM2.TBOdontogramasODO_D36.Value<>'' then ImageD36.Picture.LoadFromFile(DM.TBParametrosPAR_LOCALDENTES.Value+'\'+DM2.TBOdontogramasODO_D36.Value) else ImageD36.Picture:=nil;
  if DM2.TBOdontogramasODO_D37.Value<>'' then ImageD37.Picture.LoadFromFile(DM.TBParametrosPAR_LOCALDENTES.Value+'\'+DM2.TBOdontogramasODO_D37.Value) else ImageD37.Picture:=nil;
  if DM2.TBOdontogramasODO_D38.Value<>'' then ImageD38.Picture.LoadFromFile(DM.TBParametrosPAR_LOCALDENTES.Value+'\'+DM2.TBOdontogramasODO_D38.Value) else ImageD38.Picture:=nil;

  if DM2.TBOdontogramasODO_D41.Value<>'' then ImageD41.Picture.LoadFromFile(DM.TBParametrosPAR_LOCALDENTES.Value+'\'+DM2.TBOdontogramasODO_D41.Value) else ImageD41.Picture:=nil;
  if DM2.TBOdontogramasODO_D42.Value<>'' then ImageD42.Picture.LoadFromFile(DM.TBParametrosPAR_LOCALDENTES.Value+'\'+DM2.TBOdontogramasODO_D42.Value) else ImageD42.Picture:=nil;
  if DM2.TBOdontogramasODO_D43.Value<>'' then ImageD43.Picture.LoadFromFile(DM.TBParametrosPAR_LOCALDENTES.Value+'\'+DM2.TBOdontogramasODO_D43.Value) else ImageD43.Picture:=nil;
  if DM2.TBOdontogramasODO_D44.Value<>'' then ImageD44.Picture.LoadFromFile(DM.TBParametrosPAR_LOCALDENTES.Value+'\'+DM2.TBOdontogramasODO_D44.Value) else ImageD44.Picture:=nil;
  if DM2.TBOdontogramasODO_D45.Value<>'' then ImageD45.Picture.LoadFromFile(DM.TBParametrosPAR_LOCALDENTES.Value+'\'+DM2.TBOdontogramasODO_D45.Value) else ImageD45.Picture:=nil;
  if DM2.TBOdontogramasODO_D46.Value<>'' then ImageD46.Picture.LoadFromFile(DM.TBParametrosPAR_LOCALDENTES.Value+'\'+DM2.TBOdontogramasODO_D46.Value) else ImageD46.Picture:=nil;
  if DM2.TBOdontogramasODO_D47.Value<>'' then ImageD47.Picture.LoadFromFile(DM.TBParametrosPAR_LOCALDENTES.Value+'\'+DM2.TBOdontogramasODO_D47.Value) else ImageD47.Picture:=nil;
  if DM2.TBOdontogramasODO_D48.Value<>'' then ImageD48.Picture.LoadFromFile(DM.TBParametrosPAR_LOCALDENTES.Value+'\'+DM2.TBOdontogramasODO_D48.Value) else ImageD48.Picture:=nil;

  if DM2.TBOdontogramasODO_D51.Value<>'' then ImageD51.Picture.LoadFromFile(DM.TBParametrosPAR_LOCALDENTES.Value+'\'+DM2.TBOdontogramasODO_D51.Value) else ImageD51.Picture:=nil;
  if DM2.TBOdontogramasODO_D52.Value<>'' then ImageD52.Picture.LoadFromFile(DM.TBParametrosPAR_LOCALDENTES.Value+'\'+DM2.TBOdontogramasODO_D52.Value) else ImageD52.Picture:=nil;
  if DM2.TBOdontogramasODO_D53.Value<>'' then ImageD53.Picture.LoadFromFile(DM.TBParametrosPAR_LOCALDENTES.Value+'\'+DM2.TBOdontogramasODO_D53.Value) else ImageD53.Picture:=nil;
  if DM2.TBOdontogramasODO_D54.Value<>'' then ImageD54.Picture.LoadFromFile(DM.TBParametrosPAR_LOCALDENTES.Value+'\'+DM2.TBOdontogramasODO_D54.Value) else ImageD54.Picture:=nil;
  if DM2.TBOdontogramasODO_D55.Value<>'' then ImageD55.Picture.LoadFromFile(DM.TBParametrosPAR_LOCALDENTES.Value+'\'+DM2.TBOdontogramasODO_D55.Value) else ImageD55.Picture:=nil;

  if DM2.TBOdontogramasODO_D61.Value<>'' then ImageD61.Picture.LoadFromFile(DM.TBParametrosPAR_LOCALDENTES.Value+'\'+DM2.TBOdontogramasODO_D61.Value) else ImageD61.Picture:=nil;
  if DM2.TBOdontogramasODO_D62.Value<>'' then ImageD62.Picture.LoadFromFile(DM.TBParametrosPAR_LOCALDENTES.Value+'\'+DM2.TBOdontogramasODO_D62.Value) else ImageD62.Picture:=nil;
  if DM2.TBOdontogramasODO_D63.Value<>'' then ImageD63.Picture.LoadFromFile(DM.TBParametrosPAR_LOCALDENTES.Value+'\'+DM2.TBOdontogramasODO_D63.Value) else ImageD63.Picture:=nil;
  if DM2.TBOdontogramasODO_D64.Value<>'' then ImageD64.Picture.LoadFromFile(DM.TBParametrosPAR_LOCALDENTES.Value+'\'+DM2.TBOdontogramasODO_D64.Value) else ImageD64.Picture:=nil;
  if DM2.TBOdontogramasODO_D65.Value<>'' then ImageD65.Picture.LoadFromFile(DM.TBParametrosPAR_LOCALDENTES.Value+'\'+DM2.TBOdontogramasODO_D65.Value) else ImageD65.Picture:=nil;

  if DM2.TBOdontogramasODO_D71.Value<>'' then ImageD71.Picture.LoadFromFile(DM.TBParametrosPAR_LOCALDENTES.Value+'\'+DM2.TBOdontogramasODO_D71.Value) else ImageD71.Picture:=nil;
  if DM2.TBOdontogramasODO_D72.Value<>'' then ImageD72.Picture.LoadFromFile(DM.TBParametrosPAR_LOCALDENTES.Value+'\'+DM2.TBOdontogramasODO_D72.Value) else ImageD72.Picture:=nil;
  if DM2.TBOdontogramasODO_D73.Value<>'' then ImageD73.Picture.LoadFromFile(DM.TBParametrosPAR_LOCALDENTES.Value+'\'+DM2.TBOdontogramasODO_D73.Value) else ImageD73.Picture:=nil;
  if DM2.TBOdontogramasODO_D74.Value<>'' then ImageD74.Picture.LoadFromFile(DM.TBParametrosPAR_LOCALDENTES.Value+'\'+DM2.TBOdontogramasODO_D74.Value) else ImageD74.Picture:=nil;
  if DM2.TBOdontogramasODO_D75.Value<>'' then ImageD75.Picture.LoadFromFile(DM.TBParametrosPAR_LOCALDENTES.Value+'\'+DM2.TBOdontogramasODO_D75.Value) else ImageD75.Picture:=nil;

  if DM2.TBOdontogramasODO_D81.Value<>'' then ImageD81.Picture.LoadFromFile(DM.TBParametrosPAR_LOCALDENTES.Value+'\'+DM2.TBOdontogramasODO_D81.Value) else ImageD81.Picture:=nil;
  if DM2.TBOdontogramasODO_D82.Value<>'' then ImageD82.Picture.LoadFromFile(DM.TBParametrosPAR_LOCALDENTES.Value+'\'+DM2.TBOdontogramasODO_D82.Value) else ImageD82.Picture:=nil;
  if DM2.TBOdontogramasODO_D83.Value<>'' then ImageD83.Picture.LoadFromFile(DM.TBParametrosPAR_LOCALDENTES.Value+'\'+DM2.TBOdontogramasODO_D83.Value) else ImageD83.Picture:=nil;
  if DM2.TBOdontogramasODO_D84.Value<>'' then ImageD84.Picture.LoadFromFile(DM.TBParametrosPAR_LOCALDENTES.Value+'\'+DM2.TBOdontogramasODO_D84.Value) else ImageD84.Picture:=nil;
  if DM2.TBOdontogramasODO_D85.Value<>'' then ImageD85.Picture.LoadFromFile(DM.TBParametrosPAR_LOCALDENTES.Value+'\'+DM2.TBOdontogramasODO_D85.Value) else ImageD85.Picture:=nil;
end;

procedure TFormOdontogramas.SalvarDadosDentes(var Estilos: String);
begin
  Estilos:='';

  {$REGION 'Cores 10'}
  {ores:=Cores+'|'+IntToStr(ColorToRGB(Shape21A.Brush.Color));
  Cores:=Cores+'|'+IntToStr(ColorToRGB(Shape21B.Brush.Color));
  Cores:=Cores+'|'+IntToStr(ColorToRGB(Shape21C.Brush.Color));
  Cores:=Cores+'|'+IntToStr(ColorToRGB(Shape21D.Brush.Color));
  Cores:=Cores+'|'+IntToStr(ColorToRGB(Shape21E.Brush.Color)); }
  DM2.TBOdontogramasODO_D11A.Value:=ColorToRGB(Shape11A.Brush.Color);
  DM2.TBOdontogramasODO_D11B.Value:=ColorToRGB(Shape11B.Brush.Color);
  DM2.TBOdontogramasODO_D11C.Value:=ColorToRGB(Shape11C.Brush.Color);
  DM2.TBOdontogramasODO_D11D.Value:=ColorToRGB(Shape11D.Brush.Color);
  DM2.TBOdontogramasODO_D11E.Value:=ColorToRGB(Shape11E.Brush.Color);

  DM2.TBOdontogramasODO_D12A.Value:=ColorToRGB(Shape12A.Brush.Color);
  DM2.TBOdontogramasODO_D12B.Value:=ColorToRGB(Shape12B.Brush.Color);
  DM2.TBOdontogramasODO_D12C.Value:=ColorToRGB(Shape12C.Brush.Color);
  DM2.TBOdontogramasODO_D12D.Value:=ColorToRGB(Shape12D.Brush.Color);
  DM2.TBOdontogramasODO_D12E.Value:=ColorToRGB(Shape12E.Brush.Color);

  DM2.TBOdontogramasODO_D13A.Value:=ColorToRGB(Shape13A.Brush.Color);
  DM2.TBOdontogramasODO_D13B.Value:=ColorToRGB(Shape13B.Brush.Color);
  DM2.TBOdontogramasODO_D13C.Value:=ColorToRGB(Shape13C.Brush.Color);
  DM2.TBOdontogramasODO_D13D.Value:=ColorToRGB(Shape13D.Brush.Color);
  DM2.TBOdontogramasODO_D13E.Value:=ColorToRGB(Shape13E.Brush.Color);

  DM2.TBOdontogramasODO_D14A.Value:=ColorToRGB(Shape14A.Brush.Color);
  DM2.TBOdontogramasODO_D14B.Value:=ColorToRGB(Shape14B.Brush.Color);
  DM2.TBOdontogramasODO_D14C.Value:=ColorToRGB(Shape14C.Brush.Color);
  DM2.TBOdontogramasODO_D14D.Value:=ColorToRGB(Shape14D.Brush.Color);
  DM2.TBOdontogramasODO_D14E.Value:=ColorToRGB(Shape14E.Brush.Color);

  DM2.TBOdontogramasODO_D15A.Value:=ColorToRGB(Shape15A.Brush.Color);
  DM2.TBOdontogramasODO_D15B.Value:=ColorToRGB(Shape15B.Brush.Color);
  DM2.TBOdontogramasODO_D15C.Value:=ColorToRGB(Shape15C.Brush.Color);
  DM2.TBOdontogramasODO_D15D.Value:=ColorToRGB(Shape15D.Brush.Color);
  DM2.TBOdontogramasODO_D15E.Value:=ColorToRGB(Shape15E.Brush.Color);

  DM2.TBOdontogramasODO_D16A.Value:=ColorToRGB(Shape16A.Brush.Color);
  DM2.TBOdontogramasODO_D16B.Value:=ColorToRGB(Shape16B.Brush.Color);
  DM2.TBOdontogramasODO_D16C.Value:=ColorToRGB(Shape16C.Brush.Color);
  DM2.TBOdontogramasODO_D16D.Value:=ColorToRGB(Shape16D.Brush.Color);
  DM2.TBOdontogramasODO_D16E.Value:=ColorToRGB(Shape16E.Brush.Color);

  DM2.TBOdontogramasODO_D17A.Value:=ColorToRGB(Shape17A.Brush.Color);
  DM2.TBOdontogramasODO_D17B.Value:=ColorToRGB(Shape17B.Brush.Color);
  DM2.TBOdontogramasODO_D17C.Value:=ColorToRGB(Shape17C.Brush.Color);
  DM2.TBOdontogramasODO_D17D.Value:=ColorToRGB(Shape17D.Brush.Color);
  DM2.TBOdontogramasODO_D17E.Value:=ColorToRGB(Shape17E.Brush.Color);

  DM2.TBOdontogramasODO_D18A.Value:=ColorToRGB(Shape18A.Brush.Color);
  DM2.TBOdontogramasODO_D18B.Value:=ColorToRGB(Shape18B.Brush.Color);
  DM2.TBOdontogramasODO_D18C.Value:=ColorToRGB(Shape18C.Brush.Color);
  DM2.TBOdontogramasODO_D18D.Value:=ColorToRGB(Shape18D.Brush.Color);
  DM2.TBOdontogramasODO_D18E.Value:=ColorToRGB(Shape18E.Brush.Color);
  {$ENDREGION}

  {$REGION 'Cores 20'}
  DM2.TBOdontogramasODO_D21A.Value:=ColorToRGB(Shape21A.Brush.Color);
  DM2.TBOdontogramasODO_D21B.Value:=ColorToRGB(Shape21B.Brush.Color);
  DM2.TBOdontogramasODO_D21C.Value:=ColorToRGB(Shape21C.Brush.Color);
  DM2.TBOdontogramasODO_D21D.Value:=ColorToRGB(Shape21D.Brush.Color);
  DM2.TBOdontogramasODO_D21E.Value:=ColorToRGB(Shape21E.Brush.Color);

  DM2.TBOdontogramasODO_D22A.Value:=ColorToRGB(Shape22A.Brush.Color);
  DM2.TBOdontogramasODO_D22B.Value:=ColorToRGB(Shape22B.Brush.Color);
  DM2.TBOdontogramasODO_D22C.Value:=ColorToRGB(Shape22C.Brush.Color);
  DM2.TBOdontogramasODO_D22D.Value:=ColorToRGB(Shape22D.Brush.Color);
  DM2.TBOdontogramasODO_D22E.Value:=ColorToRGB(Shape22E.Brush.Color);

  DM2.TBOdontogramasODO_D23A.Value:=ColorToRGB(Shape23A.Brush.Color);
  DM2.TBOdontogramasODO_D23B.Value:=ColorToRGB(Shape23B.Brush.Color);
  DM2.TBOdontogramasODO_D23C.Value:=ColorToRGB(Shape23C.Brush.Color);
  DM2.TBOdontogramasODO_D23D.Value:=ColorToRGB(Shape23D.Brush.Color);
  DM2.TBOdontogramasODO_D23E.Value:=ColorToRGB(Shape23E.Brush.Color);

  DM2.TBOdontogramasODO_D24A.Value:=ColorToRGB(Shape24A.Brush.Color);
  DM2.TBOdontogramasODO_D24B.Value:=ColorToRGB(Shape24B.Brush.Color);
  DM2.TBOdontogramasODO_D24C.Value:=ColorToRGB(Shape24C.Brush.Color);
  DM2.TBOdontogramasODO_D24D.Value:=ColorToRGB(Shape24D.Brush.Color);
  DM2.TBOdontogramasODO_D24E.Value:=ColorToRGB(Shape24E.Brush.Color);

  DM2.TBOdontogramasODO_D25A.Value:=ColorToRGB(Shape25A.Brush.Color);
  DM2.TBOdontogramasODO_D25B.Value:=ColorToRGB(Shape25B.Brush.Color);
  DM2.TBOdontogramasODO_D25C.Value:=ColorToRGB(Shape25C.Brush.Color);
  DM2.TBOdontogramasODO_D25D.Value:=ColorToRGB(Shape25D.Brush.Color);
  DM2.TBOdontogramasODO_D25E.Value:=ColorToRGB(Shape25E.Brush.Color);

  DM2.TBOdontogramasODO_D26A.Value:=ColorToRGB(Shape26A.Brush.Color);
  DM2.TBOdontogramasODO_D26B.Value:=ColorToRGB(Shape26B.Brush.Color);
  DM2.TBOdontogramasODO_D26C.Value:=ColorToRGB(Shape26C.Brush.Color);
  DM2.TBOdontogramasODO_D26D.Value:=ColorToRGB(Shape26D.Brush.Color);
  DM2.TBOdontogramasODO_D26E.Value:=ColorToRGB(Shape26E.Brush.Color);

  DM2.TBOdontogramasODO_D27A.Value:=ColorToRGB(Shape27A.Brush.Color);
  DM2.TBOdontogramasODO_D27B.Value:=ColorToRGB(Shape27B.Brush.Color);
  DM2.TBOdontogramasODO_D27C.Value:=ColorToRGB(Shape27C.Brush.Color);
  DM2.TBOdontogramasODO_D27D.Value:=ColorToRGB(Shape27D.Brush.Color);
  DM2.TBOdontogramasODO_D27E.Value:=ColorToRGB(Shape27E.Brush.Color);

  DM2.TBOdontogramasODO_D28A.Value:=ColorToRGB(Shape28A.Brush.Color);
  DM2.TBOdontogramasODO_D28B.Value:=ColorToRGB(Shape28B.Brush.Color);
  DM2.TBOdontogramasODO_D28C.Value:=ColorToRGB(Shape28C.Brush.Color);
  DM2.TBOdontogramasODO_D28D.Value:=ColorToRGB(Shape28D.Brush.Color);
  DM2.TBOdontogramasODO_D28E.Value:=ColorToRGB(Shape28E.Brush.Color);
  {$ENDREGION}

  {$REGION 'Cores 30'}
  DM2.TBOdontogramasODO_D31A.Value:=ColorToRGB(Shape31A.Brush.Color);
  DM2.TBOdontogramasODO_D31B.Value:=ColorToRGB(Shape31B.Brush.Color);
  DM2.TBOdontogramasODO_D31C.Value:=ColorToRGB(Shape31C.Brush.Color);
  DM2.TBOdontogramasODO_D31D.Value:=ColorToRGB(Shape31D.Brush.Color);
  DM2.TBOdontogramasODO_D31E.Value:=ColorToRGB(Shape31E.Brush.Color);

  DM2.TBOdontogramasODO_D32A.Value:=ColorToRGB(Shape32A.Brush.Color);
  DM2.TBOdontogramasODO_D32B.Value:=ColorToRGB(Shape32B.Brush.Color);
  DM2.TBOdontogramasODO_D32C.Value:=ColorToRGB(Shape32C.Brush.Color);
  DM2.TBOdontogramasODO_D32D.Value:=ColorToRGB(Shape32D.Brush.Color);
  DM2.TBOdontogramasODO_D32E.Value:=ColorToRGB(Shape32E.Brush.Color);

  DM2.TBOdontogramasODO_D33A.Value:=ColorToRGB(Shape33A.Brush.Color);
  DM2.TBOdontogramasODO_D33B.Value:=ColorToRGB(Shape33B.Brush.Color);
  DM2.TBOdontogramasODO_D33C.Value:=ColorToRGB(Shape33C.Brush.Color);
  DM2.TBOdontogramasODO_D33D.Value:=ColorToRGB(Shape33D.Brush.Color);
  DM2.TBOdontogramasODO_D33E.Value:=ColorToRGB(Shape33E.Brush.Color);

  DM2.TBOdontogramasODO_D34A.Value:=ColorToRGB(Shape34A.Brush.Color);
  DM2.TBOdontogramasODO_D34B.Value:=ColorToRGB(Shape34B.Brush.Color);
  DM2.TBOdontogramasODO_D34C.Value:=ColorToRGB(Shape34C.Brush.Color);
  DM2.TBOdontogramasODO_D34D.Value:=ColorToRGB(Shape34D.Brush.Color);
  DM2.TBOdontogramasODO_D34E.Value:=ColorToRGB(Shape34E.Brush.Color);

  DM2.TBOdontogramasODO_D35A.Value:=ColorToRGB(Shape35A.Brush.Color);
  DM2.TBOdontogramasODO_D35B.Value:=ColorToRGB(Shape35B.Brush.Color);
  DM2.TBOdontogramasODO_D35C.Value:=ColorToRGB(Shape35C.Brush.Color);
  DM2.TBOdontogramasODO_D35D.Value:=ColorToRGB(Shape35D.Brush.Color);
  DM2.TBOdontogramasODO_D35E.Value:=ColorToRGB(Shape35E.Brush.Color);

  DM2.TBOdontogramasODO_D36A.Value:=ColorToRGB(Shape36A.Brush.Color);
  DM2.TBOdontogramasODO_D36B.Value:=ColorToRGB(Shape36B.Brush.Color);
  DM2.TBOdontogramasODO_D36C.Value:=ColorToRGB(Shape36C.Brush.Color);
  DM2.TBOdontogramasODO_D36D.Value:=ColorToRGB(Shape36D.Brush.Color);
  DM2.TBOdontogramasODO_D36E.Value:=ColorToRGB(Shape36E.Brush.Color);

  DM2.TBOdontogramasODO_D37A.Value:=ColorToRGB(Shape37A.Brush.Color);
  DM2.TBOdontogramasODO_D37B.Value:=ColorToRGB(Shape37B.Brush.Color);
  DM2.TBOdontogramasODO_D37C.Value:=ColorToRGB(Shape37C.Brush.Color);
  DM2.TBOdontogramasODO_D37D.Value:=ColorToRGB(Shape37D.Brush.Color);
  DM2.TBOdontogramasODO_D37E.Value:=ColorToRGB(Shape37E.Brush.Color);

  DM2.TBOdontogramasODO_D38A.Value:=ColorToRGB(Shape38A.Brush.Color);
  DM2.TBOdontogramasODO_D38B.Value:=ColorToRGB(Shape38B.Brush.Color);
  DM2.TBOdontogramasODO_D38C.Value:=ColorToRGB(Shape38C.Brush.Color);
  DM2.TBOdontogramasODO_D38D.Value:=ColorToRGB(Shape38D.Brush.Color);
  DM2.TBOdontogramasODO_D38E.Value:=ColorToRGB(Shape38E.Brush.Color);
  {$ENDREGION}

  {$REGION 'Cores 40'}
  DM2.TBOdontogramasODO_D41A.Value:=ColorToRGB(Shape41A.Brush.Color);
  DM2.TBOdontogramasODO_D41B.Value:=ColorToRGB(Shape41B.Brush.Color);
  DM2.TBOdontogramasODO_D41C.Value:=ColorToRGB(Shape41C.Brush.Color);
  DM2.TBOdontogramasODO_D41D.Value:=ColorToRGB(Shape41D.Brush.Color);
  DM2.TBOdontogramasODO_D41E.Value:=ColorToRGB(Shape41E.Brush.Color);

  DM2.TBOdontogramasODO_D42A.Value:=ColorToRGB(Shape42A.Brush.Color);
  DM2.TBOdontogramasODO_D42B.Value:=ColorToRGB(Shape42B.Brush.Color);
  DM2.TBOdontogramasODO_D42C.Value:=ColorToRGB(Shape42C.Brush.Color);
  DM2.TBOdontogramasODO_D42D.Value:=ColorToRGB(Shape42D.Brush.Color);
  DM2.TBOdontogramasODO_D42E.Value:=ColorToRGB(Shape42E.Brush.Color);

  DM2.TBOdontogramasODO_D43A.Value:=ColorToRGB(Shape43A.Brush.Color);
  DM2.TBOdontogramasODO_D43B.Value:=ColorToRGB(Shape43B.Brush.Color);
  DM2.TBOdontogramasODO_D43C.Value:=ColorToRGB(Shape43C.Brush.Color);
  DM2.TBOdontogramasODO_D43D.Value:=ColorToRGB(Shape43D.Brush.Color);
  DM2.TBOdontogramasODO_D43E.Value:=ColorToRGB(Shape43E.Brush.Color);

  DM2.TBOdontogramasODO_D44A.Value:=ColorToRGB(Shape44A.Brush.Color);
  DM2.TBOdontogramasODO_D44B.Value:=ColorToRGB(Shape44B.Brush.Color);
  DM2.TBOdontogramasODO_D44C.Value:=ColorToRGB(Shape44C.Brush.Color);
  DM2.TBOdontogramasODO_D44D.Value:=ColorToRGB(Shape44D.Brush.Color);
  DM2.TBOdontogramasODO_D44E.Value:=ColorToRGB(Shape44E.Brush.Color);

  DM2.TBOdontogramasODO_D45A.Value:=ColorToRGB(Shape45A.Brush.Color);
  DM2.TBOdontogramasODO_D45B.Value:=ColorToRGB(Shape45B.Brush.Color);
  DM2.TBOdontogramasODO_D45C.Value:=ColorToRGB(Shape45C.Brush.Color);
  DM2.TBOdontogramasODO_D45D.Value:=ColorToRGB(Shape45D.Brush.Color);
  DM2.TBOdontogramasODO_D45E.Value:=ColorToRGB(Shape45E.Brush.Color);

  DM2.TBOdontogramasODO_D46A.Value:=ColorToRGB(Shape46A.Brush.Color);
  DM2.TBOdontogramasODO_D46B.Value:=ColorToRGB(Shape46B.Brush.Color);
  DM2.TBOdontogramasODO_D46C.Value:=ColorToRGB(Shape46C.Brush.Color);
  DM2.TBOdontogramasODO_D46D.Value:=ColorToRGB(Shape46D.Brush.Color);
  DM2.TBOdontogramasODO_D46E.Value:=ColorToRGB(Shape46E.Brush.Color);

  DM2.TBOdontogramasODO_D47A.Value:=ColorToRGB(Shape47A.Brush.Color);
  DM2.TBOdontogramasODO_D47B.Value:=ColorToRGB(Shape47B.Brush.Color);
  DM2.TBOdontogramasODO_D47C.Value:=ColorToRGB(Shape47C.Brush.Color);
  DM2.TBOdontogramasODO_D47D.Value:=ColorToRGB(Shape47D.Brush.Color);
  DM2.TBOdontogramasODO_D47E.Value:=ColorToRGB(Shape47E.Brush.Color);

  DM2.TBOdontogramasODO_D48A.Value:=ColorToRGB(Shape48A.Brush.Color);
  DM2.TBOdontogramasODO_D48B.Value:=ColorToRGB(Shape48B.Brush.Color);
  DM2.TBOdontogramasODO_D48C.Value:=ColorToRGB(Shape48C.Brush.Color);
  DM2.TBOdontogramasODO_D48D.Value:=ColorToRGB(Shape48D.Brush.Color);
  DM2.TBOdontogramasODO_D48E.Value:=ColorToRGB(Shape48E.Brush.Color);
  {$ENDREGION}

  {$REGION 'Cores 50'}
  DM2.TBOdontogramasODO_D51A.Value:=ColorToRGB(Shape51A.Brush.Color);
  DM2.TBOdontogramasODO_D51B.Value:=ColorToRGB(Shape51B.Brush.Color);
  DM2.TBOdontogramasODO_D51C.Value:=ColorToRGB(Shape51C.Brush.Color);
  DM2.TBOdontogramasODO_D51D.Value:=ColorToRGB(Shape51D.Brush.Color);
  DM2.TBOdontogramasODO_D51E.Value:=ColorToRGB(Shape51E.Brush.Color);

  DM2.TBOdontogramasODO_D52A.Value:=ColorToRGB(Shape52A.Brush.Color);
  DM2.TBOdontogramasODO_D52B.Value:=ColorToRGB(Shape52B.Brush.Color);
  DM2.TBOdontogramasODO_D52C.Value:=ColorToRGB(Shape52C.Brush.Color);
  DM2.TBOdontogramasODO_D52D.Value:=ColorToRGB(Shape52D.Brush.Color);
  DM2.TBOdontogramasODO_D52E.Value:=ColorToRGB(Shape52E.Brush.Color);

  DM2.TBOdontogramasODO_D53A.Value:=ColorToRGB(Shape53A.Brush.Color);
  DM2.TBOdontogramasODO_D53B.Value:=ColorToRGB(Shape53B.Brush.Color);
  DM2.TBOdontogramasODO_D53C.Value:=ColorToRGB(Shape53C.Brush.Color);
  DM2.TBOdontogramasODO_D53D.Value:=ColorToRGB(Shape53D.Brush.Color);
  DM2.TBOdontogramasODO_D53E.Value:=ColorToRGB(Shape53E.Brush.Color);

  DM2.TBOdontogramasODO_D54A.Value:=ColorToRGB(Shape54A.Brush.Color);
  DM2.TBOdontogramasODO_D54B.Value:=ColorToRGB(Shape54B.Brush.Color);
  DM2.TBOdontogramasODO_D54C.Value:=ColorToRGB(Shape54C.Brush.Color);
  DM2.TBOdontogramasODO_D54D.Value:=ColorToRGB(Shape54D.Brush.Color);
  DM2.TBOdontogramasODO_D54E.Value:=ColorToRGB(Shape54E.Brush.Color);

  DM2.TBOdontogramasODO_D55A.Value:=ColorToRGB(Shape55A.Brush.Color);
  DM2.TBOdontogramasODO_D55B.Value:=ColorToRGB(Shape55B.Brush.Color);
  DM2.TBOdontogramasODO_D55C.Value:=ColorToRGB(Shape55C.Brush.Color);
  DM2.TBOdontogramasODO_D55D.Value:=ColorToRGB(Shape55D.Brush.Color);
  DM2.TBOdontogramasODO_D55E.Value:=ColorToRGB(Shape55E.Brush.Color);
  {$ENDREGION}

  {$REGION 'Cores 60'}
  DM2.TBOdontogramasODO_D61A.Value:=ColorToRGB(Shape61A.Brush.Color);
  DM2.TBOdontogramasODO_D61B.Value:=ColorToRGB(Shape61B.Brush.Color);
  DM2.TBOdontogramasODO_D61C.Value:=ColorToRGB(Shape61C.Brush.Color);
  DM2.TBOdontogramasODO_D61D.Value:=ColorToRGB(Shape61D.Brush.Color);
  DM2.TBOdontogramasODO_D61E.Value:=ColorToRGB(Shape61E.Brush.Color);

  DM2.TBOdontogramasODO_D62A.Value:=ColorToRGB(Shape62A.Brush.Color);
  DM2.TBOdontogramasODO_D62B.Value:=ColorToRGB(Shape62B.Brush.Color);
  DM2.TBOdontogramasODO_D62C.Value:=ColorToRGB(Shape62C.Brush.Color);
  DM2.TBOdontogramasODO_D62D.Value:=ColorToRGB(Shape62D.Brush.Color);
  DM2.TBOdontogramasODO_D62E.Value:=ColorToRGB(Shape62E.Brush.Color);

  DM2.TBOdontogramasODO_D63A.Value:=ColorToRGB(Shape63A.Brush.Color);
  DM2.TBOdontogramasODO_D63B.Value:=ColorToRGB(Shape63B.Brush.Color);
  DM2.TBOdontogramasODO_D63C.Value:=ColorToRGB(Shape63C.Brush.Color);
  DM2.TBOdontogramasODO_D63D.Value:=ColorToRGB(Shape63D.Brush.Color);
  DM2.TBOdontogramasODO_D63E.Value:=ColorToRGB(Shape63E.Brush.Color);

  DM2.TBOdontogramasODO_D64A.Value:=ColorToRGB(Shape64A.Brush.Color);
  DM2.TBOdontogramasODO_D64B.Value:=ColorToRGB(Shape64B.Brush.Color);
  DM2.TBOdontogramasODO_D64C.Value:=ColorToRGB(Shape64C.Brush.Color);
  DM2.TBOdontogramasODO_D64D.Value:=ColorToRGB(Shape64D.Brush.Color);
  DM2.TBOdontogramasODO_D64E.Value:=ColorToRGB(Shape64E.Brush.Color);

  DM2.TBOdontogramasODO_D65A.Value:=ColorToRGB(Shape65A.Brush.Color);
  DM2.TBOdontogramasODO_D65B.Value:=ColorToRGB(Shape65B.Brush.Color);
  DM2.TBOdontogramasODO_D65C.Value:=ColorToRGB(Shape65C.Brush.Color);
  DM2.TBOdontogramasODO_D65D.Value:=ColorToRGB(Shape65D.Brush.Color);
  DM2.TBOdontogramasODO_D65E.Value:=ColorToRGB(Shape65E.Brush.Color);
  {$ENDREGION}

  {$REGION 'Cores 70'}
  DM2.TBOdontogramasODO_D71A.Value:=ColorToRGB(Shape71A.Brush.Color);
  DM2.TBOdontogramasODO_D71B.Value:=ColorToRGB(Shape71B.Brush.Color);
  DM2.TBOdontogramasODO_D71C.Value:=ColorToRGB(Shape71C.Brush.Color);
  DM2.TBOdontogramasODO_D71D.Value:=ColorToRGB(Shape71D.Brush.Color);
  DM2.TBOdontogramasODO_D71E.Value:=ColorToRGB(Shape71E.Brush.Color);

  DM2.TBOdontogramasODO_D72A.Value:=ColorToRGB(Shape72A.Brush.Color);
  DM2.TBOdontogramasODO_D72B.Value:=ColorToRGB(Shape72B.Brush.Color);
  DM2.TBOdontogramasODO_D72C.Value:=ColorToRGB(Shape72C.Brush.Color);
  DM2.TBOdontogramasODO_D72D.Value:=ColorToRGB(Shape72D.Brush.Color);
  DM2.TBOdontogramasODO_D72E.Value:=ColorToRGB(Shape72E.Brush.Color);

  DM2.TBOdontogramasODO_D73A.Value:=ColorToRGB(Shape73A.Brush.Color);
  DM2.TBOdontogramasODO_D73B.Value:=ColorToRGB(Shape73B.Brush.Color);
  DM2.TBOdontogramasODO_D73C.Value:=ColorToRGB(Shape73C.Brush.Color);
  DM2.TBOdontogramasODO_D73D.Value:=ColorToRGB(Shape73D.Brush.Color);
  DM2.TBOdontogramasODO_D73E.Value:=ColorToRGB(Shape73E.Brush.Color);

  DM2.TBOdontogramasODO_D74A.Value:=ColorToRGB(Shape74A.Brush.Color);
  DM2.TBOdontogramasODO_D74B.Value:=ColorToRGB(Shape74B.Brush.Color);
  DM2.TBOdontogramasODO_D74C.Value:=ColorToRGB(Shape74C.Brush.Color);
  DM2.TBOdontogramasODO_D74D.Value:=ColorToRGB(Shape74D.Brush.Color);
  DM2.TBOdontogramasODO_D74E.Value:=ColorToRGB(Shape74E.Brush.Color);

  DM2.TBOdontogramasODO_D75A.Value:=ColorToRGB(Shape75A.Brush.Color);
  DM2.TBOdontogramasODO_D75B.Value:=ColorToRGB(Shape75B.Brush.Color);
  DM2.TBOdontogramasODO_D75C.Value:=ColorToRGB(Shape75C.Brush.Color);
  DM2.TBOdontogramasODO_D75D.Value:=ColorToRGB(Shape75D.Brush.Color);
  DM2.TBOdontogramasODO_D75E.Value:=ColorToRGB(Shape75E.Brush.Color);
  {$ENDREGION}

  {$REGION 'Cores 80'}
  DM2.TBOdontogramasODO_D81A.Value:=ColorToRGB(Shape81A.Brush.Color);
  DM2.TBOdontogramasODO_D81B.Value:=ColorToRGB(Shape81B.Brush.Color);
  DM2.TBOdontogramasODO_D81C.Value:=ColorToRGB(Shape81C.Brush.Color);
  DM2.TBOdontogramasODO_D81D.Value:=ColorToRGB(Shape81D.Brush.Color);
  DM2.TBOdontogramasODO_D81E.Value:=ColorToRGB(Shape81E.Brush.Color);

  DM2.TBOdontogramasODO_D82A.Value:=ColorToRGB(Shape82A.Brush.Color);
  DM2.TBOdontogramasODO_D82B.Value:=ColorToRGB(Shape82B.Brush.Color);
  DM2.TBOdontogramasODO_D82C.Value:=ColorToRGB(Shape82C.Brush.Color);
  DM2.TBOdontogramasODO_D82D.Value:=ColorToRGB(Shape82D.Brush.Color);
  DM2.TBOdontogramasODO_D82E.Value:=ColorToRGB(Shape82E.Brush.Color);

  DM2.TBOdontogramasODO_D83A.Value:=ColorToRGB(Shape83A.Brush.Color);
  DM2.TBOdontogramasODO_D83B.Value:=ColorToRGB(Shape83B.Brush.Color);
  DM2.TBOdontogramasODO_D83C.Value:=ColorToRGB(Shape83C.Brush.Color);
  DM2.TBOdontogramasODO_D83D.Value:=ColorToRGB(Shape83D.Brush.Color);
  DM2.TBOdontogramasODO_D83E.Value:=ColorToRGB(Shape83E.Brush.Color);

  DM2.TBOdontogramasODO_D84A.Value:=ColorToRGB(Shape84A.Brush.Color);
  DM2.TBOdontogramasODO_D84B.Value:=ColorToRGB(Shape84B.Brush.Color);
  DM2.TBOdontogramasODO_D84C.Value:=ColorToRGB(Shape84C.Brush.Color);
  DM2.TBOdontogramasODO_D84D.Value:=ColorToRGB(Shape84D.Brush.Color);
  DM2.TBOdontogramasODO_D84E.Value:=ColorToRGB(Shape84E.Brush.Color);

  DM2.TBOdontogramasODO_D85A.Value:=ColorToRGB(Shape85A.Brush.Color);
  DM2.TBOdontogramasODO_D85B.Value:=ColorToRGB(Shape85B.Brush.Color);
  DM2.TBOdontogramasODO_D85C.Value:=ColorToRGB(Shape85C.Brush.Color);
  DM2.TBOdontogramasODO_D85D.Value:=ColorToRGB(Shape85D.Brush.Color);
  DM2.TBOdontogramasODO_D85E.Value:=ColorToRGB(Shape85E.Brush.Color);
  {$ENDREGION}

  {$REGION 'Estilos 10'}
  Estilos:=Estilos+'|'+BrushStyleToStr(Shape11A.Brush.Style);
  Estilos:=Estilos+'|'+BrushStyleToStr(Shape11B.Brush.Style);
  Estilos:=Estilos+'|'+BrushStyleToStr(Shape11C.Brush.Style);
  Estilos:=Estilos+'|'+BrushStyleToStr(Shape11D.Brush.Style);
  Estilos:=Estilos+'|'+BrushStyleToStr(Shape11E.Brush.Style);

  Estilos:=Estilos+'|'+BrushStyleToStr(Shape12A.Brush.Style);
  Estilos:=Estilos+'|'+BrushStyleToStr(Shape12B.Brush.Style);
  Estilos:=Estilos+'|'+BrushStyleToStr(Shape12C.Brush.Style);
  Estilos:=Estilos+'|'+BrushStyleToStr(Shape12D.Brush.Style);
  Estilos:=Estilos+'|'+BrushStyleToStr(Shape12E.Brush.Style);

  Estilos:=Estilos+'|'+BrushStyleToStr(Shape13A.Brush.Style);
  Estilos:=Estilos+'|'+BrushStyleToStr(Shape13B.Brush.Style);
  Estilos:=Estilos+'|'+BrushStyleToStr(Shape13C.Brush.Style);
  Estilos:=Estilos+'|'+BrushStyleToStr(Shape13D.Brush.Style);
  Estilos:=Estilos+'|'+BrushStyleToStr(Shape13E.Brush.Style);

  Estilos:=Estilos+'|'+BrushStyleToStr(Shape14A.Brush.Style);
  Estilos:=Estilos+'|'+BrushStyleToStr(Shape14B.Brush.Style);
  Estilos:=Estilos+'|'+BrushStyleToStr(Shape14C.Brush.Style);
  Estilos:=Estilos+'|'+BrushStyleToStr(Shape14D.Brush.Style);
  Estilos:=Estilos+'|'+BrushStyleToStr(Shape14E.Brush.Style);

  Estilos:=Estilos+'|'+BrushStyleToStr(Shape15A.Brush.Style);
  Estilos:=Estilos+'|'+BrushStyleToStr(Shape15B.Brush.Style);
  Estilos:=Estilos+'|'+BrushStyleToStr(Shape15C.Brush.Style);
  Estilos:=Estilos+'|'+BrushStyleToStr(Shape15D.Brush.Style);
  Estilos:=Estilos+'|'+BrushStyleToStr(Shape15E.Brush.Style);

  Estilos:=Estilos+'|'+BrushStyleToStr(Shape16A.Brush.Style);
  Estilos:=Estilos+'|'+BrushStyleToStr(Shape16B.Brush.Style);
  Estilos:=Estilos+'|'+BrushStyleToStr(Shape16C.Brush.Style);
  Estilos:=Estilos+'|'+BrushStyleToStr(Shape16D.Brush.Style);
  Estilos:=Estilos+'|'+BrushStyleToStr(Shape16E.Brush.Style);

  Estilos:=Estilos+'|'+BrushStyleToStr(Shape17A.Brush.Style);
  Estilos:=Estilos+'|'+BrushStyleToStr(Shape17B.Brush.Style);
  Estilos:=Estilos+'|'+BrushStyleToStr(Shape17C.Brush.Style);
  Estilos:=Estilos+'|'+BrushStyleToStr(Shape17D.Brush.Style);
  Estilos:=Estilos+'|'+BrushStyleToStr(Shape17E.Brush.Style);

  Estilos:=Estilos+'|'+BrushStyleToStr(Shape18A.Brush.Style);
  Estilos:=Estilos+'|'+BrushStyleToStr(Shape18B.Brush.Style);
  Estilos:=Estilos+'|'+BrushStyleToStr(Shape18C.Brush.Style);
  Estilos:=Estilos+'|'+BrushStyleToStr(Shape18D.Brush.Style);
  Estilos:=Estilos+'|'+BrushStyleToStr(Shape18E.Brush.Style);
  {$ENDREGION}

  {$REGION 'Estilos 20'}
  Estilos:=Estilos+'|'+BrushStyleToStr(Shape21A.Brush.Style);
  Estilos:=Estilos+'|'+BrushStyleToStr(Shape21B.Brush.Style);
  Estilos:=Estilos+'|'+BrushStyleToStr(Shape21C.Brush.Style);
  Estilos:=Estilos+'|'+BrushStyleToStr(Shape21D.Brush.Style);
  Estilos:=Estilos+'|'+BrushStyleToStr(Shape21E.Brush.Style);

  Estilos:=Estilos+'|'+BrushStyleToStr(Shape22A.Brush.Style);
  Estilos:=Estilos+'|'+BrushStyleToStr(Shape22B.Brush.Style);
  Estilos:=Estilos+'|'+BrushStyleToStr(Shape22C.Brush.Style);
  Estilos:=Estilos+'|'+BrushStyleToStr(Shape22D.Brush.Style);
  Estilos:=Estilos+'|'+BrushStyleToStr(Shape22E.Brush.Style);

  Estilos:=Estilos+'|'+BrushStyleToStr(Shape23A.Brush.Style);
  Estilos:=Estilos+'|'+BrushStyleToStr(Shape23B.Brush.Style);
  Estilos:=Estilos+'|'+BrushStyleToStr(Shape23C.Brush.Style);
  Estilos:=Estilos+'|'+BrushStyleToStr(Shape23D.Brush.Style);
  Estilos:=Estilos+'|'+BrushStyleToStr(Shape23E.Brush.Style);

  Estilos:=Estilos+'|'+BrushStyleToStr(Shape24A.Brush.Style);
  Estilos:=Estilos+'|'+BrushStyleToStr(Shape24B.Brush.Style);
  Estilos:=Estilos+'|'+BrushStyleToStr(Shape24C.Brush.Style);
  Estilos:=Estilos+'|'+BrushStyleToStr(Shape24D.Brush.Style);
  Estilos:=Estilos+'|'+BrushStyleToStr(Shape24E.Brush.Style);

  Estilos:=Estilos+'|'+BrushStyleToStr(Shape25A.Brush.Style);
  Estilos:=Estilos+'|'+BrushStyleToStr(Shape25B.Brush.Style);
  Estilos:=Estilos+'|'+BrushStyleToStr(Shape25C.Brush.Style);
  Estilos:=Estilos+'|'+BrushStyleToStr(Shape25D.Brush.Style);
  Estilos:=Estilos+'|'+BrushStyleToStr(Shape25E.Brush.Style);

  Estilos:=Estilos+'|'+BrushStyleToStr(Shape26A.Brush.Style);
  Estilos:=Estilos+'|'+BrushStyleToStr(Shape26B.Brush.Style);
  Estilos:=Estilos+'|'+BrushStyleToStr(Shape26C.Brush.Style);
  Estilos:=Estilos+'|'+BrushStyleToStr(Shape26D.Brush.Style);
  Estilos:=Estilos+'|'+BrushStyleToStr(Shape26E.Brush.Style);

  Estilos:=Estilos+'|'+BrushStyleToStr(Shape27A.Brush.Style);
  Estilos:=Estilos+'|'+BrushStyleToStr(Shape27B.Brush.Style);
  Estilos:=Estilos+'|'+BrushStyleToStr(Shape27C.Brush.Style);
  Estilos:=Estilos+'|'+BrushStyleToStr(Shape27D.Brush.Style);
  Estilos:=Estilos+'|'+BrushStyleToStr(Shape27E.Brush.Style);

  Estilos:=Estilos+'|'+BrushStyleToStr(Shape28A.Brush.Style);
  Estilos:=Estilos+'|'+BrushStyleToStr(Shape28B.Brush.Style);
  Estilos:=Estilos+'|'+BrushStyleToStr(Shape28C.Brush.Style);
  Estilos:=Estilos+'|'+BrushStyleToStr(Shape28D.Brush.Style);
  Estilos:=Estilos+'|'+BrushStyleToStr(Shape28E.Brush.Style);
  {$ENDREGION}

  {$REGION 'Estilos 30'}
  Estilos:=Estilos+'|'+BrushStyleToStr(Shape31A.Brush.Style);
  Estilos:=Estilos+'|'+BrushStyleToStr(Shape31B.Brush.Style);
  Estilos:=Estilos+'|'+BrushStyleToStr(Shape31C.Brush.Style);
  Estilos:=Estilos+'|'+BrushStyleToStr(Shape31D.Brush.Style);
  Estilos:=Estilos+'|'+BrushStyleToStr(Shape31E.Brush.Style);

  Estilos:=Estilos+'|'+BrushStyleToStr(Shape32A.Brush.Style);
  Estilos:=Estilos+'|'+BrushStyleToStr(Shape32B.Brush.Style);
  Estilos:=Estilos+'|'+BrushStyleToStr(Shape32C.Brush.Style);
  Estilos:=Estilos+'|'+BrushStyleToStr(Shape32D.Brush.Style);
  Estilos:=Estilos+'|'+BrushStyleToStr(Shape32E.Brush.Style);

  Estilos:=Estilos+'|'+BrushStyleToStr(Shape33A.Brush.Style);
  Estilos:=Estilos+'|'+BrushStyleToStr(Shape33B.Brush.Style);
  Estilos:=Estilos+'|'+BrushStyleToStr(Shape33C.Brush.Style);
  Estilos:=Estilos+'|'+BrushStyleToStr(Shape33D.Brush.Style);
  Estilos:=Estilos+'|'+BrushStyleToStr(Shape33E.Brush.Style);

  Estilos:=Estilos+'|'+BrushStyleToStr(Shape34A.Brush.Style);
  Estilos:=Estilos+'|'+BrushStyleToStr(Shape34B.Brush.Style);
  Estilos:=Estilos+'|'+BrushStyleToStr(Shape34C.Brush.Style);
  Estilos:=Estilos+'|'+BrushStyleToStr(Shape34D.Brush.Style);
  Estilos:=Estilos+'|'+BrushStyleToStr(Shape34E.Brush.Style);

  Estilos:=Estilos+'|'+BrushStyleToStr(Shape35A.Brush.Style);
  Estilos:=Estilos+'|'+BrushStyleToStr(Shape35B.Brush.Style);
  Estilos:=Estilos+'|'+BrushStyleToStr(Shape35C.Brush.Style);
  Estilos:=Estilos+'|'+BrushStyleToStr(Shape35D.Brush.Style);
  Estilos:=Estilos+'|'+BrushStyleToStr(Shape35E.Brush.Style);

  Estilos:=Estilos+'|'+BrushStyleToStr(Shape36A.Brush.Style);
  Estilos:=Estilos+'|'+BrushStyleToStr(Shape36B.Brush.Style);
  Estilos:=Estilos+'|'+BrushStyleToStr(Shape36C.Brush.Style);
  Estilos:=Estilos+'|'+BrushStyleToStr(Shape36D.Brush.Style);
  Estilos:=Estilos+'|'+BrushStyleToStr(Shape36E.Brush.Style);

  Estilos:=Estilos+'|'+BrushStyleToStr(Shape37A.Brush.Style);
  Estilos:=Estilos+'|'+BrushStyleToStr(Shape37B.Brush.Style);
  Estilos:=Estilos+'|'+BrushStyleToStr(Shape37C.Brush.Style);
  Estilos:=Estilos+'|'+BrushStyleToStr(Shape37D.Brush.Style);
  Estilos:=Estilos+'|'+BrushStyleToStr(Shape37E.Brush.Style);

  Estilos:=Estilos+'|'+BrushStyleToStr(Shape38A.Brush.Style);
  Estilos:=Estilos+'|'+BrushStyleToStr(Shape38B.Brush.Style);
  Estilos:=Estilos+'|'+BrushStyleToStr(Shape38C.Brush.Style);
  Estilos:=Estilos+'|'+BrushStyleToStr(Shape38D.Brush.Style);
  Estilos:=Estilos+'|'+BrushStyleToStr(Shape38E.Brush.Style);
  {$ENDREGION}

  {$REGION 'Estilos 40'}
  Estilos:=Estilos+'|'+BrushStyleToStr(Shape41A.Brush.Style);
  Estilos:=Estilos+'|'+BrushStyleToStr(Shape41B.Brush.Style);
  Estilos:=Estilos+'|'+BrushStyleToStr(Shape41C.Brush.Style);
  Estilos:=Estilos+'|'+BrushStyleToStr(Shape41D.Brush.Style);
  Estilos:=Estilos+'|'+BrushStyleToStr(Shape41E.Brush.Style);

  Estilos:=Estilos+'|'+BrushStyleToStr(Shape42A.Brush.Style);
  Estilos:=Estilos+'|'+BrushStyleToStr(Shape42B.Brush.Style);
  Estilos:=Estilos+'|'+BrushStyleToStr(Shape42C.Brush.Style);
  Estilos:=Estilos+'|'+BrushStyleToStr(Shape42D.Brush.Style);
  Estilos:=Estilos+'|'+BrushStyleToStr(Shape42E.Brush.Style);

  Estilos:=Estilos+'|'+BrushStyleToStr(Shape43A.Brush.Style);
  Estilos:=Estilos+'|'+BrushStyleToStr(Shape43B.Brush.Style);
  Estilos:=Estilos+'|'+BrushStyleToStr(Shape43C.Brush.Style);
  Estilos:=Estilos+'|'+BrushStyleToStr(Shape43D.Brush.Style);
  Estilos:=Estilos+'|'+BrushStyleToStr(Shape43E.Brush.Style);

  Estilos:=Estilos+'|'+BrushStyleToStr(Shape44A.Brush.Style);
  Estilos:=Estilos+'|'+BrushStyleToStr(Shape44B.Brush.Style);
  Estilos:=Estilos+'|'+BrushStyleToStr(Shape44C.Brush.Style);
  Estilos:=Estilos+'|'+BrushStyleToStr(Shape44D.Brush.Style);
  Estilos:=Estilos+'|'+BrushStyleToStr(Shape44E.Brush.Style);

  Estilos:=Estilos+'|'+BrushStyleToStr(Shape45A.Brush.Style);
  Estilos:=Estilos+'|'+BrushStyleToStr(Shape45B.Brush.Style);
  Estilos:=Estilos+'|'+BrushStyleToStr(Shape45C.Brush.Style);
  Estilos:=Estilos+'|'+BrushStyleToStr(Shape45D.Brush.Style);
  Estilos:=Estilos+'|'+BrushStyleToStr(Shape45E.Brush.Style);

  Estilos:=Estilos+'|'+BrushStyleToStr(Shape46A.Brush.Style);
  Estilos:=Estilos+'|'+BrushStyleToStr(Shape46B.Brush.Style);
  Estilos:=Estilos+'|'+BrushStyleToStr(Shape46C.Brush.Style);
  Estilos:=Estilos+'|'+BrushStyleToStr(Shape46D.Brush.Style);
  Estilos:=Estilos+'|'+BrushStyleToStr(Shape46E.Brush.Style);

  Estilos:=Estilos+'|'+BrushStyleToStr(Shape47A.Brush.Style);
  Estilos:=Estilos+'|'+BrushStyleToStr(Shape47B.Brush.Style);
  Estilos:=Estilos+'|'+BrushStyleToStr(Shape47C.Brush.Style);
  Estilos:=Estilos+'|'+BrushStyleToStr(Shape47D.Brush.Style);
  Estilos:=Estilos+'|'+BrushStyleToStr(Shape47E.Brush.Style);

  Estilos:=Estilos+'|'+BrushStyleToStr(Shape48A.Brush.Style);
  Estilos:=Estilos+'|'+BrushStyleToStr(Shape48B.Brush.Style);
  Estilos:=Estilos+'|'+BrushStyleToStr(Shape48C.Brush.Style);
  Estilos:=Estilos+'|'+BrushStyleToStr(Shape48D.Brush.Style);
  Estilos:=Estilos+'|'+BrushStyleToStr(Shape48E.Brush.Style);
  {$ENDREGION}

  {$REGION 'Estilos 50'}
  Estilos:=Estilos+'|'+BrushStyleToStr(Shape51A.Brush.Style);
  Estilos:=Estilos+'|'+BrushStyleToStr(Shape51B.Brush.Style);
  Estilos:=Estilos+'|'+BrushStyleToStr(Shape51C.Brush.Style);
  Estilos:=Estilos+'|'+BrushStyleToStr(Shape51D.Brush.Style);
  Estilos:=Estilos+'|'+BrushStyleToStr(Shape51E.Brush.Style);

  Estilos:=Estilos+'|'+BrushStyleToStr(Shape52A.Brush.Style);
  Estilos:=Estilos+'|'+BrushStyleToStr(Shape52B.Brush.Style);
  Estilos:=Estilos+'|'+BrushStyleToStr(Shape52C.Brush.Style);
  Estilos:=Estilos+'|'+BrushStyleToStr(Shape52D.Brush.Style);
  Estilos:=Estilos+'|'+BrushStyleToStr(Shape52E.Brush.Style);

  Estilos:=Estilos+'|'+BrushStyleToStr(Shape53A.Brush.Style);
  Estilos:=Estilos+'|'+BrushStyleToStr(Shape53B.Brush.Style);
  Estilos:=Estilos+'|'+BrushStyleToStr(Shape53C.Brush.Style);
  Estilos:=Estilos+'|'+BrushStyleToStr(Shape53D.Brush.Style);
  Estilos:=Estilos+'|'+BrushStyleToStr(Shape53E.Brush.Style);

  Estilos:=Estilos+'|'+BrushStyleToStr(Shape54A.Brush.Style);
  Estilos:=Estilos+'|'+BrushStyleToStr(Shape54B.Brush.Style);
  Estilos:=Estilos+'|'+BrushStyleToStr(Shape54C.Brush.Style);
  Estilos:=Estilos+'|'+BrushStyleToStr(Shape54D.Brush.Style);
  Estilos:=Estilos+'|'+BrushStyleToStr(Shape54E.Brush.Style);

  Estilos:=Estilos+'|'+BrushStyleToStr(Shape55A.Brush.Style);
  Estilos:=Estilos+'|'+BrushStyleToStr(Shape55B.Brush.Style);
  Estilos:=Estilos+'|'+BrushStyleToStr(Shape55C.Brush.Style);
  Estilos:=Estilos+'|'+BrushStyleToStr(Shape55D.Brush.Style);
  Estilos:=Estilos+'|'+BrushStyleToStr(Shape55E.Brush.Style);
  {$ENDREGION}

  {$REGION 'Estilos 60'}
  Estilos:=Estilos+'|'+BrushStyleToStr(Shape61A.Brush.Style);
  Estilos:=Estilos+'|'+BrushStyleToStr(Shape61B.Brush.Style);
  Estilos:=Estilos+'|'+BrushStyleToStr(Shape61C.Brush.Style);
  Estilos:=Estilos+'|'+BrushStyleToStr(Shape61D.Brush.Style);
  Estilos:=Estilos+'|'+BrushStyleToStr(Shape61E.Brush.Style);

  Estilos:=Estilos+'|'+BrushStyleToStr(Shape62A.Brush.Style);
  Estilos:=Estilos+'|'+BrushStyleToStr(Shape62B.Brush.Style);
  Estilos:=Estilos+'|'+BrushStyleToStr(Shape62C.Brush.Style);
  Estilos:=Estilos+'|'+BrushStyleToStr(Shape62D.Brush.Style);
  Estilos:=Estilos+'|'+BrushStyleToStr(Shape62E.Brush.Style);

  Estilos:=Estilos+'|'+BrushStyleToStr(Shape63A.Brush.Style);
  Estilos:=Estilos+'|'+BrushStyleToStr(Shape63B.Brush.Style);
  Estilos:=Estilos+'|'+BrushStyleToStr(Shape63C.Brush.Style);
  Estilos:=Estilos+'|'+BrushStyleToStr(Shape63D.Brush.Style);
  Estilos:=Estilos+'|'+BrushStyleToStr(Shape63E.Brush.Style);

  Estilos:=Estilos+'|'+BrushStyleToStr(Shape64A.Brush.Style);
  Estilos:=Estilos+'|'+BrushStyleToStr(Shape64B.Brush.Style);
  Estilos:=Estilos+'|'+BrushStyleToStr(Shape64C.Brush.Style);
  Estilos:=Estilos+'|'+BrushStyleToStr(Shape64D.Brush.Style);
  Estilos:=Estilos+'|'+BrushStyleToStr(Shape64E.Brush.Style);

  Estilos:=Estilos+'|'+BrushStyleToStr(Shape65A.Brush.Style);
  Estilos:=Estilos+'|'+BrushStyleToStr(Shape65B.Brush.Style);
  Estilos:=Estilos+'|'+BrushStyleToStr(Shape65C.Brush.Style);
  Estilos:=Estilos+'|'+BrushStyleToStr(Shape65D.Brush.Style);
  Estilos:=Estilos+'|'+BrushStyleToStr(Shape65E.Brush.Style);
  {$ENDREGION}

  {$REGION 'Estilos 70'}
  Estilos:=Estilos+'|'+BrushStyleToStr(Shape71A.Brush.Style);
  Estilos:=Estilos+'|'+BrushStyleToStr(Shape71B.Brush.Style);
  Estilos:=Estilos+'|'+BrushStyleToStr(Shape71C.Brush.Style);
  Estilos:=Estilos+'|'+BrushStyleToStr(Shape71D.Brush.Style);
  Estilos:=Estilos+'|'+BrushStyleToStr(Shape71E.Brush.Style);

  Estilos:=Estilos+'|'+BrushStyleToStr(Shape72A.Brush.Style);
  Estilos:=Estilos+'|'+BrushStyleToStr(Shape72B.Brush.Style);
  Estilos:=Estilos+'|'+BrushStyleToStr(Shape72C.Brush.Style);
  Estilos:=Estilos+'|'+BrushStyleToStr(Shape72D.Brush.Style);
  Estilos:=Estilos+'|'+BrushStyleToStr(Shape72E.Brush.Style);

  Estilos:=Estilos+'|'+BrushStyleToStr(Shape73A.Brush.Style);
  Estilos:=Estilos+'|'+BrushStyleToStr(Shape73B.Brush.Style);
  Estilos:=Estilos+'|'+BrushStyleToStr(Shape73C.Brush.Style);
  Estilos:=Estilos+'|'+BrushStyleToStr(Shape73D.Brush.Style);
  Estilos:=Estilos+'|'+BrushStyleToStr(Shape73E.Brush.Style);

  Estilos:=Estilos+'|'+BrushStyleToStr(Shape74A.Brush.Style);
  Estilos:=Estilos+'|'+BrushStyleToStr(Shape74B.Brush.Style);
  Estilos:=Estilos+'|'+BrushStyleToStr(Shape74C.Brush.Style);
  Estilos:=Estilos+'|'+BrushStyleToStr(Shape74D.Brush.Style);
  Estilos:=Estilos+'|'+BrushStyleToStr(Shape74E.Brush.Style);

  Estilos:=Estilos+'|'+BrushStyleToStr(Shape75A.Brush.Style);
  Estilos:=Estilos+'|'+BrushStyleToStr(Shape75B.Brush.Style);
  Estilos:=Estilos+'|'+BrushStyleToStr(Shape75C.Brush.Style);
  Estilos:=Estilos+'|'+BrushStyleToStr(Shape75D.Brush.Style);
  Estilos:=Estilos+'|'+BrushStyleToStr(Shape75E.Brush.Style);
  {$ENDREGION}

  {$REGION 'Estilos 80'}
  Estilos:=Estilos+'|'+BrushStyleToStr(Shape81A.Brush.Style);
  Estilos:=Estilos+'|'+BrushStyleToStr(Shape81B.Brush.Style);
  Estilos:=Estilos+'|'+BrushStyleToStr(Shape81C.Brush.Style);
  Estilos:=Estilos+'|'+BrushStyleToStr(Shape81D.Brush.Style);
  Estilos:=Estilos+'|'+BrushStyleToStr(Shape81E.Brush.Style);

  Estilos:=Estilos+'|'+BrushStyleToStr(Shape82A.Brush.Style);
  Estilos:=Estilos+'|'+BrushStyleToStr(Shape82B.Brush.Style);
  Estilos:=Estilos+'|'+BrushStyleToStr(Shape82C.Brush.Style);
  Estilos:=Estilos+'|'+BrushStyleToStr(Shape82D.Brush.Style);
  Estilos:=Estilos+'|'+BrushStyleToStr(Shape82E.Brush.Style);

  Estilos:=Estilos+'|'+BrushStyleToStr(Shape83A.Brush.Style);
  Estilos:=Estilos+'|'+BrushStyleToStr(Shape83B.Brush.Style);
  Estilos:=Estilos+'|'+BrushStyleToStr(Shape83C.Brush.Style);
  Estilos:=Estilos+'|'+BrushStyleToStr(Shape83D.Brush.Style);
  Estilos:=Estilos+'|'+BrushStyleToStr(Shape83E.Brush.Style);

  Estilos:=Estilos+'|'+BrushStyleToStr(Shape84A.Brush.Style);
  Estilos:=Estilos+'|'+BrushStyleToStr(Shape84B.Brush.Style);
  Estilos:=Estilos+'|'+BrushStyleToStr(Shape84C.Brush.Style);
  Estilos:=Estilos+'|'+BrushStyleToStr(Shape84D.Brush.Style);
  Estilos:=Estilos+'|'+BrushStyleToStr(Shape84E.Brush.Style);

  Estilos:=Estilos+'|'+BrushStyleToStr(Shape85A.Brush.Style);
  Estilos:=Estilos+'|'+BrushStyleToStr(Shape85B.Brush.Style);
  Estilos:=Estilos+'|'+BrushStyleToStr(Shape85C.Brush.Style);
  Estilos:=Estilos+'|'+BrushStyleToStr(Shape85D.Brush.Style);
  Estilos:=Estilos+'|'+BrushStyleToStr(Shape85E.Brush.Style);
  {$ENDREGION}
end;

procedure TFormOdontogramas.Shape11AMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if DM2.TBOdontogramas.State in [dsInsert, dsEdit] then
  begin
    (Sender as TShape).Brush.Color:=TColor(QYOdontogramasOpcoesODP_COR.Value);
    (Sender as TShape).Brush.Style:=TBrushStyle(StrToInt(StrToBrushStyle2(QYOdontogramasOpcoesODP_ESTILO.Value)));
    (Sender as TShape).Hint:=QYOdontogramasOpcoesODP_DESCRICAO.Value;
  end;
end;

initialization
  RegisterClass(TFormOdontogramas);

finalization
  UnRegisterClass(TFormOdontogramas);

end.
