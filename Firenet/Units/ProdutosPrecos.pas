unit ProdutosPrecos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, Vcl.Buttons, PngSpeedButton, PngBitBtn, Data.DB,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client, FireDAC.Comp.DataSet;

type
  TFormProdutosPrecos = class(TForm)
    Label36: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    Label50: TLabel;
    Label51: TLabel;
    Label53: TLabel;
    DBEdit16: TDBEdit;
    DBEdit17: TDBEdit;
    DBEdit18: TDBEdit;
    DBEdit19: TDBEdit;
    DBEdit20: TDBEdit;
    DBEdit21: TDBEdit;
    Label7: TLabel;
    Label55: TLabel;
    Label27: TLabel;
    Label81: TLabel;
    DBEdit56: TDBEdit;
    DBEdit85: TDBEdit;
    Label98: TLabel;
    DBEdit84: TDBEdit;
    PngSpeedButton7: TPngSpeedButton;
    Label37: TLabel;
    Label40: TLabel;
    Label43: TLabel;
    Label46: TLabel;
    Label49: TLabel;
    Label52: TLabel;
    Bevel1: TBevel;
    PngBitBtn1: TPngBitBtn;
    BitBtn2: TPngBitBtn;
    Label1: TLabel;
    DBText1: TDBText;
    DBText2: TDBText;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DSProdutos: TDataSource;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    DBComboBox1: TDBComboBox;
    Label33: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    TBProdutos: TFDQuery;
    TRProdutos: TFDTransaction;
    TBProdutosPRO_ATUALIZAR: TStringField;
    TBProdutosPRO_ATUALIZATABELA: TStringField;
    TBProdutosPRO_DTATUALIZACAO: TDateField;
    TBProdutosPRO_CODIGO: TIntegerField;
    TBProdutosPRO_MARGEM: TFMTBCDField;
    TBProdutosPRO_MARGEM1: TFMTBCDField;
    TBProdutosPRO_MARGEM2: TFMTBCDField;
    TBProdutosPRO_MARGEM3: TFMTBCDField;
    TBProdutosPRO_MARGEM4: TFMTBCDField;
    TBProdutosPRO_MARGEM5: TFMTBCDField;
    TBProdutosPRO_MARGEM6: TFMTBCDField;
    TBProdutosPRO_MARKUP: TFMTBCDField;
    TBProdutosPRO_MARKUPCODIGO: TIntegerField;
    TBProdutosPRO_NOME: TStringField;
    TBProdutosPRO_PRECOCUSTO: TFMTBCDField;
    TBProdutosPRO_PRECOCUSTOCOMP: TFMTBCDField;
    TBProdutosPRO_PRECOVENDA: TFMTBCDField;
    TBProdutosPRO_PRECO1: TFMTBCDField;
    TBProdutosPRO_PRECO2: TFMTBCDField;
    TBProdutosPRO_PRECO3: TFMTBCDField;
    TBProdutosPRO_PRECO4: TFMTBCDField;
    TBProdutosPRO_PRECO5: TFMTBCDField;
    TBProdutosPRO_PRECO6: TFMTBCDField;
    TBProdutosPRO_TABPRECO1: TStringField;
    TBProdutosPRO_TABPRECO2: TStringField;
    TBProdutosPRO_TABPRECO3: TStringField;
    TBProdutosPRO_TABPRECO4: TStringField;
    TBProdutosPRO_TABPRECO5: TStringField;
    TBProdutosPRO_TABPRECO6: TStringField;
    TBProdutosPRO_USUARIO: TStringField;
    UPProdutos: TFDUpdateSQL;
    procedure DBEdit34KeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn2Click(Sender: TObject);
    procedure PngBitBtn1Click(Sender: TObject);
    procedure DBEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit2Exit(Sender: TObject);
    procedure DBEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit3Exit(Sender: TObject);
    procedure DBEdit3KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit10KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit11KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit12KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit13KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit14KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit15KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit10Exit(Sender: TObject);
    procedure DBEdit11Exit(Sender: TObject);
    procedure DBEdit12Exit(Sender: TObject);
    procedure DBEdit13Exit(Sender: TObject);
    procedure DBEdit14Exit(Sender: TObject);
    procedure DBEdit15Exit(Sender: TObject);
    procedure DBComboBox1Change(Sender: TObject);
    procedure PngSpeedButton7Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBEdit1Exit(Sender: TObject);
  private
    { Private declarations }
    procedure CalcularPrecos();
  public
    { Public declarations }
    Produto: Integer;
  end;

