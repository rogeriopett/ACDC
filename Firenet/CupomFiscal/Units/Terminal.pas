unit Terminal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, IBCustomDataSet, IBDatabase, IBQuery, ImgList, PngImageList,
  Menus, DBCtrls, Buttons, PngSpeedButton, DBSBtn, ExtCtrls, StdCtrls, Mask,
  System.ImageList;

type
  TFormTerminal = class(TForm)
    DBEdit1: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    Label8: TLabel;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    Label9: TLabel;
    DBComboBox2: TDBComboBox;
    Label10: TLabel;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    DBEdit13: TDBEdit;
    Label15: TLabel;
    DBEdit14: TDBEdit;
    DBComboBox1: TDBComboBox;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    Label5: TLabel;
    DBEdit4: TDBEdit;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    Label3: TLabel;
    Panel2: TPanel;
    Bevel4: TBevel;
    dbSBtnSave1: TDBSpeedButton;
    dbSBtnCancel1: TDBSpeedButton;
    SpeedButton5: TPngSpeedButton;
    Bevel1: TBevel;
    DBText1: TDBText;
    DBText2: TDBText;
    SpeedButton15: TPngSpeedButton;
    dbSBtnEdit: TDBSpeedButton;
    MainMenu1: TMainMenu;
    Arquivo1: TMenuItem;
    Fechar1: TMenuItem;
    Navegacao1: TMenuItem;
    SalvarRegistro1: TMenuItem;
    CancelarRegistro1: TMenuItem;
    EditarRegistro1: TMenuItem;
    Ajuda1: TMenuItem;
    Ajuda2: TMenuItem;
    PngImageList1: TPngImageList;
    QYAlmoxarifados: TIBQuery;
    TRAlmoxarifados: TIBTransaction;
    SpeedButton7: TPngSpeedButton;
    QYAlmoxarifadosALM_CODIGO: TIntegerField;
    QYAlmoxarifadosALM_DESCRICAO: TIBStringField;
    procedure Ajuda2Click(Sender: TObject);
    procedure Fechar1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTerminal: TFormTerminal;

implementation
uses DataMod, FuncoesPomPom;
{$R *.dfm}

procedure TFormTerminal.Ajuda2Click(Sender: TObject);
begin
  MostrarAjuda('');
end;

procedure TFormTerminal.Fechar1Click(Sender: TObject);
begin
  Close;
end;

procedure TFormTerminal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if DM.TBTerminais.State in [dsInsert, dsEdit] then
  begin
    MessageDlg('Salve os dados antes de fechar.',mtWarning,[mbOk],0);
    Action:=caNone;
  end;
end;

end.
