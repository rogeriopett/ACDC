unit ProdutosDescontoMaximo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ImgList, PngImageList, DB, Menus, StdCtrls, Buttons,
  PngSpeedButton, System.UITypes, System.ImageList, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.Client, FireDAC.Comp.DataSet;

type
  TFormProdutosDescontoMaximo = class(TForm)
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label3: TLabel;
    SpeedButton2: TPngSpeedButton;
    SpeedButton3: TPngSpeedButton;
    Label1: TLabel;
    Edit1: TEdit;
    ComboBox1: TComboBox;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit2: TEdit;
    Edit5: TEdit;
    MainMenu1: TMainMenu;
    Arquivo1: TMenuItem;
    AtualizarProdutos1: TMenuItem;
    N1: TMenuItem;
    Fechar1: TMenuItem;
    Ajuda1: TMenuItem;
    Ajuda2: TMenuItem;
    PngImageList1: TPngImageList;
    Panel2: TPanel;
    Bevel4: TBevel;
    SpeedButton5: TPngSpeedButton;
    Bevel7: TBevel;
    SpeedButton1: TPngSpeedButton;
    PngSpeedButton1: TPngSpeedButton;
    QYProdutos: TFDQuery;
    TRProdutos: TFDTransaction;
    procedure Fechar1Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Edit3Exit(Sender: TObject);
    procedure Edit3KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton2Click(Sender: TObject);
    procedure Edit2Exit(Sender: TObject);
    procedure Edit2KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton3Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure ComboBox1Change(Sender: TObject);
    procedure AtualizarProdutos1Click(Sender: TObject);
    procedure Ajuda2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Edit3Enter(Sender: TObject);
    procedure Edit2Enter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormProdutosDescontoMaximo: TFormProdutosDescontoMaximo;

implementation
uses DataMod, Funcoes1, DataModSearch, FuncoesFirenet;
{$R *.dfm}

procedure TFormProdutosDescontoMaximo.Ajuda2Click(Sender: TObject);
begin
  MostrarAjuda('');
end;

procedure TFormProdutosDescontoMaximo.AtualizarProdutos1Click(Sender: TObject);
begin
  case ComboBox1.ItemIndex of
    00: begin
          if MessageDlg('Atualizar o campo "Desc. Máximo %" de todos os produtos?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
          begin
            DM.TBProdutos.Close;

            QYProdutos.Close;
            QYProdutos.SQL.Clear;
            QYProdutos.SQL.Add('update PRODUTOS set PRO_DESCMAX='+Edit1.Text+';');
            QYProdutos.ExecSQL;

            DM.TBProdutos.Open;
            MessageDlg('Atualização OK.',mtInformation,[mbOk],0);
          end;
        end;
    01: begin
          AbortIf(Trim(Edit5.Text)='','Informe o grupo desejado.');

          if MessageDlg('Atualizar o campo "Desc. Máximo %" do grupo '+Edit5.Text+'?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
          begin
            DM.TBProdutos.Close;

            QYProdutos.Close;
            QYProdutos.SQL.Clear;
            QYProdutos.SQL.Add('update PRODUTOS set PRO_DESCMAX='+Edit1.Text+' where PRO_GRUPO='+Edit2.Text);
            QYProdutos.ExecSQL;

            DM.TBProdutos.Open;
            MessageDlg('Atualização OK.',mtInformation,[mbOk],0);
          end;
        end;
    02: begin
          AbortIf(Trim(Edit4.Text)='','Informe a família desejada.');

          if MessageDlg('Atualizar o campo "Desc. Máximo %" da família '+Edit4.Text+'?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
          begin
            DM.TBProdutos.Close;

            QYProdutos.Close;
            QYProdutos.SQL.Clear;
            QYProdutos.SQL.Add('update PRODUTOS set PRO_DESCMAX='+Edit1.Text+' where PRO_FAMILIA='+Edit3.Text);
            QYProdutos.ExecSQL;

            DM.TBProdutos.Open;
            MessageDlg('Atualização OK.',mtInformation,[mbOk],0);
          end;
        end;
  end;
end;

procedure TFormProdutosDescontoMaximo.ComboBox1Change(Sender: TObject);
begin
  case ComboBox1.ItemIndex of
    00: begin
          Edit3.Enabled:=False;
          SpeedButton2.Enabled:=False;
          Edit2.Enabled:=False;
          SpeedButton3.Enabled:=False;
        end;
    01: begin
          Edit3.Enabled:=False;
          SpeedButton2.Enabled:=False;
          Edit2.Enabled:=True;
          SpeedButton3.Enabled:=True;
        end;
    02: begin
          Edit3.Enabled:=True;
          SpeedButton2.Enabled:=True;
          Edit2.Enabled:=False;
          SpeedButton3.Enabled:=False;
        end;
  end;
end;

procedure TFormProdutosDescontoMaximo.Edit1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13,#45]) then Key:=#0;
end;

procedure TFormProdutosDescontoMaximo.Edit2Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TEdit).Text;
end;

procedure TFormProdutosDescontoMaximo.Edit2Exit(Sender: TObject);
begin
  LocGruposExit(Edit2,Edit5);
end;

procedure TFormProdutosDescontoMaximo.Edit2KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton3.Click;
end;

procedure TFormProdutosDescontoMaximo.Edit2KeyPress(Sender: TObject;
  var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormProdutosDescontoMaximo.Edit3Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TEdit).Text;
end;

procedure TFormProdutosDescontoMaximo.Edit3Exit(Sender: TObject);
begin
  LocFamiliasExit(Edit3,Edit4);
end;

procedure TFormProdutosDescontoMaximo.Edit3KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton2.Click;
end;

procedure TFormProdutosDescontoMaximo.Edit3KeyPress(Sender: TObject;
  var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormProdutosDescontoMaximo.Fechar1Click(Sender: TObject);
begin
  Close;
end;

procedure TFormProdutosDescontoMaximo.FormCreate(Sender: TObject);
begin
  ComboBox1.ItemIndex:=0;
  Edit1.Text:='10';
end;

procedure TFormProdutosDescontoMaximo.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormProdutosDescontoMaximo.SpeedButton2Click(Sender: TObject);
begin
  LocFamiliasBotao(Edit3,Edit4);
end;

procedure TFormProdutosDescontoMaximo.SpeedButton3Click(Sender: TObject);
begin
  LocGruposBotao(Edit2,Edit5);
end;

end.