var
  FormProdutosPrecos: TFormProdutosPrecos;

implementation
uses DataMod, Funcoes1, MarkupsLoc;
{$R *.dfm}

procedure TFormProdutosPrecos.CalcularPrecos;
begin
  //Atualiza os preço de venda.
  if DM.TBParametrosPAR_USARMARKUP.Value='S' then
  begin
    if (TBProdutosPRO_PRECOCUSTO.Value <> 0) and (TBProdutosPRO_MARKUP.Value <> 0) then
    begin
      TBProdutosPRO_PRECOVENDA.Value:=Decimais(TBProdutosPRO_PRECOCUSTO.AsExtended/TBProdutosPRO_MARKUP.AsExtended,8);
      TBProdutosPRO_MARGEM.Value:=Decimais(((TBProdutosPRO_PRECOVENDA.AsExtended*100.00)/TBProdutosPRO_PRECOCUSTO.AsExtended)-100,8);
    end else
    begin
      TBProdutosPRO_PRECOVENDA.Value:=0;
      TBProdutosPRO_MARGEM.Value:=0;
    end;
  end else
  TBProdutosPRO_PRECOVENDA.Value:=Decimais((TBProdutosPRO_PRECOCUSTO.AsExtended)+((TBProdutosPRO_PRECOCUSTO.AsExtended/100.00)*TBProdutosPRO_MARGEM.AsExtended),8);

  //Atualiza os preços das tabelas de vendas.
  TBProdutosPRO_PRECO1.Value:=Decimais(TBProdutosPRO_PRECOVENDA.AsExtended + ((TBProdutosPRO_PRECOVENDA.AsExtended/100.00)*TBProdutosPRO_MARGEM1.AsExtended),8);
  TBProdutosPRO_PRECO2.Value:=Decimais(TBProdutosPRO_PRECOVENDA.AsExtended + ((TBProdutosPRO_PRECOVENDA.AsExtended/100.00)*TBProdutosPRO_MARGEM2.AsExtended),8);
  TBProdutosPRO_PRECO3.Value:=Decimais(TBProdutosPRO_PRECOVENDA.AsExtended + ((TBProdutosPRO_PRECOVENDA.AsExtended/100.00)*TBProdutosPRO_MARGEM3.AsExtended),8);
  TBProdutosPRO_PRECO4.Value:=Decimais(TBProdutosPRO_PRECOVENDA.AsExtended + ((TBProdutosPRO_PRECOVENDA.AsExtended/100.00)*TBProdutosPRO_MARGEM4.AsExtended),8);
  TBProdutosPRO_PRECO5.Value:=Decimais(TBProdutosPRO_PRECOVENDA.AsExtended + ((TBProdutosPRO_PRECOVENDA.AsExtended/100.00)*TBProdutosPRO_MARGEM5.AsExtended),8);
  TBProdutosPRO_PRECO6.Value:=Decimais(TBProdutosPRO_PRECOVENDA.AsExtended + ((TBProdutosPRO_PRECOVENDA.AsExtended/100.00)*TBProdutosPRO_MARGEM6.AsExtended),8);
  //deveria-se atualizar os precos do produto composto, conforme a soma dos precos dos componentes do produto. Ainda não fiz isso!.
end;

procedure TFormProdutosPrecos.FormCreate(Sender: TObject);
begin
  if DM.TBParametrosPAR_USARMARKUP.Value='S' then
  begin
    Label4.Caption:='O cálculo do preço de venda está usando o método CUSTO / MARKUP';
    PngSpeedButton7.Enabled:=True;
    DBEdit2.Enabled:=False;
    DBEdit2.Color:=clBtnFace;
  end else
  begin
    Label4.Caption:='O cálculo do preço de venda está usando o método CUSTO + MARGEM';
    PngSpeedButton7.Enabled:=False;
    DBEdit2.Enabled:=True;
    DBEdit2.Color:=clWindow;
  end;
end;

procedure TFormProdutosPrecos.DBEdit2Exit(Sender: TObject);
begin
  //recalcula o preco de venda de acordo com a margem digitada.
  if DM.TBParametrosPAR_USARMARKUP.Value='S' then
  TBProdutosPRO_PRECOVENDA.Value:=Decimais(TBProdutosPRO_PRECOCUSTO.AsExtended/TBProdutosPRO_MARKUP.AsExtended,2) else
  TBProdutosPRO_PRECOVENDA.Value:=Decimais(TBProdutosPRO_PRECOCUSTO.AsExtended+((TBProdutosPRO_PRECOCUSTO.AsExtended/100.00)*TBProdutosPRO_MARGEM.AsExtended),2);

  CalcularPrecos;
