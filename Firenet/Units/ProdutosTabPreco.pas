unit ProdutosTabPreco;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, Buttons, DBSBtn, ExtCtrls, StdCtrls, Mask, DBCtrls, DB,
  ImgList, PngImageList, PngSpeedButton, System.UITypes, System.ImageList,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFormProdutosTabPreco = class(TForm)
    Panel2: TPanel;
    Bevel4: TBevel;
    dbSBtnSave1: TDBSpeedButton;
    dbSBtnCancel1: TDBSpeedButton;
    SpeedButton5: TPngSpeedButton;
    Bevel7: TBevel;
    SpeedButton1: TPngSpeedButton;
    Bevel1: TBevel;
    MainMenu1: TMainMenu;
    Arquivo1: TMenuItem;
    N1: TMenuItem;
    Fechar1: TMenuItem;
    Navegacao1: TMenuItem;
    SalvarRegistro1: TMenuItem;
    CancelarRegistro1: TMenuItem;
    AtualizarProdutos1: TMenuItem;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    Label10: TLabel;
    DBEdit10: TDBEdit;
    Label11: TLabel;
    DBEdit11: TDBEdit;
    Label12: TLabel;
    DBEdit12: TDBEdit;
    DBText2: TDBText;
    DBText1: TDBText;
    Ajuda1: TMenuItem;
    Ajuda2: TMenuItem;
    SpeedButton2: TPngSpeedButton;
    EditarRegistro1: TMenuItem;
    dbSBtnEdit: TDBSpeedButton;
    PngImageList1: TPngImageList;
    AtualizarProdutossemusarSQL1: TMenuItem;
    Label13: TLabel;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    CheckBox5: TCheckBox;
    CheckBox6: TCheckBox;
    Label14: TLabel;
    TRProdutos: TFDTransaction;
    TBProdutos: TFDQuery;
    TBProdutosPRO_ATUALIZAR: TStringField;
    TBProdutosPRO_CODIGO: TIntegerField;
    TBProdutosPRO_MARGEM: TFMTBCDField;
    TBProdutosPRO_MARGEM1: TFMTBCDField;
    TBProdutosPRO_MARGEM2: TFMTBCDField;
    TBProdutosPRO_MARGEM3: TFMTBCDField;
    TBProdutosPRO_MARGEM4: TFMTBCDField;
    TBProdutosPRO_MARGEM5: TFMTBCDField;
    TBProdutosPRO_MARGEM6: TFMTBCDField;
    TBProdutosPRO_NOME: TStringField;
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
    UPProdutos: TFDUpdateSQL;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Fechar1Click(Sender: TObject);
    procedure AtualizarProdutos1Click(Sender: TObject);
    procedure Ajuda2Click(Sender: TObject);
    procedure AtualizarProdutossemusarSQL1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormProdutosTabPreco: TFormProdutosTabPreco;

implementation
uses DataMod, Funcoes1;

{$R *.dfm}

procedure TFormProdutosTabPreco.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if DM.TBTabPreco.State in [dsInsert, dsEdit] then
  begin
    Action:=caNone;
    MessageDlg('Salve os dados antes de fechar.',mtWarning,[mbOK],0);
  end;
end;

procedure TFormProdutosTabPreco.FormCreate(Sender: TObject);
begin
  Label13.Caption:='';
end;

procedure TFormProdutosTabPreco.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;    
end;

procedure TFormProdutosTabPreco.Fechar1Click(Sender: TObject);
begin
  Close;
end;

