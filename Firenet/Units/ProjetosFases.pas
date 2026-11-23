unit ProjetosFases;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, DB, Mask, Buttons, ExtCtrls, PngBitBtn,
  PngSpeedButton, System.UITypes;

type
  TFormProjetosFases = class(TForm)
    Bevel1: TBevel;
    SpeedButton9: TPngSpeedButton;
    Label1: TLabel;
    Label10: TLabel;
    Label12: TLabel;
    BitBtn1: TPngBitBtn;
    BitBtn2: TPngBitBtn;
    DBEdit5: TDBEdit;
    DBEdit32: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    Label3: TLabel;
    DBComboBox1: TDBComboBox;
    procedure SpeedButton9Click(Sender: TObject);
    procedure DBEdit5Exit(Sender: TObject);
    procedure DBEdit5KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit12KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit10KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit5Enter(Sender: TObject);
    procedure DBEdit5KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormProjetosFases: TFormProjetosFases;

implementation
uses DataMod, FasesLoc, DataMod2, DataModSearch;
{$R *.dfm}

procedure TFormProjetosFases.DBEdit5Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TDBEdit).Text;
end;

procedure TFormProjetosFases.DBEdit5Exit(Sender: TObject);
begin
  if (DM2.TBProjetosFases.State in [dsInsert, dsEdit]) and ((Sender as TDBEdit).Text='') then
  begin
    DM2.TBProjetosFasesPJF_FASE.Clear;
    DM2.TBProjetosFasesFAS_DESCRICAO.Clear;
    Exit;
  end;
  if DM.CodigosOld=(Sender as TDBEdit).Text then
  Exit;
  if (DM2.TBProjetosFases.State in [dsInsert, dsEdit]) and ((Sender as TDBEdit).Text<>'') then
  begin
    DMS.QYFases.Close;
    DMS.QYFases.ParamByName('codigo').AsInteger:=StrToInt((Sender as TDBEdit).Text);
    DMS.QYFases.Open;
    if not DMS.QYFases.IsEmpty then
    begin
      DM2.TBProjetosFasesPJF_FASE.Value:=DMS.QYFasesFAS_CODIGO.Value;
      DM2.TBProjetosFasesFAS_DESCRICAO.Value:=DMS.QYFasesFAS_DESCRICAO.Value;
    end else
    begin
      DM2.TBProjetosFasesPJF_FASE.Clear;
      DM2.TBProjetosFasesFAS_DESCRICAO.Clear;
      MessageDlg('Fase não encontrada.',mtInformation,[mbOk],0);
      (Sender as TDBEdit).SetFocus;
    end;
    DMS.QYFases.Close;
  end;
end;

procedure TFormProjetosFases.DBEdit5KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton9.Click;
end;

procedure TFormProjetosFases.DBEdit5KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormProjetosFases.SpeedButton9Click(Sender: TObject);
begin
  Application.CreateForm(TFormFasesLoc, FormFasesLoc);
  FormFasesLoc.ShowModal;
  if FasesLoc.Procurar then
  begin
    DM2.TBProjetosFases.Edit;
    DM2.TBProjetosFasesPJF_FASE.Value:=FormFasesLoc.QYFasesFAS_CODIGO.Value; //DM.TBFasesFAS_CODIGO.Value;
    DM2.TBProjetosFasesFAS_DESCRICAO.Value:=FormFasesLoc.QYFasesFAS_DESCRICAO.Value; //DM.TBFasesFAS_NOME.Value;
  end;
  FormFasesLoc.Free;
  FormFasesLoc:=nil;
end;

procedure TFormProjetosFases.BitBtn1Click(Sender: TObject);
begin
  DM2.TBProjetosFases.Post;
  Close;
end;

procedure TFormProjetosFases.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TFormProjetosFases.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if DM2.TBProjetosFases.State in [dsInsert, dsEdit] then
  DM2.TBProjetosFases.Cancel;
end;

procedure TFormProjetosFases.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormProjetosFases.DBEdit12KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key=#8 then
  begin
    Key:=#0;
    DM2.TBProjetosFasesPJF_DTINICIO.Clear;
  end;
end;

procedure TFormProjetosFases.DBEdit10KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key=#8 then
  begin
    Key:=#0;
    DM2.TBProjetosFasesPJF_DTPREVISAO.Clear;
  end;
end;

procedure TFormProjetosFases.DBEdit1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key=#8 then
  begin
    Key:=#0;
    DM2.TBProjetosFasesPJF_DTFIM.Clear;
  end;
end;

end.
