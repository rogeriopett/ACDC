unit MdfeDocumentos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.Mask,
  Vcl.ComCtrls, Vcl.Buttons, PngBitBtn, Vcl.ExtCtrls, PngSpeedButton;

type
  TFormMdfeDocumentos = class(TForm)
    Bevel1: TBevel;
    Label12: TLabel;
    BitBtn1: TPngBitBtn;
    BitBtn2: TPngBitBtn;
    DBComboBox1: TDBComboBox;
    Label11: TLabel;
    Label27: TLabel;
    DBEdit11: TDBEdit;
    DBEdit24: TDBEdit;
    Label1: TLabel;
    DBText1: TDBText;
    SpeedButton17: TPngSpeedButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure DBComboBox1Change(Sender: TObject);
    procedure SpeedButton17Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormMdfeDocumentos: TFormMdfeDocumentos;

implementation
uses DataMod2, DB, ConhecimentosLoc, NfeLoc, MdfeLoc;
{$R *.dfm}

procedure TFormMdfeDocumentos.BitBtn1Click(Sender: TObject);
begin
  DM2.TBMdfeDocs.Post;
  Close;
end;

procedure TFormMdfeDocumentos.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TFormMdfeDocumentos.DBComboBox1Change(Sender: TObject);
begin
{  case DBComboBox1.ItemIndex of
    00: begin DBEdit24.Visible:=False; Label27.Caption:=''; end;
    01: begin DBEdit24.Visible:=True;  Label27.Caption:='Segundo Código Barras:'; end;
    02: begin DBEdit24.Visible:=True;  Label27.Caption:='Segundo Código Barras:'; end;
  end;}
end;

procedure TFormMdfeDocumentos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if DM2.TBMdfeDocs.State in [dsInsert, dsEdit] then
  DM2.TBMdfeDocs.Cancel;
end;

procedure TFormMdfeDocumentos.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormMdfeDocumentos.SpeedButton17Click(Sender: TObject);
begin
  if DBComboBox1.Text='CTE' then
  begin
    Application.CreateForm(TFormConhecimentosLoc, FormConhecimentosLoc);
    FormConhecimentosLoc.ShowModal;
    if ConhecimentosLoc.Procurar then
    begin
      DM2.TBMdfeDocsMFD_CHAVEACESSO.Value:=FormConhecimentosLoc.QYCteCTE_CHAVEACESSO.Value;
    end;
    FormConhecimentosLoc.Free;
    FormConhecimentosLoc:=nil;
  end;

  if DBComboBox1.Text='NFE' then
  begin
    Application.CreateForm(TFormNfeLoc, FormNfeLoc);
    FormNfeLoc.ShowModal;
    if NfeLoc.Procurar then
    begin
      DM2.TBMdfeDocsMFD_CHAVEACESSO.Value:=FormNfeLoc.QYNfeNFE_CHAVEACESSO.Value;
    end;
    FormNfeLoc.Free;
    FormNfeLoc:=nil;
  end;

  if DBComboBox1.Text='MDFE' then
  begin
    Application.CreateForm(TFormMdfeLoc, FormMdfeLoc);
    FormMdfeLoc.ShowModal;
    if MdfeLoc.Procurar then
    begin
      DM2.TBMdfeDocsMFD_CHAVEACESSO.Value:=FormMdfeLoc.QYMdfeMDF_CHAVEACESSO.Value;
    end;
    FormMdfeLoc.Free;
    FormMdfeLoc:=nil;
  end;
end;

end.