end;

procedure TFormProdutosPrecos.DBEdit3Exit(Sender: TObject);
begin
  //recalcula a margem de acordo com o preco de venda digitado.
  if TBProdutosPRO_PRECOCUSTO.Value <> 0 then
  TBProdutosPRO_MARGEM.Value:=Decimais(((TBProdutosPRO_PRECOVENDA.AsExtended*100.00)/TBProdutosPRO_PRECOCUSTO.AsExtended)-100,8) else
  TBProdutosPRO_MARGEM.Value:=0;

  CalcularPrecos;
end;

procedure TFormProdutosPrecos.PngBitBtn1Click(Sender: TObject);
begin
  if MessageDlg('Tem certeza de que deseja atualizar os preços de venda pra este produto?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    TBProdutosPRO_ATUALIZAR.Value:='S';
    TBProdutosPRO_DTATUALIZACAO.Value:=DM.ServerDate;
    TBProdutosPRO_USUARIO.Value:=DM.UsuarioLogin;
    CalcularPrecos;
    TBProdutos.Post;

    DM.TBProdutos.Close;
    DM.TBProdutos.ParamByName('codigo').AsInteger:=Produto;
    DM.TBProdutos.Open;

    Close;
  end;
end;

procedure TFormProdutosPrecos.PngSpeedButton7Click(Sender: TObject);
begin
  Application.CreateForm(TFormMarkupsLoc, FormMarkupsLoc);
  FormMarkupsLoc.ShowModal;
  if MarkupsLoc.Procurar then
  begin
    TBProdutos.Edit;
    TBProdutosPRO_MARKUP.Value:=FormMarkupsLoc.QYMarkupsMKP_MARKUP.Value;
    TBProdutosPRO_MARKUPCODIGO.Value:=FormMarkupsLoc.QYMarkupsMKP_CODIGO.Value;
    CalcularPrecos;
  end;
  FormMarkupsLoc.Free;
  FormMarkupsLoc:=nil;
end;

procedure TFormProdutosPrecos.BitBtn2Click(Sender: TObject);
begin
  TBProdutos.Cancel;
  Close;
end;

procedure TFormProdutosPrecos.DBComboBox1Change(Sender: TObject);
begin
  //if TBProdutosPRO_ATUALIZATABELA.Value='S' then //nao funcionou com essa linha
  if DBComboBox1.Text='S' then
  begin
    DBEdit10.ReadOnly:=True; DBEdit10.Color:=clBtnFace;
    DBEdit11.ReadOnly:=True; DBEdit11.Color:=clBtnFace;
    DBEdit12.ReadOnly:=True; DBEdit12.Color:=clBtnFace;
    DBEdit13.ReadOnly:=True; DBEdit13.Color:=clBtnFace;
    DBEdit14.ReadOnly:=True; DBEdit14.Color:=clBtnFace;
    DBEdit15.ReadOnly:=True; DBEdit15.Color:=clBtnFace;
    DBEdit16.ReadOnly:=True; DBEdit16.Color:=clBtnFace;
    DBEdit17.ReadOnly:=True; DBEdit17.Color:=clBtnFace;
    DBEdit18.ReadOnly:=True; DBEdit18.Color:=clBtnFace;
    DBEdit19.ReadOnly:=True; DBEdit19.Color:=clBtnFace;
    DBEdit20.ReadOnly:=True; DBEdit20.Color:=clBtnFace;
    DBEdit21.ReadOnly:=True; DBEdit21.Color:=clBtnFace;
    TBProdutosPRO_TABPRECO1.Value:=DM.TBTabPrecoTAB_DESCRICAO1.Value;
    TBProdutosPRO_TABPRECO2.Value:=DM.TBTabPrecoTAB_DESCRICAO2.Value;
    TBProdutosPRO_TABPRECO3.Value:=DM.TBTabPrecoTAB_DESCRICAO3.Value;
    TBProdutosPRO_TABPRECO4.Value:=DM.TBTabPrecoTAB_DESCRICAO4.Value;
    TBProdutosPRO_TABPRECO5.Value:=DM.TBTabPrecoTAB_DESCRICAO5.Value;
    TBProdutosPRO_TABPRECO6.Value:=DM.TBTabPrecoTAB_DESCRICAO6.Value;
    TBProdutosPRO_MARGEM1.Value:=DM.TBTabPrecoTAB_MARGEM1.Value;
    TBProdutosPRO_MARGEM2.Value:=DM.TBTabPrecoTAB_MARGEM2.Value;
    TBProdutosPRO_MARGEM3.Value:=DM.TBTabPrecoTAB_MARGEM3.Value;
    TBProdutosPRO_MARGEM4.Value:=DM.TBTabPrecoTAB_MARGEM4.Value;
    TBProdutosPRO_MARGEM5.Value:=DM.TBTabPrecoTAB_MARGEM5.Value;
    TBProdutosPRO_MARGEM6.Value:=DM.TBTabPrecoTAB_MARGEM6.Value;
    CalcularPrecos;
  end else
  //if TBProdutosPRO_ATUALIZATABELA.Value='N' then //nao funcionou com essa linha
  if DBComboBox1.Text='N' then
  begin
    DBEdit10.ReadOnly:=False; DBEdit10.Color:=clWindow;
    DBEdit11.ReadOnly:=False; DBEdit11.Color:=clWindow;
    DBEdit12.ReadOnly:=False; DBEdit12.Color:=clWindow;
    DBEdit13.ReadOnly:=False; DBEdit13.Color:=clWindow;
    DBEdit14.ReadOnly:=False; DBEdit14.Color:=clWindow;
    DBEdit15.ReadOnly:=False; DBEdit15.Color:=clWindow;
    DBEdit16.ReadOnly:=False; DBEdit16.Color:=clWindow;
    DBEdit17.ReadOnly:=False; DBEdit17.Color:=clWindow;
    DBEdit18.ReadOnly:=False; DBEdit18.Color:=clWindow;
    DBEdit19.ReadOnly:=False; DBEdit19.Color:=clWindow;
    DBEdit20.ReadOnly:=False; DBEdit20.Color:=clWindow;
    DBEdit21.ReadOnly:=False; DBEdit21.Color:=clWindow;
  end;
end;

procedure TFormProdutosPrecos.DBEdit10Exit(Sender: TObject);
begin
  CalcularPrecos;
end;

procedure TFormProdutosPrecos.DBEdit11Exit(Sender: TObject);
begin
  CalcularPrecos;
end;

procedure TFormProdutosPrecos.DBEdit12Exit(Sender: TObject);
begin
  CalcularPrecos;
end;

procedure TFormProdutosPrecos.DBEdit13Exit(Sender: TObject);
begin
  CalcularPrecos;
end;

procedure TFormProdutosPrecos.DBEdit14Exit(Sender: TObject);
begin
  CalcularPrecos;
end;

procedure TFormProdutosPrecos.DBEdit15Exit(Sender: TObject);
begin
  CalcularPrecos;
end;

procedure TFormProdutosPrecos.DBEdit10KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#46 then Key:=#44; //troca ponto por virgula.
end;

procedure TFormProdutosPrecos.DBEdit11KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#46 then Key:=#44; //troca ponto por virgula.
end;

procedure TFormProdutosPrecos.DBEdit12KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#46 then Key:=#44; //troca ponto por virgula.
end;

procedure TFormProdutosPrecos.DBEdit13KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#46 then Key:=#44; //troca ponto por virgula.
end;

procedure TFormProdutosPrecos.DBEdit14KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#46 then Key:=#44; //troca ponto por virgula.
end;

procedure TFormProdutosPrecos.DBEdit15KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#46 then Key:=#44; //troca ponto por virgula.
end;

procedure TFormProdutosPrecos.DBEdit1Exit(Sender: TObject);
begin
  CalcularPrecos;
end;

procedure TFormProdutosPrecos.DBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#46 then Key:=#44; //troca ponto por virgula.
end;

procedure TFormProdutosPrecos.DBEdit2KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#46 then Key:=#44; //troca ponto por virgula.
end;

procedure TFormProdutosPrecos.DBEdit34KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#46 then Key:=#44; //troca ponto por virgula.
end;

procedure TFormProdutosPrecos.DBEdit3KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#46 then Key:=#44; //troca ponto por virgula.
end;

procedure TFormProdutosPrecos.FormShow(Sender: TObject);
begin
  DBComboBox1Change(Self);
end;

end.
