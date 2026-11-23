unit DeliveryEnderecos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.DBCtrls,
  Vcl.Grids, Vcl.DBGrids, Vcl.Buttons, PngBitBtn, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client,
  FireDAC.Comp.DataSet;

type
  TFormDeliveryEnderecos = class(TForm)
    DBGrid1: TDBGrid;
    DBText29: TDBText;
    Label24: TLabel;
    DBText30: TDBText;
    DSDeliverys: TDataSource;
    PngBitBtn1: TPngBitBtn;
    QYDeliverys: TFDQuery;
    TRDeliverys: TFDTransaction;
    QYDeliverysDLV_BAIRRO: TStringField;
    QYDeliverysDLV_CEP: TStringField;
    QYDeliverysDLV_CIDADE: TStringField;
    QYDeliverysDLV_CIDADECODIGO: TIntegerField;
    QYDeliverysDLV_COMPLEMENTO: TStringField;
    QYDeliverysDLV_ENDERECO: TStringField;
    QYDeliverysDLV_ESTADO: TStringField;
    QYDeliverysDLV_ESTADOCODIGO: TIntegerField;
    QYDeliverysDLV_NUMERO: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure PngBitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormDeliveryEnderecos: TFormDeliveryEnderecos;
  Procurar: Boolean = False;

implementation

{$R *.dfm}

uses DataMod2, DataMod, EnderecosBuscaCEP;

procedure TFormDeliveryEnderecos.DBGrid1DblClick(Sender: TObject);
begin
  if not QYDeliverys.IsEmpty then
  begin
    Procurar:=True;
    Close;
  end;
end;

procedure TFormDeliveryEnderecos.DBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if (Key=#13) and (not QYDeliverys.IsEmpty) then
  begin
    Key:=#0;
    Procurar:=True;
    Close;
  end;
end;

procedure TFormDeliveryEnderecos.FormCreate(Sender: TObject);
begin
  Procurar:=False;
  QYDeliverys.Close;
  QYDeliverys.ParamByName('cliente').AsInteger:=DM2.TBDeliverysDLV_CLIENTE.Value;
  QYDeliverys.Open;
end;

procedure TFormDeliveryEnderecos.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormDeliveryEnderecos.PngBitBtn1Click(Sender: TObject);
begin
  Procurar:=False;
  Close;
  Application.CreateForm(TFormEnderecosBuscaCEP, FormEnderecosBuscaCEP);
  FormEnderecosBuscaCEP.PngBitBtn6.Visible:=True; //mostra o botao que permite utilizar um endereço selecionado.
  FormEnderecosBuscaCEP.ShowModal;
  FormEnderecosBuscaCEP.Free;
  FormEnderecosBuscaCEP:=nil;
end;

end.
