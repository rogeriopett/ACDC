unit ProdutosPrecosReajustar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, DBSBtn, ExtCtrls, Menus, StdCtrls, DB, Mask, DBCtrls,
  ComCtrls, PngSpeedButton, ImgList, PngImageList, System.ImageList, System.UITypes,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.Client, FireDAC.Comp.DataSet;

type
  TFormProdutosPrecosReajustar = class(TForm)
    MainMenu1: TMainMenu;
    Arquivo1: TMenuItem;
    AtualizarProdutos1: TMenuItem;
    N1: TMenuItem;
    Fechar1: TMenuItem;
    Panel2: TPanel;
    Bevel4: TBevel;
    SpeedButton5: TPngSpeedButton;
    Bevel7: TBevel;
    SpeedButton1: TPngSpeedButton;
    Edit1: TEdit;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    ComboBox1: TComboBox;
    Label3: TLabel;
    Edit3: TEdit;
    Edit4: TEdit;
    SpeedButton2: TPngSpeedButton;
    Edit2: TEdit;
    Edit5: TEdit;
    SpeedButton3: TPngSpeedButton;
    Label1: TLabel;
    PngImageList1: TPngImageList;
    Ajuda1: TMenuItem;
    Ajuda2: TMenuItem;
    PngSpeedButton1: TPngSpeedButton;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    QYProdutos: TFDQuery;
    TRProdutos: TFDTransaction;
    procedure Fechar1Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure Edit2Exit(Sender: TObject);
    procedure Edit2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit3Exit(Sender: TObject);
    procedure Edit3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure AtualizarProdutos1Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure Ajuda2Click(Sender: TObject);
    procedure Edit3Enter(Sender: TObject);
    procedure Edit2Enter(Sender: TObject);
  private
    { Private declarations }
    procedure AtualizarProdutosTabPreco;
  public
    { Public declarations }
  end;

var
  FormProdutosPrecosReajustar: TFormProdutosPrecosReajustar;

implementation
uses DataMod, Funcoes1, DataModSearch, FuncoesFirenet;
{$R *.dfm}

procedure TFormProdutosPrecosReajustar.Fechar1Click(Sender: TObject);
begin
  Close;
end;

procedure TFormProdutosPrecosReajustar.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormProdutosPrecosReajustar.FormCreate(Sender: TObject);
begin
  ComboBox1.ItemIndex:=0;
  Edit1.Text:='10';
end;

procedure TFormProdutosPrecosReajustar.ComboBox1Change(Sender: TObject);
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

procedure TFormProdutosPrecosReajustar.Edit2Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TEdit).Text;
end;

procedure TFormProdutosPrecosReajustar.Edit2Exit(Sender: TObject);
begin
  LocGruposExit(Edit2,Edit5);
end;

procedure TFormProdutosPrecosReajustar.Edit2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton3.Click;
end;

