unit ConsultasItens;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, System.ImageList, Vcl.ImgList,
  PngImageList, Vcl.Menus, Vcl.StdCtrls, Vcl.Buttons, PngBitBtn, Vcl.ExtCtrls,
  Vcl.Mask, Vcl.DBCtrls, PngSpeedButton;

type
  TFormConsultasItens = class(TForm)
    SpeedButton9: TPngSpeedButton;
    Label1: TLabel;
    DBEdit32: TDBEdit;
    DBEdit5: TDBEdit;
    Bevel1: TBevel;
    Label31: TLabel;
    BitBtn1: TPngBitBtn;
    BitBtn2: TPngBitBtn;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    MainMenu1: TMainMenu;
    Atalhos1: TMenuItem;
    OK1: TMenuItem;
    PngImageList1: TPngImageList;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure OK1Click(Sender: TObject);
    procedure DBEdit5Enter(Sender: TObject);
    procedure DBEdit5Exit(Sender: TObject);
    procedure DBEdit5KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit5KeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton9Click(Sender: TObject);
    procedure DBEdit2KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormConsultasItens: TFormConsultasItens;

implementation
uses DataMod2, DB, DataModSearch, DataMod, ExamesTiposLoc;
{$R *.dfm}

procedure TFormConsultasItens.BitBtn1Click(Sender: TObject);
begin
  DM2.TBConsultasItens.Post;
  Close;
end;

procedure TFormConsultasItens.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TFormConsultasItens.DBEdit2KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#46 then Key:=#44; //troca ponto por virgula.
end;

procedure TFormConsultasItens.DBEdit5Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TDBEdit).Text;
end;

procedure TFormConsultasItens.DBEdit5Exit(Sender: TObject);
begin
  if (DM2.TBConsultasItens.State in [dsInsert, dsEdit]) and ((Sender as TDBEdit).Text='') then
  begin
    DM2.TBConsultasItensCSI_EXAME.Clear;
    DM2.TBConsultasItensCSI_DESCRICAO.Clear;
    DM2.TBConsultasItensCSI_SIGLA.Clear;
    DM2.TBConsultasItensCSI_VALOR.Value:=0;
    Exit;
  end;
  if DM.CodigosOld=(Sender as TDBEdit).Text then
  Exit;
  if (DM2.TBConsultasItens.State in [dsInsert, dsEdit]) and ((Sender as TDBEdit).Text<>'') then
  begin
    DMS.QYExamesTipos.Close;
    DMS.QYExamesTipos.ParamByName('codigo').AsInteger:=StrToInt((Sender as TDBEdit).Text);
    DMS.QYExamesTipos.Open;
    if not DMS.QYExamesTipos.IsEmpty then
    begin
      DM2.TBConsultasItensCSI_EXAME.Value:=DMS.QYExamesTiposEXT_CODIGO.Value;
      DM2.TBConsultasItensCSI_DESCRICAO.Value:=DMS.QYExamesTiposEXT_DESCRICAO.Value;
      DM2.TBConsultasItensCSI_SIGLA.Value:=DMS.QYExamesTiposEXT_SIGLA.Value;
      DM2.TBConsultasItensCSI_VALOR.Value:=DMS.QYExamesTiposEXT_VALOR.Value;
    end else
    begin
      DM2.TBConsultasItensCSI_EXAME.Clear;
      DM2.TBConsultasItensCSI_DESCRICAO.Clear;
      DM2.TBConsultasItensCSI_SIGLA.Clear;
      DM2.TBConsultasItensCSI_VALOR.Value:=0;
      MessageDlg('Exame não encontrado.',mtInformation,[mbOk],0);
      (Sender as TDBEdit).SetFocus;
    end;
    DMS.QYExamesTipos.Close;
  end;
end;

procedure TFormConsultasItens.DBEdit5KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton9.Click;
end;

procedure TFormConsultasItens.DBEdit5KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormConsultasItens.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if DM2.TBConsultasItens.State in [dsInsert, dsEdit] then
  DM2.TBConsultasItens.Cancel;
end;

procedure TFormConsultasItens.OK1Click(Sender: TObject);
begin
  BitBtn1.Click;
end;

procedure TFormConsultasItens.SpeedButton9Click(Sender: TObject);
begin
  Application.CreateForm(TFormExamesTiposLoc, FormExamesTiposLoc);
  FormExamesTiposLoc.ShowModal;
  if ExamesTiposLoc.Procurar then
  begin
    DM2.TBConsultasItens.Edit;
    DM2.TBConsultasItensCSI_EXAME.Value:=FormExamesTiposLoc.QYExamesTiposEXT_CODIGO.Value;
    DM2.TBConsultasItensCSI_DESCRICAO.Value:=FormExamesTiposLoc.QYExamesTiposEXT_DESCRICAO.Value;
    DM2.TBConsultasItensCSI_SIGLA.Value:=FormExamesTiposLoc.QYExamesTiposEXT_SIGLA.Value;
    DM2.TBConsultasItensCSI_VALOR.Value:=FormExamesTiposLoc.QYExamesTiposEXT_VALOR.Value;
  end;
  FormExamesTiposLoc.Free;
  FormExamesTiposLoc:=nil;
end;

initialization
  RegisterClass(TFormConsultasItens);

finalization
  UnRegisterClass(TFormConsultasItens);

end.
