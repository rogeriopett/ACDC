//Atualizacoes:
//2026.11.24 - Relatorio das opcoes no FastReport (FormOdontogramasFast, ODO02); o QuickReport (FormOdontogramasOpcoesQ01) ficou comentado.
unit OdontogramasOpcoes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.DBCtrls, Vcl.Buttons, PngSpeedButton, DBSBtn, Vcl.ExtCtrls,
  System.ImageList, Vcl.ImgList, PngImageList, Vcl.Menus, Vcl.StdCtrls, Vcl.Mask, Vcl.ComCtrls, Vcl.ExtDlgs;

type
  TFormOdontogramasOpcoes = class(TForm)
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
    Label5: TLabel;
    DBEdit4: TDBEdit;
    ColorDialog1: TColorDialog;
    Shape1: TShape;
    Label6: TLabel;
    DBText3: TDBText;
    SetarOpcaoComoPadrao1Button: TPngSpeedButton;
    SetarOpcaoComoPadrao1: TMenuItem;
    N1: TMenuItem;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
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
    Label32: TLabel;
    ImageD48: TImage;
    ImageD47: TImage;
    Label31: TLabel;
    Label30: TLabel;
    ImageD46: TImage;
    ImageD45: TImage;
    Label29: TLabel;
    Label28: TLabel;
    ImageD44: TImage;
    Label27: TLabel;
    ImageD43: TImage;
    ImageD42: TImage;
    Label26: TLabel;
    Label25: TLabel;
    ImageD41: TImage;
    ImageD31: TImage;
    Label23: TLabel;
    Label24: TLabel;
    ImageD32: TImage;
    ImageD33: TImage;
    Label33: TLabel;
    Label34: TLabel;
    ImageD34: TImage;
    ImageD35: TImage;
    Label35: TLabel;
    Label36: TLabel;
    ImageD36: TImage;
    ImageD37: TImage;
    Label37: TLabel;
    Label38: TLabel;
    ImageD38: TImage;
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
    Label39: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    Label49: TLabel;
    Label50: TLabel;
    Label51: TLabel;
    ImageD85: TImage;
    Label58: TLabel;
    Label59: TLabel;
    ImageD84: TImage;
    Label60: TLabel;
    ImageD83: TImage;
    ImageD82: TImage;
    Label61: TLabel;
    Label62: TLabel;
    ImageD81: TImage;
    ImageD71: TImage;
    Label63: TLabel;
    Label64: TLabel;
    ImageD72: TImage;
    ImageD73: TImage;
    Label65: TLabel;
    Label66: TLabel;
    ImageD74: TImage;
    ImageD75: TImage;
    Label67: TLabel;
    OpenPictureDialog1: TOpenPictureDialog;
    Label44: TLabel;
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
    Bevel36: TBevel;
    Bevel37: TBevel;
    Bevel38: TBevel;
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
    Bevel49: TBevel;
    Bevel50: TBevel;
    Bevel51: TBevel;
    Bevel52: TBevel;
    Bevel53: TBevel;
    Bevel54: TBevel;
    Bevel55: TBevel;
    CopiarAsImagensDeOutraOpcao1: TMenuItem;
    CopiarImagensDeOutraOpcao1Button: TPngSpeedButton;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Localizar1Click(Sender: TObject);
    procedure Fechar1Click(Sender: TObject);
    procedure Relatorios2Click(Sender: TObject);
    procedure Ajuda2Click(Sender: TObject);
    procedure DBEdit4Click(Sender: TObject);
    procedure Shape1MouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure SetarOpcaoComoPadrao1Click(Sender: TObject);
    procedure DBComboBox1Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ImageD11DblClick(Sender: TObject);
    procedure ImageD12DblClick(Sender: TObject);
    procedure ImageD13DblClick(Sender: TObject);
    procedure ImageD14DblClick(Sender: TObject);
    procedure ImageD15DblClick(Sender: TObject);
    procedure ImageD16DblClick(Sender: TObject);
    procedure ImageD17DblClick(Sender: TObject);
    procedure ImageD18DblClick(Sender: TObject);
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
    procedure CopiarAsImagensDeOutraOpcao1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure CarregarImagensDentesOpcoes;
  end;

var
  FormOdontogramasOpcoes: TFormOdontogramasOpcoes;

implementation
uses DataMod2, Funcoes1, DB, OdontogramasOpcoesLoc, DataMod, FuncoesFirenet, Main, OdontogramasFast;
{$R *.dfm}

procedure TFormOdontogramasOpcoes.Ajuda2Click(Sender: TObject);
begin
  MostrarAjuda('');
end;