procedure TFormProdutosTabPreco.AtualizarProdutos1Click(Sender: TObject);
begin
  if MessageDlg('Isto irá atualizar as tabelas de preços de todos os produtos que estão marcados para atualizar.'+#13#13+'Confirma?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin //quando utilizar porcentagem em instrucoes SQL, passar com as casas decimais. :)
    DM.QYAux.Close;
    DM.QYAux.SQL.Clear;
    DM.QYAux.SQL.Add('update PRODUTOS set ');
    if CheckBox1.Checked then
    begin
      DM.QYAux.SQL.Add(
        'PRO_MARGEM1='+TrocarVirgulaPonto(DM.TBTabPrecoTAB_MARGEM1.AsString)+', '+
        'PRO_TABPRECO1='+QuotedStr(DM.TBTabPrecoTAB_DESCRICAO1.Value)+', '+
        'PRO_PRECO1=cast(PRO_PRECOVENDA+((PRO_PRECOVENDA / 100.00) * '+TrocarVirgulaPonto(DM.TBTabPrecoTAB_MARGEM1.AsString)+') as numeric(18,8)), '
      );
    end;
    if CheckBox2.Checked then
    begin
      DM.QYAux.SQL.Add(
        'PRO_MARGEM2='+TrocarVirgulaPonto(DM.TBTabPrecoTAB_MARGEM2.AsString)+', '+
        'PRO_TABPRECO2='+QuotedStr(DM.TBTabPrecoTAB_DESCRICAO2.Value)+', '+
        'PRO_PRECO2=cast(PRO_PRECOVENDA+((PRO_PRECOVENDA / 100.00) * '+TrocarVirgulaPonto(DM.TBTabPrecoTAB_MARGEM2.AsString)+') as numeric(18,8)), '
      );
    end;
    if CheckBox3.Checked then
    begin
      DM.QYAux.SQL.Add(
        'PRO_MARGEM3='+TrocarVirgulaPonto(DM.TBTabPrecoTAB_MARGEM3.AsString)+', '+
        'PRO_TABPRECO3='+QuotedStr(DM.TBTabPrecoTAB_DESCRICAO3.Value)+', '+
        'PRO_PRECO3=cast(PRO_PRECOVENDA+((PRO_PRECOVENDA / 100.00) * '+TrocarVirgulaPonto(DM.TBTabPrecoTAB_MARGEM3.AsString)+') as numeric(18,8)), '
      );
    end;
    if CheckBox4.Checked then
    begin
      DM.QYAux.SQL.Add(
        'PRO_MARGEM4='+TrocarVirgulaPonto(DM.TBTabPrecoTAB_MARGEM4.AsString)+', '+
        'PRO_TABPRECO4='+QuotedStr(DM.TBTabPrecoTAB_DESCRICAO4.Value)+', '+
        'PRO_PRECO4=cast(PRO_PRECOVENDA+((PRO_PRECOVENDA / 100.00) * '+TrocarVirgulaPonto(DM.TBTabPrecoTAB_MARGEM4.AsString)+') as numeric(18,8)), '
      );
    end;
    if CheckBox5.Checked then
    begin
      DM.QYAux.SQL.Add(
        'PRO_MARGEM5='+TrocarVirgulaPonto(DM.TBTabPrecoTAB_MARGEM5.AsString)+', '+
        'PRO_TABPRECO5='+QuotedStr(DM.TBTabPrecoTAB_DESCRICAO5.Value)+', '+
        'PRO_PRECO5=cast(PRO_PRECOVENDA+((PRO_PRECOVENDA / 100.00) * '+TrocarVirgulaPonto(DM.TBTabPrecoTAB_MARGEM5.AsString)+') as numeric(18,8)), '
      );
    end;
    if CheckBox6.Checked then
    begin
      DM.QYAux.SQL.Add(
        'PRO_MARGEM6='+TrocarVirgulaPonto(DM.TBTabPrecoTAB_MARGEM6.AsString)+', '+
        'PRO_TABPRECO6='+QuotedStr(DM.TBTabPrecoTAB_DESCRICAO6.Value)+', '+
        'PRO_PRECO6=cast(PRO_PRECOVENDA+((PRO_PRECOVENDA / 100.00) * '+TrocarVirgulaPonto(DM.TBTabPrecoTAB_MARGEM6.AsString)+') as numeric(18,8)), '
      );
    end;
    DM.QYAux.SQL.Add('PRO_ATUALIZATABELA=PRO_ATUALIZATABELA'); //só para nao dar erro por causa da última vírgula.
    DM.QYAux.SQL.Add('where PRO_ATUALIZATABELA=''S''');

    //não funciona da forma abaixo com nenhum dos tipos de dados.
    {DM.QYAux.SQL.Add('update PRODUTOS set '+
                     'PRO_MARGEM1=:margem1, PRO_MARGEM2=:margem2, PRO_MARGEM3=:margem3, '+
                     'PRO_MARGEM4=:margem4, PRO_MARGEM5=:margem5, PRO_MARGEM6=:margem6, '+
                     'PRO_TABPRECO1=:desc1, PRO_TABPRECO2=:desc2, PRO_TABPRECO3=:desc3, '+
                     'PRO_TABPRECO4=:desc4, PRO_TABPRECO5=:desc5, PRO_TABPRECO6=:desc6, '+
                     'PRO_PRECO1=cast(PRO_PRECOVENDA+((PRO_PRECOVENDA / 100.00) * :margem1) as numeric(18,8)), '+
                     'PRO_PRECO2=cast(PRO_PRECOVENDA+((PRO_PRECOVENDA / 100.00) * :margem2) as numeric(18,8)), '+
                     'PRO_PRECO3=cast(PRO_PRECOVENDA+((PRO_PRECOVENDA / 100.00) * :margem3) as numeric(18,8)), '+
                     'PRO_PRECO4=cast(PRO_PRECOVENDA+((PRO_PRECOVENDA / 100.00) * :margem4) as numeric(18,8)), '+
                     'PRO_PRECO5=cast(PRO_PRECOVENDA+((PRO_PRECOVENDA / 100.00) * :margem5) as numeric(18,8)), '+
                     'PRO_PRECO6=cast(PRO_PRECOVENDA+((PRO_PRECOVENDA / 100.00) * :margem6) as numeric(18,8)) '+
                     'where PRO_ATUALIZATABELA=''S''');
    QYProdutos.ParamByName('margem1').AsFMTBCD:=DM.TBTabPrecoTAB_MARGEM1.AsExtended;
    QYProdutos.ParamByName('margem2').AsFMTBCD:=DM.TBTabPrecoTAB_MARGEM2.AsExtended;
    QYProdutos.ParamByName('margem3').AsFMTBCD:=DM.TBTabPrecoTAB_MARGEM3.AsExtended;
    QYProdutos.ParamByName('margem4').AsFMTBCD:=DM.TBTabPrecoTAB_MARGEM4.AsExtended;
    QYProdutos.ParamByName('margem5').AsFMTBCD:=DM.TBTabPrecoTAB_MARGEM5.AsExtended;
    QYProdutos.ParamByName('margem6').AsFMTBCD:=DM.TBTabPrecoTAB_MARGEM6.AsExtended;
    QYProdutos.ParamByName('desc1').AsString:=DM.TBTabPrecoTAB_DESCRICAO1.Value;
    QYProdutos.ParamByName('desc2').AsString:=DM.TBTabPrecoTAB_DESCRICAO2.Value;
    QYProdutos.ParamByName('desc3').AsString:=DM.TBTabPrecoTAB_DESCRICAO3.Value;
    QYProdutos.ParamByName('desc4').AsString:=DM.TBTabPrecoTAB_DESCRICAO4.Value;
    QYProdutos.ParamByName('desc5').AsString:=DM.TBTabPrecoTAB_DESCRICAO5.Value;
    QYProdutos.ParamByName('desc6').AsString:=DM.TBTabPrecoTAB_DESCRICAO6.Value;}
    try
      //QYProdutos.ExecSQL;
      DM.QYAux.ExecSQL;

      DM.TBProdutos.Close;
      DM.TBProdutos.Open;
      MessageDlg('Preços atualizados!',mtInformation,[mbOk],0);
    except on exception do
      MessageDlg('Ocorreu um erro ao atualizar as tabelas. Os campos Preço de Custo e Margem devem ser maior que zero.',mtError,[mbOk],0);
    end;
  end;
end;

procedure TFormProdutosTabPreco.AtualizarProdutossemusarSQL1Click(Sender: TObject);
begin
  if MessageDlg('Isto irá atualizar as tabelas de preços de todos os produtos que estão marcados para atualizar.'+#13#13+'Confirma?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    Screen.Cursor:=crHourGlass;
    TBProdutos.DisableControls;
    DM.QYAux.Close;
    DM.QYAux.SQL.Clear;
    DM.QYAux.SQL.Add('select PRO_CODIGO from PRODUTOS where PRO_ATUALIZATABELA=''S'' order by PRO_CODIGO');
    DM.QYAux.Open;
    DM.QYAux.DisableControls;
    DM.QYAux.First;
    while not DM.QYAux.Eof do
    begin
      TBProdutos.Close;
      TBProdutos.ParamByName('codigo').AsInteger:=DM.QYAux.FieldByName('PRO_CODIGO').AsInteger;
      TBProdutos.Open;
      TBProdutos.Edit;
      Label13.Caption:='Atualizando produto '+TBProdutosPRO_CODIGO.Value.ToString+' - '+TBProdutosPRO_NOME.Value;
      Application.ProcessMessages;
      if CheckBox1.Checked then
      begin
        TBProdutosPRO_MARGEM1.Value:=DM.TBTabPrecoTAB_MARGEM1.Value;
        TBProdutosPRO_TABPRECO1.Value:=DM.TBTabPrecoTAB_DESCRICAO1.Value;
        TBProdutosPRO_PRECO1.Value:=TBProdutosPRO_PRECOVENDA.AsExtended + ((TBProdutosPRO_PRECOVENDA.AsExtended / 100.0) * DM.TBTabPrecoTAB_MARGEM1.AsExtended);
      end;
      if CheckBox2.Checked then
      begin
        TBProdutosPRO_MARGEM2.Value:=DM.TBTabPrecoTAB_MARGEM2.Value;
        TBProdutosPRO_TABPRECO2.Value:=DM.TBTabPrecoTAB_DESCRICAO2.Value;
        TBProdutosPRO_PRECO2.Value:=TBProdutosPRO_PRECOVENDA.AsExtended + ((TBProdutosPRO_PRECOVENDA.AsExtended / 100.0) * DM.TBTabPrecoTAB_MARGEM2.AsExtended);
      end;
      if CheckBox3.Checked then
      begin
        TBProdutosPRO_MARGEM3.Value:=DM.TBTabPrecoTAB_MARGEM3.Value;
        TBProdutosPRO_TABPRECO3.Value:=DM.TBTabPrecoTAB_DESCRICAO3.Value;
        TBProdutosPRO_PRECO3.Value:=TBProdutosPRO_PRECOVENDA.AsExtended + ((TBProdutosPRO_PRECOVENDA.AsExtended / 100.0) * DM.TBTabPrecoTAB_MARGEM3.AsExtended);
      end;
      if CheckBox4.Checked then
      begin
        TBProdutosPRO_MARGEM4.Value:=DM.TBTabPrecoTAB_MARGEM4.Value;
        TBProdutosPRO_TABPRECO4.Value:=DM.TBTabPrecoTAB_DESCRICAO4.Value;
        TBProdutosPRO_PRECO4.Value:=TBProdutosPRO_PRECOVENDA.AsExtended + ((TBProdutosPRO_PRECOVENDA.AsExtended / 100.0) * DM.TBTabPrecoTAB_MARGEM4.AsExtended);
      end;
      if CheckBox5.Checked then
      begin
        TBProdutosPRO_MARGEM5.Value:=DM.TBTabPrecoTAB_MARGEM5.Value;
        TBProdutosPRO_TABPRECO5.Value:=DM.TBTabPrecoTAB_DESCRICAO5.Value;
        TBProdutosPRO_PRECO5.Value:=TBProdutosPRO_PRECOVENDA.AsExtended + ((TBProdutosPRO_PRECOVENDA.AsExtended / 100.0) * DM.TBTabPrecoTAB_MARGEM5.AsExtended);
      end;
      if CheckBox6.Checked then
      begin
        TBProdutosPRO_MARGEM6.Value:=DM.TBTabPrecoTAB_MARGEM6.Value;
        TBProdutosPRO_TABPRECO6.Value:=DM.TBTabPrecoTAB_DESCRICAO6.Value;
        TBProdutosPRO_PRECO6.Value:=TBProdutosPRO_PRECOVENDA.AsExtended + ((TBProdutosPRO_PRECOVENDA.AsExtended / 100.0) * DM.TBTabPrecoTAB_MARGEM6.AsExtended);
      end;
      TBProdutos.Post;
      DM.QYAux.Next;
    end;
    DM.QYAux.EnableControls;
    DM.QYAux.Close;
    TBProdutos.EnableControls;

    DM.TBProdutos.Close;
    DM.TBProdutos.Open;

    Screen.Cursor:=crDefault;
    Label13.Caption:='Atualização concluída.';
    MessageDlg('Atualização concluída.',mtInformation,[mbOk],0);
    Label13.Caption:='';
  end;
end;

procedure TFormProdutosTabPreco.Ajuda2Click(Sender: TObject);
begin
  MostrarAjuda('');
end;

end.