procedure TFormProdutosPrecosReajustar.Edit2KeyPress(Sender: TObject;
  var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormProdutosPrecosReajustar.Edit1KeyPress(Sender: TObject;
  var Key: Char);
begin
  //if Key=#46 then Key:=#44; //troca ponto por virgula.
  if not CharInSet(Key,['0'..'9',#8,#13,#45,#46]) then Key:=#0;
  //45=sinal de menos, 44=virgula, 46=ponto.
end;

procedure TFormProdutosPrecosReajustar.Edit3Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TEdit).Text;
end;

procedure TFormProdutosPrecosReajustar.Edit3Exit(Sender: TObject);
begin
  LocFamiliasExit(Edit3,Edit4);
end;

procedure TFormProdutosPrecosReajustar.Edit3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton2.Click;
end;

procedure TFormProdutosPrecosReajustar.Edit3KeyPress(Sender: TObject;
  var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormProdutosPrecosReajustar.Ajuda2Click(Sender: TObject);
begin
  MostrarAjuda('');
end;

procedure TFormProdutosPrecosReajustar.AtualizarProdutosTabPreco;
begin
  QYProdutos.SQL.Clear;
  QYProdutos.SQL.Add('update PRODUTOS set '+
                     'PRO_MARGEM1=:margem1, '+
                     'PRO_MARGEM2=:margem2, '+
                     'PRO_MARGEM3=:margem3, '+
                     'PRO_MARGEM4=:margem4, '+
                     'PRO_MARGEM5=:margem5, '+
                     'PRO_MARGEM6=:margem6, '+
                     'PRO_TABPRECO1=:desc1, '+
                     'PRO_TABPRECO2=:desc2, '+
                     'PRO_TABPRECO3=:desc3, '+
                     'PRO_TABPRECO4=:desc4, '+
                     'PRO_TABPRECO5=:desc5, '+
                     'PRO_TABPRECO6=:desc6, '+
                     'PRO_PRECO1=PRO_PRECOVENDA+((PRO_PRECOVENDA / 100.00) * :margem1), '+
                     'PRO_PRECO2=PRO_PRECOVENDA+((PRO_PRECOVENDA / 100.00) * :margem2), '+
                     'PRO_PRECO3=PRO_PRECOVENDA+((PRO_PRECOVENDA / 100.00) * :margem3), '+
                     'PRO_PRECO4=PRO_PRECOVENDA+((PRO_PRECOVENDA / 100.00) * :margem4), '+
                     'PRO_PRECO5=PRO_PRECOVENDA+((PRO_PRECOVENDA / 100.00) * :margem5), '+
                     'PRO_PRECO6=PRO_PRECOVENDA+((PRO_PRECOVENDA / 100.00) * :margem6) '+
                     'where PRO_ATUALIZATABELA=''S'';');
  QYProdutos.ParamByName('margem1').AsFloat:=DM.TBTabPrecoTAB_MARGEM1.AsExtended;
  QYProdutos.ParamByName('margem2').AsFloat:=DM.TBTabPrecoTAB_MARGEM2.AsExtended;
  QYProdutos.ParamByName('margem3').AsFloat:=DM.TBTabPrecoTAB_MARGEM3.AsExtended;
  QYProdutos.ParamByName('margem4').AsFloat:=DM.TBTabPrecoTAB_MARGEM4.AsExtended;
  QYProdutos.ParamByName('margem5').AsFloat:=DM.TBTabPrecoTAB_MARGEM5.AsExtended;
  QYProdutos.ParamByName('margem6').AsFloat:=DM.TBTabPrecoTAB_MARGEM6.AsExtended;
  QYProdutos.ParamByName('desc1').AsString:=DM.TBTabPrecoTAB_DESCRICAO1.Value;
  QYProdutos.ParamByName('desc2').AsString:=DM.TBTabPrecoTAB_DESCRICAO2.Value;
  QYProdutos.ParamByName('desc3').AsString:=DM.TBTabPrecoTAB_DESCRICAO3.Value;
  QYProdutos.ParamByName('desc4').AsString:=DM.TBTabPrecoTAB_DESCRICAO4.Value;
  QYProdutos.ParamByName('desc5').AsString:=DM.TBTabPrecoTAB_DESCRICAO5.Value;
  QYProdutos.ParamByName('desc6').AsString:=DM.TBTabPrecoTAB_DESCRICAO6.Value;
  QYProdutos.ExecSQL;
end;

procedure TFormProdutosPrecosReajustar.AtualizarProdutos1Click(Sender: TObject);
begin
  //repete o calculo do preco de venda na atualização do campo margem, pois na execução do comando o valor do preco de venda ainda é o original.
  case ComboBox1.ItemIndex of
    00: begin
          if MessageDlg('Atualizar os preços de venda de todos os produtos?'+#13#10+'Esta ação é irreversível!',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
          begin
            //preco de venda.
            QYProdutos.Close;
            QYProdutos.SQL.Clear;
            QYProdutos.SQL.Add('update PRODUTOS set PRO_PRECOVENDA=((PRO_PRECOVENDA/100.00)*('+Edit1.Text+'))+PRO_PRECOVENDA where PRO_PRECOVENDA<>0');
            QYProdutos.ExecSQL;

            //margem de lucro.
            QYProdutos.Close;
            QYProdutos.SQL.Clear;
            QYProdutos.SQL.Add('update PRODUTOS set PRO_MARGEM=cast(((PRO_PRECOVENDA-PRO_PRECOCUSTO)*100.00) as numeric(18,2)) / PRO_PRECOCUSTO where '+
                               '(PRO_PRECOCUSTO<>0 and PRO_PRECOCUSTO is not null) and '+
                               '(PRO_PRECOVENDA<>0 and PRO_PRECOVENDA is not null)');
            QYProdutos.ExecSQL;

            AtualizarProdutosTabPreco; //Atualiza tabelas 1 a 6 conforme novo preço de venda.
            DM.TBProdutos.Close; //abre e fecha pra garantir a visualização de um produto com preço atualizado.
            DM.TBProdutos.Open;
            MessageDlg('Reajuste OK.',mtInformation,[mbOk],0);
          end;
        end;
    01: begin
          AbortIf(Trim(Edit5.Text)='','Informe o grupo desejado.');

          if MessageDlg('Atualizar os preços de venda do grupo '+Edit5.Text+'?'+#13#10+'Esta ação é irreversível!',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
          begin
            //preco de venda.
            QYProdutos.Close;
            QYProdutos.SQL.Clear;
            QYProdutos.SQL.Add('update PRODUTOS set PRO_PRECOVENDA=((PRO_PRECOVENDA/100.00)*('+Edit1.Text+'))+PRO_PRECOVENDA where PRO_PRECOVENDA<>0 and PRO_GRUPO='+Edit2.Text);
            QYProdutos.ExecSQL;

            //margem de lucro.
            QYProdutos.Close;
            QYProdutos.SQL.Clear;
            QYProdutos.SQL.Add('update PRODUTOS set PRO_MARGEM=cast(((PRO_PRECOVENDA-PRO_PRECOCUSTO)*100.00) as numeric(18,2)) / PRO_PRECOCUSTO where '+
                               '((PRO_PRECOCUSTO<>0 and PRO_PRECOCUSTO is not null) and '+
                               '(PRO_PRECOVENDA<>0 and PRO_PRECOVENDA is not null)) and PRO_GRUPO='+Edit2.Text);
            QYProdutos.ExecSQL;

            AtualizarProdutosTabPreco; //Atualiza tabelas 1 a 6 conforme novo preço de venda.
            DM.TBProdutos.Close; //abre e fecha pra garantir a visualização de um produto com preço atualizado.
            DM.TBProdutos.Open;
            MessageDlg('Reajuste OK.',mtInformation,[mbOk],0);
          end;
        end;
    02: begin
          AbortIf(Trim(Edit4.Text)='','Informe a família desejada.');

          if MessageDlg('Atualizar os preços de venda da família '+Edit4.Text+'?'+#13#10+'Esta ação é irreversível!',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
          begin
            //preco de venda.
            QYProdutos.Close;
            QYProdutos.SQL.Clear;
            QYProdutos.SQL.Add('update PRODUTOS set PRO_PRECOVENDA=((PRO_PRECOVENDA/100.00)*('+Edit1.Text+'))+PRO_PRECOVENDA where PRO_PRECOVENDA<>0 and PRO_FAMILIA='+Edit3.Text);
            QYProdutos.ExecSQL;

            //margem de lucro.
            QYProdutos.Close;
            QYProdutos.SQL.Clear;
            QYProdutos.SQL.Add('update PRODUTOS set PRO_MARGEM=cast(((PRO_PRECOVENDA-PRO_PRECOCUSTO)*100.00) as numeric(18,2)) / PRO_PRECOCUSTO where '+
                               '((PRO_PRECOCUSTO<>0 and PRO_PRECOCUSTO is not null) and '+
                               '(PRO_PRECOVENDA<>0 and PRO_PRECOVENDA is not null)) and PRO_FAMILIA='+Edit3.Text);
            QYProdutos.ExecSQL;

            AtualizarProdutosTabPreco; //Atualiza tabelas 1 a 6 conforme novo preço de venda.
            DM.TBProdutos.Close; //abre e fecha pra garantir a visualização de um produto com preço atualizado.
            DM.TBProdutos.Open;
            MessageDlg('Reajuste OK.',mtInformation,[mbOk],0);
          end;
        end;
  end;
end;

procedure TFormProdutosPrecosReajustar.SpeedButton3Click(Sender: TObject);
begin
  LocGruposBotao(Edit2,Edit5);
end;

procedure TFormProdutosPrecosReajustar.SpeedButton2Click(Sender: TObject);
begin
  LocFamiliasBotao(Edit3,Edit4);
end;

end.
