unit DataMod;

interface

uses
  System.SysUtils, System.Classes, IBX.IBDatabase, Data.DB, IBX.IBCustomDataSet, IBX.IBQuery,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf,
  FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async,
  FireDAC.Phys, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.Comp.Client, FireDAC.Comp.DataSet,
  FireDAC.Phys.FB, FireDAC.Phys.FBDef;

type
  TDM = class(TDataModule)
    FDConnection1: TFDConnection;
    QYProdutos: TFDQuery;
    TRProdutos: TFDTransaction;
    QYVendedores: TFDQuery;
    TRVendedores: TFDTransaction;
    QYVendas: TFDQuery;
    TRVendas: TFDTransaction;
    QYEmpresa: TFDQuery;
    TREmpresa: TFDTransaction;
    QYCondicoes: TFDQuery;
    TRCondicoes: TFDTransaction;
    QYCondicoesDIAS: TIntegerField;
    QYClientes: TFDQuery;
    TRClientes: TFDTransaction;
    QYEmpresaEMP_CEP: TStringField;
    QYEmpresaEMP_ESTADO: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
