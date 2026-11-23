unit CodigosFiscais;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, PngBitBtn, DB, PngSpeedButton, Mask,
  DBCtrls, System.UITypes, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client, FireDAC.Comp.DataSet;

type
  TFormCodigosFiscais = class(TForm)
    GroupBox10: TGroupBox;
    Label126: TLabel;
    SpeedButton1: TPngSpeedButton;
    Label127: TLabel;
    Edit1: TEdit;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    PngSpeedButton1: TPngSpeedButton;
    Label2: TLabel;
    Edit3: TEdit;
    GroupBox2: TGroupBox;
    Label3: TLabel;
    PngSpeedButton2: TPngSpeedButton;
    Label4: TLabel;
    Edit5: TEdit;
    PngBitBtn1: TPngBitBtn;
    Bevel1: TBevel;
    DBEdit19: TDBEdit;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Label5: TLabel;
    Label6: TLabel;
    QYGenerators: TFDQuery;
    TRGenerators: TFDTransaction;
    procedure PngBitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure PngSpeedButton1Click(Sender: TObject);
    procedure PngSpeedButton2Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCodigosFiscais: TFormCodigosFiscais;

implementation
uses DataMod2, DataMod;
{$R *.dfm}

procedure TFormCodigosFiscais.FormCreate(Sender: TObject);
begin
  QYGenerators.Close;
  QYGenerators.SQL.Clear;
  QYGenerators.SQL.Add('select max(NFE_CODIGO) as MAX_NFE_CODIGO from NFE');
  QYGenerators.Open;
  Edit1.Text:=QYGenerators.FieldByName('MAX_NFE_CODIGO').asString;

  QYGenerators.Close;
  QYGenerators.SQL.Clear;
  QYGenerators.SQL.Add('select max(NOT_CODIGO) as MAX_NOT_CODIGO from NOTAS');
  QYGenerators.Open;
  Edit3.Text:=QYGenerators.FieldByName('MAX_NOT_CODIGO').asString;

  QYGenerators.Close;
  QYGenerators.SQL.Clear;
  QYGenerators.SQL.Add('select max(CTE_CODIGO) as MAX_CTE_CODIGO from CTE');
  QYGenerators.Open;
  Edit5.Text:=QYGenerators.FieldByName('MAX_CTE_CODIGO').asString;
end;

procedure TFormCodigosFiscais.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormCodigosFiscais.PngBitBtn1Click(Sender: TObject);
begin
  Close;
end;

procedure TFormCodigosFiscais.PngSpeedButton1Click(Sender: TObject);
var I: Integer;
begin
  I:=StrToInt(InputBox('Alterar Valor','Digite o valor desejado',IntToStr(DM.TBNotasCodigoNOT_CODIGO.Value)));
  if MessageDlg('Deseja realmente alterar o valor para '+IntToStr(I)+'?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    DM.TBNotasCodigo.Edit;
    DM.TBNotasCodigoNOT_CODIGO.Value:=I;
    DM.TBNotasCodigo.Post;
  end;
end;

procedure TFormCodigosFiscais.PngSpeedButton2Click(Sender: TObject);
var I: Integer;
begin
  I:=StrToInt(InputBox('Alterar Valor','Digite o valor desejado',IntToStr(DM2.TBCteCodigoCTE_CODIGO.Value)));
  if MessageDlg('Deseja realmente alterar o valor para '+IntToStr(I)+'?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    DM2.TBCteCodigo.Edit;
    DM2.TBCteCodigoCTE_CODIGO.Value:=I;
    DM2.TBCteCodigo.Post;
  end;
end;

procedure TFormCodigosFiscais.SpeedButton1Click(Sender: TObject);
var I: Integer;
begin
  I:=StrToInt(InputBox('Alterar Valor','Digite o valor desejado',IntToStr(DM.TBNfeCodigoNFE_CODIGO.Value)));
  if MessageDlg('Deseja realmente alterar o valor para '+IntToStr(I)+'?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    DM.TBNfeCodigo.Edit;
    DM.TBNfeCodigoNFE_CODIGO.Value:=I;
    DM.TBNfeCodigo.Post;
  end;
end;

end.