procedure TFormOdontogramasOpcoes.CarregarImagensDentesOpcoes;
begin
  if DM2.TBOdontogramasOpcoesODP_D11.Value<>'' then ImageD11.Picture.LoadFromFile(DM.TBParametrosPAR_LOCALDENTES.Value+'\'+DM2.TBOdontogramasOpcoesODP_D11.Value) else ImageD11.Picture:=nil;
  if DM2.TBOdontogramasOpcoesODP_D12.Value<>'' then ImageD12.Picture.LoadFromFile(DM.TBParametrosPAR_LOCALDENTES.Value+'\'+DM2.TBOdontogramasOpcoesODP_D12.Value) else ImageD12.Picture:=nil;
  if DM2.TBOdontogramasOpcoesODP_D13.Value<>'' then ImageD13.Picture.LoadFromFile(DM.TBParametrosPAR_LOCALDENTES.Value+'\'+DM2.TBOdontogramasOpcoesODP_D13.Value) else ImageD13.Picture:=nil;
  if DM2.TBOdontogramasOpcoesODP_D14.Value<>'' then ImageD14.Picture.LoadFromFile(DM.TBParametrosPAR_LOCALDENTES.Value+'\'+DM2.TBOdontogramasOpcoesODP_D14.Value) else ImageD14.Picture:=nil;
  if DM2.TBOdontogramasOpcoesODP_D15.Value<>'' then ImageD15.Picture.LoadFromFile(DM.TBParametrosPAR_LOCALDENTES.Value+'\'+DM2.TBOdontogramasOpcoesODP_D15.Value) else ImageD15.Picture:=nil;
  if DM2.TBOdontogramasOpcoesODP_D16.Value<>'' then ImageD16.Picture.LoadFromFile(DM.TBParametrosPAR_LOCALDENTES.Value+'\'+DM2.TBOdontogramasOpcoesODP_D16.Value) else ImageD16.Picture:=nil;
  if DM2.TBOdontogramasOpcoesODP_D17.Value<>'' then ImageD17.Picture.LoadFromFile(DM.TBParametrosPAR_LOCALDENTES.Value+'\'+DM2.TBOdontogramasOpcoesODP_D17.Value) else ImageD17.Picture:=nil;
  if DM2.TBOdontogramasOpcoesODP_D18.Value<>'' then ImageD18.Picture.LoadFromFile(DM.TBParametrosPAR_LOCALDENTES.Value+'\'+DM2.TBOdontogramasOpcoesODP_D18.Value) else ImageD18.Picture:=nil;

  if DM2.TBOdontogramasOpcoesODP_D21.Value<>'' then ImageD21.Picture.LoadFromFile(DM.TBParametrosPAR_LOCALDENTES.Value+'\'+DM2.TBOdontogramasOpcoesODP_D21.Value) else ImageD21.Picture:=nil;
  if DM2.TBOdontogramasOpcoesODP_D22.Value<>'' then ImageD22.Picture.LoadFromFile(DM.TBParametrosPAR_LOCALDENTES.Value+'\'+DM2.TBOdontogramasOpcoesODP_D22.Value) else ImageD22.Picture:=nil;
  if DM2.TBOdontogramasOpcoesODP_D23.Value<>'' then ImageD23.Picture.LoadFromFile(DM.TBParametrosPAR_LOCALDENTES.Value+'\'+DM2.TBOdontogramasOpcoesODP_D23.Value) else ImageD23.Picture:=nil;
  if DM2.TBOdontogramasOpcoesODP_D24.Value<>'' then ImageD24.Picture.LoadFromFile(DM.TBParametrosPAR_LOCALDENTES.Value+'\'+DM2.TBOdontogramasOpcoesODP_D24.Value) else ImageD24.Picture:=nil;
  if DM2.TBOdontogramasOpcoesODP_D25.Value<>'' then ImageD25.Picture.LoadFromFile(DM.TBParametrosPAR_LOCALDENTES.Value+'\'+DM2.TBOdontogramasOpcoesODP_D25.Value) else ImageD25.Picture:=nil;
  if DM2.TBOdontogramasOpcoesODP_D26.Value<>'' then ImageD26.Picture.LoadFromFile(DM.TBParametrosPAR_LOCALDENTES.Value+'\'+DM2.TBOdontogramasOpcoesODP_D26.Value) else ImageD26.Picture:=nil;
  if DM2.TBOdontogramasOpcoesODP_D27.Value<>'' then ImageD27.Picture.LoadFromFile(DM.TBParametrosPAR_LOCALDENTES.Value+'\'+DM2.TBOdontogramasOpcoesODP_D27.Value) else ImageD27.Picture:=nil;
  if DM2.TBOdontogramasOpcoesODP_D28.Value<>'' then ImageD28.Picture.LoadFromFile(DM.TBParametrosPAR_LOCALDENTES.Value+'\'+DM2.TBOdontogramasOpcoesODP_D28.Value) else ImageD28.Picture:=nil;

  if DM2.TBOdontogramasOpcoesODP_D31.Value<>'' then ImageD31.Picture.LoadFromFile(DM.TBParametrosPAR_LOCALDENTES.Value+'\'+DM2.TBOdontogramasOpcoesODP_D31.Value) else ImageD31.Picture:=nil;
  if DM2.TBOdontogramasOpcoesODP_D32.Value<>'' then ImageD32.Picture.LoadFromFile(DM.TBParametrosPAR_LOCALDENTES.Value+'\'+DM2.TBOdontogramasOpcoesODP_D32.Value) else ImageD32.Picture:=nil;
  if DM2.TBOdontogramasOpcoesODP_D33.Value<>'' then ImageD33.Picture.LoadFromFile(DM.TBParametrosPAR_LOCALDENTES.Value+'\'+DM2.TBOdontogramasOpcoesODP_D33.Value) else ImageD33.Picture:=nil;
  if DM2.TBOdontogramasOpcoesODP_D34.Value<>'' then ImageD34.Picture.LoadFromFile(DM.TBParametrosPAR_LOCALDENTES.Value+'\'+DM2.TBOdontogramasOpcoesODP_D34.Value) else ImageD34.Picture:=nil;
  if DM2.TBOdontogramasOpcoesODP_D35.Value<>'' then ImageD35.Picture.LoadFromFile(DM.TBParametrosPAR_LOCALDENTES.Value+'\'+DM2.TBOdontogramasOpcoesODP_D35.Value) else ImageD35.Picture:=nil;
  if DM2.TBOdontogramasOpcoesODP_D36.Value<>'' then ImageD36.Picture.LoadFromFile(DM.TBParametrosPAR_LOCALDENTES.Value+'\'+DM2.TBOdontogramasOpcoesODP_D36.Value) else ImageD36.Picture:=nil;
  if DM2.TBOdontogramasOpcoesODP_D37.Value<>'' then ImageD37.Picture.LoadFromFile(DM.TBParametrosPAR_LOCALDENTES.Value+'\'+DM2.TBOdontogramasOpcoesODP_D37.Value) else ImageD37.Picture:=nil;
  if DM2.TBOdontogramasOpcoesODP_D38.Value<>'' then ImageD38.Picture.LoadFromFile(DM.TBParametrosPAR_LOCALDENTES.Value+'\'+DM2.TBOdontogramasOpcoesODP_D38.Value) else ImageD38.Picture:=nil;

  if DM2.TBOdontogramasOpcoesODP_D41.Value<>'' then ImageD41.Picture.LoadFromFile(DM.TBParametrosPAR_LOCALDENTES.Value+'\'+DM2.TBOdontogramasOpcoesODP_D41.Value) else ImageD41.Picture:=nil;
  if DM2.TBOdontogramasOpcoesODP_D42.Value<>'' then ImageD42.Picture.LoadFromFile(DM.TBParametrosPAR_LOCALDENTES.Value+'\'+DM2.TBOdontogramasOpcoesODP_D42.Value) else ImageD42.Picture:=nil;
  if DM2.TBOdontogramasOpcoesODP_D43.Value<>'' then ImageD43.Picture.LoadFromFile(DM.TBParametrosPAR_LOCALDENTES.Value+'\'+DM2.TBOdontogramasOpcoesODP_D43.Value) else ImageD43.Picture:=nil;
  if DM2.TBOdontogramasOpcoesODP_D44.Value<>'' then ImageD44.Picture.LoadFromFile(DM.TBParametrosPAR_LOCALDENTES.Value+'\'+DM2.TBOdontogramasOpcoesODP_D44.Value) else ImageD44.Picture:=nil;
  if DM2.TBOdontogramasOpcoesODP_D45.Value<>'' then ImageD45.Picture.LoadFromFile(DM.TBParametrosPAR_LOCALDENTES.Value+'\'+DM2.TBOdontogramasOpcoesODP_D45.Value) else ImageD45.Picture:=nil;
  if DM2.TBOdontogramasOpcoesODP_D46.Value<>'' then ImageD46.Picture.LoadFromFile(DM.TBParametrosPAR_LOCALDENTES.Value+'\'+DM2.TBOdontogramasOpcoesODP_D46.Value) else ImageD46.Picture:=nil;
  if DM2.TBOdontogramasOpcoesODP_D47.Value<>'' then ImageD47.Picture.LoadFromFile(DM.TBParametrosPAR_LOCALDENTES.Value+'\'+DM2.TBOdontogramasOpcoesODP_D47.Value) else ImageD47.Picture:=nil;
  if DM2.TBOdontogramasOpcoesODP_D48.Value<>'' then ImageD48.Picture.LoadFromFile(DM.TBParametrosPAR_LOCALDENTES.Value+'\'+DM2.TBOdontogramasOpcoesODP_D48.Value) else ImageD48.Picture:=nil;

  if DM2.TBOdontogramasOpcoesODP_D51.Value<>'' then ImageD51.Picture.LoadFromFile(DM.TBParametrosPAR_LOCALDENTES.Value+'\'+DM2.TBOdontogramasOpcoesODP_D51.Value) else ImageD51.Picture:=nil;
  if DM2.TBOdontogramasOpcoesODP_D52.Value<>'' then ImageD52.Picture.LoadFromFile(DM.TBParametrosPAR_LOCALDENTES.Value+'\'+DM2.TBOdontogramasOpcoesODP_D52.Value) else ImageD52.Picture:=nil;
  if DM2.TBOdontogramasOpcoesODP_D53.Value<>'' then ImageD53.Picture.LoadFromFile(DM.TBParametrosPAR_LOCALDENTES.Value+'\'+DM2.TBOdontogramasOpcoesODP_D53.Value) else ImageD53.Picture:=nil;
  if DM2.TBOdontogramasOpcoesODP_D54.Value<>'' then ImageD54.Picture.LoadFromFile(DM.TBParametrosPAR_LOCALDENTES.Value+'\'+DM2.TBOdontogramasOpcoesODP_D54.Value) else ImageD54.Picture:=nil;
  if DM2.TBOdontogramasOpcoesODP_D55.Value<>'' then ImageD55.Picture.LoadFromFile(DM.TBParametrosPAR_LOCALDENTES.Value+'\'+DM2.TBOdontogramasOpcoesODP_D55.Value) else ImageD55.Picture:=nil;

  if DM2.TBOdontogramasOpcoesODP_D61.Value<>'' then ImageD61.Picture.LoadFromFile(DM.TBParametrosPAR_LOCALDENTES.Value+'\'+DM2.TBOdontogramasOpcoesODP_D61.Value) else ImageD61.Picture:=nil;
  if DM2.TBOdontogramasOpcoesODP_D62.Value<>'' then ImageD62.Picture.LoadFromFile(DM.TBParametrosPAR_LOCALDENTES.Value+'\'+DM2.TBOdontogramasOpcoesODP_D62.Value) else ImageD62.Picture:=nil;
  if DM2.TBOdontogramasOpcoesODP_D63.Value<>'' then ImageD63.Picture.LoadFromFile(DM.TBParametrosPAR_LOCALDENTES.Value+'\'+DM2.TBOdontogramasOpcoesODP_D63.Value) else ImageD63.Picture:=nil;
  if DM2.TBOdontogramasOpcoesODP_D64.Value<>'' then ImageD64.Picture.LoadFromFile(DM.TBParametrosPAR_LOCALDENTES.Value+'\'+DM2.TBOdontogramasOpcoesODP_D64.Value) else ImageD64.Picture:=nil;
  if DM2.TBOdontogramasOpcoesODP_D65.Value<>'' then ImageD65.Picture.LoadFromFile(DM.TBParametrosPAR_LOCALDENTES.Value+'\'+DM2.TBOdontogramasOpcoesODP_D65.Value) else ImageD65.Picture:=nil;

  if DM2.TBOdontogramasOpcoesODP_D71.Value<>'' then ImageD71.Picture.LoadFromFile(DM.TBParametrosPAR_LOCALDENTES.Value+'\'+DM2.TBOdontogramasOpcoesODP_D71.Value) else ImageD71.Picture:=nil;
  if DM2.TBOdontogramasOpcoesODP_D72.Value<>'' then ImageD72.Picture.LoadFromFile(DM.TBParametrosPAR_LOCALDENTES.Value+'\'+DM2.TBOdontogramasOpcoesODP_D72.Value) else ImageD72.Picture:=nil;
  if DM2.TBOdontogramasOpcoesODP_D73.Value<>'' then ImageD73.Picture.LoadFromFile(DM.TBParametrosPAR_LOCALDENTES.Value+'\'+DM2.TBOdontogramasOpcoesODP_D73.Value) else ImageD73.Picture:=nil;
  if DM2.TBOdontogramasOpcoesODP_D74.Value<>'' then ImageD74.Picture.LoadFromFile(DM.TBParametrosPAR_LOCALDENTES.Value+'\'+DM2.TBOdontogramasOpcoesODP_D74.Value) else ImageD74.Picture:=nil;
  if DM2.TBOdontogramasOpcoesODP_D75.Value<>'' then ImageD75.Picture.LoadFromFile(DM.TBParametrosPAR_LOCALDENTES.Value+'\'+DM2.TBOdontogramasOpcoesODP_D75.Value) else ImageD75.Picture:=nil;

  if DM2.TBOdontogramasOpcoesODP_D81.Value<>'' then ImageD81.Picture.LoadFromFile(DM.TBParametrosPAR_LOCALDENTES.Value+'\'+DM2.TBOdontogramasOpcoesODP_D81.Value) else ImageD81.Picture:=nil;
  if DM2.TBOdontogramasOpcoesODP_D82.Value<>'' then ImageD82.Picture.LoadFromFile(DM.TBParametrosPAR_LOCALDENTES.Value+'\'+DM2.TBOdontogramasOpcoesODP_D82.Value) else ImageD82.Picture:=nil;
  if DM2.TBOdontogramasOpcoesODP_D83.Value<>'' then ImageD83.Picture.LoadFromFile(DM.TBParametrosPAR_LOCALDENTES.Value+'\'+DM2.TBOdontogramasOpcoesODP_D83.Value) else ImageD83.Picture:=nil;
  if DM2.TBOdontogramasOpcoesODP_D84.Value<>'' then ImageD84.Picture.LoadFromFile(DM.TBParametrosPAR_LOCALDENTES.Value+'\'+DM2.TBOdontogramasOpcoesODP_D84.Value) else ImageD84.Picture:=nil;
  if DM2.TBOdontogramasOpcoesODP_D85.Value<>'' then ImageD85.Picture.LoadFromFile(DM.TBParametrosPAR_LOCALDENTES.Value+'\'+DM2.TBOdontogramasOpcoesODP_D85.Value) else ImageD85.Picture:=nil;
end;

procedure TFormOdontogramasOpcoes.CopiarAsImagensDeOutraOpcao1Click(Sender: TObject);
begin
  AbortIf(DM2.TBOdontogramasOpcoes.IsEmpty,'Nenhuma opção selecionada.');

  Application.CreateForm(TFormOdontogramasOpcoesLoc, FormOdontogramasOpcoesLoc);
  FormOdontogramasOpcoesLoc.ShowModal;
  if OdontogramasOpcoesLoc.Procurar then
  begin
    if MessageDlg('Deseja copiar as imagens da opção '+FormOdontogramasOpcoesLoc.QYOdontogramasOpcoesODP_DESCRICAO.Value+'?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
    begin
      DM2.TBOdontogramasOpcoes.Edit;
      DM2.TBOdontogramasOpcoesODP_D11.Value:=FormOdontogramasOpcoesLoc.QYOdontogramasOpcoesODP_D11.Value;
      DM2.TBOdontogramasOpcoesODP_D12.Value:=FormOdontogramasOpcoesLoc.QYOdontogramasOpcoesODP_D12.Value;
      DM2.TBOdontogramasOpcoesODP_D13.Value:=FormOdontogramasOpcoesLoc.QYOdontogramasOpcoesODP_D13.Value;
      DM2.TBOdontogramasOpcoesODP_D14.Value:=FormOdontogramasOpcoesLoc.QYOdontogramasOpcoesODP_D14.Value;
      DM2.TBOdontogramasOpcoesODP_D15.Value:=FormOdontogramasOpcoesLoc.QYOdontogramasOpcoesODP_D15.Value;
      DM2.TBOdontogramasOpcoesODP_D16.Value:=FormOdontogramasOpcoesLoc.QYOdontogramasOpcoesODP_D16.Value;
      DM2.TBOdontogramasOpcoesODP_D17.Value:=FormOdontogramasOpcoesLoc.QYOdontogramasOpcoesODP_D17.Value;
      DM2.TBOdontogramasOpcoesODP_D18.Value:=FormOdontogramasOpcoesLoc.QYOdontogramasOpcoesODP_D18.Value;

      DM2.TBOdontogramasOpcoesODP_D21.Value:=FormOdontogramasOpcoesLoc.QYOdontogramasOpcoesODP_D21.Value;
      DM2.TBOdontogramasOpcoesODP_D22.Value:=FormOdontogramasOpcoesLoc.QYOdontogramasOpcoesODP_D22.Value;
      DM2.TBOdontogramasOpcoesODP_D23.Value:=FormOdontogramasOpcoesLoc.QYOdontogramasOpcoesODP_D23.Value;
      DM2.TBOdontogramasOpcoesODP_D24.Value:=FormOdontogramasOpcoesLoc.QYOdontogramasOpcoesODP_D24.Value;
      DM2.TBOdontogramasOpcoesODP_D25.Value:=FormOdontogramasOpcoesLoc.QYOdontogramasOpcoesODP_D25.Value;
      DM2.TBOdontogramasOpcoesODP_D26.Value:=FormOdontogramasOpcoesLoc.QYOdontogramasOpcoesODP_D26.Value;
      DM2.TBOdontogramasOpcoesODP_D27.Value:=FormOdontogramasOpcoesLoc.QYOdontogramasOpcoesODP_D27.Value;
      DM2.TBOdontogramasOpcoesODP_D28.Value:=FormOdontogramasOpcoesLoc.QYOdontogramasOpcoesODP_D28.Value;

      DM2.TBOdontogramasOpcoesODP_D31.Value:=FormOdontogramasOpcoesLoc.QYOdontogramasOpcoesODP_D31.Value;
      DM2.TBOdontogramasOpcoesODP_D32.Value:=FormOdontogramasOpcoesLoc.QYOdontogramasOpcoesODP_D32.Value;
      DM2.TBOdontogramasOpcoesODP_D33.Value:=FormOdontogramasOpcoesLoc.QYOdontogramasOpcoesODP_D33.Value;
      DM2.TBOdontogramasOpcoesODP_D34.Value:=FormOdontogramasOpcoesLoc.QYOdontogramasOpcoesODP_D34.Value;
      DM2.TBOdontogramasOpcoesODP_D35.Value:=FormOdontogramasOpcoesLoc.QYOdontogramasOpcoesODP_D35.Value;
      DM2.TBOdontogramasOpcoesODP_D36.Value:=FormOdontogramasOpcoesLoc.QYOdontogramasOpcoesODP_D36.Value;
      DM2.TBOdontogramasOpcoesODP_D37.Value:=FormOdontogramasOpcoesLoc.QYOdontogramasOpcoesODP_D37.Value;
      DM2.TBOdontogramasOpcoesODP_D38.Value:=FormOdontogramasOpcoesLoc.QYOdontogramasOpcoesODP_D38.Value;

      DM2.TBOdontogramasOpcoesODP_D41.Value:=FormOdontogramasOpcoesLoc.QYOdontogramasOpcoesODP_D41.Value;
      DM2.TBOdontogramasOpcoesODP_D42.Value:=FormOdontogramasOpcoesLoc.QYOdontogramasOpcoesODP_D42.Value;
      DM2.TBOdontogramasOpcoesODP_D43.Value:=FormOdontogramasOpcoesLoc.QYOdontogramasOpcoesODP_D43.Value;
      DM2.TBOdontogramasOpcoesODP_D44.Value:=FormOdontogramasOpcoesLoc.QYOdontogramasOpcoesODP_D44.Value;
      DM2.TBOdontogramasOpcoesODP_D45.Value:=FormOdontogramasOpcoesLoc.QYOdontogramasOpcoesODP_D45.Value;
      DM2.TBOdontogramasOpcoesODP_D46.Value:=FormOdontogramasOpcoesLoc.QYOdontogramasOpcoesODP_D46.Value;
      DM2.TBOdontogramasOpcoesODP_D47.Value:=FormOdontogramasOpcoesLoc.QYOdontogramasOpcoesODP_D47.Value;
      DM2.TBOdontogramasOpcoesODP_D48.Value:=FormOdontogramasOpcoesLoc.QYOdontogramasOpcoesODP_D48.Value;

      DM2.TBOdontogramasOpcoesODP_D51.Value:=FormOdontogramasOpcoesLoc.QYOdontogramasOpcoesODP_D51.Value;
      DM2.TBOdontogramasOpcoesODP_D52.Value:=FormOdontogramasOpcoesLoc.QYOdontogramasOpcoesODP_D52.Value;
      DM2.TBOdontogramasOpcoesODP_D53.Value:=FormOdontogramasOpcoesLoc.QYOdontogramasOpcoesODP_D53.Value;
      DM2.TBOdontogramasOpcoesODP_D54.Value:=FormOdontogramasOpcoesLoc.QYOdontogramasOpcoesODP_D54.Value;
      DM2.TBOdontogramasOpcoesODP_D55.Value:=FormOdontogramasOpcoesLoc.QYOdontogramasOpcoesODP_D55.Value;

      DM2.TBOdontogramasOpcoesODP_D61.Value:=FormOdontogramasOpcoesLoc.QYOdontogramasOpcoesODP_D61.Value;
      DM2.TBOdontogramasOpcoesODP_D62.Value:=FormOdontogramasOpcoesLoc.QYOdontogramasOpcoesODP_D62.Value;
      DM2.TBOdontogramasOpcoesODP_D63.Value:=FormOdontogramasOpcoesLoc.QYOdontogramasOpcoesODP_D63.Value;
      DM2.TBOdontogramasOpcoesODP_D64.Value:=FormOdontogramasOpcoesLoc.QYOdontogramasOpcoesODP_D64.Value;
      DM2.TBOdontogramasOpcoesODP_D65.Value:=FormOdontogramasOpcoesLoc.QYOdontogramasOpcoesODP_D65.Value;

      DM2.TBOdontogramasOpcoesODP_D71.Value:=FormOdontogramasOpcoesLoc.QYOdontogramasOpcoesODP_D71.Value;
      DM2.TBOdontogramasOpcoesODP_D72.Value:=FormOdontogramasOpcoesLoc.QYOdontogramasOpcoesODP_D72.Value;
      DM2.TBOdontogramasOpcoesODP_D73.Value:=FormOdontogramasOpcoesLoc.QYOdontogramasOpcoesODP_D73.Value;
      DM2.TBOdontogramasOpcoesODP_D74.Value:=FormOdontogramasOpcoesLoc.QYOdontogramasOpcoesODP_D74.Value;
      DM2.TBOdontogramasOpcoesODP_D75.Value:=FormOdontogramasOpcoesLoc.QYOdontogramasOpcoesODP_D75.Value;

      DM2.TBOdontogramasOpcoesODP_D81.Value:=FormOdontogramasOpcoesLoc.QYOdontogramasOpcoesODP_D81.Value;
      DM2.TBOdontogramasOpcoesODP_D82.Value:=FormOdontogramasOpcoesLoc.QYOdontogramasOpcoesODP_D82.Value;
      DM2.TBOdontogramasOpcoesODP_D83.Value:=FormOdontogramasOpcoesLoc.QYOdontogramasOpcoesODP_D83.Value;
      DM2.TBOdontogramasOpcoesODP_D84.Value:=FormOdontogramasOpcoesLoc.QYOdontogramasOpcoesODP_D84.Value;
      DM2.TBOdontogramasOpcoesODP_D85.Value:=FormOdontogramasOpcoesLoc.QYOdontogramasOpcoesODP_D85.Value;
    end;
  end;
  FormOdontogramasOpcoesLoc.Free;
  FormOdontogramasOpcoesLoc:=nil;
end;

procedure TFormOdontogramasOpcoes.DBComboBox1Change(Sender: TObject);
begin
  Shape1.Brush.Style:=StrToBrushStyle(DBComboBox1.Text);
end;

procedure TFormOdontogramasOpcoes.DBEdit4Click(Sender: TObject);
begin
  if DBEdit4.Enabled and ColorDialog1.Execute then
  DM2.TBOdontogramasOpcoesODP_COR.Value:=ColorToRGB(ColorDialog1.Color);
end;

procedure TFormOdontogramasOpcoes.Fechar1Click(Sender: TObject);
begin
  Close;
end;

procedure TFormOdontogramasOpcoes.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if DM2.TBOdontogramasOpcoes.State in [dsInsert, dsEdit] then
  begin
    MessageDlg('Salve os dados antes de fechar.',mtWarning,[mbOk],0);
    Action:=caNone;
  end;
end;

procedure TFormOdontogramasOpcoes.FormCreate(Sender: TObject);
begin
  PageControl1.ActivePageIndex:=0;
  if not DM2.TBOdontogramasOpcoes.IsEmpty then
  begin
    Shape1.Brush.Color:=TColor(DM2.TBOdontogramasOpcoesODP_COR.Value);
    Shape1.Brush.Style:=StrToBrushStyle(DM2.TBOdontogramasOpcoesODP_ESTILO.Value);
  end;
end;

procedure TFormOdontogramasOpcoes.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormOdontogramasOpcoes.FormShow(Sender: TObject);
begin
  FormMain.DesabilitarControles(FormOdontogramasOpcoes);
  DM2.DSOdontogramasOpcoesDataChange(nil,nil);
end;

procedure TFormOdontogramasOpcoes.ImageD11DblClick(Sender: TObject);
begin
  if DM2.TBOdontogramasOpcoes.State in [dsInsert, dsEdit] then
  begin
    OpenPictureDialog1.InitialDir:=DM.TBParametrosPAR_LOCALDENTES.Value;
    if OpenPictureDialog1.Execute then
    begin
      DM2.TBOdontogramasOpcoesODP_D11.Value:=ExtractFileName(OpenPictureDialog1.FileName);
      ImageD11.Picture.LoadFromFile(DM.TBParametrosPAR_LOCALDENTES.Value+'\'+DM2.TBOdontogramasOpcoesODP_D11.Value);
    end;
  end;
end;

procedure TFormOdontogramasOpcoes.ImageD12DblClick(Sender: TObject);
begin
  if DM2.TBOdontogramasOpcoes.State in [dsInsert, dsEdit] then
  begin
    OpenPictureDialog1.InitialDir:=DM.TBParametrosPAR_LOCALDENTES.Value;
    if OpenPictureDialog1.Execute then
    begin
      DM2.TBOdontogramasOpcoesODP_D12.Value:=ExtractFileName(OpenPictureDialog1.FileName);
      ImageD12.Picture.LoadFromFile(DM.TBParametrosPAR_LOCALDENTES.Value+'\'+DM2.TBOdontogramasOpcoesODP_D12.Value);
    end;
  end;
end;

procedure TFormOdontogramasOpcoes.ImageD13DblClick(Sender: TObject);
begin
  if DM2.TBOdontogramasOpcoes.State in [dsInsert, dsEdit] then
  begin
    OpenPictureDialog1.InitialDir:=DM.TBParametrosPAR_LOCALDENTES.Value;
    if OpenPictureDialog1.Execute then
    begin
      DM2.TBOdontogramasOpcoesODP_D13.Value:=ExtractFileName(OpenPictureDialog1.FileName);
      ImageD13.Picture.LoadFromFile(DM.TBParametrosPAR_LOCALDENTES.Value+'\'+DM2.TBOdontogramasOpcoesODP_D13.Value);
    end;
  end;
end;

procedure TFormOdontogramasOpcoes.ImageD14DblClick(Sender: TObject);
begin
  if DM2.TBOdontogramasOpcoes.State in [dsInsert, dsEdit] then
  begin
    OpenPictureDialog1.InitialDir:=DM.TBParametrosPAR_LOCALDENTES.Value;
    if OpenPictureDialog1.Execute then
    begin
      DM2.TBOdontogramasOpcoesODP_D14.Value:=ExtractFileName(OpenPictureDialog1.FileName);
      ImageD14.Picture.LoadFromFile(DM.TBParametrosPAR_LOCALDENTES.Value+'\'+DM2.TBOdontogramasOpcoesODP_D14.Value);
    end;
  end;
end;

procedure TFormOdontogramasOpcoes.ImageD15DblClick(Sender: TObject);
begin
  if DM2.TBOdontogramasOpcoes.State in [dsInsert, dsEdit] then
  begin
    OpenPictureDialog1.InitialDir:=DM.TBParametrosPAR_LOCALDENTES.Value;
    if OpenPictureDialog1.Execute then
    begin
      DM2.TBOdontogramasOpcoesODP_D15.Value:=ExtractFileName(OpenPictureDialog1.FileName);
      ImageD15.Picture.LoadFromFile(DM.TBParametrosPAR_LOCALDENTES.Value+'\'+DM2.TBOdontogramasOpcoesODP_D15.Value);
    end;
  end;
end;

procedure TFormOdontogramasOpcoes.ImageD16DblClick(Sender: TObject);
begin
  if DM2.TBOdontogramasOpcoes.State in [dsInsert, dsEdit] then
  begin
    OpenPictureDialog1.InitialDir:=DM.TBParametrosPAR_LOCALDENTES.Value;
    if OpenPictureDialog1.Execute then
    begin
      DM2.TBOdontogramasOpcoesODP_D16.Value:=ExtractFileName(OpenPictureDialog1.FileName);
      ImageD16.Picture.LoadFromFile(DM.TBParametrosPAR_LOCALDENTES.Value+'\'+DM2.TBOdontogramasOpcoesODP_D16.Value);
    end;
  end;
end;

procedure TFormOdontogramasOpcoes.ImageD17DblClick(Sender: TObject);
begin
  if DM2.TBOdontogramasOpcoes.State in [dsInsert, dsEdit] then
  begin
    OpenPictureDialog1.InitialDir:=DM.TBParametrosPAR_LOCALDENTES.Value;
    if OpenPictureDialog1.Execute then
    begin
      DM2.TBOdontogramasOpcoesODP_D17.Value:=ExtractFileName(OpenPictureDialog1.FileName);
      ImageD17.Picture.LoadFromFile(DM.TBParametrosPAR_LOCALDENTES.Value+'\'+DM2.TBOdontogramasOpcoesODP_D17.Value);
    end;
  end;
end;

procedure TFormOdontogramasOpcoes.ImageD18DblClick(Sender: TObject);
begin
  if DM2.TBOdontogramasOpcoes.State in [dsInsert, dsEdit] then
  begin
    OpenPictureDialog1.InitialDir:=DM.TBParametrosPAR_LOCALDENTES.Value;
    if OpenPictureDialog1.Execute then
    begin
      DM2.TBOdontogramasOpcoesODP_D18.Value:=ExtractFileName(OpenPictureDialog1.FileName);
      ImageD18.Picture.LoadFromFile(DM.TBParametrosPAR_LOCALDENTES.Value+'\'+DM2.TBOdontogramasOpcoesODP_D18.Value);
    end;
  end;
end;

procedure TFormOdontogramasOpcoes.ImageD21DblClick(Sender: TObject);
begin
  if DM2.TBOdontogramasOpcoes.State in [dsInsert, dsEdit] then
  begin
    OpenPictureDialog1.InitialDir:=DM.TBParametrosPAR_LOCALDENTES.Value;
    if OpenPictureDialog1.Execute then
    begin
      DM2.TBOdontogramasOpcoesODP_D21.Value:=ExtractFileName(OpenPictureDialog1.FileName);
      ImageD21.Picture.LoadFromFile(DM.TBParametrosPAR_LOCALDENTES.Value+'\'+DM2.TBOdontogramasOpcoesODP_D21.Value);
    end;
  end;
end;

procedure TFormOdontogramasOpcoes.ImageD22DblClick(Sender: TObject);
begin
  if DM2.TBOdontogramasOpcoes.State in [dsInsert, dsEdit] then
  begin
    OpenPictureDialog1.InitialDir:=DM.TBParametrosPAR_LOCALDENTES.Value;
    if OpenPictureDialog1.Execute then
    begin
      DM2.TBOdontogramasOpcoesODP_D22.Value:=ExtractFileName(OpenPictureDialog1.FileName);
      ImageD22.Picture.LoadFromFile(DM.TBParametrosPAR_LOCALDENTES.Value+'\'+DM2.TBOdontogramasOpcoesODP_D22.Value);
    end;
  end;
end;

procedure TFormOdontogramasOpcoes.ImageD23DblClick(Sender: TObject);
begin
  if DM2.TBOdontogramasOpcoes.State in [dsInsert, dsEdit] then
  begin
    OpenPictureDialog1.InitialDir:=DM.TBParametrosPAR_LOCALDENTES.Value;
    if OpenPictureDialog1.Execute then
    begin
      DM2.TBOdontogramasOpcoesODP_D23.Value:=ExtractFileName(OpenPictureDialog1.FileName);
      ImageD23.Picture.LoadFromFile(DM.TBParametrosPAR_LOCALDENTES.Value+'\'+DM2.TBOdontogramasOpcoesODP_D23.Value);
    end;
  end;
end;

procedure TFormOdontogramasOpcoes.ImageD24DblClick(Sender: TObject);
begin
  if DM2.TBOdontogramasOpcoes.State in [dsInsert, dsEdit] then
  begin
    OpenPictureDialog1.InitialDir:=DM.TBParametrosPAR_LOCALDENTES.Value;
    if OpenPictureDialog1.Execute then
    begin
      DM2.TBOdontogramasOpcoesODP_D24.Value:=ExtractFileName(OpenPictureDialog1.FileName);
      ImageD24.Picture.LoadFromFile(DM.TBParametrosPAR_LOCALDENTES.Value+'\'+DM2.TBOdontogramasOpcoesODP_D24.Value);
    end;
  end;
end;

procedure TFormOdontogramasOpcoes.ImageD25DblClick(Sender: TObject);
begin
  if DM2.TBOdontogramasOpcoes.State in [dsInsert, dsEdit] then
  begin
    OpenPictureDialog1.InitialDir:=DM.TBParametrosPAR_LOCALDENTES.Value;
    if OpenPictureDialog1.Execute then
    begin
      DM2.TBOdontogramasOpcoesODP_D25.Value:=ExtractFileName(OpenPictureDialog1.FileName);
      ImageD25.Picture.LoadFromFile(DM.TBParametrosPAR_LOCALDENTES.Value+'\'+DM2.TBOdontogramasOpcoesODP_D25.Value);
    end;
  end;
end;

procedure TFormOdontogramasOpcoes.ImageD26DblClick(Sender: TObject);
begin
  if DM2.TBOdontogramasOpcoes.State in [dsInsert, dsEdit] then
  begin
    OpenPictureDialog1.InitialDir:=DM.TBParametrosPAR_LOCALDENTES.Value;
    if OpenPictureDialog1.Execute then
    begin
      DM2.TBOdontogramasOpcoesODP_D26.Value:=ExtractFileName(OpenPictureDialog1.FileName);
      ImageD26.Picture.LoadFromFile(DM.TBParametrosPAR_LOCALDENTES.Value+'\'+DM2.TBOdontogramasOpcoesODP_D26.Value);
    end;
  end;
end;

procedure TFormOdontogramasOpcoes.ImageD27DblClick(Sender: TObject);
begin
  if DM2.TBOdontogramasOpcoes.State in [dsInsert, dsEdit] then
  begin
    OpenPictureDialog1.InitialDir:=DM.TBParametrosPAR_LOCALDENTES.Value;
    if OpenPictureDialog1.Execute then
    begin
      DM2.TBOdontogramasOpcoesODP_D27.Value:=ExtractFileName(OpenPictureDialog1.FileName);
      ImageD27.Picture.LoadFromFile(DM.TBParametrosPAR_LOCALDENTES.Value+'\'+DM2.TBOdontogramasOpcoesODP_D27.Value);
    end;
  end;
end;

procedure TFormOdontogramasOpcoes.ImageD28DblClick(Sender: TObject);
begin
  if DM2.TBOdontogramasOpcoes.State in [dsInsert, dsEdit] then
  begin
    OpenPictureDialog1.InitialDir:=DM.TBParametrosPAR_LOCALDENTES.Value;
    if OpenPictureDialog1.Execute then
    begin
      DM2.TBOdontogramasOpcoesODP_D28.Value:=ExtractFileName(OpenPictureDialog1.FileName);
      ImageD28.Picture.LoadFromFile(DM.TBParametrosPAR_LOCALDENTES.Value+'\'+DM2.TBOdontogramasOpcoesODP_D28.Value);
    end;
  end;
end;

procedure TFormOdontogramasOpcoes.ImageD31DblClick(Sender: TObject);
begin
  if DM2.TBOdontogramasOpcoes.State in [dsInsert, dsEdit] then
  begin
    OpenPictureDialog1.InitialDir:=DM.TBParametrosPAR_LOCALDENTES.Value;
    if OpenPictureDialog1.Execute then
    begin
      DM2.TBOdontogramasOpcoesODP_D31.Value:=ExtractFileName(OpenPictureDialog1.FileName);
      ImageD31.Picture.LoadFromFile(DM.TBParametrosPAR_LOCALDENTES.Value+'\'+DM2.TBOdontogramasOpcoesODP_D31.Value);
    end;
  end;
end;

procedure TFormOdontogramasOpcoes.ImageD32DblClick(Sender: TObject);
begin
  if DM2.TBOdontogramasOpcoes.State in [dsInsert, dsEdit] then
  begin
    OpenPictureDialog1.InitialDir:=DM.TBParametrosPAR_LOCALDENTES.Value;
    if OpenPictureDialog1.Execute then
    begin
      DM2.TBOdontogramasOpcoesODP_D32.Value:=ExtractFileName(OpenPictureDialog1.FileName);
      ImageD32.Picture.LoadFromFile(DM.TBParametrosPAR_LOCALDENTES.Value+'\'+DM2.TBOdontogramasOpcoesODP_D32.Value);
    end;
  end;
end;

procedure TFormOdontogramasOpcoes.ImageD33DblClick(Sender: TObject);
begin
  if DM2.TBOdontogramasOpcoes.State in [dsInsert, dsEdit] then
  begin
    OpenPictureDialog1.InitialDir:=DM.TBParametrosPAR_LOCALDENTES.Value;
    if OpenPictureDialog1.Execute then
    begin
      DM2.TBOdontogramasOpcoesODP_D33.Value:=ExtractFileName(OpenPictureDialog1.FileName);
      ImageD33.Picture.LoadFromFile(DM.TBParametrosPAR_LOCALDENTES.Value+'\'+DM2.TBOdontogramasOpcoesODP_D33.Value);
    end;
  end;
end;

procedure TFormOdontogramasOpcoes.ImageD34DblClick(Sender: TObject);
begin
  if DM2.TBOdontogramasOpcoes.State in [dsInsert, dsEdit] then
  begin
    OpenPictureDialog1.InitialDir:=DM.TBParametrosPAR_LOCALDENTES.Value;
    if OpenPictureDialog1.Execute then
    begin
      DM2.TBOdontogramasOpcoesODP_D34.Value:=ExtractFileName(OpenPictureDialog1.FileName);
      ImageD34.Picture.LoadFromFile(DM.TBParametrosPAR_LOCALDENTES.Value+'\'+DM2.TBOdontogramasOpcoesODP_D34.Value);
    end;
  end;
end;

procedure TFormOdontogramasOpcoes.ImageD35DblClick(Sender: TObject);
begin
  if DM2.TBOdontogramasOpcoes.State in [dsInsert, dsEdit] then
  begin
    OpenPictureDialog1.InitialDir:=DM.TBParametrosPAR_LOCALDENTES.Value;
    if OpenPictureDialog1.Execute then
    begin
      DM2.TBOdontogramasOpcoesODP_D35.Value:=ExtractFileName(OpenPictureDialog1.FileName);
      ImageD35.Picture.LoadFromFile(DM.TBParametrosPAR_LOCALDENTES.Value+'\'+DM2.TBOdontogramasOpcoesODP_D35.Value);
    end;
  end;
end;

procedure TFormOdontogramasOpcoes.ImageD36DblClick(Sender: TObject);
begin
  if DM2.TBOdontogramasOpcoes.State in [dsInsert, dsEdit] then
  begin
    OpenPictureDialog1.InitialDir:=DM.TBParametrosPAR_LOCALDENTES.Value;
    if OpenPictureDialog1.Execute then
    begin
      DM2.TBOdontogramasOpcoesODP_D36.Value:=ExtractFileName(OpenPictureDialog1.FileName);
      ImageD36.Picture.LoadFromFile(DM.TBParametrosPAR_LOCALDENTES.Value+'\'+DM2.TBOdontogramasOpcoesODP_D36.Value);
    end;
  end;
end;

procedure TFormOdontogramasOpcoes.ImageD37DblClick(Sender: TObject);
begin
  if DM2.TBOdontogramasOpcoes.State in [dsInsert, dsEdit] then
  begin
    OpenPictureDialog1.InitialDir:=DM.TBParametrosPAR_LOCALDENTES.Value;
    if OpenPictureDialog1.Execute then
    begin
      DM2.TBOdontogramasOpcoesODP_D37.Value:=ExtractFileName(OpenPictureDialog1.FileName);
      ImageD37.Picture.LoadFromFile(DM.TBParametrosPAR_LOCALDENTES.Value+'\'+DM2.TBOdontogramasOpcoesODP_D37.Value);
    end;
  end;
end;

procedure TFormOdontogramasOpcoes.ImageD38DblClick(Sender: TObject);
begin
  if DM2.TBOdontogramasOpcoes.State in [dsInsert, dsEdit] then
  begin
    OpenPictureDialog1.InitialDir:=DM.TBParametrosPAR_LOCALDENTES.Value;
    if OpenPictureDialog1.Execute then
    begin
      DM2.TBOdontogramasOpcoesODP_D38.Value:=ExtractFileName(OpenPictureDialog1.FileName);
      ImageD38.Picture.LoadFromFile(DM.TBParametrosPAR_LOCALDENTES.Value+'\'+DM2.TBOdontogramasOpcoesODP_D38.Value);
    end;
  end;
end;

procedure TFormOdontogramasOpcoes.ImageD41DblClick(Sender: TObject);
begin
  if DM2.TBOdontogramasOpcoes.State in [dsInsert, dsEdit] then
  begin
    OpenPictureDialog1.InitialDir:=DM.TBParametrosPAR_LOCALDENTES.Value;
    if OpenPictureDialog1.Execute then
    begin
      DM2.TBOdontogramasOpcoesODP_D41.Value:=ExtractFileName(OpenPictureDialog1.FileName);
      ImageD41.Picture.LoadFromFile(DM.TBParametrosPAR_LOCALDENTES.Value+'\'+DM2.TBOdontogramasOpcoesODP_D41.Value);
    end;
  end;
end;

procedure TFormOdontogramasOpcoes.ImageD42DblClick(Sender: TObject);
begin
  if DM2.TBOdontogramasOpcoes.State in [dsInsert, dsEdit] then
  begin
    OpenPictureDialog1.InitialDir:=DM.TBParametrosPAR_LOCALDENTES.Value;
    if OpenPictureDialog1.Execute then
    begin
      DM2.TBOdontogramasOpcoesODP_D42.Value:=ExtractFileName(OpenPictureDialog1.FileName);
      ImageD42.Picture.LoadFromFile(DM.TBParametrosPAR_LOCALDENTES.Value+'\'+DM2.TBOdontogramasOpcoesODP_D42.Value);
    end;
  end;
end;

procedure TFormOdontogramasOpcoes.ImageD43DblClick(Sender: TObject);
begin
  if DM2.TBOdontogramasOpcoes.State in [dsInsert, dsEdit] then
  begin
    OpenPictureDialog1.InitialDir:=DM.TBParametrosPAR_LOCALDENTES.Value;
    if OpenPictureDialog1.Execute then
    begin
      DM2.TBOdontogramasOpcoesODP_D43.Value:=ExtractFileName(OpenPictureDialog1.FileName);
      ImageD43.Picture.LoadFromFile(DM.TBParametrosPAR_LOCALDENTES.Value+'\'+DM2.TBOdontogramasOpcoesODP_D43.Value);
    end;
  end;
end;

procedure TFormOdontogramasOpcoes.ImageD44DblClick(Sender: TObject);
begin
  if DM2.TBOdontogramasOpcoes.State in [dsInsert, dsEdit] then
  begin
    OpenPictureDialog1.InitialDir:=DM.TBParametrosPAR_LOCALDENTES.Value;
    if OpenPictureDialog1.Execute then
    begin
      DM2.TBOdontogramasOpcoesODP_D44.Value:=ExtractFileName(OpenPictureDialog1.FileName);
      ImageD44.Picture.LoadFromFile(DM.TBParametrosPAR_LOCALDENTES.Value+'\'+DM2.TBOdontogramasOpcoesODP_D44.Value);
    end;
  end;
end;

procedure TFormOdontogramasOpcoes.ImageD45DblClick(Sender: TObject);
begin
  if DM2.TBOdontogramasOpcoes.State in [dsInsert, dsEdit] then
  begin
    OpenPictureDialog1.InitialDir:=DM.TBParametrosPAR_LOCALDENTES.Value;
    if OpenPictureDialog1.Execute then
    begin
      DM2.TBOdontogramasOpcoesODP_D45.Value:=ExtractFileName(OpenPictureDialog1.FileName);
      ImageD45.Picture.LoadFromFile(DM.TBParametrosPAR_LOCALDENTES.Value+'\'+DM2.TBOdontogramasOpcoesODP_D45.Value);
    end;
  end;
end;

procedure TFormOdontogramasOpcoes.ImageD46DblClick(Sender: TObject);
begin
  if DM2.TBOdontogramasOpcoes.State in [dsInsert, dsEdit] then
  begin
    OpenPictureDialog1.InitialDir:=DM.TBParametrosPAR_LOCALDENTES.Value;
    if OpenPictureDialog1.Execute then
    begin
      DM2.TBOdontogramasOpcoesODP_D46.Value:=ExtractFileName(OpenPictureDialog1.FileName);
      ImageD46.Picture.LoadFromFile(DM.TBParametrosPAR_LOCALDENTES.Value+'\'+DM2.TBOdontogramasOpcoesODP_D46.Value);
    end;
  end;
end;

procedure TFormOdontogramasOpcoes.ImageD47DblClick(Sender: TObject);
begin
  if DM2.TBOdontogramasOpcoes.State in [dsInsert, dsEdit] then
  begin
    OpenPictureDialog1.InitialDir:=DM.TBParametrosPAR_LOCALDENTES.Value;
    if OpenPictureDialog1.Execute then
    begin
      DM2.TBOdontogramasOpcoesODP_D47.Value:=ExtractFileName(OpenPictureDialog1.FileName);
      ImageD47.Picture.LoadFromFile(DM.TBParametrosPAR_LOCALDENTES.Value+'\'+DM2.TBOdontogramasOpcoesODP_D47.Value);
    end;
  end;
end;

procedure TFormOdontogramasOpcoes.ImageD48DblClick(Sender: TObject);
begin
  if DM2.TBOdontogramasOpcoes.State in [dsInsert, dsEdit] then
  begin
    OpenPictureDialog1.InitialDir:=DM.TBParametrosPAR_LOCALDENTES.Value;
    if OpenPictureDialog1.Execute then
    begin
      DM2.TBOdontogramasOpcoesODP_D48.Value:=ExtractFileName(OpenPictureDialog1.FileName);
      ImageD48.Picture.LoadFromFile(DM.TBParametrosPAR_LOCALDENTES.Value+'\'+DM2.TBOdontogramasOpcoesODP_D48.Value);
    end;
  end;
end;

procedure TFormOdontogramasOpcoes.ImageD51DblClick(Sender: TObject);
begin
  if DM2.TBOdontogramasOpcoes.State in [dsInsert, dsEdit] then
  begin
    OpenPictureDialog1.InitialDir:=DM.TBParametrosPAR_LOCALDENTES.Value;
    if OpenPictureDialog1.Execute then
    begin
      DM2.TBOdontogramasOpcoesODP_D51.Value:=ExtractFileName(OpenPictureDialog1.FileName);
      ImageD51.Picture.LoadFromFile(DM.TBParametrosPAR_LOCALDENTES.Value+'\'+DM2.TBOdontogramasOpcoesODP_D51.Value);
    end;
  end;
end;

procedure TFormOdontogramasOpcoes.ImageD52DblClick(Sender: TObject);
begin
  if DM2.TBOdontogramasOpcoes.State in [dsInsert, dsEdit] then
  begin
    OpenPictureDialog1.InitialDir:=DM.TBParametrosPAR_LOCALDENTES.Value;
    if OpenPictureDialog1.Execute then
    begin
      DM2.TBOdontogramasOpcoesODP_D52.Value:=ExtractFileName(OpenPictureDialog1.FileName);
      ImageD52.Picture.LoadFromFile(DM.TBParametrosPAR_LOCALDENTES.Value+'\'+DM2.TBOdontogramasOpcoesODP_D52.Value);
    end;
  end;
end;

procedure TFormOdontogramasOpcoes.ImageD53DblClick(Sender: TObject);
begin
  if DM2.TBOdontogramasOpcoes.State in [dsInsert, dsEdit] then
  begin
    OpenPictureDialog1.InitialDir:=DM.TBParametrosPAR_LOCALDENTES.Value;
    if OpenPictureDialog1.Execute then
    begin
      DM2.TBOdontogramasOpcoesODP_D53.Value:=ExtractFileName(OpenPictureDialog1.FileName);
      ImageD53.Picture.LoadFromFile(DM.TBParametrosPAR_LOCALDENTES.Value+'\'+DM2.TBOdontogramasOpcoesODP_D53.Value);
    end;
  end;
end;

procedure TFormOdontogramasOpcoes.ImageD54DblClick(Sender: TObject);
begin
  if DM2.TBOdontogramasOpcoes.State in [dsInsert, dsEdit] then
  begin
    OpenPictureDialog1.InitialDir:=DM.TBParametrosPAR_LOCALDENTES.Value;
    if OpenPictureDialog1.Execute then
    begin
      DM2.TBOdontogramasOpcoesODP_D54.Value:=ExtractFileName(OpenPictureDialog1.FileName);
      ImageD54.Picture.LoadFromFile(DM.TBParametrosPAR_LOCALDENTES.Value+'\'+DM2.TBOdontogramasOpcoesODP_D54.Value);
    end;
  end;
end;

procedure TFormOdontogramasOpcoes.ImageD55DblClick(Sender: TObject);
begin
  if DM2.TBOdontogramasOpcoes.State in [dsInsert, dsEdit] then
  begin
    OpenPictureDialog1.InitialDir:=DM.TBParametrosPAR_LOCALDENTES.Value;
    if OpenPictureDialog1.Execute then
    begin
      DM2.TBOdontogramasOpcoesODP_D55.Value:=ExtractFileName(OpenPictureDialog1.FileName);
      ImageD55.Picture.LoadFromFile(DM.TBParametrosPAR_LOCALDENTES.Value+'\'+DM2.TBOdontogramasOpcoesODP_D55.Value);
    end;
  end;
end;

procedure TFormOdontogramasOpcoes.ImageD61DblClick(Sender: TObject);
begin
  if DM2.TBOdontogramasOpcoes.State in [dsInsert, dsEdit] then
  begin
    OpenPictureDialog1.InitialDir:=DM.TBParametrosPAR_LOCALDENTES.Value;
    if OpenPictureDialog1.Execute then
    begin
      DM2.TBOdontogramasOpcoesODP_D61.Value:=ExtractFileName(OpenPictureDialog1.FileName);
      ImageD61.Picture.LoadFromFile(DM.TBParametrosPAR_LOCALDENTES.Value+'\'+DM2.TBOdontogramasOpcoesODP_D61.Value);
    end;
  end;
end;

procedure TFormOdontogramasOpcoes.ImageD62DblClick(Sender: TObject);
begin
  if DM2.TBOdontogramasOpcoes.State in [dsInsert, dsEdit] then
  begin
    OpenPictureDialog1.InitialDir:=DM.TBParametrosPAR_LOCALDENTES.Value;
    if OpenPictureDialog1.Execute then
    begin
      DM2.TBOdontogramasOpcoesODP_D62.Value:=ExtractFileName(OpenPictureDialog1.FileName);
      ImageD62.Picture.LoadFromFile(DM.TBParametrosPAR_LOCALDENTES.Value+'\'+DM2.TBOdontogramasOpcoesODP_D62.Value);
    end;
  end;
end;

procedure TFormOdontogramasOpcoes.ImageD63DblClick(Sender: TObject);
begin
  if DM2.TBOdontogramasOpcoes.State in [dsInsert, dsEdit] then
  begin
    OpenPictureDialog1.InitialDir:=DM.TBParametrosPAR_LOCALDENTES.Value;
    if OpenPictureDialog1.Execute then
    begin
      DM2.TBOdontogramasOpcoesODP_D63.Value:=ExtractFileName(OpenPictureDialog1.FileName);
      ImageD63.Picture.LoadFromFile(DM.TBParametrosPAR_LOCALDENTES.Value+'\'+DM2.TBOdontogramasOpcoesODP_D63.Value);
    end;
  end;
end;

procedure TFormOdontogramasOpcoes.ImageD64DblClick(Sender: TObject);
begin
  if DM2.TBOdontogramasOpcoes.State in [dsInsert, dsEdit] then
  begin
    OpenPictureDialog1.InitialDir:=DM.TBParametrosPAR_LOCALDENTES.Value;
    if OpenPictureDialog1.Execute then
    begin
      DM2.TBOdontogramasOpcoesODP_D64.Value:=ExtractFileName(OpenPictureDialog1.FileName);
      ImageD64.Picture.LoadFromFile(DM.TBParametrosPAR_LOCALDENTES.Value+'\'+DM2.TBOdontogramasOpcoesODP_D64.Value);
    end;
  end;
end;

procedure TFormOdontogramasOpcoes.ImageD65DblClick(Sender: TObject);
begin
  if DM2.TBOdontogramasOpcoes.State in [dsInsert, dsEdit] then
  begin
    OpenPictureDialog1.InitialDir:=DM.TBParametrosPAR_LOCALDENTES.Value;
    if OpenPictureDialog1.Execute then
    begin
      DM2.TBOdontogramasOpcoesODP_D65.Value:=ExtractFileName(OpenPictureDialog1.FileName);
      ImageD65.Picture.LoadFromFile(DM.TBParametrosPAR_LOCALDENTES.Value+'\'+DM2.TBOdontogramasOpcoesODP_D65.Value);
    end;
  end;
end;

procedure TFormOdontogramasOpcoes.ImageD71DblClick(Sender: TObject);
begin
  if DM2.TBOdontogramasOpcoes.State in [dsInsert, dsEdit] then
  begin
    OpenPictureDialog1.InitialDir:=DM.TBParametrosPAR_LOCALDENTES.Value;
    if OpenPictureDialog1.Execute then
    begin
      DM2.TBOdontogramasOpcoesODP_D71.Value:=ExtractFileName(OpenPictureDialog1.FileName);
      ImageD71.Picture.LoadFromFile(DM.TBParametrosPAR_LOCALDENTES.Value+'\'+DM2.TBOdontogramasOpcoesODP_D71.Value);
    end;
  end;
end;

procedure TFormOdontogramasOpcoes.ImageD72DblClick(Sender: TObject);
begin
  if DM2.TBOdontogramasOpcoes.State in [dsInsert, dsEdit] then
  begin
    OpenPictureDialog1.InitialDir:=DM.TBParametrosPAR_LOCALDENTES.Value;
    if OpenPictureDialog1.Execute then
    begin
      DM2.TBOdontogramasOpcoesODP_D72.Value:=ExtractFileName(OpenPictureDialog1.FileName);
      ImageD72.Picture.LoadFromFile(DM.TBParametrosPAR_LOCALDENTES.Value+'\'+DM2.TBOdontogramasOpcoesODP_D72.Value);
    end;
  end;
end;

procedure TFormOdontogramasOpcoes.ImageD73DblClick(Sender: TObject);
begin
  if DM2.TBOdontogramasOpcoes.State in [dsInsert, dsEdit] then
  begin
    OpenPictureDialog1.InitialDir:=DM.TBParametrosPAR_LOCALDENTES.Value;
    if OpenPictureDialog1.Execute then
    begin
      DM2.TBOdontogramasOpcoesODP_D73.Value:=ExtractFileName(OpenPictureDialog1.FileName);
      ImageD73.Picture.LoadFromFile(DM.TBParametrosPAR_LOCALDENTES.Value+'\'+DM2.TBOdontogramasOpcoesODP_D73.Value);
    end;
  end;
end;

procedure TFormOdontogramasOpcoes.ImageD74DblClick(Sender: TObject);
begin
  if DM2.TBOdontogramasOpcoes.State in [dsInsert, dsEdit] then
  begin
    OpenPictureDialog1.InitialDir:=DM.TBParametrosPAR_LOCALDENTES.Value;
    if OpenPictureDialog1.Execute then
    begin
      DM2.TBOdontogramasOpcoesODP_D74.Value:=ExtractFileName(OpenPictureDialog1.FileName);
      ImageD74.Picture.LoadFromFile(DM.TBParametrosPAR_LOCALDENTES.Value+'\'+DM2.TBOdontogramasOpcoesODP_D74.Value);
    end;
  end;
end;

procedure TFormOdontogramasOpcoes.ImageD75DblClick(Sender: TObject);
begin
  if DM2.TBOdontogramasOpcoes.State in [dsInsert, dsEdit] then
  begin
    OpenPictureDialog1.InitialDir:=DM.TBParametrosPAR_LOCALDENTES.Value;
    if OpenPictureDialog1.Execute then
    begin
      DM2.TBOdontogramasOpcoesODP_D75.Value:=ExtractFileName(OpenPictureDialog1.FileName);
      ImageD75.Picture.LoadFromFile(DM.TBParametrosPAR_LOCALDENTES.Value+'\'+DM2.TBOdontogramasOpcoesODP_D75.Value);
    end;
  end;
end;

procedure TFormOdontogramasOpcoes.ImageD81DblClick(Sender: TObject);
begin
  if DM2.TBOdontogramasOpcoes.State in [dsInsert, dsEdit] then
  begin
    OpenPictureDialog1.InitialDir:=DM.TBParametrosPAR_LOCALDENTES.Value;
    if OpenPictureDialog1.Execute then
    begin
      DM2.TBOdontogramasOpcoesODP_D81.Value:=ExtractFileName(OpenPictureDialog1.FileName);
      ImageD81.Picture.LoadFromFile(DM.TBParametrosPAR_LOCALDENTES.Value+'\'+DM2.TBOdontogramasOpcoesODP_D81.Value);
    end;
  end;
end;

procedure TFormOdontogramasOpcoes.ImageD82DblClick(Sender: TObject);
begin
  if DM2.TBOdontogramasOpcoes.State in [dsInsert, dsEdit] then
  begin
    OpenPictureDialog1.InitialDir:=DM.TBParametrosPAR_LOCALDENTES.Value;
    if OpenPictureDialog1.Execute then
    begin
      DM2.TBOdontogramasOpcoesODP_D82.Value:=ExtractFileName(OpenPictureDialog1.FileName);
      ImageD82.Picture.LoadFromFile(DM.TBParametrosPAR_LOCALDENTES.Value+'\'+DM2.TBOdontogramasOpcoesODP_D82.Value);
    end;
  end;
end;

procedure TFormOdontogramasOpcoes.ImageD83DblClick(Sender: TObject);
begin
  if DM2.TBOdontogramasOpcoes.State in [dsInsert, dsEdit] then
  begin
    OpenPictureDialog1.InitialDir:=DM.TBParametrosPAR_LOCALDENTES.Value;
    if OpenPictureDialog1.Execute then
    begin
      DM2.TBOdontogramasOpcoesODP_D83.Value:=ExtractFileName(OpenPictureDialog1.FileName);
      ImageD83.Picture.LoadFromFile(DM.TBParametrosPAR_LOCALDENTES.Value+'\'+DM2.TBOdontogramasOpcoesODP_D83.Value);
    end;
  end;
end;

procedure TFormOdontogramasOpcoes.ImageD84DblClick(Sender: TObject);
begin
  if DM2.TBOdontogramasOpcoes.State in [dsInsert, dsEdit] then
  begin
    OpenPictureDialog1.InitialDir:=DM.TBParametrosPAR_LOCALDENTES.Value;
    if OpenPictureDialog1.Execute then
    begin
      DM2.TBOdontogramasOpcoesODP_D84.Value:=ExtractFileName(OpenPictureDialog1.FileName);
      ImageD84.Picture.LoadFromFile(DM.TBParametrosPAR_LOCALDENTES.Value+'\'+DM2.TBOdontogramasOpcoesODP_D84.Value);
    end;
  end;
end;

procedure TFormOdontogramasOpcoes.ImageD85DblClick(Sender: TObject);
begin
  if DM2.TBOdontogramasOpcoes.State in [dsInsert, dsEdit] then
  begin
    OpenPictureDialog1.InitialDir:=DM.TBParametrosPAR_LOCALDENTES.Value;
    if OpenPictureDialog1.Execute then
    begin
      DM2.TBOdontogramasOpcoesODP_D85.Value:=ExtractFileName(OpenPictureDialog1.FileName);
      ImageD85.Picture.LoadFromFile(DM.TBParametrosPAR_LOCALDENTES.Value+'\'+DM2.TBOdontogramasOpcoesODP_D85.Value);
    end;
  end;
end;

procedure TFormOdontogramasOpcoes.Localizar1Click(Sender: TObject);
begin
  Application.CreateForm(TFormOdontogramasOpcoesLoc, FormOdontogramasOpcoesLoc);
  FormOdontogramasOpcoesLoc.ShowModal;
  if OdontogramasOpcoesLoc.Procurar then
  begin
    DM2.TBOdontogramasOpcoes.Close;
    DM2.TBOdontogramasOpcoes.ParamByName('codigo').AsInteger:=FormOdontogramasOpcoesLoc.QYOdontogramasOpcoesODP_CODIGO.Value;
    DM2.TBOdontogramasOpcoes.Open;
  end;
  FormOdontogramasOpcoesLoc.Free;
  FormOdontogramasOpcoesLoc:=nil;
end;

procedure TFormOdontogramasOpcoes.Relatorios2Click(Sender: TObject);
begin
  //QuickReport antigo (FormOdontogramasOpcoesQ01), trocado pelo FastReport (FormOdontogramasFast, ODO02) em 2026.11.24:
  //Application.CreateForm(TFormOdontogramasOpcoesQ01, FormOdontogramasOpcoesQ01);
  //FormOdontogramasOpcoesQ01.FDQuery1.Open;
  //FormOdontogramasOpcoesQ01.QuickRep1.PreviewModal;
  //FormOdontogramasOpcoesQ01.Free;
  //FormOdontogramasOpcoesQ01:=nil;
  Application.CreateForm(TFormOdontogramasFast, FormOdontogramasFast);
  FormOdontogramasFast.QY02.Open;
  FormOdontogramasFast.Mostrar(FormOdontogramasFast.frxReport2,'Opções dos Odontogramas');
  FormOdontogramasFast.Free;
  FormOdontogramasFast:=nil;
end;

procedure TFormOdontogramasOpcoes.SetarOpcaoComoPadrao1Click(Sender: TObject);
begin
  AbortIf(DM2.TBOdontogramasOpcoes.IsEmpty,'Nenhuma opção selecionada.');
  AbortIf(DM2.TBOdontogramasOpcoesODP_PADRAO.Value='S','Esta opção já é padrão.');

  if MessageDlg('Deseja tornar essa opção padrão para novos odontogramas?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    DM.QYAux.Close;
    DM.QYAux.SQL.Clear;
    DM.QYAux.SQL.Add('update ODONTOGRAMASOPCOES set ODP_PADRAO=''N'' ');
    DM.QYAux.ExecSQL;

    DM.QYAux.Close;
    DM.QYAux.SQL.Clear;
    DM.QYAux.SQL.Add('update ODONTOGRAMASOPCOES set ODP_PADRAO=''S'' where ODP_CODIGO=:codigo');
    DM.QYAux.ParamByName('codigo').AsInteger:=DM2.TBOdontogramasOpcoesODP_CODIGO.Value;
    DM.QYAux.ExecSQL;

    DM2.TBOdontogramasOpcoes.Close;
    DM2.TBOdontogramasOpcoes.Open;
  end;
end;

procedure TFormOdontogramasOpcoes.Shape1MouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X,
  Y: Integer);
begin
  if DBEdit4.Enabled and ColorDialog1.Execute then
  DM2.TBOdontogramasOpcoesODP_COR.Value:=ColorToRGB(ColorDialog1.Color);
end;

initialization
  RegisterClass(TFormOdontogramasOpcoes);

finalization
  UnRegisterClass(TFormOdontogramasOpcoes);

end.
