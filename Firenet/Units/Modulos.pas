unit Modulos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Buttons, DBSBtn, ExtCtrls, Menus, Grids,
  DBGrids, Mask, ImgList, PngImageList, PngSpeedButton, System.ImageList, System.UITypes,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client, FireDAC.Comp.DataSet,
  Data.DB;

type
  TFormModulos = class(TForm)
    Label2: TLabel;
    Label4: TLabel;
    DBEdit2: TDBEdit;
    DBEdit4: TDBEdit;
    DBGrid1: TDBGrid;
    MainMenu1: TMainMenu;
    Arquivo1: TMenuItem;
    Relatorios1: TMenuItem;
    N1: TMenuItem;
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
    Panel2: TPanel;
    Bevel4: TBevel;
    dbSBtnFirst1: TDBSpeedButton;
    dbSBtnPrior1: TDBSpeedButton;
    dbSBtnNext1: TDBSpeedButton;
    dbSBtnLast1: TDBSpeedButton;
    dbSBtnNew1: TDBSpeedButton;
    dbSBtnDelete1: TDBSpeedButton;
    dbSBtnSave1: TDBSpeedButton;
    dbSBtnCancel1: TDBSpeedButton;
    SpeedButton12: TPngSpeedButton;
    Bevel7: TBevel;
    SpeedButton1: TPngSpeedButton;
    Bevel1: TBevel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DBEdit3: TDBEdit;
    Label3: TLabel;
    Label7: TLabel;
    DBComboBox2: TDBComboBox;
    PngImageList1: TPngImageList;
    QYTelas: TFDQuery;
    TRTelas: TFDTransaction;
    procedure Fechar1Click(Sender: TObject);
    procedure Relatorios1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    procedure SetStatusTelas(Status: Char);
  public
    { Public declarations }
  end;

var
  FormModulos: TFormModulos;

implementation
uses DataMod;
{$R *.dfm}

procedure TFormModulos.Fechar1Click(Sender: TObject);
begin
  Close;
end;

procedure TFormModulos.Relatorios1Click(Sender: TObject);
begin
  MessageDlg('Ainda não disponível.',mtInformation,[mbOk],0);
end;

procedure TFormModulos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if DM.TBModulos.State in [dsInsert, dsEdit] then
  begin
    MessageDlg('Salve os dados antes de fechar.',mtWarning,[mbOk],0);
    Action:=caNone;
  end;
end;

procedure TFormModulos.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormModulos.SetStatusTelas(Status: Char);
begin
  DM.TBTelas.Close;
  QYTelas.ParamByName('modulo').AsInteger:=DM.TBModulosMOD_CODIGO.Value;
  QYTelas.ParamByName('status').AsString:=Status;
  QYTelas.ExecSQL;
  DM.TBTelas.Open;
end;

procedure TFormModulos.DBGrid1DblClick(Sender: TObject);
begin
  DM.TBModulos.Edit;
  if DM.TBModulosMOD_ACESSO.Value='S' then
  begin
    DM.TBModulosMOD_ACESSO.Value:='N';
    SetStatusTelas('I');
  end else
  begin
    DM.TBModulosMOD_ACESSO.Value:='S';
    SetStatusTelas('A');
  end;
  DM.TBModulos.Post;
  DBGrid1.SetFocus;
end;

procedure TFormModulos.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
  begin
    DM.TBModulos.Edit;
    if DM.TBModulosMOD_ACESSO.Value='S' then
    begin
      DM.TBModulosMOD_ACESSO.Value:='N';
      SetStatusTelas('I');
    end else
    begin
      DM.TBModulosMOD_ACESSO.Value:='S';
      SetStatusTelas('A');
    end;
    DM.TBModulos.Post;
    DBGrid1.SetFocus;
  end;
end;

end.
