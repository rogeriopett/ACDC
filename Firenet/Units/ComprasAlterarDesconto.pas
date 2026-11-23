unit ComprasAlterarDesconto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, System.UITypes, Vcl.StdCtrls, Vcl.Buttons, PngBitBtn,
  Vcl.ExtCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Data.DB;

type
  TFormComprasAlterarDesconto = class(TForm)
    Bevel1: TBevel;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    BitBtn1: TPngBitBtn;
    BitBtn2: TPngBitBtn;
    TRComprasItens: TFDTransaction;
    QYComprasItens: TFDQuery;
    QYComprasItensVALORTOTALBRUTO: TFMTBCDField;
    QYComprasItensVALORFRETE: TFMTBCDField;
    QYComprasItensVALORSEGURO: TFMTBCDField;
    QYComprasItensVALORACESSORIAS: TFMTBCDField;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormComprasAlterarDesconto: TFormComprasAlterarDesconto;
  DescontoEmValor: Boolean=False;

implementation
uses DataMod;
{$R *.dfm}

procedure TFormComprasAlterarDesconto.BitBtn1Click(Sender: TObject);
var Porcentagem: Double;
begin
  if MessageDlg('Alterar o desconto?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    Porcentagem:=StrToFloat(Edit1.Text);
    if DescontoEmValor then
    begin
      QYComprasItens.Close;
      QYComprasItens.ParamByName('codigo').AsInteger:=DM.TBComprasCOM_CODIGO.Value;
      QYComprasItens.Open;
      //Porcentagem:=(100.0/(QYVendasItensVALORTOTALBRUTO.Value+
      //                     QYVendasItensVALORFRETE.Value+
      //                     QYVendasItensVALORSEGURO.Value+
      //                     QYVendasItensVALORACESSORIAS.Value))*StrToFloat(Edit1.Text);
      Porcentagem:=(100.0 / (QYComprasItensVALORTOTALBRUTO.AsExtended)) * StrToFloat(Edit1.Text); //substituido a linha de cima por esta. Calcula a porcentagem.
      QYComprasItens.Close;
    end;
    DM.TBComprasItens.DisableControls;
    DM.TBCompras.DisableControls;
    DM.TBComprasItens.First;
    DM.CalcularTotais:=False; //ItensAfterPost checa se deve calcular os totais da capa da NFe.
    while not DM.TBComprasItens.Eof do
    begin
      DM.TBComprasItens.Edit;
      //if Porcentagem > DM.TBVendasItensVEI_DESCMAX.Value then //não tem esse campo em compras e tb não faz sentido limitar o desconto para compras.
      //DM.TBComprasItensCOI_DESCPORC.Value:=DM.TBComprasItensCOI_DESCMAX.Value else
      DM.TBComprasItensCOI_DESCPORC.Value:=Porcentagem;
      DM.TBComprasItens.Post;
      DM.TBComprasItens.Next;
    end;
    DM.CalcularTotais:=True;
    DM.TBCompras.EnableControls;
    DM.TBComprasItens.EnableControls;
    DM.CalcularTotaisCompra(False);
    Close;
  end;
end;

procedure TFormComprasAlterarDesconto.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TFormComprasAlterarDesconto.Edit1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key=#46 then Key:=#44;
  if not CharInSet(Key,['0'..'9',#8,#13,#44]) then Key:=#0;
end;

procedure TFormComprasAlterarDesconto.FormCreate(Sender: TObject);
begin
  DescontoEmValor:=False;
end;

procedure TFormComprasAlterarDesconto.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

end.

