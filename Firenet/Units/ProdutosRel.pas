unit ProdutosRel;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, DB, Mask, PngBitBtn, PngSpeedButton,
  System.UITypes;

type
  TFormProdutosRel = class(TForm)
    Label24: TLabel;
    Bevel1: TBevel;
    Label1: TLabel;
    ComboBox1: TComboBox;
    BitBtn1: TPngBitBtn;
    BitBtn2: TPngBitBtn;
    ComboBox2: TComboBox;
    SpeedButton9: TPngSpeedButton;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    SpeedButton1: TPngSpeedButton;
    Label3: TLabel;
    Edit5: TEdit;
    Label4: TLabel;
    Edit6: TEdit;
    SpeedButton2: TPngSpeedButton;
    ComboBox4: TComboBox;
    Label6: TLabel;
    BitBtn3: TPngBitBtn;
    Label7: TLabel;
    Label8: TLabel;
    MaskEdit1: TMaskEdit;
    MaskEdit2: TMaskEdit;
    Label9: TLabel;
    Edit7: TEdit;
    Edit8: TEdit;
    SpeedButton3: TPngSpeedButton;
    ComboBox5: TComboBox;
    Label10: TLabel;
    Label11: TLabel;
    Edit9: TEdit;
    Edit10: TEdit;
    PngSpeedButton1: TPngSpeedButton;
    Label12: TLabel;
    PngSpeedButton2: TPngSpeedButton;
    Edit11: TEdit;
    Edit12: TEdit;
    PngSpeedButton3: TPngSpeedButton;
    Label13: TLabel;
    Edit13: TEdit;
    Edit14: TEdit;
    Label14: TLabel;
    Edit15: TEdit;
    Label5: TLabel;
    ComboBox3: TComboBox;
    PngBitBtn1: TPngBitBtn;
    SaveDialog1: TSaveDialog;
    procedure BitBtn2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Edit1Exit(Sender: TObject);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton9Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure ComboBox2Change(Sender: TObject);
    procedure Edit3Exit(Sender: TObject);
    procedure Edit3KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton1Click(Sender: TObject);
    procedure Edit5Exit(Sender: TObject);
    procedure Edit5KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Edit5KeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure Edit7Exit(Sender: TObject);
    procedure Edit7KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Edit7KeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton3Click(Sender: TObject);
    procedure Edit9Exit(Sender: TObject);
    procedure Edit9KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PngSpeedButton1Click(Sender: TObject);
    procedure Edit11Exit(Sender: TObject);
    procedure Edit11KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PngSpeedButton2Click(Sender: TObject);
    procedure Edit11KeyPress(Sender: TObject; var Key: Char);
    procedure Edit13Exit(Sender: TObject);
    procedure Edit13KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Edit13KeyPress(Sender: TObject; var Key: Char);
    procedure PngSpeedButton3Click(Sender: TObject);
    procedure Edit5Enter(Sender: TObject);
    procedure Edit11Enter(Sender: TObject);
    procedure Edit9Enter(Sender: TObject);
    procedure Edit7Enter(Sender: TObject);
    procedure Edit3Enter(Sender: TObject);
    procedure Edit13Enter(Sender: TObject);
    procedure Edit1Enter(Sender: TObject);
    procedure Edit9KeyPress(Sender: TObject; var Key: Char);
    procedure PngBitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormProdutosRel: TFormProdutosRel;

implementation
uses DataMod, Funcoes1, DataModSearch, ProdutosFast, FuncoesFirenet;

{$R *.dfm}

procedure TFormProdutosRel.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TFormProdutosRel.FormCreate(Sender: TObject);
begin
  ComboBox1.ItemIndex:=0;
  ComboBox2.ItemIndex:=0;
  ComboBox3.ItemIndex:=0;
  ComboBox4.ItemIndex:=0;
  ComboBox5.ItemIndex:=0;
  MaskEdit1.Text:=DateToStr(PrimeiroDia(Date),FS);
  MaskEdit2.Text:=DateToStr(UltimoDia(Date),FS);
end;

procedure TFormProdutosRel.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormProdutosRel.PngBitBtn1Click(Sender: TObject);
var F: TextFile;
  Where: String;
begin
  Where:='';
  case ComboBox2.ItemIndex of
    00: MessageDlg('Ainda não disponível para este relatório.',mtInformation,[mbOk],0);
    01: MessageDlg('Ainda não disponível para este relatório.',mtInformation,[mbOk],0);
    02: MessageDlg('Ainda não disponível para este relatório.',mtInformation,[mbOk],0);
    03, 04, 05, 06, 07, 08, 09:
        begin
          {$REGION 'Produtos com quantidade abaixo da mínima.'}
          if SaveDialog1.Execute then
          begin
            //if Edit6.Text <>'' then Where:=Where+' and PRQ_ALMOXARIFADO='+QuotedStr(Edit5.Text);
            if Edit14.Text<>'' then Where:=Where+' and PRO_FAMILIA='+QuotedStr(Edit13.Text);
            if Edit4.Text <>'' then Where:=Where+' and PRO_GRUPO='+QuotedStr(Edit3.Text);
            if Edit8.Text <>'' then Where:=Where+' and PRO_MARCA='+QuotedStr(Edit7.Text);
            if Edit12.Text<>'' then Where:=Where+' and PRO_FORNECEDOR='+QuotedStr(Edit11.Text);
            if Edit10.Text<>'' then Where:=Where+' and PRO_UNIDADE='+QuotedStr(Edit9.Text);
            if ComboBox1.Text='ATIVOS' then Where:=Where+' and PRO_STATUS=''A''' else
            if ComboBox1.Text='INATIVOS' then Where:=Where+' and PRO_STATUS=''I''';
            if ComboBox4.Text='PRODUTO' then Where:=Where+' and PRO_TIPO=''P''' else
            if ComboBox4.Text='SERVIÇO' then Where:=Where+' and PRO_TIPO=''S''';
            if ComboBox3.Text='SIM' then Where:=Where+' and PRO_COMPOSTO=''S''' else
            if ComboBox3.Text='NAO' then Where:=Where+' and PRO_COMPOSTO=''N''';

            Application.CreateForm(TFormProdutosFast, FormProdutosFast);
            FormProdutosFast.QY01.Close;
            FormProdutosFast.QY01.SQL.Clear;
            if Edit6.Text<>'' then //almoxarifado.
            FormProdutosFast.QY01.SQL.Add(
              'select PRO_CODIGO, PRO_DTCADASTRO, PRO_ESTOQUEATUAL, PRO_ESTOQUEMAX, PRO_ESTOQUEMIN, PRO_FAMILIA, PRO_FORNECEDOR, '+
              'PRO_GRUPO, PRO_LOCALIZACAO, PRO_MARCA, PRO_NOME, PRO_PRECOVENDA, PRO_UNIDADE, FAM_DESCRICAO, FOR_NOME, GRU_DESCRICAO, MAR_DESCRICAO from PRODUTOSQTDE '+
              'left join PRODUTOS on PRQ_PRODUTO=PRO_CODIGO '+
              'left join FAMILIAS on PRO_FAMILIA=FAM_CODIGO '+
              'left join FORNECEDORES on PRO_FORNECEDOR=FOR_CODIGO '+
              'left join GRUPOS on PRO_GRUPO=GRU_CODIGO '+
              'left join MARCAS on PRO_MARCA=MAR_CODIGO '+
              'where PRO_DTCADASTRO between :datainicial and :datafinal and PRQ_ALMOXARIFADO='+QuotedStr(Edit5.Text)+' and (PRQ_QUANTIDADE<PRO_ESTOQUEMIN and PRO_ESTOQUEMIN<>0) '+Where+' '+
              'order by FAM_DESCRICAO, GRU_DESCRICAO, PRO_NOME') else
            FormProdutosFast.QY01.SQL.Add(
              'select PRO_CODIGO, PRO_DTCADASTRO, PRO_ESTOQUEATUAL, PRO_ESTOQUEMAX, PRO_ESTOQUEMIN, PRO_FAMILIA, PRO_FORNECEDOR, '+
              'PRO_GRUPO, PRO_LOCALIZACAO, PRO_MARCA, PRO_NOME, PRO_PRECOVENDA, PRO_UNIDADE, FAM_DESCRICAO, FOR_NOME, GRU_DESCRICAO, MAR_DESCRICAO from PRODUTOS '+
              'left join FAMILIAS on PRO_FAMILIA=FAM_CODIGO '+
              'left join FORNECEDORES on PRO_FORNECEDOR=FOR_CODIGO '+
              'left join GRUPOS on PRO_GRUPO=GRU_CODIGO '+
              'left join MARCAS on PRO_MARCA=MAR_CODIGO '+
              'where PRO_DTCADASTRO between :datainicial and :datafinal and (PRO_ESTOQUEATUAL<PRO_ESTOQUEMIN and PRO_ESTOQUEMIN<>0) '+Where+' '+
              'order by FAM_DESCRICAO, GRU_DESCRICAO, PRO_NOME');
            FormProdutosFast.QY01.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
            FormProdutosFast.QY01.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
            FormProdutosFast.QY01.Open;
            FormProdutosFast.QY01.First;
            AssignFile(F,SaveDialog1.FileName);
            Rewrite(F);
            WriteLn(F,'CODIGO;NOME;COD.FAM.;FAMILIA;COD.GRU.;GRUPO;COD.MARCA;MARCA;COD.FOR.;FORNECEDOR;UNIDADE;ESTOQUE ATUAL;EST.MIN;EST.MAX;PRECO VENDA;DT CADASTRO;LOCALIZACAO');
            while not FormProdutosFast.QY01.Eof do
            begin
              WriteLn(F,
                FormProdutosFast.QY01.FieldByName('PRO_CODIGO').AsString
                +';'+FormProdutosFast.QY01.FieldByName('PRO_NOME').AsString
                +';'+FormProdutosFast.QY01.FieldByName('PRO_FAMILIA').AsString
                +';'+FormProdutosFast.QY01.FieldByName('FAM_DESCRICAO').AsString
                +';'+FormProdutosFast.QY01.FieldByName('PRO_GRUPO').AsString
                +';'+FormProdutosFast.QY01.FieldByName('GRU_DESCRICAO').AsString
                +';'+FormProdutosFast.QY01.FieldByName('PRO_MARCA').AsString
                +';'+FormProdutosFast.QY01.FieldByName('MAR_DESCRICAO').AsString
                +';'+FormProdutosFast.QY01.FieldByName('PRO_FORNECEDOR').AsString
                +';'+FormProdutosFast.QY01.FieldByName('FOR_NOME').AsString
                +';'+FormProdutosFast.QY01.FieldByName('PRO_UNIDADE').AsString
                +';'+FormProdutosFast.QY01.FieldByName('PRO_ESTOQUEATUAL').AsString
                +';'+FormProdutosFast.QY01.FieldByName('PRO_ESTOQUEMIN').AsString
                +';'+FormProdutosFast.QY01.FieldByName('PRO_ESTOQUEMAX').AsString
                +';'+FormProdutosFast.QY01.FieldByName('PRO_PRECOVENDA').AsString
                +';'+FormProdutosFast.QY01.FieldByName('PRO_DTCADASTRO').AsString
                +';'+FormProdutosFast.QY01.FieldByName('PRO_LOCALIZACAO').AsString
              );
              FormProdutosFast.QY01.Next;
            end;
            CloseFile(F);
            FormProdutosFast.Free;
            FormProdutosFast:=nil;
            Screen.Cursor:=crDefault;
            MessageDlg('Exportação OK.',mtInformation,[mbOk],0);
          end;
          {$ENDREGION}
        end;
    10: MessageDlg('Ainda não disponível para este relatório.',mtInformation,[mbOk],0);
    11: MessageDlg('Ainda não disponível para este relatório.',mtInformation,[mbOk],0);
    12: MessageDlg('Ainda não disponível para este relatório.',mtInformation,[mbOk],0);
    13: MessageDlg('Ainda não disponível para este relatório.',mtInformation,[mbOk],0);
    14: MessageDlg('Ainda não disponível para este relatório.',mtInformation,[mbOk],0);
    15: MessageDlg('Ainda não disponível para este relatório.',mtInformation,[mbOk],0);
    16: MessageDlg('Ainda não disponível para este relatório.',mtInformation,[mbOk],0);
    17: MessageDlg('Ainda não disponível para este relatório.',mtInformation,[mbOk],0);
    18: MessageDlg('Ainda não disponível para este relatório.',mtInformation,[mbOk],0);
    19: MessageDlg('Ainda não disponível para este relatório.',mtInformation,[mbOk],0);
    20: MessageDlg('Ainda não disponível para este relatório.',mtInformation,[mbOk],0);
    21: MessageDlg('Ainda não disponível para este relatório.',mtInformation,[mbOk],0);
    22: MessageDlg('Ainda não disponível para este relatório.',mtInformation,[mbOk],0);
    23: MessageDlg('Ainda não disponível para este relatório.',mtInformation,[mbOk],0);
  end;
end;

procedure TFormProdutosRel.PngSpeedButton1Click(Sender: TObject);
begin
  LocUnidadesBotao(Edit9,Edit10);
end;

procedure TFormProdutosRel.PngSpeedButton2Click(Sender: TObject);
begin
  LocFornecedoresBotao(Edit11,Edit12,nil);
end;

procedure TFormProdutosRel.PngSpeedButton3Click(Sender: TObject);
begin
  LocFamiliasBotao(Edit13,Edit14);
end;

procedure TFormProdutosRel.Edit11Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TEdit).Text;
end;

procedure TFormProdutosRel.Edit11Exit(Sender: TObject);
begin
  LocFornecedoresExit(Edit11,Edit12,nil);
end;

procedure TFormProdutosRel.Edit11KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  PngSpeedButton2.Click;
end;

procedure TFormProdutosRel.Edit11KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormProdutosRel.Edit13Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TEdit).Text;
end;

procedure TFormProdutosRel.Edit13Exit(Sender: TObject);
begin
  LocFamiliasExit(Edit13,Edit14);
end;

procedure TFormProdutosRel.Edit13KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  PngSpeedButton3.Click;
end;

procedure TFormProdutosRel.Edit13KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormProdutosRel.Edit1Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TEdit).Text;
end;

procedure TFormProdutosRel.Edit1Exit(Sender: TObject);
begin
  LocProdutosExit(Edit1,Edit2);
end;

procedure TFormProdutosRel.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton9.Click;
end;

procedure TFormProdutosRel.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormProdutosRel.SpeedButton9Click(Sender: TObject);
begin
  LocProdutosBotao(Edit1,Edit2);
end;

procedure TFormProdutosRel.BitBtn1Click(Sender: TObject);
var Where, Pasta: String;
begin
  Where:='';
  case ComboBox2.ItemIndex of
    00: begin
          {$REGION 'Ficha técnica.'}
          //analisar outra forma de imprimir a descricao em HTML.
          AbortIf(Trim(Edit2.Text)='','Selecione um produto.');

          Application.CreateForm(TFormProdutosFast, FormProdutosFast);
          FormProdutosFast.QY03.Close;
          FormProdutosFast.QY13.ParamByName('codigo').AsInteger:=StrToInt(Edit1.Text);
          FormProdutosFast.QY13.Open;
          FormProdutosFast.frxReport13.Variables['TITULO']:=QuotedStr('Ficha Técnica');
          FormProdutosFast.frxReport13.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
          FormProdutosFast.frxReport13.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
          FormProdutosFast.frxReport13.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
          FormProdutosFast.frxReport13.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);

          DM.QYAux.Close;
          DM.QYAux.SQL.Clear;
          DM.QYAux.SQL.Add(
            'select '+
            '(select first(1) PRF_ARQUIVO from PRODUTOSFOTOS where PRF_PRODUTO=:codigo) as FOTO1, '+
            '(select first(1) skip(1) PRF_ARQUIVO from PRODUTOSFOTOS where PRF_PRODUTO=:codigo) as FOTO2, '+
            '(select first(1) skip(2) PRF_ARQUIVO from PRODUTOSFOTOS where PRF_PRODUTO=:codigo) as FOTO3 '+
            'from RDB$DATABASE');
          DM.QYAux.ParamByName('codigo').AsInteger:=StrToInt(Edit1.Text);
          DM.QYAux.Open;

          Pasta:=DM.TBParametrosPAR_LOCALFOTOSPRODUTOS.Value+'\'+AlignText(Edit1.Text,'0',8,taRight)+'\'+DM.TBParametrosPAR_PASTAHIGH.Value+'\';

          if FileExists(Pasta+DM.QYAux.FieldByName('FOTO1').AsString) then
          FormProdutosFast.frxReport13.Variables['FOTO1']:=QuotedStr(Pasta+DM.QYAux.FieldByName('FOTO1').AsString) else
          FormProdutosFast.frxReport13.Variables['FOTO1']:=QuotedStr(ExtractFilePath(Application.ExeName)+'logo_empresa_120x60.jpg');

          if FileExists(Pasta+DM.QYAux.FieldByName('FOTO2').AsString) then
          FormProdutosFast.frxReport13.Variables['FOTO2']:=QuotedStr(Pasta+DM.QYAux.FieldByName('FOTO2').AsString) else
          FormProdutosFast.frxReport13.Variables['FOTO2']:=QuotedStr(ExtractFilePath(Application.ExeName)+'logo_empresa_120x60.jpg');

          if FileExists(Pasta+DM.QYAux.FieldByName('FOTO3').AsString) then
          FormProdutosFast.frxReport13.Variables['FOTO3']:=QuotedStr(Pasta+DM.QYAux.FieldByName('FOTO3').AsString) else
          FormProdutosFast.frxReport13.Variables['FOTO3']:=QuotedStr(ExtractFilePath(Application.ExeName)+'logo_empresa_120x60.jpg');

          DM.QYAux.Close;

          FormProdutosFast.frxReport13.ShowReport;
          FormProdutosFast.Free;
          FormProdutosFast:=nil;
          {$ENDREGION}
        end;
    01: begin
          {$REGION 'Tabela de preços'}
          if Edit14.Text<>'' then Where:=Where+' and PRO_FAMILIA='+QuotedStr(Edit13.Text);
          if Edit4.Text <>'' then Where:=Where+' and PRO_GRUPO='+QuotedStr(Edit3.Text);
          if Edit8.Text <>'' then Where:=Where+' and PRO_MARCA='+QuotedStr(Edit7.Text);
          if Edit12.Text<>'' then Where:=Where+' and PRO_FORNECEDOR='+QuotedStr(Edit11.Text);
          if Edit10.Text<>'' then Where:=Where+' and PRO_UNIDADE='+QuotedStr(Edit9.Text);
          if ComboBox1.Text='ATIVOS' then Where:=Where+' and PRO_STATUS=''A''' else
          if ComboBox1.Text='INATIVOS' then Where:=Where+' and PRO_STATUS=''I''';
          if ComboBox4.Text='PRODUTO' then Where:=Where+' and PRO_TIPO=''P''' else
          if ComboBox4.Text='SERVIÇO' then Where:=Where+' and PRO_TIPO=''S''';
          Application.CreateForm(TFormProdutosFast, FormProdutosFast);
          FormProdutosFast.QY03.Close;
          FormProdutosFast.QY03.SQL.Clear;
          FormProdutosFast.QY03.SQL.Add(
            'select PRO_CODIGO, PRO_GRUPO, PRO_NOME, PRO_PRECOVENDA, PRO_PRECO1, PRO_PRECO2, PRO_PRECO3, '+
            'PRO_PRECO4, PRO_PRECO5, PRO_PRECO6, PRO_UNIDADE, GRU_DESCRICAO from PRODUTOS '+
            'left join GRUPOS on PRO_GRUPO=GRU_CODIGO '+
            'where PRO_DTCADASTRO between :datainicial and :datafinal '+Where+' '+
            'order by GRU_DESCRICAO, PRO_NOME');
          FormProdutosFast.QY03.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
          FormProdutosFast.QY03.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
          FormProdutosFast.QY03.Open;
          FormProdutosFast.frxReport3.Variables['TITULO']:=QuotedStr('Tabela de Preços');
          FormProdutosFast.frxReport3.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
          FormProdutosFast.frxReport3.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
          FormProdutosFast.frxReport3.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
          FormProdutosFast.frxReport3.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
          FormProdutosFast.frxReport3.Variables['DATAINICIAL']:=QuotedStr(MaskEdit1.Text);
          FormProdutosFast.frxReport3.Variables['DATAFINAL']:=QuotedStr(MaskEdit2.Text);
          FormProdutosFast.frxReport3.Variables['STATUS']:=QuotedStr(ComboBox1.Text);
          FormProdutosFast.frxReport3.Variables['TIPO']:=QuotedStr(ComboBox4.Text);
          FormProdutosFast.frxReport3.Variables['FAM_CODIGO']:=QuotedStr(Edit13.Text);
          FormProdutosFast.frxReport3.Variables['FAM_DESCRICAO']:=QuotedStr(Edit14.Text);
          FormProdutosFast.frxReport3.Variables['GRU_CODIGO']:=QuotedStr(Edit3.Text);
          FormProdutosFast.frxReport3.Variables['GRU_DESCRICAO']:=QuotedStr(Edit4.Text);
          FormProdutosFast.frxReport3.Variables['MAR_CODIGO']:=QuotedStr(Edit7.Text);
          FormProdutosFast.frxReport3.Variables['MAR_DESCRICAO']:=QuotedStr(Edit8.Text);
          FormProdutosFast.frxReport3.Variables['FOR_CODIGO']:=QuotedStr(Edit11.Text);
          FormProdutosFast.frxReport3.Variables['FOR_NOME']:=QuotedStr(Edit12.Text);
          FormProdutosFast.frxReport3.Variables['UNI_CODIGO']:=QuotedStr(Edit9.Text);
          FormProdutosFast.frxReport3.Variables['UNI_DESCRICAO']:=QuotedStr(Edit10.Text);
          FormProdutosFast.frxReport3.Variables['TABELA1']:=QuotedStr(DM.TBTabPrecoTAB_DESCRICAO1.Text);
          FormProdutosFast.frxReport3.Variables['TABELA2']:=QuotedStr(DM.TBTabPrecoTAB_DESCRICAO2.Text);
          FormProdutosFast.frxReport3.Variables['TABELA3']:=QuotedStr(DM.TBTabPrecoTAB_DESCRICAO3.Text);
          FormProdutosFast.frxReport3.Variables['TABELA4']:=QuotedStr(DM.TBTabPrecoTAB_DESCRICAO4.Text);
          FormProdutosFast.frxReport3.Variables['TABELA5']:=QuotedStr(DM.TBTabPrecoTAB_DESCRICAO5.Text);
          FormProdutosFast.frxReport3.Variables['TABELA6']:=QuotedStr(DM.TBTabPrecoTAB_DESCRICAO6.Text);
          FormProdutosFast.frxReport3.ShowReport;
          FormProdutosFast.Free;
          FormProdutosFast:=nil;
          {$ENDREGION}
        end;
    02: begin
          {$REGION 'Tabela de preços sem agrupamento'}
          if Edit14.Text<>'' then Where:=Where+' and PRO_FAMILIA='+QuotedStr(Edit13.Text);
          if Edit4.Text <>'' then Where:=Where+' and PRO_GRUPO='+QuotedStr(Edit3.Text);
          if Edit8.Text <>'' then Where:=Where+' and PRO_MARCA='+QuotedStr(Edit7.Text);
          if Edit12.Text<>'' then Where:=Where+' and PRO_FORNECEDOR='+QuotedStr(Edit11.Text);
          if Edit10.Text<>'' then Where:=Where+' and PRO_UNIDADE='+QuotedStr(Edit9.Text);
          if ComboBox1.Text='ATIVOS' then Where:=Where+' and PRO_STATUS=''A''' else
          if ComboBox1.Text='INATIVOS' then Where:=Where+' and PRO_STATUS=''I''';
          if ComboBox4.Text='PRODUTO' then Where:=Where+' and PRO_TIPO=''P''' else
          if ComboBox4.Text='SERVIÇO' then Where:=Where+' and PRO_TIPO=''S''';
          Application.CreateForm(TFormProdutosFast, FormProdutosFast);
          FormProdutosFast.QY18.Close;
          FormProdutosFast.QY18.SQL.Clear;
          FormProdutosFast.QY18.SQL.Add(
            'select PRO_CODIGO, PRO_GRUPO, PRO_NOME, PRO_PRECOVENDA, PRO_PRECO1, PRO_PRECO2, PRO_PRECO3, '+
            'PRO_PRECO4, PRO_PRECO5, PRO_PRECO6, PRO_UNIDADE, GRU_DESCRICAO from PRODUTOS '+
            'left join GRUPOS on PRO_GRUPO=GRU_CODIGO '+
            'where PRO_DTCADASTRO between :datainicial and :datafinal '+Where+' '+
            'order by PRO_NOME');
          FormProdutosFast.QY18.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
          FormProdutosFast.QY18.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
          FormProdutosFast.QY18.Open;
          FormProdutosFast.frxReport18.Variables['TITULO']:=QuotedStr('Tabela de Preços');
          FormProdutosFast.frxReport18.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
          FormProdutosFast.frxReport18.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
          FormProdutosFast.frxReport18.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
          FormProdutosFast.frxReport18.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
          FormProdutosFast.frxReport18.Variables['DATAINICIAL']:=QuotedStr(MaskEdit1.Text);
          FormProdutosFast.frxReport18.Variables['DATAFINAL']:=QuotedStr(MaskEdit2.Text);
          FormProdutosFast.frxReport18.Variables['STATUS']:=QuotedStr(ComboBox1.Text);
          FormProdutosFast.frxReport18.Variables['TIPO']:=QuotedStr(ComboBox4.Text);
          FormProdutosFast.frxReport18.Variables['FAM_CODIGO']:=QuotedStr(Edit13.Text);
          FormProdutosFast.frxReport18.Variables['FAM_DESCRICAO']:=QuotedStr(Edit14.Text);
          FormProdutosFast.frxReport18.Variables['GRU_CODIGO']:=QuotedStr(Edit3.Text);
          FormProdutosFast.frxReport18.Variables['GRU_DESCRICAO']:=QuotedStr(Edit4.Text);
          FormProdutosFast.frxReport18.Variables['MAR_CODIGO']:=QuotedStr(Edit7.Text);
          FormProdutosFast.frxReport18.Variables['MAR_DESCRICAO']:=QuotedStr(Edit8.Text);
          FormProdutosFast.frxReport18.Variables['FOR_CODIGO']:=QuotedStr(Edit11.Text);
          FormProdutosFast.frxReport18.Variables['FOR_NOME']:=QuotedStr(Edit12.Text);
          FormProdutosFast.frxReport18.Variables['UNI_CODIGO']:=QuotedStr(Edit9.Text);
          FormProdutosFast.frxReport18.Variables['UNI_DESCRICAO']:=QuotedStr(Edit10.Text);
          FormProdutosFast.frxReport18.Variables['TABELA1']:=QuotedStr(DM.TBTabPrecoTAB_DESCRICAO1.Text);
          FormProdutosFast.frxReport18.Variables['TABELA2']:=QuotedStr(DM.TBTabPrecoTAB_DESCRICAO2.Text);
          FormProdutosFast.frxReport18.Variables['TABELA3']:=QuotedStr(DM.TBTabPrecoTAB_DESCRICAO3.Text);
          FormProdutosFast.frxReport18.Variables['TABELA4']:=QuotedStr(DM.TBTabPrecoTAB_DESCRICAO4.Text);
          FormProdutosFast.frxReport18.Variables['TABELA5']:=QuotedStr(DM.TBTabPrecoTAB_DESCRICAO5.Text);
          FormProdutosFast.frxReport18.Variables['TABELA6']:=QuotedStr(DM.TBTabPrecoTAB_DESCRICAO6.Text);
          FormProdutosFast.frxReport18.ShowReport;
          FormProdutosFast.Free;
          FormProdutosFast:=nil;
          {$ENDREGION}
        end;
    03: begin
          {$REGION 'Produtos no período'}
          //if Edit6.Text <>'' then Where:=Where+' and PRO_ALMOXARIFADO='+QuotedStr(Edit5.Text);
          if Edit14.Text<>'' then Where:=Where+' and PRO_FAMILIA='+QuotedStr(Edit13.Text);
          if Edit4.Text <>'' then Where:=Where+' and PRO_GRUPO='+QuotedStr(Edit3.Text);
          if Edit8.Text <>'' then Where:=Where+' and PRO_MARCA='+QuotedStr(Edit7.Text);
          if Edit12.Text<>'' then Where:=Where+' and PRO_FORNECEDOR='+QuotedStr(Edit11.Text);
          if Edit10.Text<>'' then Where:=Where+' and PRO_UNIDADE='+QuotedStr(Edit9.Text);
          if ComboBox1.Text='ATIVOS' then Where:=Where+' and PRO_STATUS=''A''' else
          if ComboBox1.Text='INATIVOS' then Where:=Where+' and PRO_STATUS=''I''';
          if ComboBox4.Text='PRODUTO' then Where:=Where+' and PRO_TIPO=''P''' else
          if ComboBox4.Text='SERVIÇO' then Where:=Where+' and PRO_TIPO=''S''';
          if ComboBox3.Text='SIM' then Where:=Where+' and PRO_COMPOSTO=''S''' else
          if ComboBox3.Text='NAO' then Where:=Where+' and PRO_COMPOSTO=''N''';
          Application.CreateForm(TFormProdutosFast, FormProdutosFast);
          FormProdutosFast.QY01.Close;
          FormProdutosFast.QY01.SQL.Clear;
          FormProdutosFast.QY01.SQL.Add(
            'select PRO_CODIGO, PRO_DTCADASTRO, PRO_ESTOQUEATUAL, PRO_ESTOQUEMAX, PRO_ESTOQUEMIN, PRO_FAMILIA, PRO_FORNECEDOR, '+
            'PRO_GRUPO, PRO_LOCALIZACAO, PRO_MARCA, PRO_NOME, PRO_PRECOVENDA, PRO_UNIDADE, FAM_DESCRICAO, FOR_NOME, GRU_DESCRICAO, MAR_DESCRICAO from PRODUTOS '+
            'left join FAMILIAS on PRO_FAMILIA=FAM_CODIGO '+
            'left join FORNECEDORES on PRO_FORNECEDOR=FOR_CODIGO '+
            'left join GRUPOS on PRO_GRUPO=GRU_CODIGO '+
            'left join MARCAS on PRO_MARCA=MAR_CODIGO '+
            'where PRO_DTCADASTRO between :datainicial and :datafinal '+Where+' '+
            'order by FAM_DESCRICAO, GRU_DESCRICAO, PRO_NOME');
          FormProdutosFast.QY01.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
          FormProdutosFast.QY01.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
          FormProdutosFast.QY01.Open;
          FormProdutosFast.frxReport1.Variables['TITULO']:=QuotedStr('Produtos');
          FormProdutosFast.frxReport1.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
          FormProdutosFast.frxReport1.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
          FormProdutosFast.frxReport1.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
          FormProdutosFast.frxReport1.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
          FormProdutosFast.frxReport1.Variables['DATAINICIAL']:=QuotedStr(MaskEdit1.Text);
          FormProdutosFast.frxReport1.Variables['DATAFINAL']:=QuotedStr(MaskEdit2.Text);
          FormProdutosFast.frxReport1.Variables['STATUS']:=QuotedStr(ComboBox1.Text);
          FormProdutosFast.frxReport1.Variables['TIPO']:=QuotedStr(ComboBox4.Text);
          FormProdutosFast.frxReport1.Variables['COMPOSTO']:=QuotedStr(ComboBox3.Text);
          FormProdutosFast.frxReport1.Variables['ALM_CODIGO']:=QuotedStr(''); //neste nao vai almoxarifado.
          FormProdutosFast.frxReport1.Variables['ALM_DESCRICAO']:=QuotedStr('NAO SE APLICA');
          FormProdutosFast.frxReport1.Variables['FAM_CODIGO']:=QuotedStr(Edit13.Text);
          FormProdutosFast.frxReport1.Variables['FAM_DESCRICAO']:=QuotedStr(Edit14.Text);
          FormProdutosFast.frxReport1.Variables['GRU_CODIGO']:=QuotedStr(Edit3.Text);
          FormProdutosFast.frxReport1.Variables['GRU_DESCRICAO']:=QuotedStr(Edit4.Text);
          FormProdutosFast.frxReport1.Variables['MAR_CODIGO']:=QuotedStr(Edit7.Text);
          FormProdutosFast.frxReport1.Variables['MAR_DESCRICAO']:=QuotedStr(Edit8.Text);
          FormProdutosFast.frxReport1.Variables['FOR_CODIGO']:=QuotedStr(Edit11.Text);
          FormProdutosFast.frxReport1.Variables['FOR_NOME']:=QuotedStr(Edit12.Text);
          FormProdutosFast.frxReport1.Variables['UNI_CODIGO']:=QuotedStr(Edit9.Text);
          FormProdutosFast.frxReport1.Variables['UNI_DESCRICAO']:=QuotedStr(Edit10.Text);
          FormProdutosFast.frxReport1.ShowReport;
          FormProdutosFast.Free;
          FormProdutosFast:=nil;
          {$ENDREGION}
        end;
    04: begin
          {$REGION 'Produtos com quantidade abaixo da mínima.'}
          //if Edit6.Text <>'' then Where:=Where+' and PRQ_ALMOXARIFADO='+QuotedStr(Edit5.Text);
          if Edit14.Text<>'' then Where:=Where+' and PRO_FAMILIA='+QuotedStr(Edit13.Text);
          if Edit4.Text <>'' then Where:=Where+' and PRO_GRUPO='+QuotedStr(Edit3.Text);
          if Edit8.Text <>'' then Where:=Where+' and PRO_MARCA='+QuotedStr(Edit7.Text);
          if Edit12.Text<>'' then Where:=Where+' and PRO_FORNECEDOR='+QuotedStr(Edit11.Text);
          if Edit10.Text<>'' then Where:=Where+' and PRO_UNIDADE='+QuotedStr(Edit9.Text);
          if ComboBox1.Text='ATIVOS' then Where:=Where+' and PRO_STATUS=''A''' else
          if ComboBox1.Text='INATIVOS' then Where:=Where+' and PRO_STATUS=''I''';
          if ComboBox4.Text='PRODUTO' then Where:=Where+' and PRO_TIPO=''P''' else
          if ComboBox4.Text='SERVIÇO' then Where:=Where+' and PRO_TIPO=''S''';
          if ComboBox3.Text='SIM' then Where:=Where+' and PRO_COMPOSTO=''S''' else
          if ComboBox3.Text='NAO' then Where:=Where+' and PRO_COMPOSTO=''N''';
          Application.CreateForm(TFormProdutosFast, FormProdutosFast);
          FormProdutosFast.QY01.Close;
          FormProdutosFast.QY01.SQL.Clear;
          if Edit6.Text<>'' then //almoxarifado.
          FormProdutosFast.QY01.SQL.Add(
            'select PRO_CODIGO, PRO_DTCADASTRO, PRO_ESTOQUEATUAL, PRO_ESTOQUEMAX, PRO_ESTOQUEMIN, PRO_FAMILIA, PRO_FORNECEDOR, '+
            'PRO_GRUPO, PRO_LOCALIZACAO, PRO_MARCA, PRO_NOME, PRO_PRECOVENDA, PRO_UNIDADE, FAM_DESCRICAO, FOR_NOME, GRU_DESCRICAO, MAR_DESCRICAO from PRODUTOSQTDE '+
            'left join PRODUTOS on PRQ_PRODUTO=PRO_CODIGO '+
            'left join FAMILIAS on PRO_FAMILIA=FAM_CODIGO '+
            'left join FORNECEDORES on PRO_FORNECEDOR=FOR_CODIGO '+
            'left join GRUPOS on PRO_GRUPO=GRU_CODIGO '+
            'left join MARCAS on PRO_MARCA=MAR_CODIGO '+
            'where PRO_DTCADASTRO between :datainicial and :datafinal and PRQ_ALMOXARIFADO='+QuotedStr(Edit5.Text)+' and (PRQ_QUANTIDADE<PRO_ESTOQUEMIN and PRO_ESTOQUEMIN<>0) '+Where+' '+
            'order by FAM_DESCRICAO, GRU_DESCRICAO, PRO_NOME') else
          FormProdutosFast.QY01.SQL.Add(
            'select PRO_CODIGO, PRO_DTCADASTRO, PRO_ESTOQUEATUAL, PRO_ESTOQUEMAX, PRO_ESTOQUEMIN, PRO_FAMILIA, PRO_FORNECEDOR, '+
            'PRO_GRUPO, PRO_LOCALIZACAO, PRO_MARCA, PRO_NOME, PRO_PRECOVENDA, PRO_UNIDADE, FAM_DESCRICAO, FOR_NOME, GRU_DESCRICAO, MAR_DESCRICAO from PRODUTOS '+
            'left join FAMILIAS on PRO_FAMILIA=FAM_CODIGO '+
            'left join FORNECEDORES on PRO_FORNECEDOR=FOR_CODIGO '+
            'left join GRUPOS on PRO_GRUPO=GRU_CODIGO '+
            'left join MARCAS on PRO_MARCA=MAR_CODIGO '+
            'where PRO_DTCADASTRO between :datainicial and :datafinal and (PRO_ESTOQUEATUAL<PRO_ESTOQUEMIN and PRO_ESTOQUEMIN<>0) '+Where+' '+
            'order by FAM_DESCRICAO, GRU_DESCRICAO, PRO_NOME');
          FormProdutosFast.QY01.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
          FormProdutosFast.QY01.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
          FormProdutosFast.QY01.Open;
          FormProdutosFast.frxReport1.Variables['TITULO']:=QuotedStr('Produtos com quantidade abaixo da mínima');
          FormProdutosFast.frxReport1.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
          FormProdutosFast.frxReport1.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
          FormProdutosFast.frxReport1.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
          FormProdutosFast.frxReport1.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
          FormProdutosFast.frxReport1.Variables['DATAINICIAL']:=QuotedStr(MaskEdit1.Text);
          FormProdutosFast.frxReport1.Variables['DATAFINAL']:=QuotedStr(MaskEdit2.Text);
          FormProdutosFast.frxReport1.Variables['STATUS']:=QuotedStr(ComboBox1.Text);
          FormProdutosFast.frxReport1.Variables['TIPO']:=QuotedStr(ComboBox4.Text);
          FormProdutosFast.frxReport1.Variables['COMPOSTO']:=QuotedStr(ComboBox3.Text);
          FormProdutosFast.frxReport1.Variables['ALM_CODIGO']:=QuotedStr(Edit5.Text);
          FormProdutosFast.frxReport1.Variables['ALM_DESCRICAO']:=QuotedStr(Edit6.Text);
          FormProdutosFast.frxReport1.Variables['FAM_CODIGO']:=QuotedStr(Edit13.Text);
          FormProdutosFast.frxReport1.Variables['FAM_DESCRICAO']:=QuotedStr(Edit14.Text);
          FormProdutosFast.frxReport1.Variables['GRU_CODIGO']:=QuotedStr(Edit3.Text);
          FormProdutosFast.frxReport1.Variables['GRU_DESCRICAO']:=QuotedStr(Edit4.Text);
          FormProdutosFast.frxReport1.Variables['MAR_CODIGO']:=QuotedStr(Edit7.Text);
          FormProdutosFast.frxReport1.Variables['MAR_DESCRICAO']:=QuotedStr(Edit8.Text);
          FormProdutosFast.frxReport1.Variables['FOR_CODIGO']:=QuotedStr(Edit11.Text);
          FormProdutosFast.frxReport1.Variables['FOR_NOME']:=QuotedStr(Edit12.Text);
          FormProdutosFast.frxReport1.Variables['UNI_CODIGO']:=QuotedStr(Edit9.Text);
          FormProdutosFast.frxReport1.Variables['UNI_DESCRICAO']:=QuotedStr(Edit10.Text);
          FormProdutosFast.frxReport1.ShowReport;
          FormProdutosFast.Free;
          FormProdutosFast:=nil;
          {$ENDREGION}
        end;
    05: begin
          {$REGION 'Produtos com quantidade acima da máxima.'}
          //if Edit6.Text <>'' then Where:=Where+' and PRQ_ALMOXARIFADO='+QuotedStr(Edit5.Text);
          if Edit14.Text<>'' then Where:=Where+' and PRO_FAMILIA='+QuotedStr(Edit13.Text);
          if Edit4.Text <>'' then Where:=Where+' and PRO_GRUPO='+QuotedStr(Edit3.Text);
          if Edit8.Text <>'' then Where:=Where+' and PRO_MARCA='+QuotedStr(Edit7.Text);
          if Edit12.Text<>'' then Where:=Where+' and PRO_FORNECEDOR='+QuotedStr(Edit11.Text);
          if Edit10.Text<>'' then Where:=Where+' and PRO_UNIDADE='+QuotedStr(Edit9.Text);
          if ComboBox1.Text='ATIVOS' then Where:=Where+' and PRO_STATUS=''A''' else
          if ComboBox1.Text='INATIVOS' then Where:=Where+' and PRO_STATUS=''I''';
          if ComboBox4.Text='PRODUTO' then Where:=Where+' and PRO_TIPO=''P''' else
          if ComboBox4.Text='SERVIÇO' then Where:=Where+' and PRO_TIPO=''S''';
          if ComboBox3.Text='SIM' then Where:=Where+' and PRO_COMPOSTO=''S''' else
          if ComboBox3.Text='NAO' then Where:=Where+' and PRO_COMPOSTO=''N''';
          Application.CreateForm(TFormProdutosFast, FormProdutosFast);
          FormProdutosFast.QY01.Close;
          FormProdutosFast.QY01.SQL.Clear;
          if Edit6.Text<>'' then //almoxarifado.
          FormProdutosFast.QY01.SQL.Add(
            'select PRO_CODIGO, PRO_DTCADASTRO, PRO_ESTOQUEATUAL, PRO_ESTOQUEMAX, PRO_ESTOQUEMIN, PRO_FAMILIA, PRO_FORNECEDOR, '+
            'PRO_GRUPO, PRO_LOCALIZACAO, PRO_MARCA, PRO_NOME, PRO_PRECOVENDA, PRO_UNIDADE, FAM_DESCRICAO, FOR_NOME, GRU_DESCRICAO, MAR_DESCRICAO from PRODUTOSQTDE '+
            'left join PRODUTOS on PRQ_PRODUTO=PRO_CODIGO '+
            'left join FAMILIAS on PRO_FAMILIA=FAM_CODIGO '+
            'left join FORNECEDORES on PRO_FORNECEDOR=FOR_CODIGO '+
            'left join GRUPOS on PRO_GRUPO=GRU_CODIGO '+
            'left join MARCAS on PRO_MARCA=MAR_CODIGO '+
            'where PRO_DTCADASTRO between :datainicial and :datafinal and PRQ_ALMOXARIFADO='+QuotedStr(Edit5.Text)+' and (PRQ_QUANTIDADE>PRO_ESTOQUEMAX and PRO_ESTOQUEMAX<>0) '+Where+' '+
            'order by FAM_DESCRICAO, GRU_DESCRICAO, PRO_NOME') else
          FormProdutosFast.QY01.SQL.Add(
            'select PRO_CODIGO, PRO_DTCADASTRO, PRO_ESTOQUEATUAL, PRO_ESTOQUEMAX, PRO_ESTOQUEMIN, PRO_FAMILIA, PRO_FORNECEDOR, '+
            'PRO_GRUPO, PRO_LOCALIZACAO, PRO_MARCA, PRO_NOME, PRO_PRECOVENDA, PRO_UNIDADE, FAM_DESCRICAO, FOR_NOME, GRU_DESCRICAO, MAR_DESCRICAO from PRODUTOS '+
            'left join FAMILIAS on PRO_FAMILIA=FAM_CODIGO '+
            'left join FORNECEDORES on PRO_FORNECEDOR=FOR_CODIGO '+
            'left join GRUPOS on PRO_GRUPO=GRU_CODIGO '+
            'left join MARCAS on PRO_MARCA=MAR_CODIGO '+
            'where PRO_DTCADASTRO between :datainicial and :datafinal and (PRO_ESTOQUEATUAL>PRO_ESTOQUEMAX and PRO_ESTOQUEMAX<>0) '+Where+' '+
            'order by FAM_DESCRICAO, GRU_DESCRICAO, PRO_NOME');
          FormProdutosFast.QY01.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
          FormProdutosFast.QY01.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
          FormProdutosFast.QY01.Open;
          FormProdutosFast.frxReport1.Variables['TITULO']:=QuotedStr('Produtos com quantidade acima da máxima');
          FormProdutosFast.frxReport1.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
          FormProdutosFast.frxReport1.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
          FormProdutosFast.frxReport1.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
          FormProdutosFast.frxReport1.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
          FormProdutosFast.frxReport1.Variables['DATAINICIAL']:=QuotedStr(MaskEdit1.Text);
          FormProdutosFast.frxReport1.Variables['DATAFINAL']:=QuotedStr(MaskEdit2.Text);
          FormProdutosFast.frxReport1.Variables['STATUS']:=QuotedStr(ComboBox1.Text);
          FormProdutosFast.frxReport1.Variables['TIPO']:=QuotedStr(ComboBox4.Text);
          FormProdutosFast.frxReport1.Variables['COMPOSTO']:=QuotedStr(ComboBox3.Text);
          FormProdutosFast.frxReport1.Variables['ALM_CODIGO']:=QuotedStr(Edit5.Text);
          FormProdutosFast.frxReport1.Variables['ALM_DESCRICAO']:=QuotedStr(Edit6.Text);
          FormProdutosFast.frxReport1.Variables['FAM_CODIGO']:=QuotedStr(Edit13.Text);
          FormProdutosFast.frxReport1.Variables['FAM_DESCRICAO']:=QuotedStr(Edit14.Text);
          FormProdutosFast.frxReport1.Variables['GRU_CODIGO']:=QuotedStr(Edit3.Text);
          FormProdutosFast.frxReport1.Variables['GRU_DESCRICAO']:=QuotedStr(Edit4.Text);
          FormProdutosFast.frxReport1.Variables['MAR_CODIGO']:=QuotedStr(Edit7.Text);
          FormProdutosFast.frxReport1.Variables['MAR_DESCRICAO']:=QuotedStr(Edit8.Text);
          FormProdutosFast.frxReport1.Variables['FOR_CODIGO']:=QuotedStr(Edit11.Text);
          FormProdutosFast.frxReport1.Variables['FOR_NOME']:=QuotedStr(Edit12.Text);
          FormProdutosFast.frxReport1.Variables['UNI_CODIGO']:=QuotedStr(Edit9.Text);
          FormProdutosFast.frxReport1.Variables['UNI_DESCRICAO']:=QuotedStr(Edit10.Text);
          FormProdutosFast.frxReport1.ShowReport;
          FormProdutosFast.Free;
          FormProdutosFast:=nil;
          {$ENDREGION}
        end;
    06: begin
          {$REGION 'Produtos com quantidade abaixo da máxima.'}
          //if Edit6.Text <>'' then Where:=Where+' and PRQ_ALMOXARIFADO='+QuotedStr(Edit5.Text);
          if Edit14.Text<>'' then Where:=Where+' and PRO_FAMILIA='+QuotedStr(Edit13.Text);
          if Edit4.Text <>'' then Where:=Where+' and PRO_GRUPO='+QuotedStr(Edit3.Text);
          if Edit8.Text <>'' then Where:=Where+' and PRO_MARCA='+QuotedStr(Edit7.Text);
          if Edit12.Text<>'' then Where:=Where+' and PRO_FORNECEDOR='+QuotedStr(Edit11.Text);
          if Edit10.Text<>'' then Where:=Where+' and PRO_UNIDADE='+QuotedStr(Edit9.Text);
          if ComboBox1.Text='ATIVOS' then Where:=Where+' and PRO_STATUS=''A''' else
          if ComboBox1.Text='INATIVOS' then Where:=Where+' and PRO_STATUS=''I''';
          if ComboBox4.Text='PRODUTO' then Where:=Where+' and PRO_TIPO=''P''' else
          if ComboBox4.Text='SERVIÇO' then Where:=Where+' and PRO_TIPO=''S''';
          if ComboBox3.Text='SIM' then Where:=Where+' and PRO_COMPOSTO=''S''' else
          if ComboBox3.Text='NAO' then Where:=Where+' and PRO_COMPOSTO=''N''';
          Application.CreateForm(TFormProdutosFast, FormProdutosFast);
          FormProdutosFast.QY01.Close;
          FormProdutosFast.QY01.SQL.Clear;
          if Edit6.Text<>'' then //almoxarifado.
          FormProdutosFast.QY01.SQL.Add(
            'select PRO_CODIGO, PRO_DTCADASTRO, PRO_ESTOQUEATUAL, PRO_ESTOQUEMAX, PRO_ESTOQUEMIN, PRO_FAMILIA, PRO_FORNECEDOR, '+
            'PRO_GRUPO, PRO_LOCALIZACAO, PRO_MARCA, PRO_NOME, PRO_PRECOVENDA, PRO_UNIDADE, FAM_DESCRICAO, FOR_NOME, GRU_DESCRICAO, MAR_DESCRICAO from PRODUTOSQTDE '+
            'left join PRODUTOS on PRQ_PRODUTO=PRO_CODIGO '+
            'left join FAMILIAS on PRO_FAMILIA=FAM_CODIGO '+
            'left join FORNECEDORES on PRO_FORNECEDOR=FOR_CODIGO '+
            'left join GRUPOS on PRO_GRUPO=GRU_CODIGO '+
            'left join MARCAS on PRO_MARCA=MAR_CODIGO '+
            'where PRO_DTCADASTRO between :datainicial and :datafinal and PRQ_ALMOXARIFADO='+QuotedStr(Edit5.Text)+' and (PRQ_QUANTIDADE<PRO_ESTOQUEMAX and PRO_ESTOQUEMAX<>0) '+Where+' '+
            'order by FAM_DESCRICAO, GRU_DESCRICAO, PRO_NOME') else
          FormProdutosFast.QY01.SQL.Add(
            'select PRO_CODIGO, PRO_DTCADASTRO, PRO_ESTOQUEATUAL, PRO_ESTOQUEMAX, PRO_ESTOQUEMIN, PRO_FAMILIA, PRO_FORNECEDOR, '+
            'PRO_GRUPO, PRO_LOCALIZACAO, PRO_MARCA, PRO_NOME, PRO_PRECOVENDA, PRO_UNIDADE, FAM_DESCRICAO, FOR_NOME, GRU_DESCRICAO, MAR_DESCRICAO from PRODUTOS '+
            'left join FAMILIAS on PRO_FAMILIA=FAM_CODIGO '+
            'left join FORNECEDORES on PRO_FORNECEDOR=FOR_CODIGO '+
            'left join GRUPOS on PRO_GRUPO=GRU_CODIGO '+
            'left join MARCAS on PRO_MARCA=MAR_CODIGO '+
            'where PRO_DTCADASTRO between :datainicial and :datafinal and (PRO_ESTOQUEATUAL<PRO_ESTOQUEMAX and PRO_ESTOQUEMAX<>0) '+Where+' '+
            'order by FAM_DESCRICAO, GRU_DESCRICAO, PRO_NOME');
          FormProdutosFast.QY01.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
          FormProdutosFast.QY01.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
          FormProdutosFast.QY01.Open;
          FormProdutosFast.frxReport1.Variables['TITULO']:=QuotedStr('Produtos com quantidade abaixo da máxima');
          FormProdutosFast.frxReport1.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
          FormProdutosFast.frxReport1.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
          FormProdutosFast.frxReport1.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
          FormProdutosFast.frxReport1.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
          FormProdutosFast.frxReport1.Variables['DATAINICIAL']:=QuotedStr(MaskEdit1.Text);
          FormProdutosFast.frxReport1.Variables['DATAFINAL']:=QuotedStr(MaskEdit2.Text);
          FormProdutosFast.frxReport1.Variables['STATUS']:=QuotedStr(ComboBox1.Text);
          FormProdutosFast.frxReport1.Variables['TIPO']:=QuotedStr(ComboBox4.Text);
          FormProdutosFast.frxReport1.Variables['COMPOSTO']:=QuotedStr(ComboBox3.Text);
          FormProdutosFast.frxReport1.Variables['ALM_CODIGO']:=QuotedStr(Edit5.Text);
          FormProdutosFast.frxReport1.Variables['ALM_DESCRICAO']:=QuotedStr(Edit6.Text);
          FormProdutosFast.frxReport1.Variables['FAM_CODIGO']:=QuotedStr(Edit13.Text);
          FormProdutosFast.frxReport1.Variables['FAM_DESCRICAO']:=QuotedStr(Edit14.Text);
          FormProdutosFast.frxReport1.Variables['GRU_CODIGO']:=QuotedStr(Edit3.Text);
          FormProdutosFast.frxReport1.Variables['GRU_DESCRICAO']:=QuotedStr(Edit4.Text);
          FormProdutosFast.frxReport1.Variables['MAR_CODIGO']:=QuotedStr(Edit7.Text);
          FormProdutosFast.frxReport1.Variables['MAR_DESCRICAO']:=QuotedStr(Edit8.Text);
          FormProdutosFast.frxReport1.Variables['FOR_CODIGO']:=QuotedStr(Edit11.Text);
          FormProdutosFast.frxReport1.Variables['FOR_NOME']:=QuotedStr(Edit12.Text);
          FormProdutosFast.frxReport1.Variables['UNI_CODIGO']:=QuotedStr(Edit9.Text);
          FormProdutosFast.frxReport1.Variables['UNI_DESCRICAO']:=QuotedStr(Edit10.Text);
          FormProdutosFast.frxReport1.ShowReport;
          FormProdutosFast.Free;
          FormProdutosFast:=nil;
          {$ENDREGION}
        end;
    07: begin
          {$REGION 'Produtos com quantidade negativa.'}
          //if Edit6.Text <>'' then Where:=Where+' and PRQ_ALMOXARIFADO='+QuotedStr(Edit5.Text);
          if Edit14.Text<>'' then Where:=Where+' and PRO_FAMILIA='+QuotedStr(Edit13.Text);
          if Edit4.Text <>'' then Where:=Where+' and PRO_GRUPO='+QuotedStr(Edit3.Text);
          if Edit8.Text <>'' then Where:=Where+' and PRO_MARCA='+QuotedStr(Edit7.Text);
          if Edit12.Text<>'' then Where:=Where+' and PRO_FORNECEDOR='+QuotedStr(Edit11.Text);
          if Edit10.Text<>'' then Where:=Where+' and PRO_UNIDADE='+QuotedStr(Edit9.Text);
          if ComboBox1.Text='ATIVOS' then Where:=Where+' and PRO_STATUS=''A''' else
          if ComboBox1.Text='INATIVOS' then Where:=Where+' and PRO_STATUS=''I''';
          if ComboBox4.Text='PRODUTO' then Where:=Where+' and PRO_TIPO=''P''' else
          if ComboBox4.Text='SERVIÇO' then Where:=Where+' and PRO_TIPO=''S''';
          if ComboBox3.Text='SIM' then Where:=Where+' and PRO_COMPOSTO=''S''' else
          if ComboBox3.Text='NAO' then Where:=Where+' and PRO_COMPOSTO=''N''';
          Application.CreateForm(TFormProdutosFast, FormProdutosFast);
          FormProdutosFast.QY01.Close;
          FormProdutosFast.QY01.SQL.Clear;
          if Edit6.Text<>'' then //almoxarifado.
          FormProdutosFast.QY01.SQL.Add(
            'select PRO_CODIGO, PRO_DTCADASTRO, PRO_ESTOQUEATUAL, PRO_ESTOQUEMAX, PRO_ESTOQUEMIN, PRO_FAMILIA, PRO_FORNECEDOR, '+
            'PRO_GRUPO, PRO_LOCALIZACAO, PRO_MARCA, PRO_NOME, PRO_PRECOVENDA, PRO_UNIDADE, FAM_DESCRICAO, FOR_NOME, GRU_DESCRICAO, MAR_DESCRICAO from PRODUTOSQTDE '+
            'left join PRODUTOS on PRQ_PRODUTO=PRO_CODIGO '+
            'left join FAMILIAS on PRO_FAMILIA=FAM_CODIGO '+
            'left join FORNECEDORES on PRO_FORNECEDOR=FOR_CODIGO '+
            'left join GRUPOS on PRO_GRUPO=GRU_CODIGO '+
            'left join MARCAS on PRO_MARCA=MAR_CODIGO '+
            'where PRO_DTCADASTRO between :datainicial and :datafinal and PRQ_ALMOXARIFADO='+QuotedStr(Edit5.Text)+' and PRQ_QUANTIDADE<0 '+Where+' '+
            'order by FAM_DESCRICAO, GRU_DESCRICAO, PRO_NOME') else
          FormProdutosFast.QY01.SQL.Add(
            'select PRO_CODIGO, PRO_DTCADASTRO, PRO_ESTOQUEATUAL, PRO_ESTOQUEMAX, PRO_ESTOQUEMIN, PRO_FAMILIA, PRO_FORNECEDOR, '+
            'PRO_GRUPO, PRO_LOCALIZACAO, PRO_MARCA, PRO_NOME, PRO_PRECOVENDA, PRO_UNIDADE, FAM_DESCRICAO, FOR_NOME, GRU_DESCRICAO, MAR_DESCRICAO from PRODUTOS '+
            'left join FAMILIAS on PRO_FAMILIA=FAM_CODIGO '+
            'left join FORNECEDORES on PRO_FORNECEDOR=FOR_CODIGO '+
            'left join GRUPOS on PRO_GRUPO=GRU_CODIGO '+
            'left join MARCAS on PRO_MARCA=MAR_CODIGO '+
            'where PRO_DTCADASTRO between :datainicial and :datafinal and PRO_ESTOQUEATUAL<0 '+Where+' '+
            'order by FAM_DESCRICAO, GRU_DESCRICAO, PRO_NOME');
          FormProdutosFast.QY01.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
          FormProdutosFast.QY01.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
          FormProdutosFast.QY01.Open;
          FormProdutosFast.frxReport1.Variables['TITULO']:=QuotedStr('Produtos com quantidade negativa');
          FormProdutosFast.frxReport1.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
          FormProdutosFast.frxReport1.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
          FormProdutosFast.frxReport1.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
          FormProdutosFast.frxReport1.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
          FormProdutosFast.frxReport1.Variables['DATAINICIAL']:=QuotedStr(MaskEdit1.Text);
          FormProdutosFast.frxReport1.Variables['DATAFINAL']:=QuotedStr(MaskEdit2.Text);
          FormProdutosFast.frxReport1.Variables['STATUS']:=QuotedStr(ComboBox1.Text);
          FormProdutosFast.frxReport1.Variables['TIPO']:=QuotedStr(ComboBox4.Text);
          FormProdutosFast.frxReport1.Variables['COMPOSTO']:=QuotedStr(ComboBox3.Text);
          FormProdutosFast.frxReport1.Variables['ALM_CODIGO']:=QuotedStr(Edit5.Text);
          FormProdutosFast.frxReport1.Variables['ALM_DESCRICAO']:=QuotedStr(Edit6.Text);
          FormProdutosFast.frxReport1.Variables['FAM_CODIGO']:=QuotedStr(Edit13.Text);
          FormProdutosFast.frxReport1.Variables['FAM_DESCRICAO']:=QuotedStr(Edit14.Text);
          FormProdutosFast.frxReport1.Variables['GRU_CODIGO']:=QuotedStr(Edit3.Text);
          FormProdutosFast.frxReport1.Variables['GRU_DESCRICAO']:=QuotedStr(Edit4.Text);
          FormProdutosFast.frxReport1.Variables['MAR_CODIGO']:=QuotedStr(Edit7.Text);
          FormProdutosFast.frxReport1.Variables['MAR_DESCRICAO']:=QuotedStr(Edit8.Text);
          FormProdutosFast.frxReport1.Variables['FOR_CODIGO']:=QuotedStr(Edit11.Text);
          FormProdutosFast.frxReport1.Variables['FOR_NOME']:=QuotedStr(Edit12.Text);
          FormProdutosFast.frxReport1.Variables['UNI_CODIGO']:=QuotedStr(Edit9.Text);
          FormProdutosFast.frxReport1.Variables['UNI_DESCRICAO']:=QuotedStr(Edit10.Text);
          FormProdutosFast.frxReport1.ShowReport;
          FormProdutosFast.Free;
          FormProdutosFast:=nil;
          {$ENDREGION}
        end;
    08: begin
          {$REGION 'Produtos com quantidade negativa ou zerada.'}
          //if Edit6.Text <>'' then Where:=Where+' and PRQ_ALMOXARIFADO='+QuotedStr(Edit5.Text);
          if Edit14.Text<>'' then Where:=Where+' and PRO_FAMILIA='+QuotedStr(Edit13.Text);
          if Edit4.Text <>'' then Where:=Where+' and PRO_GRUPO='+QuotedStr(Edit3.Text);
          if Edit8.Text <>'' then Where:=Where+' and PRO_MARCA='+QuotedStr(Edit7.Text);
          if Edit12.Text<>'' then Where:=Where+' and PRO_FORNECEDOR='+QuotedStr(Edit11.Text);
          if Edit10.Text<>'' then Where:=Where+' and PRO_UNIDADE='+QuotedStr(Edit9.Text);
          if ComboBox1.Text='ATIVOS' then Where:=Where+' and PRO_STATUS=''A''' else
          if ComboBox1.Text='INATIVOS' then Where:=Where+' and PRO_STATUS=''I''';
          if ComboBox4.Text='PRODUTO' then Where:=Where+' and PRO_TIPO=''P''' else
          if ComboBox4.Text='SERVIÇO' then Where:=Where+' and PRO_TIPO=''S''';
          if ComboBox3.Text='SIM' then Where:=Where+' and PRO_COMPOSTO=''S''' else
          if ComboBox3.Text='NAO' then Where:=Where+' and PRO_COMPOSTO=''N''';
          Application.CreateForm(TFormProdutosFast, FormProdutosFast);
          FormProdutosFast.QY01.Close;
          FormProdutosFast.QY01.SQL.Clear;
          if Edit6.Text<>'' then //almoxarifado.
          FormProdutosFast.QY01.SQL.Add(
            'select PRO_CODIGO, PRO_DTCADASTRO, PRO_ESTOQUEATUAL, PRO_ESTOQUEMAX, PRO_ESTOQUEMIN, PRO_FAMILIA, PRO_FORNECEDOR, '+
            'PRO_GRUPO, PRO_LOCALIZACAO, PRO_MARCA, PRO_NOME, PRO_PRECOVENDA, PRO_UNIDADE, FAM_DESCRICAO, FOR_NOME, GRU_DESCRICAO, MAR_DESCRICAO from PRODUTOSQTDE '+
            'left join PRODUTOS on PRQ_PRODUTO=PRO_CODIGO '+
            'left join FAMILIAS on PRO_FAMILIA=FAM_CODIGO '+
            'left join FORNECEDORES on PRO_FORNECEDOR=FOR_CODIGO '+
            'left join GRUPOS on PRO_GRUPO=GRU_CODIGO '+
            'left join MARCAS on PRO_MARCA=MAR_CODIGO '+
            'where PRO_DTCADASTRO between :datainicial and :datafinal and PRQ_ALMOXARIFADO='+QuotedStr(Edit5.Text)+' and PRQ_QUANTIDADE<=0 '+Where+' '+
            'order by FAM_DESCRICAO, GRU_DESCRICAO, PRO_NOME') else
          FormProdutosFast.QY01.SQL.Add(
            'select PRO_CODIGO, PRO_DTCADASTRO, PRO_ESTOQUEATUAL, PRO_ESTOQUEMAX, PRO_ESTOQUEMIN, PRO_FAMILIA, PRO_FORNECEDOR, '+
            'PRO_GRUPO, PRO_LOCALIZACAO, PRO_MARCA, PRO_NOME, PRO_PRECOVENDA, PRO_UNIDADE, FAM_DESCRICAO, FOR_NOME, GRU_DESCRICAO, MAR_DESCRICAO from PRODUTOS '+
            'left join FAMILIAS on PRO_FAMILIA=FAM_CODIGO '+
            'left join FORNECEDORES on PRO_FORNECEDOR=FOR_CODIGO '+
            'left join GRUPOS on PRO_GRUPO=GRU_CODIGO '+
            'left join MARCAS on PRO_MARCA=MAR_CODIGO '+
            'where PRO_DTCADASTRO between :datainicial and :datafinal and PRO_ESTOQUEATUAL<=0 '+Where+' '+
            'order by FAM_DESCRICAO, GRU_DESCRICAO, PRO_NOME');
          FormProdutosFast.QY01.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
          FormProdutosFast.QY01.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
          FormProdutosFast.QY01.Open;
          FormProdutosFast.frxReport1.Variables['TITULO']:=QuotedStr('Produtos com quantidade negativa ou zerada');
          FormProdutosFast.frxReport1.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
          FormProdutosFast.frxReport1.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
          FormProdutosFast.frxReport1.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
          FormProdutosFast.frxReport1.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
          FormProdutosFast.frxReport1.Variables['DATAINICIAL']:=QuotedStr(MaskEdit1.Text);
          FormProdutosFast.frxReport1.Variables['DATAFINAL']:=QuotedStr(MaskEdit2.Text);
          FormProdutosFast.frxReport1.Variables['STATUS']:=QuotedStr(ComboBox1.Text);
          FormProdutosFast.frxReport1.Variables['TIPO']:=QuotedStr(ComboBox4.Text);
          FormProdutosFast.frxReport1.Variables['COMPOSTO']:=QuotedStr(ComboBox3.Text);
          FormProdutosFast.frxReport1.Variables['ALM_CODIGO']:=QuotedStr(Edit5.Text);
          FormProdutosFast.frxReport1.Variables['ALM_DESCRICAO']:=QuotedStr(Edit6.Text);
          FormProdutosFast.frxReport1.Variables['FAM_CODIGO']:=QuotedStr(Edit13.Text);
          FormProdutosFast.frxReport1.Variables['FAM_DESCRICAO']:=QuotedStr(Edit14.Text);
          FormProdutosFast.frxReport1.Variables['GRU_CODIGO']:=QuotedStr(Edit3.Text);
          FormProdutosFast.frxReport1.Variables['GRU_DESCRICAO']:=QuotedStr(Edit4.Text);
          FormProdutosFast.frxReport1.Variables['MAR_CODIGO']:=QuotedStr(Edit7.Text);
          FormProdutosFast.frxReport1.Variables['MAR_DESCRICAO']:=QuotedStr(Edit8.Text);
          FormProdutosFast.frxReport1.Variables['FOR_CODIGO']:=QuotedStr(Edit11.Text);
          FormProdutosFast.frxReport1.Variables['FOR_NOME']:=QuotedStr(Edit12.Text);
          FormProdutosFast.frxReport1.Variables['UNI_CODIGO']:=QuotedStr(Edit9.Text);
          FormProdutosFast.frxReport1.Variables['UNI_DESCRICAO']:=QuotedStr(Edit10.Text);
          FormProdutosFast.frxReport1.ShowReport;
          FormProdutosFast.Free;
          FormProdutosFast:=nil;
          {$ENDREGION}
        end;
    09: begin
          {$REGION 'Produtos com quantidade diferente de zero.'}
          //if Edit6.Text <>'' then Where:=Where+' and PRQ_ALMOXARIFADO='+QuotedStr(Edit5.Text);
          if Edit14.Text<>'' then Where:=Where+' and PRO_FAMILIA='+QuotedStr(Edit13.Text);
          if Edit4.Text <>'' then Where:=Where+' and PRO_GRUPO='+QuotedStr(Edit3.Text);
          if Edit8.Text <>'' then Where:=Where+' and PRO_MARCA='+QuotedStr(Edit7.Text);
          if Edit12.Text<>'' then Where:=Where+' and PRO_FORNECEDOR='+QuotedStr(Edit11.Text);
          if Edit10.Text<>'' then Where:=Where+' and PRO_UNIDADE='+QuotedStr(Edit9.Text);
          if ComboBox1.Text='ATIVOS' then Where:=Where+' and PRO_STATUS=''A''' else
          if ComboBox1.Text='INATIVOS' then Where:=Where+' and PRO_STATUS=''I''';
          if ComboBox4.Text='PRODUTO' then Where:=Where+' and PRO_TIPO=''P''' else
          if ComboBox4.Text='SERVIÇO' then Where:=Where+' and PRO_TIPO=''S''';
          if ComboBox3.Text='SIM' then Where:=Where+' and PRO_COMPOSTO=''S''' else
          if ComboBox3.Text='NAO' then Where:=Where+' and PRO_COMPOSTO=''N''';
          Application.CreateForm(TFormProdutosFast, FormProdutosFast);
          FormProdutosFast.QY01.Close;
          FormProdutosFast.QY01.SQL.Clear;
          if Edit6.Text<>'' then //almoxarifado.
          FormProdutosFast.QY01.SQL.Add(
            'select PRO_CODIGO, PRO_DTCADASTRO, PRO_ESTOQUEATUAL, PRO_ESTOQUEMAX, PRO_ESTOQUEMIN, PRO_FAMILIA, PRO_FORNECEDOR, '+
            'PRO_GRUPO, PRO_LOCALIZACAO, PRO_MARCA, PRO_NOME, PRO_PRECOVENDA, PRO_UNIDADE, FAM_DESCRICAO, FOR_NOME, GRU_DESCRICAO, MAR_DESCRICAO from PRODUTOSQTDE '+
            'left join PRODUTOS on PRQ_PRODUTO=PRO_CODIGO '+
            'left join FAMILIAS on PRO_FAMILIA=FAM_CODIGO '+
            'left join FORNECEDORES on PRO_FORNECEDOR=FOR_CODIGO '+
            'left join GRUPOS on PRO_GRUPO=GRU_CODIGO '+
            'left join MARCAS on PRO_MARCA=MAR_CODIGO '+
            'where PRO_DTCADASTRO between :datainicial and :datafinal and PRQ_ALMOXARIFADO='+QuotedStr(Edit5.Text)+' and PRQ_QUANTIDADE<>0 '+Where+' '+
            'order by FAM_DESCRICAO, GRU_DESCRICAO, PRO_NOME') else
          FormProdutosFast.QY01.SQL.Add(
            'select PRO_CODIGO, PRO_DTCADASTRO, PRO_ESTOQUEATUAL, PRO_ESTOQUEMAX, PRO_ESTOQUEMIN, PRO_FAMILIA, PRO_FORNECEDOR, '+
            'PRO_GRUPO, PRO_LOCALIZACAO, PRO_MARCA, PRO_NOME, PRO_PRECOVENDA, PRO_UNIDADE, FAM_DESCRICAO, FOR_NOME, GRU_DESCRICAO, MAR_DESCRICAO from PRODUTOS '+
            'left join FAMILIAS on PRO_FAMILIA=FAM_CODIGO '+
            'left join FORNECEDORES on PRO_FORNECEDOR=FOR_CODIGO '+
            'left join GRUPOS on PRO_GRUPO=GRU_CODIGO '+
            'left join MARCAS on PRO_MARCA=MAR_CODIGO '+
            'where PRO_DTCADASTRO between :datainicial and :datafinal and PRO_ESTOQUEATUAL<>0 '+Where+' '+
            'order by FAM_DESCRICAO, GRU_DESCRICAO, PRO_NOME');
          FormProdutosFast.QY01.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
          FormProdutosFast.QY01.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
          FormProdutosFast.QY01.Open;
          FormProdutosFast.frxReport1.Variables['TITULO']:=QuotedStr('Produtos com quantidade diferente de zero');
          FormProdutosFast.frxReport1.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
          FormProdutosFast.frxReport1.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
          FormProdutosFast.frxReport1.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
          FormProdutosFast.frxReport1.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
          FormProdutosFast.frxReport1.Variables['DATAINICIAL']:=QuotedStr(MaskEdit1.Text);
          FormProdutosFast.frxReport1.Variables['DATAFINAL']:=QuotedStr(MaskEdit2.Text);
          FormProdutosFast.frxReport1.Variables['STATUS']:=QuotedStr(ComboBox1.Text);
          FormProdutosFast.frxReport1.Variables['TIPO']:=QuotedStr(ComboBox4.Text);
          FormProdutosFast.frxReport1.Variables['COMPOSTO']:=QuotedStr(ComboBox3.Text);
          FormProdutosFast.frxReport1.Variables['ALM_CODIGO']:=QuotedStr(Edit5.Text);
          FormProdutosFast.frxReport1.Variables['ALM_DESCRICAO']:=QuotedStr(Edit6.Text);
          FormProdutosFast.frxReport1.Variables['FAM_CODIGO']:=QuotedStr(Edit13.Text);
          FormProdutosFast.frxReport1.Variables['FAM_DESCRICAO']:=QuotedStr(Edit14.Text);
          FormProdutosFast.frxReport1.Variables['GRU_CODIGO']:=QuotedStr(Edit3.Text);
          FormProdutosFast.frxReport1.Variables['GRU_DESCRICAO']:=QuotedStr(Edit4.Text);
          FormProdutosFast.frxReport1.Variables['MAR_CODIGO']:=QuotedStr(Edit7.Text);
          FormProdutosFast.frxReport1.Variables['MAR_DESCRICAO']:=QuotedStr(Edit8.Text);
          FormProdutosFast.frxReport1.Variables['FOR_CODIGO']:=QuotedStr(Edit11.Text);
          FormProdutosFast.frxReport1.Variables['FOR_NOME']:=QuotedStr(Edit12.Text);
          FormProdutosFast.frxReport1.Variables['UNI_CODIGO']:=QuotedStr(Edit9.Text);
          FormProdutosFast.frxReport1.Variables['UNI_DESCRICAO']:=QuotedStr(Edit10.Text);
          FormProdutosFast.frxReport1.ShowReport;
          FormProdutosFast.Free;
          FormProdutosFast:=nil;
          {$ENDREGION}
        end;
    10: begin
          {$REGION 'Produtos com quantidade diferente da soma dos almoxarifados.'}
          if Edit14.Text<>'' then Where:=Where+' and PRO_FAMILIA='+QuotedStr(Edit13.Text);
          if Edit4.Text <>'' then Where:=Where+' and PRO_GRUPO='+QuotedStr(Edit3.Text);
          if Edit8.Text <>'' then Where:=Where+' and PRO_MARCA='+QuotedStr(Edit7.Text);
          if Edit12.Text<>'' then Where:=Where+' and PCO_FORNECEDOR='+QuotedStr(Edit11.Text);
          if Edit10.Text<>'' then Where:=Where+' and PRO_UNIDADE='+QuotedStr(Edit9.Text);
          if ComboBox1.Text='ATIVOS' then Where:=Where+' and PRO_STATUS=''A''' else
          if ComboBox1.Text='INATIVOS' then Where:=Where+' and PRO_STATUS=''I''';
          if ComboBox4.Text='PRODUTO' then Where:=Where+' and PRO_TIPO=''P''' else
          if ComboBox4.Text='SERVIÇO' then Where:=Where+' and PRO_TIPO=''S''';
          Application.CreateForm(TFormProdutosFast, FormProdutosFast);
          FormProdutosFast.QY06.Close;
          FormProdutosFast.QY06.SQL.Clear;
          FormProdutosFast.QY06.SQL.Add(
            'select PRQ_PRODUTO, sum(PRQ_QUANTIDADE) as TOTALALMOXARIFADOS, PRO_ESTOQUEATUAL, PRO_NOME from PRODUTOSQTDE '+
            'left join PRODUTOS on PRQ_PRODUTO=PRO_CODIGO '+
            'where PRO_DTCADASTRO between :datainicial and :datafinal '+Where+' '+
            'group by PRQ_PRODUTO, PRO_ESTOQUEATUAL, PRO_NOME '+
            'having sum(PRQ_QUANTIDADE)<>PRO_ESTOQUEATUAL '+
            'order by PRO_NOME');
          FormProdutosFast.QY06.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
          FormProdutosFast.QY06.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
          FormProdutosFast.QY06.Open;
          FormProdutosFast.frxReport6.Variables['TITULO']:=QuotedStr('Produtos com quantidade diferente da soma dos almoxarifados.');
          FormProdutosFast.frxReport6.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
          FormProdutosFast.frxReport6.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
          FormProdutosFast.frxReport6.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
          FormProdutosFast.frxReport6.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
          FormProdutosFast.frxReport6.Variables['DATAINICIAL']:=QuotedStr(MaskEdit1.Text);
          FormProdutosFast.frxReport6.Variables['DATAFINAL']:=QuotedStr(MaskEdit2.Text);
          FormProdutosFast.frxReport6.Variables['STATUS']:=QuotedStr(ComboBox1.Text);
          FormProdutosFast.frxReport6.Variables['TIPO']:=QuotedStr(ComboBox4.Text);
          FormProdutosFast.frxReport6.Variables['FAM_CODIGO']:=QuotedStr(Edit13.Text);
          FormProdutosFast.frxReport6.Variables['FAM_DESCRICAO']:=QuotedStr(Edit14.Text);
          FormProdutosFast.frxReport6.Variables['GRU_CODIGO']:=QuotedStr(Edit3.Text);
          FormProdutosFast.frxReport6.Variables['GRU_DESCRICAO']:=QuotedStr(Edit4.Text);
          FormProdutosFast.frxReport6.Variables['MAR_CODIGO']:=QuotedStr(Edit7.Text);
          FormProdutosFast.frxReport6.Variables['MAR_DESCRICAO']:=QuotedStr(Edit8.Text);
          FormProdutosFast.frxReport6.Variables['FOR_CODIGO']:=QuotedStr(Edit11.Text);
          FormProdutosFast.frxReport6.Variables['FOR_NOME']:=QuotedStr(Edit12.Text);
          FormProdutosFast.frxReport6.Variables['UNI_CODIGO']:=QuotedStr(Edit9.Text);
          FormProdutosFast.frxReport6.Variables['UNI_DESCRICAO']:=QuotedStr(Edit10.Text);
          FormProdutosFast.frxReport6.ShowReport;
          FormProdutosFast.Free;
          FormProdutosFast:=nil;
          {$ENDREGION}
        end;
    11: begin
          {$REGION 'Produtos com preço de custo zerado ou negativo.'}
          if Edit14.Text<>'' then Where:=Where+' and PRO_FAMILIA='+QuotedStr(Edit13.Text);
          if Edit4.Text <>'' then Where:=Where+' and PRO_GRUPO='+QuotedStr(Edit3.Text);
          if Edit8.Text <>'' then Where:=Where+' and PRO_MARCA='+QuotedStr(Edit7.Text);
          if Edit12.Text<>'' then Where:=Where+' and PRO_FORNECEDOR='+QuotedStr(Edit11.Text);
          if Edit10.Text<>'' then Where:=Where+' and PRO_UNIDADE='+QuotedStr(Edit9.Text);
          if ComboBox1.Text='ATIVOS' then Where:=Where+' and PRO_STATUS=''A''' else
          if ComboBox1.Text='INATIVOS' then Where:=Where+' and PRO_STATUS=''I''';
          if ComboBox4.Text='PRODUTO' then Where:=Where+' and PRO_TIPO=''P''' else
          if ComboBox4.Text='SERVIÇO' then Where:=Where+' and PRO_TIPO=''S''';
          Application.CreateForm(TFormProdutosFast, FormProdutosFast);
          FormProdutosFast.QY07.Close;
          FormProdutosFast.QY07.SQL.Clear;
          FormProdutosFast.QY07.SQL.Add(
            'select PRO_CODIGO, PRO_GRUPO, PRO_NOME, PRO_PRECOCUSTO, PRO_PRECOCUSTOCOMP, PRO_PRECOVENDA, GRU_DESCRICAO from PRODUTOS '+
            'left join GRUPOS on PRO_GRUPO=GRU_CODIGO '+
            'where PRO_DTCADASTRO between :datainicial and :datafinal and (PRO_PRECOCUSTO <= 0) '+Where+' '+
            'order by GRU_DESCRICAO, PRO_NOME');
          FormProdutosFast.QY07.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
          FormProdutosFast.QY07.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
          FormProdutosFast.QY07.Open;
          FormProdutosFast.frxReport7.Variables['TITULO']:=QuotedStr('Produtos com preço de custo zerado ou negativo.');
          FormProdutosFast.frxReport7.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
          FormProdutosFast.frxReport7.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
          FormProdutosFast.frxReport7.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
          FormProdutosFast.frxReport7.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
          FormProdutosFast.frxReport7.Variables['DATAINICIAL']:=QuotedStr(MaskEdit1.Text);
          FormProdutosFast.frxReport7.Variables['DATAFINAL']:=QuotedStr(MaskEdit2.Text);
          FormProdutosFast.frxReport7.Variables['STATUS']:=QuotedStr(ComboBox1.Text);
          FormProdutosFast.frxReport7.Variables['TIPO']:=QuotedStr(ComboBox4.Text);
          FormProdutosFast.frxReport7.Variables['FAM_CODIGO']:=QuotedStr(Edit13.Text);
          FormProdutosFast.frxReport7.Variables['FAM_DESCRICAO']:=QuotedStr(Edit14.Text);
          FormProdutosFast.frxReport7.Variables['GRU_CODIGO']:=QuotedStr(Edit3.Text);
          FormProdutosFast.frxReport7.Variables['GRU_DESCRICAO']:=QuotedStr(Edit4.Text);
          FormProdutosFast.frxReport7.Variables['MAR_CODIGO']:=QuotedStr(Edit7.Text);
          FormProdutosFast.frxReport7.Variables['MAR_DESCRICAO']:=QuotedStr(Edit8.Text);
          FormProdutosFast.frxReport7.Variables['FOR_CODIGO']:=QuotedStr(Edit11.Text);
          FormProdutosFast.frxReport7.Variables['FOR_NOME']:=QuotedStr(Edit12.Text);
          FormProdutosFast.frxReport7.Variables['UNI_CODIGO']:=QuotedStr(Edit9.Text);
          FormProdutosFast.frxReport7.Variables['UNI_DESCRICAO']:=QuotedStr(Edit10.Text);
          FormProdutosFast.frxReport7.ShowReport;
          FormProdutosFast.Free;
          FormProdutosFast:=nil;
          {$ENDREGION}
        end;
    12: begin
          {$REGION 'Produtos com códigos de fornecedores'}
          if Edit14.Text<>'' then Where:=Where+' and PRO_FAMILIA='+QuotedStr(Edit13.Text);
          if Edit4.Text <>'' then Where:=Where+' and PRO_GRUPO='+QuotedStr(Edit3.Text);
          if Edit8.Text <>'' then Where:=Where+' and PRO_MARCA='+QuotedStr(Edit7.Text);
          if Edit12.Text<>'' then Where:=Where+' and PCO_FORNECEDOR='+QuotedStr(Edit11.Text);
          if Edit10.Text<>'' then Where:=Where+' and PRO_UNIDADE='+QuotedStr(Edit9.Text);
          if ComboBox1.Text='ATIVOS' then Where:=Where+' and PRO_STATUS=''A''' else
          if ComboBox1.Text='INATIVOS' then Where:=Where+' and PRO_STATUS=''I''';
          if ComboBox4.Text='PRODUTO' then Where:=Where+' and PRO_TIPO=''P''' else
          if ComboBox4.Text='SERVIÇO' then Where:=Where+' and PRO_TIPO=''S''';
          Application.CreateForm(TFormProdutosFast, FormProdutosFast);
          FormProdutosFast.QY04.Close;
          FormProdutosFast.QY04.SQL.Clear;
          FormProdutosFast.QY04.SQL.Add(
            'select PRO_CODIGO, PRO_GRUPO, PRO_NOME, PRO_PRECOVENDA, FOR_NOME, GRU_DESCRICAO, PCO_FORNECEDOR, PCO_CODIGOFORNECEDOR from PRODUTOSCODIGOS '+
            'left join PRODUTOS on PCO_PRODUTO=PRO_CODIGO '+
            'left join FORNECEDORES on PCO_FORNECEDOR=FOR_CODIGO '+
            'left join GRUPOS on PRO_GRUPO=GRU_CODIGO '+
            'where PRO_DTCADASTRO between :datainicial and :datafinal '+Where+' '+
            'order by GRU_DESCRICAO, PRO_NOME, FOR_NOME');
          FormProdutosFast.QY04.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
          FormProdutosFast.QY04.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
          FormProdutosFast.QY04.Open;
          FormProdutosFast.frxReport4.Variables['TITULO']:=QuotedStr('Produtos com códigos de fornecedores.');
          FormProdutosFast.frxReport4.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
          FormProdutosFast.frxReport4.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
          FormProdutosFast.frxReport4.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
          FormProdutosFast.frxReport4.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
          FormProdutosFast.frxReport4.Variables['DATAINICIAL']:=QuotedStr(MaskEdit1.Text);
          FormProdutosFast.frxReport4.Variables['DATAFINAL']:=QuotedStr(MaskEdit2.Text);
          FormProdutosFast.frxReport4.Variables['STATUS']:=QuotedStr(ComboBox1.Text);
          FormProdutosFast.frxReport4.Variables['TIPO']:=QuotedStr(ComboBox4.Text);
          FormProdutosFast.frxReport4.Variables['FAM_CODIGO']:=QuotedStr(Edit13.Text);
          FormProdutosFast.frxReport4.Variables['FAM_DESCRICAO']:=QuotedStr(Edit14.Text);
          FormProdutosFast.frxReport4.Variables['GRU_CODIGO']:=QuotedStr(Edit3.Text);
          FormProdutosFast.frxReport4.Variables['GRU_DESCRICAO']:=QuotedStr(Edit4.Text);
          FormProdutosFast.frxReport4.Variables['MAR_CODIGO']:=QuotedStr(Edit7.Text);
          FormProdutosFast.frxReport4.Variables['MAR_DESCRICAO']:=QuotedStr(Edit8.Text);
          FormProdutosFast.frxReport4.Variables['FOR_CODIGO']:=QuotedStr(Edit11.Text);
          FormProdutosFast.frxReport4.Variables['FOR_NOME']:=QuotedStr(Edit12.Text);
          FormProdutosFast.frxReport4.Variables['UNI_CODIGO']:=QuotedStr(Edit9.Text);
          FormProdutosFast.frxReport4.Variables['UNI_DESCRICAO']:=QuotedStr(Edit10.Text);
          FormProdutosFast.frxReport4.ShowReport;
          FormProdutosFast.Free;
          FormProdutosFast:=nil;
          {$ENDREGION}
        end;
    13: begin
          {$REGION 'Produtos compostos sintético'}
          if Edit14.Text<>'' then Where:=Where+' and PRO_FAMILIA='+QuotedStr(Edit13.Text);
          if Edit4.Text <>'' then Where:=Where+' and PRO_GRUPO='+QuotedStr(Edit3.Text);
          if ComboBox1.Text='ATIVOS' then Where:=Where+' and PRO_STATUS=''A''' else
          if ComboBox1.Text='INATIVOS' then Where:=Where+' and PRO_STATUS=''I''';
          Application.CreateForm(TFormProdutosFast, FormProdutosFast);
          FormProdutosFast.QY10.Close;
          FormProdutosFast.QY10.SQL.Clear;
          FormProdutosFast.QY10.SQL.Add(
            'select PRO_CODIGO, PRO_DTCADASTRO, PRO_ESTOQUEMIN, PRO_ESTOQUEMAX, PRO_ESTOQUEATUAL, PRO_FAMILIA, '+
            'PRO_GRUPO, PRO_NOME, PRO_PRECOVENDA, PRO_UNIDADE, FAM_DESCRICAO, GRU_DESCRICAO from PRODUTOS '+
            'left join FAMILIAS on PRO_FAMILIA=FAM_CODIGO '+
            'left join GRUPOS on PRO_GRUPO=GRU_CODIGO '+
            'where PRO_COMPOSTO=''S'' and PRO_DTCADASTRO between :datainicial and :datafinal '+Where+' '+
            'order by FAM_DESCRICAO, GRU_DESCRICAO, PRO_NOME');
          FormProdutosFast.QY10.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
          FormProdutosFast.QY10.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
          FormProdutosFast.QY10.Open;
          FormProdutosFast.frxReport10.Variables['TITULO']:=QuotedStr('Produtos compostos sintético.');
          FormProdutosFast.frxReport10.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
          FormProdutosFast.frxReport10.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
          FormProdutosFast.frxReport10.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
          FormProdutosFast.frxReport10.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
          FormProdutosFast.frxReport10.Variables['DATAINICIAL']:=QuotedStr(MaskEdit1.Text);
          FormProdutosFast.frxReport10.Variables['DATAFINAL']:=QuotedStr(MaskEdit2.Text);
          FormProdutosFast.frxReport10.Variables['STATUS']:=QuotedStr(ComboBox1.Text);
          FormProdutosFast.frxReport10.Variables['FAM_CODIGO']:=QuotedStr(Edit13.Text);
          FormProdutosFast.frxReport10.Variables['FAM_DESCRICAO']:=QuotedStr(Edit14.Text);
          FormProdutosFast.frxReport10.Variables['GRU_CODIGO']:=QuotedStr(Edit3.Text);
          FormProdutosFast.frxReport10.Variables['GRU_DESCRICAO']:=QuotedStr(Edit4.Text);
          FormProdutosFast.frxReport10.ShowReport;
          FormProdutosFast.Free;
          FormProdutosFast:=nil;
          {$ENDREGION}
        end;
    14: begin
          {$REGION 'Produtos compostos analítico'}
          if Edit2.Text<>'' then Where:=Where+' and PRO_CODIGO='+QuotedStr(Edit1.Text);
          if Edit14.Text<>'' then Where:=Where+' and PRO_FAMILIA='+QuotedStr(Edit13.Text);
          if Edit4.Text <>'' then Where:=Where+' and PRO_GRUPO='+QuotedStr(Edit3.Text);
          if ComboBox1.Text='ATIVOS' then Where:=Where+' and PRO_STATUS=''A''' else
          if ComboBox1.Text='INATIVOS' then Where:=Where+' and PRO_STATUS=''I''';
          Application.CreateForm(TFormProdutosFast, FormProdutosFast);
          FormProdutosFast.QY11.Close;
          FormProdutosFast.QY11.SQL.Clear;
          FormProdutosFast.QY11.SQL.Add(
            'select PRO_CODIGO, PRO_DTCADASTRO, PRO_ESTOQUEMIN, PRO_ESTOQUEMAX, PRO_ESTOQUEATUAL, PRO_FAMILIA, PRO_GRUPO, '+
            'PRO_NOME, PRO_PRECOVENDA, PRO_UNIDADE, FAM_DESCRICAO, GRU_DESCRICAO from PRODUTOS '+
            'left join FAMILIAS on PRO_FAMILIA=FAM_CODIGO '+
            'left join GRUPOS on PRO_GRUPO=GRU_CODIGO '+
            'where PRO_COMPOSTO=''S'' and PRO_DTCADASTRO between :datainicial and :datafinal '+Where+' '+
            'order by PRO_NOME');
          FormProdutosFast.QY11.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
          FormProdutosFast.QY11.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
          FormProdutosFast.QY11.Open;

          FormProdutosFast.GerarTabelaCompostos; //gera a tabela de memoria com as composições.

          FormProdutosFast.frxReport11.Variables['TITULO']:=QuotedStr('Produtos compostos analítico.');
          FormProdutosFast.frxReport11.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
          FormProdutosFast.frxReport11.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
          FormProdutosFast.frxReport11.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
          FormProdutosFast.frxReport11.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
          FormProdutosFast.frxReport11.Variables['DATAINICIAL']:=QuotedStr(MaskEdit1.Text);
          FormProdutosFast.frxReport11.Variables['DATAFINAL']:=QuotedStr(MaskEdit2.Text);
          FormProdutosFast.frxReport11.Variables['STATUS']:=QuotedStr(ComboBox1.Text);
          FormProdutosFast.frxReport11.Variables['FAM_CODIGO']:=QuotedStr(Edit13.Text);
          FormProdutosFast.frxReport11.Variables['FAM_DESCRICAO']:=QuotedStr(Edit14.Text);
          FormProdutosFast.frxReport11.Variables['GRU_CODIGO']:=QuotedStr(Edit3.Text);
          FormProdutosFast.frxReport11.Variables['GRU_DESCRICAO']:=QuotedStr(Edit4.Text);
          FormProdutosFast.frxReport11.ShowReport;
          FormProdutosFast.Free;
          FormProdutosFast:=nil;
          {$ENDREGION}
        end;
    15: begin
          {$REGION 'Produtos compostos com preço de custo menor que o preço de custo da composição.'}
          if Edit14.Text<>'' then Where:=Where+' and PRO_FAMILIA='+QuotedStr(Edit13.Text);
          if Edit4.Text <>'' then Where:=Where+' and PRO_GRUPO='+QuotedStr(Edit3.Text);
          if Edit8.Text <>'' then Where:=Where+' and PRO_MARCA='+QuotedStr(Edit7.Text);
          if Edit12.Text<>'' then Where:=Where+' and PRO_FORNECEDOR='+QuotedStr(Edit11.Text);
          if Edit10.Text<>'' then Where:=Where+' and PRO_UNIDADE='+QuotedStr(Edit9.Text);
          if ComboBox1.Text='ATIVOS' then Where:=Where+' and PRO_STATUS=''A''' else
          if ComboBox1.Text='INATIVOS' then Where:=Where+' and PRO_STATUS=''I''';
          if ComboBox4.Text='PRODUTO' then Where:=Where+' and PRO_TIPO=''P''' else
          if ComboBox4.Text='SERVIÇO' then Where:=Where+' and PRO_TIPO=''S''';
          Application.CreateForm(TFormProdutosFast, FormProdutosFast);
          FormProdutosFast.QY07.Close;
          FormProdutosFast.QY07.SQL.Clear;
          FormProdutosFast.QY07.SQL.Add(
            'select PRO_CODIGO, PRO_GRUPO, PRO_NOME, PRO_PRECOCUSTO, PRO_PRECOCUSTOCOMP, PRO_PRECOVENDA, GRU_DESCRICAO from PRODUTOS '+
            'left join GRUPOS on PRO_GRUPO=GRU_CODIGO '+
            'where PRO_DTCADASTRO between :datainicial and :datafinal and PRO_COMPOSTO=''S'' and (PRO_PRECOCUSTO < PRO_PRECOCUSTOCOMP) '+Where+' '+
            'order by GRU_DESCRICAO, PRO_NOME');
          FormProdutosFast.QY07.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
          FormProdutosFast.QY07.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
          FormProdutosFast.QY07.Open;
          FormProdutosFast.frxReport7.Variables['TITULO']:=QuotedStr('Produtos compostos com preço de custo menor que o preço de custo da composição.');
          FormProdutosFast.frxReport7.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
          FormProdutosFast.frxReport7.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
          FormProdutosFast.frxReport7.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
          FormProdutosFast.frxReport7.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
          FormProdutosFast.frxReport7.Variables['DATAINICIAL']:=QuotedStr(MaskEdit1.Text);
          FormProdutosFast.frxReport7.Variables['DATAFINAL']:=QuotedStr(MaskEdit2.Text);
          FormProdutosFast.frxReport7.Variables['STATUS']:=QuotedStr(ComboBox1.Text);
          FormProdutosFast.frxReport7.Variables['TIPO']:=QuotedStr(ComboBox4.Text);
          FormProdutosFast.frxReport7.Variables['FAM_CODIGO']:=QuotedStr(Edit13.Text);
          FormProdutosFast.frxReport7.Variables['FAM_DESCRICAO']:=QuotedStr(Edit14.Text);
          FormProdutosFast.frxReport7.Variables['GRU_CODIGO']:=QuotedStr(Edit3.Text);
          FormProdutosFast.frxReport7.Variables['GRU_DESCRICAO']:=QuotedStr(Edit4.Text);
          FormProdutosFast.frxReport7.Variables['MAR_CODIGO']:=QuotedStr(Edit7.Text);
          FormProdutosFast.frxReport7.Variables['MAR_DESCRICAO']:=QuotedStr(Edit8.Text);
          FormProdutosFast.frxReport7.Variables['FOR_CODIGO']:=QuotedStr(Edit11.Text);
          FormProdutosFast.frxReport7.Variables['FOR_NOME']:=QuotedStr(Edit12.Text);
          FormProdutosFast.frxReport7.Variables['UNI_CODIGO']:=QuotedStr(Edit9.Text);
          FormProdutosFast.frxReport7.Variables['UNI_DESCRICAO']:=QuotedStr(Edit10.Text);
          FormProdutosFast.frxReport7.ShowReport;
          FormProdutosFast.Free;
          FormProdutosFast:=nil;
         {$ENDREGION}
        end;
    16: begin
          {$REGION 'Produtos compostos de um produto.'}
          AbortIf(Trim(Edit2.Text)='','Informe o produto.');

          Application.CreateForm(TFormProdutosFast, FormProdutosFast);
          FormProdutosFast.QY12.Close;
          FormProdutosFast.QY12.ParamByName('codigo').AsInteger:=StrToInt(Edit1.Text);
          FormProdutosFast.QY12.Open;
          FormProdutosFast.frxReport12.Variables['TITULO']:=QuotedStr('Produtos compostos de um produto.');
          FormProdutosFast.frxReport12.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
          FormProdutosFast.frxReport12.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
          FormProdutosFast.frxReport12.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
          FormProdutosFast.frxReport12.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
          FormProdutosFast.frxReport12.Variables['DATAINICIAL']:=QuotedStr(MaskEdit1.Text);
          FormProdutosFast.frxReport12.Variables['DATAFINAL']:=QuotedStr(MaskEdit2.Text);
          FormProdutosFast.frxReport12.Variables['STATUS']:=QuotedStr(ComboBox1.Text);
          FormProdutosFast.frxReport12.Variables['FAM_CODIGO']:=QuotedStr(Edit13.Text);
          FormProdutosFast.frxReport12.Variables['FAM_DESCRICAO']:=QuotedStr(Edit14.Text);
          FormProdutosFast.frxReport12.Variables['GRU_CODIGO']:=QuotedStr(Edit3.Text);
          FormProdutosFast.frxReport12.Variables['GRU_DESCRICAO']:=QuotedStr(Edit4.Text);
          FormProdutosFast.frxReport12.ShowReport;
          FormProdutosFast.Free;
          FormProdutosFast:=nil;
          {$ENDREGION}
        end;
    17: begin
          {$REGION 'Produtos por grupo sem foto.'}
          if Edit14.Text<>'' then Where:=Where+' and PRO_FAMILIA='+QuotedStr(Edit13.Text);
          if Edit4.Text <>'' then Where:=Where+' and PRO_GRUPO='+QuotedStr(Edit3.Text);
          if Edit8.Text <>'' then Where:=Where+' and PRO_MARCA='+QuotedStr(Edit7.Text);
          if Edit12.Text<>'' then Where:=Where+' and PRO_FORNECEDOR='+QuotedStr(Edit11.Text);
          if Edit10.Text<>'' then Where:=Where+' and PRO_UNIDADE='+QuotedStr(Edit9.Text);
          if ComboBox1.Text='ATIVOS' then Where:=Where+' and PRO_STATUS=''A''' else
          if ComboBox1.Text='INATIVOS' then Where:=Where+' and PRO_STATUS=''I''';
          if ComboBox4.Text='PRODUTO' then Where:=Where+' and PRO_TIPO=''P''' else
          if ComboBox4.Text='SERVIÇO' then Where:=Where+' and PRO_TIPO=''S''';
          Application.CreateForm(TFormProdutosFast, FormProdutosFast);
          FormProdutosFast.QY17.Close;
          FormProdutosFast.QY17.SQL.Clear;
          FormProdutosFast.QY17.SQL.Add(
            'select PRO_CODIGO, PRO_CODIGOFAB, PRO_CODIGOBARRAS, PRO_ESTOQUEATUAL, PRO_GRUPO, '+
            'PRO_NOME, PRO_TIPO, GRU_DESCRICAO from PRODUTOS '+
            'left join GRUPOS on PRO_GRUPO=GRU_CODIGO '+
            'left join PRODUTOSFOTOS on PRO_CODIGO=PRF_PRODUTO '+
            'where PRF_PRODUTO is null and PRO_DTCADASTRO between :datainicial and :datafinal '+Where+' '+
            'order by GRU_DESCRICAO, PRO_NOME');
          FormProdutosFast.QY17.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
          FormProdutosFast.QY17.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
          FormProdutosFast.QY17.Open;
          FormProdutosFast.frxReport17.Variables['TITULO']:=QuotedStr('Produtos por grupo sem foto.');
          FormProdutosFast.frxReport17.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
          FormProdutosFast.frxReport17.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
          FormProdutosFast.frxReport17.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
          FormProdutosFast.frxReport17.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
          FormProdutosFast.frxReport17.Variables['DATAINICIAL']:=QuotedStr(MaskEdit1.Text);
          FormProdutosFast.frxReport17.Variables['DATAFINAL']:=QuotedStr(MaskEdit2.Text);
          FormProdutosFast.frxReport17.Variables['STATUS']:=QuotedStr(ComboBox1.Text);
          FormProdutosFast.frxReport17.Variables['TIPO']:=QuotedStr(ComboBox4.Text);
          FormProdutosFast.frxReport17.Variables['FAM_CODIGO']:=QuotedStr(Edit13.Text);
          FormProdutosFast.frxReport17.Variables['FAM_DESCRICAO']:=QuotedStr(Edit14.Text);
          FormProdutosFast.frxReport17.Variables['GRU_CODIGO']:=QuotedStr(Edit3.Text);
          FormProdutosFast.frxReport17.Variables['GRU_DESCRICAO']:=QuotedStr(Edit4.Text);
          FormProdutosFast.frxReport17.Variables['MAR_CODIGO']:=QuotedStr(Edit7.Text);
          FormProdutosFast.frxReport17.Variables['MAR_DESCRICAO']:=QuotedStr(Edit8.Text);
          FormProdutosFast.frxReport17.Variables['FOR_CODIGO']:=QuotedStr(Edit11.Text);
          FormProdutosFast.frxReport17.Variables['FOR_NOME']:=QuotedStr(Edit12.Text);
          FormProdutosFast.frxReport17.Variables['UNI_CODIGO']:=QuotedStr(Edit9.Text);
          FormProdutosFast.frxReport17.Variables['UNI_DESCRICAO']:=QuotedStr(Edit10.Text);
          FormProdutosFast.frxReport17.ShowReport;
          FormProdutosFast.Free;
          FormProdutosFast:=nil;
          {$ENDREGION}
        end;
    18: begin
          {$REGION 'Produtos por unidade de medida.'}
          if Edit14.Text<>'' then Where:=Where+' and PRO_FAMILIA='+QuotedStr(Edit13.Text);
          if Edit4.Text <>'' then Where:=Where+' and PRO_GRUPO='+QuotedStr(Edit3.Text);
          if Edit8.Text <>'' then Where:=Where+' and PRO_MARCA='+QuotedStr(Edit7.Text);
          if Edit12.Text<>'' then Where:=Where+' and PRO_FORNECEDOR='+QuotedStr(Edit11.Text);
          if Edit10.Text<>'' then Where:=Where+' and PRO_UNIDADE='+QuotedStr(Edit9.Text);
          if ComboBox1.Text='ATIVOS' then Where:=Where+' and PRO_STATUS=''A''' else
          if ComboBox1.Text='INATIVOS' then Where:=Where+' and PRO_STATUS=''I''';
          if ComboBox4.Text='PRODUTO' then Where:=Where+' and PRO_TIPO=''P''' else
          if ComboBox4.Text='SERVIÇO' then Where:=Where+' and PRO_TIPO=''S''';
          Application.CreateForm(TFormProdutosFast, FormProdutosFast);
          FormProdutosFast.QY02.Close;
          FormProdutosFast.QY02.SQL.Clear;
          FormProdutosFast.QY02.SQL.Add(
            'select PRO_CODIGO, PRO_CODIGOFAB, PRO_CODIGOBARRAS, PRO_GRUPO, PRO_NOME, PRO_UNIDADE, PRO_TIPO, '+
            'PRO_ESTOQUEATUAL, PRO_PRECOVENDA, UNI_DESCRICAO, GRU_DESCRICAO from PRODUTOS '+
            'left join UNIDADES on PRO_UNIDADE=UNI_CODIGO '+
            'left join GRUPOS on PRO_GRUPO=GRU_CODIGO '+
            'where PRO_DTCADASTRO between :datainicial and :datafinal '+Where+' '+
            'order by UNI_DESCRICAO, PRO_NOME');
          FormProdutosFast.QY02.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
          FormProdutosFast.QY02.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
          FormProdutosFast.QY02.Open;
          FormProdutosFast.frxReport2.Variables['TITULO']:=QuotedStr('Produtos por unidade de medida.');
          FormProdutosFast.frxReport2.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
          FormProdutosFast.frxReport2.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
          FormProdutosFast.frxReport2.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
          FormProdutosFast.frxReport2.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
          FormProdutosFast.frxReport2.Variables['DATAINICIAL']:=QuotedStr(MaskEdit1.Text);
          FormProdutosFast.frxReport2.Variables['DATAFINAL']:=QuotedStr(MaskEdit2.Text);
          FormProdutosFast.frxReport2.Variables['STATUS']:=QuotedStr(ComboBox1.Text);
          FormProdutosFast.frxReport2.Variables['TIPO']:=QuotedStr(ComboBox4.Text);
          FormProdutosFast.frxReport2.Variables['FAM_CODIGO']:=QuotedStr(Edit13.Text);
          FormProdutosFast.frxReport2.Variables['FAM_DESCRICAO']:=QuotedStr(Edit14.Text);
          FormProdutosFast.frxReport2.Variables['GRU_CODIGO']:=QuotedStr(Edit3.Text);
          FormProdutosFast.frxReport2.Variables['GRU_DESCRICAO']:=QuotedStr(Edit4.Text);
          FormProdutosFast.frxReport2.Variables['MAR_CODIGO']:=QuotedStr(Edit7.Text);
          FormProdutosFast.frxReport2.Variables['MAR_DESCRICAO']:=QuotedStr(Edit8.Text);
          FormProdutosFast.frxReport2.Variables['FOR_CODIGO']:=QuotedStr(Edit11.Text);
          FormProdutosFast.frxReport2.Variables['FOR_NOME']:=QuotedStr(Edit12.Text);
          FormProdutosFast.frxReport2.Variables['UNI_CODIGO']:=QuotedStr(Edit9.Text);
          FormProdutosFast.frxReport2.Variables['UNI_DESCRICAO']:=QuotedStr(Edit10.Text);
          FormProdutosFast.frxReport2.ShowReport;
          FormProdutosFast.Free;
          FormProdutosFast:=nil;
          {$ENDREGION}
        end;
    19: begin
          {$REGION 'Produtos vs Produtos Reais.'}
          if Edit14.Text<>'' then Where:=Where+' and PRO_FAMILIA='+QuotedStr(Edit13.Text);
          if Edit4.Text <>'' then Where:=Where+' and PRO_GRUPO='+QuotedStr(Edit3.Text);
          if Edit8.Text <>'' then Where:=Where+' and PRO_MARCA='+QuotedStr(Edit7.Text);
          if Edit12.Text<>'' then Where:=Where+' and PCO_FORNECEDOR='+QuotedStr(Edit11.Text);
          if Edit10.Text<>'' then Where:=Where+' and PRO_UNIDADE='+QuotedStr(Edit9.Text);
          if ComboBox1.Text='ATIVOS' then Where:=Where+' and PRO_STATUS=''A''' else
          if ComboBox1.Text='INATIVOS' then Where:=Where+' and PRO_STATUS=''I''';
          if ComboBox4.Text='PRODUTO' then Where:=Where+' and PRO_TIPO=''P''' else
          if ComboBox4.Text='SERVIÇO' then Where:=Where+' and PRO_TIPO=''S''';
          Application.CreateForm(TFormProdutosFast, FormProdutosFast);
          FormProdutosFast.QY05.Close;
          FormProdutosFast.QY05.SQL.Clear;
          FormProdutosFast.QY05.SQL.Add(
            'select A.PRO_CODIGO, A.PRO_CONVERSAO, A.PRO_NOME, A.PRO_PRODUTOREAL, B.PRO_NOME as PRO_NOMEREAL from PRODUTOS A '+
            'left join PRODUTOS B on A.PRO_PRODUTOREAL=B.PRO_CODIGO '+
            'where A.PRO_DTCADASTRO between :datainicial and :datafinal and A.PRO_PRODUTOREAL<>0 '+Where+' '+
            'order by A.PRO_NOME');
          FormProdutosFast.QY05.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
          FormProdutosFast.QY05.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
          FormProdutosFast.QY05.Open;
          FormProdutosFast.frxReport5.Variables['TITULO']:=QuotedStr('Produtos vs produtos reais.');
          FormProdutosFast.frxReport5.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
          FormProdutosFast.frxReport5.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
          FormProdutosFast.frxReport5.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
          FormProdutosFast.frxReport5.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
          FormProdutosFast.frxReport5.Variables['DATAINICIAL']:=QuotedStr(MaskEdit1.Text);
          FormProdutosFast.frxReport5.Variables['DATAFINAL']:=QuotedStr(MaskEdit2.Text);
          FormProdutosFast.frxReport5.Variables['STATUS']:=QuotedStr(ComboBox1.Text);
          FormProdutosFast.frxReport5.Variables['TIPO']:=QuotedStr(ComboBox4.Text);
          FormProdutosFast.frxReport5.Variables['FAM_CODIGO']:=QuotedStr(Edit13.Text);
          FormProdutosFast.frxReport5.Variables['FAM_DESCRICAO']:=QuotedStr(Edit14.Text);
          FormProdutosFast.frxReport5.Variables['GRU_CODIGO']:=QuotedStr(Edit3.Text);
          FormProdutosFast.frxReport5.Variables['GRU_DESCRICAO']:=QuotedStr(Edit4.Text);
          FormProdutosFast.frxReport5.Variables['MAR_CODIGO']:=QuotedStr(Edit7.Text);
          FormProdutosFast.frxReport5.Variables['MAR_DESCRICAO']:=QuotedStr(Edit8.Text);
          FormProdutosFast.frxReport5.Variables['FOR_CODIGO']:=QuotedStr(Edit11.Text);
          FormProdutosFast.frxReport5.Variables['FOR_NOME']:=QuotedStr(Edit12.Text);
          FormProdutosFast.frxReport5.Variables['UNI_CODIGO']:=QuotedStr(Edit9.Text);
          FormProdutosFast.frxReport5.Variables['UNI_DESCRICAO']:=QuotedStr(Edit10.Text);
          FormProdutosFast.frxReport5.ShowReport;
          FormProdutosFast.Free;
          FormProdutosFast:=nil;
          {$ENDREGION}
        end;
    20: begin
          {$REGION 'Posição atual do estoque.'}
          if ComboBox5.Text='N' then Where:=' and PRO_ESTOQUEATUAL<>0';
          if Edit15.Text<>'' then Where:=Where+' and PRO_LOCALIZACAO='+QuotedStr(Edit15.Text);
          if Edit14.Text<>'' then Where:=Where+' and PRO_FAMILIA='+QuotedStr(Edit13.Text);
          if Edit4.Text <>'' then Where:=Where+' and PRO_GRUPO='+QuotedStr(Edit3.Text);
          if Edit8.Text <>'' then Where:=Where+' and PRO_MARCA='+QuotedStr(Edit7.Text);
          if Edit12.Text<>'' then Where:=Where+' and PRO_FORNECEDOR='+QuotedStr(Edit11.Text);
          if Edit10.Text<>'' then Where:=Where+' and PRO_UNIDADE='+QuotedStr(Edit9.Text);
          if ComboBox1.Text='ATIVOS' then Where:=Where+' and PRO_STATUS=''A''' else
          if ComboBox1.Text='INATIVOS' then Where:=Where+' and PRO_STATUS=''I''';
          if ComboBox4.Text='PRODUTO' then Where:=Where+' and PRO_TIPO=''P''' else
          if ComboBox4.Text='SERVIÇO' then Where:=Where+' and PRO_TIPO=''S''';
          Application.CreateForm(TFormProdutosFast, FormProdutosFast);
          FormProdutosFast.QY08.Close;
          FormProdutosFast.QY08.SQL.Clear;
          FormProdutosFast.QY08.SQL.Add(
            'select PRO_CODIGO, PRO_ESTOQUEATUAL, PRO_ESTOQUEMAX, PRO_ESTOQUEMIN, PRO_FAMILIA, PRO_GRUPO, '+
            'PRO_NOME, PRO_PRECOCUSTO, PRO_UNIDADE, GRU_DESCRICAO, FAM_DESCRICAO from PRODUTOS '+
            'left join FAMILIAS on PRO_FAMILIA=FAM_CODIGO '+
            'left join GRUPOS on PRO_GRUPO=GRU_CODIGO '+
            'where PRO_DTCADASTRO between :datainicial and :datafinal '+Where+' '+
            'order by FAM_DESCRICAO, GRU_DESCRICAO, PRO_NOME');
          FormProdutosFast.QY08.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
          FormProdutosFast.QY08.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
          FormProdutosFast.QY08.Open;
          FormProdutosFast.frxReport8.Variables['TITULO']:=QuotedStr('Posição atual do estoque');
          FormProdutosFast.frxReport8.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
          FormProdutosFast.frxReport8.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
          FormProdutosFast.frxReport8.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
          FormProdutosFast.frxReport8.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
          FormProdutosFast.frxReport8.Variables['DATAINICIAL']:=QuotedStr(MaskEdit1.Text);
          FormProdutosFast.frxReport8.Variables['DATAFINAL']:=QuotedStr(MaskEdit2.Text);
          FormProdutosFast.frxReport8.Variables['STATUS']:=QuotedStr(ComboBox1.Text);
          FormProdutosFast.frxReport8.Variables['TIPO']:=QuotedStr(ComboBox4.Text);
          FormProdutosFast.frxReport8.Variables['FAM_CODIGO']:=QuotedStr(Edit13.Text);
          FormProdutosFast.frxReport8.Variables['FAM_DESCRICAO']:=QuotedStr(Edit14.Text);
          FormProdutosFast.frxReport8.Variables['GRU_CODIGO']:=QuotedStr(Edit3.Text);
          FormProdutosFast.frxReport8.Variables['GRU_DESCRICAO']:=QuotedStr(Edit4.Text);
          FormProdutosFast.frxReport8.Variables['MAR_CODIGO']:=QuotedStr(Edit7.Text);
          FormProdutosFast.frxReport8.Variables['MAR_DESCRICAO']:=QuotedStr(Edit8.Text);
          FormProdutosFast.frxReport8.Variables['FOR_CODIGO']:=QuotedStr(Edit11.Text);
          FormProdutosFast.frxReport8.Variables['FOR_NOME']:=QuotedStr(Edit12.Text);
          FormProdutosFast.frxReport8.Variables['UNI_CODIGO']:=QuotedStr(Edit9.Text);
          FormProdutosFast.frxReport8.Variables['UNI_DESCRICAO']:=QuotedStr(Edit10.Text);
          FormProdutosFast.frxReport8.Variables['QTDEZERO']:=QuotedStr(ComboBox5.Text);
          FormProdutosFast.frxReport8.Variables['SEMVALORES']:=QuotedStr('N');
          FormProdutosFast.frxReport8.ShowReport;
          FormProdutosFast.Free;
          FormProdutosFast:=nil;
          {$ENDREGION}
        end;
    21: begin
          {$REGION 'Posição atual do estoque - sem valores.'}
          if ComboBox5.Text='N' then Where:=' and PRO_ESTOQUEATUAL<>0';
          if Edit15.Text<>'' then Where:=Where+' and PRO_LOCALIZACAO='+QuotedStr(Edit15.Text);
          if Edit14.Text<>'' then Where:=Where+' and PRO_FAMILIA='+QuotedStr(Edit13.Text);
          if Edit4.Text <>'' then Where:=Where+' and PRO_GRUPO='+QuotedStr(Edit3.Text);
          if Edit8.Text <>'' then Where:=Where+' and PRO_MARCA='+QuotedStr(Edit7.Text);
          if Edit12.Text<>'' then Where:=Where+' and PRO_FORNECEDOR='+QuotedStr(Edit11.Text);
          if Edit10.Text<>'' then Where:=Where+' and PRO_UNIDADE='+QuotedStr(Edit9.Text);
          if ComboBox1.Text='ATIVOS' then Where:=Where+' and PRO_STATUS=''A''' else
          if ComboBox1.Text='INATIVOS' then Where:=Where+' and PRO_STATUS=''I''';
          if ComboBox4.Text='PRODUTO' then Where:=Where+' and PRO_TIPO=''P''' else
          if ComboBox4.Text='SERVIÇO' then Where:=Where+' and PRO_TIPO=''S''';
          Application.CreateForm(TFormProdutosFast, FormProdutosFast);
          FormProdutosFast.QY08.Close;
          FormProdutosFast.QY08.SQL.Clear;
          FormProdutosFast.QY08.SQL.Add(
            'select PRO_CODIGO, PRO_ESTOQUEATUAL, PRO_ESTOQUEMAX, PRO_ESTOQUEMIN, PRO_FAMILIA, PRO_GRUPO, '+
            'PRO_NOME, PRO_PRECOCUSTO, PRO_UNIDADE, GRU_DESCRICAO, FAM_DESCRICAO from PRODUTOS '+
            'left join FAMILIAS on PRO_FAMILIA=FAM_CODIGO '+
            'left join GRUPOS on PRO_GRUPO=GRU_CODIGO '+
            'where PRO_DTCADASTRO between :datainicial and :datafinal '+Where+' '+
            'order by FAM_DESCRICAO, GRU_DESCRICAO, PRO_NOME');
          FormProdutosFast.QY08.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
          FormProdutosFast.QY08.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
          FormProdutosFast.QY08.Open;
          FormProdutosFast.frxReport8.Variables['TITULO']:=QuotedStr('Posição atual do estoque - sem valores');
          FormProdutosFast.frxReport8.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
          FormProdutosFast.frxReport8.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
          FormProdutosFast.frxReport8.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
          FormProdutosFast.frxReport8.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
          FormProdutosFast.frxReport8.Variables['DATAINICIAL']:=QuotedStr(MaskEdit1.Text);
          FormProdutosFast.frxReport8.Variables['DATAFINAL']:=QuotedStr(MaskEdit2.Text);
          FormProdutosFast.frxReport8.Variables['STATUS']:=QuotedStr(ComboBox1.Text);
          FormProdutosFast.frxReport8.Variables['TIPO']:=QuotedStr(ComboBox4.Text);
          FormProdutosFast.frxReport8.Variables['FAM_CODIGO']:=QuotedStr(Edit13.Text);
          FormProdutosFast.frxReport8.Variables['FAM_DESCRICAO']:=QuotedStr(Edit14.Text);
          FormProdutosFast.frxReport8.Variables['GRU_CODIGO']:=QuotedStr(Edit3.Text);
          FormProdutosFast.frxReport8.Variables['GRU_DESCRICAO']:=QuotedStr(Edit4.Text);
          FormProdutosFast.frxReport8.Variables['MAR_CODIGO']:=QuotedStr(Edit7.Text);
          FormProdutosFast.frxReport8.Variables['MAR_DESCRICAO']:=QuotedStr(Edit8.Text);
          FormProdutosFast.frxReport8.Variables['FOR_CODIGO']:=QuotedStr(Edit11.Text);
          FormProdutosFast.frxReport8.Variables['FOR_NOME']:=QuotedStr(Edit12.Text);
          FormProdutosFast.frxReport8.Variables['UNI_CODIGO']:=QuotedStr(Edit9.Text);
          FormProdutosFast.frxReport8.Variables['UNI_DESCRICAO']:=QuotedStr(Edit10.Text);
          FormProdutosFast.frxReport8.Variables['QTDEZERO']:=QuotedStr(ComboBox5.Text);
          FormProdutosFast.frxReport8.Variables['SEMVALORES']:=QuotedStr('S');
          FormProdutosFast.frxReport8.ShowReport;
          FormProdutosFast.Free;
          FormProdutosFast:=nil;
          {$ENDREGION}
        end;
    22: begin
          {$REGION 'Posição atual do estoque por almoxarifado.'}
          AbortIf(Trim(Edit5.Text)='','Informe o almoxarifado.');

          if ComboBox5.Text='N' then Where:=' and PRO_ESTOQUEATUAL<>0';
          if Edit15.Text<>'' then Where:=Where+' and PRO_LOCALIZACAO='+QuotedStr(Edit15.Text);
          if Edit14.Text<>'' then Where:=Where+' and PRO_FAMILIA='+QuotedStr(Edit13.Text);
          if Edit4.Text <>'' then Where:=Where+' and PRO_GRUPO='+QuotedStr(Edit3.Text);
          if Edit8.Text <>'' then Where:=Where+' and PRO_MARCA='+QuotedStr(Edit7.Text);
          if Edit12.Text<>'' then Where:=Where+' and PRO_FORNECEDOR='+QuotedStr(Edit11.Text);
          if Edit10.Text<>'' then Where:=Where+' and PRO_UNIDADE='+QuotedStr(Edit9.Text);
          if ComboBox1.Text='ATIVOS' then Where:=Where+' and PRO_STATUS=''A''' else
          if ComboBox1.Text='INATIVOS' then Where:=Where+' and PRO_STATUS=''I''';
          if ComboBox4.Text='PRODUTO' then Where:=Where+' and PRO_TIPO=''P''' else
          if ComboBox4.Text='SERVIÇO' then Where:=Where+' and PRO_TIPO=''S''';
          Application.CreateForm(TFormProdutosFast, FormProdutosFast);
          FormProdutosFast.QY09.Close;
          FormProdutosFast.QY09.SQL.Clear;
          FormProdutosFast.QY09.SQL.Add(
            'select PRO_CODIGO, PRO_NOME, PRO_GRUPO, PRO_FAMILIA, PRO_PRECOCUSTO, PRO_ESTOQUEATUAL, PRO_ESTOQUEMAX, '+
            'PRO_ESTOQUEMIN, PRO_UNIDADE, GRU_DESCRICAO, FAM_DESCRICAO, PRQ_QUANTIDADE from PRODUTOSQTDE '+
            'left join PRODUTOS on PRQ_PRODUTO=PRO_CODIGO '+
            'left join FAMILIAS on PRO_FAMILIA=FAM_CODIGO '+
            'left join GRUPOS on PRO_GRUPO=GRU_CODIGO '+
            'where PRO_DTCADASTRO between :datainicial and :datafinal and PRQ_ALMOXARIFADO=:almoxarifado '+Where+' '+
            'order by FAM_DESCRICAO, GRU_DESCRICAO, PRO_NOME');
          FormProdutosFast.QY09.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
          FormProdutosFast.QY09.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
          FormProdutosFast.QY09.ParamByName('almoxarifado').AsInteger:=StrToInt(Edit5.Text);
          FormProdutosFast.QY09.Open;
          FormProdutosFast.frxReport9.Variables['TITULO']:=QuotedStr('Posição atual do estoque por almoxarifado');
          FormProdutosFast.frxReport9.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
          FormProdutosFast.frxReport9.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
          FormProdutosFast.frxReport9.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
          FormProdutosFast.frxReport9.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
          FormProdutosFast.frxReport9.Variables['DATAINICIAL']:=QuotedStr(MaskEdit1.Text);
          FormProdutosFast.frxReport9.Variables['DATAFINAL']:=QuotedStr(MaskEdit2.Text);
          FormProdutosFast.frxReport9.Variables['STATUS']:=QuotedStr(ComboBox1.Text);
          FormProdutosFast.frxReport9.Variables['TIPO']:=QuotedStr(ComboBox4.Text);
          FormProdutosFast.frxReport9.Variables['ALM_CODIGO']:=QuotedStr(Edit5.Text);
          FormProdutosFast.frxReport9.Variables['ALM_DESCRICAO']:=QuotedStr(Edit6.Text);
          FormProdutosFast.frxReport9.Variables['FAM_CODIGO']:=QuotedStr(Edit13.Text);
          FormProdutosFast.frxReport9.Variables['FAM_DESCRICAO']:=QuotedStr(Edit14.Text);
          FormProdutosFast.frxReport9.Variables['GRU_CODIGO']:=QuotedStr(Edit3.Text);
          FormProdutosFast.frxReport9.Variables['GRU_DESCRICAO']:=QuotedStr(Edit4.Text);
          FormProdutosFast.frxReport9.Variables['MAR_CODIGO']:=QuotedStr(Edit7.Text);
          FormProdutosFast.frxReport9.Variables['MAR_DESCRICAO']:=QuotedStr(Edit8.Text);
          FormProdutosFast.frxReport9.Variables['FOR_CODIGO']:=QuotedStr(Edit11.Text);
          FormProdutosFast.frxReport9.Variables['FOR_NOME']:=QuotedStr(Edit12.Text);
          FormProdutosFast.frxReport9.Variables['UNI_CODIGO']:=QuotedStr(Edit9.Text);
          FormProdutosFast.frxReport9.Variables['UNI_DESCRICAO']:=QuotedStr(Edit10.Text);
          FormProdutosFast.frxReport9.Variables['QTDEZERO']:=QuotedStr(ComboBox5.Text);
          FormProdutosFast.frxReport9.Variables['SEMVALORES']:=QuotedStr('N');
          FormProdutosFast.frxReport9.ShowReport;
          FormProdutosFast.Free;
          FormProdutosFast:=nil;
          {$ENDREGION}
        end;
    23: begin
          {$REGION 'Posição atual do estoque por almoxarifado - sem valores.'}
          AbortIf(Trim(Edit5.Text)='','Informe o almoxarifado.');

          if ComboBox5.Text='N' then Where:=' and PRO_ESTOQUEATUAL<>0';
          if Edit15.Text<>'' then Where:=Where+' and PRO_LOCALIZACAO='+QuotedStr(Edit15.Text);
          if Edit14.Text<>'' then Where:=Where+' and PRO_FAMILIA='+QuotedStr(Edit13.Text);
          if Edit4.Text <>'' then Where:=Where+' and PRO_GRUPO='+QuotedStr(Edit3.Text);
          if Edit8.Text <>'' then Where:=Where+' and PRO_MARCA='+QuotedStr(Edit7.Text);
          if Edit12.Text<>'' then Where:=Where+' and PRO_FORNECEDOR='+QuotedStr(Edit11.Text);
          if Edit10.Text<>'' then Where:=Where+' and PRO_UNIDADE='+QuotedStr(Edit9.Text);
          if ComboBox1.Text='ATIVOS' then Where:=Where+' and PRO_STATUS=''A''' else
          if ComboBox1.Text='INATIVOS' then Where:=Where+' and PRO_STATUS=''I''';
          if ComboBox4.Text='PRODUTO' then Where:=Where+' and PRO_TIPO=''P''' else
          if ComboBox4.Text='SERVIÇO' then Where:=Where+' and PRO_TIPO=''S''';
          Application.CreateForm(TFormProdutosFast, FormProdutosFast);
          FormProdutosFast.QY09.Close;
          FormProdutosFast.QY09.SQL.Clear;
          FormProdutosFast.QY09.SQL.Add(
            'select PRO_CODIGO, PRO_NOME, PRO_GRUPO, PRO_FAMILIA, PRO_PRECOCUSTO, PRO_ESTOQUEATUAL, PRO_ESTOQUEMAX, '+
            'PRO_ESTOQUEMIN, PRO_UNIDADE, GRU_DESCRICAO, FAM_DESCRICAO, PRQ_QUANTIDADE from PRODUTOSQTDE '+
            'left join PRODUTOS on PRQ_PRODUTO=PRO_CODIGO '+
            'left join FAMILIAS on PRO_FAMILIA=FAM_CODIGO '+
            'left join GRUPOS on PRO_GRUPO=GRU_CODIGO '+
            'where PRO_DTCADASTRO between :datainicial and :datafinal and PRQ_ALMOXARIFADO=:almoxarifado '+Where+' '+
            'order by FAM_DESCRICAO, GRU_DESCRICAO, PRO_NOME');
          FormProdutosFast.QY09.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
          FormProdutosFast.QY09.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
          FormProdutosFast.QY09.ParamByName('almoxarifado').AsInteger:=StrToInt(Edit5.Text);
          FormProdutosFast.QY09.Open;
          FormProdutosFast.frxReport9.Variables['TITULO']:=QuotedStr('Posição atual do estoque por almoxarifado - sem valores');
          FormProdutosFast.frxReport9.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
          FormProdutosFast.frxReport9.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
          FormProdutosFast.frxReport9.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
          FormProdutosFast.frxReport9.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
          FormProdutosFast.frxReport9.Variables['DATAINICIAL']:=QuotedStr(MaskEdit1.Text);
          FormProdutosFast.frxReport9.Variables['DATAFINAL']:=QuotedStr(MaskEdit2.Text);
          FormProdutosFast.frxReport9.Variables['STATUS']:=QuotedStr(ComboBox1.Text);
          FormProdutosFast.frxReport9.Variables['TIPO']:=QuotedStr(ComboBox4.Text);
          FormProdutosFast.frxReport9.Variables['ALM_CODIGO']:=QuotedStr(Edit5.Text);
          FormProdutosFast.frxReport9.Variables['ALM_DESCRICAO']:=QuotedStr(Edit6.Text);
          FormProdutosFast.frxReport9.Variables['FAM_CODIGO']:=QuotedStr(Edit13.Text);
          FormProdutosFast.frxReport9.Variables['FAM_DESCRICAO']:=QuotedStr(Edit14.Text);
          FormProdutosFast.frxReport9.Variables['GRU_CODIGO']:=QuotedStr(Edit3.Text);
          FormProdutosFast.frxReport9.Variables['GRU_DESCRICAO']:=QuotedStr(Edit4.Text);
          FormProdutosFast.frxReport9.Variables['MAR_CODIGO']:=QuotedStr(Edit7.Text);
          FormProdutosFast.frxReport9.Variables['MAR_DESCRICAO']:=QuotedStr(Edit8.Text);
          FormProdutosFast.frxReport9.Variables['FOR_CODIGO']:=QuotedStr(Edit11.Text);
          FormProdutosFast.frxReport9.Variables['FOR_NOME']:=QuotedStr(Edit12.Text);
          FormProdutosFast.frxReport9.Variables['UNI_CODIGO']:=QuotedStr(Edit9.Text);
          FormProdutosFast.frxReport9.Variables['UNI_DESCRICAO']:=QuotedStr(Edit10.Text);
          FormProdutosFast.frxReport9.Variables['QTDEZERO']:=QuotedStr(ComboBox5.Text);
          FormProdutosFast.frxReport9.Variables['SEMVALORES']:=QuotedStr('S');
          FormProdutosFast.frxReport9.ShowReport;
          FormProdutosFast.Free;
          FormProdutosFast:=nil;
          {$ENDREGION}
        end;
  end;
end;

procedure TFormProdutosRel.ComboBox2Change(Sender: TObject);
begin
  case ComboBox2.ItemIndex of
    00: begin
          {$REGION 'Ficha técnica'}
          MaskEdit1.Enabled:=False; //data inicial.
          MaskEdit2.Enabled:=False; //data final.
          ComboBox1.Enabled:=False; //status.
          ComboBox3.Enabled:=False; //composto.
          ComboBox4.Enabled:=False; //tipo.
          ComboBox5.Enabled:=False; //mostrar qtde zero.
          Edit1.Enabled:=True;   SpeedButton9.Enabled:=True;  //produto.
          Edit3.Enabled:=False;  SpeedButton1.Enabled:=False; //grupo.
          Edit5.Enabled:=False;  SpeedButton2.Enabled:=False; //almoxarifado.
          Edit7.Enabled:=False;  SpeedButton3.Enabled:=False; //marca.
          Edit9.Enabled:=False;  PngSpeedButton1.Enabled:=False; //unidade.
          Edit11.Enabled:=False; PngSpeedButton2.Enabled:=False; //fornecedor.
          Edit13.Enabled:=False; PngSpeedButton3.Enabled:=False; //familia.
          Edit15.Enabled:=False; //localização.
          {$ENDREGION}
        end;
    01: begin
          {$REGION 'Tabela de Preços'}
          MaskEdit1.Enabled:=True; //data inicial.
          MaskEdit2.Enabled:=True; //data final.
          ComboBox1.Enabled:=True; //status.
          ComboBox3.Enabled:=False; //composto.
          ComboBox4.Enabled:=True; //tipo.
          ComboBox5.Enabled:=False; //mostrar qtde zero.
          Edit1.Enabled:=False;  SpeedButton9.Enabled:=False; //produto.
          Edit3.Enabled:=True;   SpeedButton1.Enabled:=True;  //grupo.
          Edit5.Enabled:=False;  SpeedButton2.Enabled:=False; //almoxarifado.
          Edit7.Enabled:=True;   SpeedButton3.Enabled:=True;  //marca.
          Edit9.Enabled:=True;   PngSpeedButton1.Enabled:=True; //unidade.
          Edit11.Enabled:=True;  PngSpeedButton2.Enabled:=True; //fornecedor.
          Edit13.Enabled:=True;  PngSpeedButton3.Enabled:=True; //familia.
          Edit15.Enabled:=False; //localização.
          {$ENDREGION}
        end;
    02: begin
          {$REGION 'Tabela de Preços sem agrupamento'}
          MaskEdit1.Enabled:=True; //data inicial.
          MaskEdit2.Enabled:=True; //data final.
          ComboBox1.Enabled:=True; //status.
          ComboBox3.Enabled:=False; //composto.
          ComboBox4.Enabled:=True; //tipo.
          ComboBox5.Enabled:=False; //mostrar qtde zero.
          Edit1.Enabled:=False;  SpeedButton9.Enabled:=False; //produto.
          Edit3.Enabled:=True;   SpeedButton1.Enabled:=True;  //grupo.
          Edit5.Enabled:=False;  SpeedButton2.Enabled:=False; //almoxarifado.
          Edit7.Enabled:=True;   SpeedButton3.Enabled:=True;  //marca.
          Edit9.Enabled:=True;   PngSpeedButton1.Enabled:=True; //unidade.
          Edit11.Enabled:=True;  PngSpeedButton2.Enabled:=True; //fornecedor.
          Edit13.Enabled:=True;  PngSpeedButton3.Enabled:=True; //familia.
          Edit15.Enabled:=False; //localização.
          {$ENDREGION}
        end;
    03: begin
          {$REGION 'Produtos'}
          MaskEdit1.Enabled:=True; //data inicial.
          MaskEdit2.Enabled:=True; //data final.
          ComboBox1.Enabled:=True; //status.
          ComboBox3.Enabled:=True; //composto.
          ComboBox4.Enabled:=True; //tipo.
          ComboBox5.Enabled:=False; //mostrar qtde zero.
          Edit1.Enabled:=False;  SpeedButton9.Enabled:=False; //produto.
          Edit3.Enabled:=True;   SpeedButton1.Enabled:=True;  //grupo.
          Edit5.Enabled:=False;  SpeedButton2.Enabled:=False; //almoxarifado.
          Edit7.Enabled:=True;   SpeedButton3.Enabled:=True;  //marca.
          Edit9.Enabled:=True;   PngSpeedButton1.Enabled:=True; //unidade.
          Edit11.Enabled:=True;  PngSpeedButton2.Enabled:=True; //fornecedor.
          Edit13.Enabled:=True;  PngSpeedButton3.Enabled:=True; //familia.
          Edit15.Enabled:=False; //localização.
          {$ENDREGION}
        end;
    04: begin
          {$REGION 'Produtos com quantidade abaixo do estoque mínimo'}
          MaskEdit1.Enabled:=True; //data inicial.
          MaskEdit2.Enabled:=True; //data final.
          ComboBox1.Enabled:=True; //status.
          ComboBox3.Enabled:=True; //composto.
          ComboBox4.Enabled:=True; //tipo.
          ComboBox5.Enabled:=False; //mostrar qtde zero.
          Edit1.Enabled:=False;  SpeedButton9.Enabled:=False; //produto.
          Edit3.Enabled:=True;   SpeedButton1.Enabled:=True;  //grupo.
          Edit5.Enabled:=False;  SpeedButton2.Enabled:=False; //almoxarifado.
          Edit7.Enabled:=True;   SpeedButton3.Enabled:=True;  //marca.
          Edit9.Enabled:=True;   PngSpeedButton1.Enabled:=True; //unidade.
          Edit11.Enabled:=True;  PngSpeedButton2.Enabled:=True; //fornecedor.
          Edit13.Enabled:=True;  PngSpeedButton3.Enabled:=True; //familia.
          Edit15.Enabled:=False; //localização.
          {$ENDREGION}
        end;
    05: begin
          {$REGION 'Produtos com quantidade acima do estoque máximo'}
          MaskEdit1.Enabled:=True; //data inicial.
          MaskEdit2.Enabled:=True; //data final.
          ComboBox1.Enabled:=True; //status.
          ComboBox3.Enabled:=True; //composto.
          ComboBox4.Enabled:=True; //tipo.
          ComboBox5.Enabled:=False; //mostrar qtde zero.
          Edit1.Enabled:=False;  SpeedButton9.Enabled:=False; //produto.
          Edit3.Enabled:=True;   SpeedButton1.Enabled:=True;  //grupo.
          Edit5.Enabled:=False;  SpeedButton2.Enabled:=False; //almoxarifado.
          Edit7.Enabled:=True;   SpeedButton3.Enabled:=True;  //marca.
          Edit9.Enabled:=True;   PngSpeedButton1.Enabled:=True; //unidade.
          Edit11.Enabled:=True;  PngSpeedButton2.Enabled:=True; //fornecedor.
          Edit13.Enabled:=True;  PngSpeedButton3.Enabled:=True; //familia.
          Edit15.Enabled:=False; //localização.
          {$ENDREGION}
        end;
    06: begin
          {$REGION 'Produtos com quantidade abaixo do estoque máximo'}
          MaskEdit1.Enabled:=True; //data inicial.
          MaskEdit2.Enabled:=True; //data final.
          ComboBox1.Enabled:=True; //status.
          ComboBox3.Enabled:=True; //composto.
          ComboBox4.Enabled:=True; //tipo.
          ComboBox5.Enabled:=False; //mostrar qtde zero.
          Edit1.Enabled:=False;  SpeedButton9.Enabled:=False; //produto.
          Edit3.Enabled:=True;   SpeedButton1.Enabled:=True;  //grupo.
          Edit5.Enabled:=False;  SpeedButton2.Enabled:=False; //almoxarifado.
          Edit7.Enabled:=True;   SpeedButton3.Enabled:=True;  //marca.
          Edit9.Enabled:=True;   PngSpeedButton1.Enabled:=True; //unidade.
          Edit11.Enabled:=True;  PngSpeedButton2.Enabled:=True; //fornecedor.
          Edit13.Enabled:=True;  PngSpeedButton3.Enabled:=True; //familia.
          Edit15.Enabled:=False; //localização.
          {$ENDREGION}
        end;
    07: begin
          {$REGION 'Produtos com quantidade negativa'}
          MaskEdit1.Enabled:=True; //data inicial.
          MaskEdit2.Enabled:=True; //data final.
          ComboBox1.Enabled:=True; //status.
          ComboBox3.Enabled:=True; //composto.
          ComboBox4.Enabled:=True; //tipo.
          ComboBox5.Enabled:=False; //mostrar qtde zero.
          Edit1.Enabled:=False;  SpeedButton9.Enabled:=False; //produto.
          Edit3.Enabled:=True;   SpeedButton1.Enabled:=True;  //grupo.
          Edit5.Enabled:=False;  SpeedButton2.Enabled:=False; //almoxarifado.
          Edit7.Enabled:=True;   SpeedButton3.Enabled:=True;  //marca.
          Edit9.Enabled:=True;   PngSpeedButton1.Enabled:=True; //unidade.
          Edit11.Enabled:=True;  PngSpeedButton2.Enabled:=True; //fornecedor.
          Edit13.Enabled:=True;  PngSpeedButton3.Enabled:=True; //familia.
          Edit15.Enabled:=False; //localização.
          {$ENDREGION}
        end;
    08: begin
          {$REGION 'Produtos com quantidade negativa ou zerada'}
          MaskEdit1.Enabled:=True; //data inicial.
          MaskEdit2.Enabled:=True; //data final.
          ComboBox1.Enabled:=True; //status.
          ComboBox3.Enabled:=True; //composto.
          ComboBox4.Enabled:=True; //tipo.
          ComboBox5.Enabled:=False; //mostrar qtde zero.
          Edit1.Enabled:=False;  SpeedButton9.Enabled:=False; //produto.
          Edit3.Enabled:=True;   SpeedButton1.Enabled:=True;  //grupo.
          Edit5.Enabled:=False;  SpeedButton2.Enabled:=False; //almoxarifado.
          Edit7.Enabled:=True;   SpeedButton3.Enabled:=True;  //marca.
          Edit9.Enabled:=True;   PngSpeedButton1.Enabled:=True; //unidade.
          Edit11.Enabled:=True;  PngSpeedButton2.Enabled:=True; //fornecedor.
          Edit13.Enabled:=True;  PngSpeedButton3.Enabled:=True; //familia.
          Edit15.Enabled:=False; //localização.
          {$ENDREGION}
        end;
    09: begin
          {$REGION 'Produtos com quantidade diferente de zero'}
          MaskEdit1.Enabled:=True; //data inicial.
          MaskEdit2.Enabled:=True; //data final.
          ComboBox1.Enabled:=True; //status.
          ComboBox3.Enabled:=True; //composto.
          ComboBox4.Enabled:=True; //tipo.
          ComboBox5.Enabled:=False; //mostrar qtde zero.
          Edit1.Enabled:=False;  SpeedButton9.Enabled:=False; //produto.
          Edit3.Enabled:=True;   SpeedButton1.Enabled:=True;  //grupo.
          Edit5.Enabled:=False;  SpeedButton2.Enabled:=False; //almoxarifado.
          Edit7.Enabled:=True;   SpeedButton3.Enabled:=True;  //marca.
          Edit9.Enabled:=True;   PngSpeedButton1.Enabled:=True; //unidade.
          Edit11.Enabled:=True;  PngSpeedButton2.Enabled:=True; //fornecedor.
          Edit13.Enabled:=True;  PngSpeedButton3.Enabled:=True; //familia.
          Edit15.Enabled:=False; //localização.
          {$ENDREGION}
        end;
    10: begin
          {$REGION 'Produtos com quantidade diferente do total dos almoxarifados'}
          MaskEdit1.Enabled:=True; //data inicial.
          MaskEdit2.Enabled:=True; //data final.
          ComboBox1.Enabled:=True; //status.
          ComboBox3.Enabled:=False; //composto.
          ComboBox4.Enabled:=True; //tipo.
          ComboBox5.Enabled:=False; //mostrar qtde zero.
          Edit1.Enabled:=False;  SpeedButton9.Enabled:=False; //produto.
          Edit3.Enabled:=True;   SpeedButton1.Enabled:=True;  //grupo.
          Edit5.Enabled:=False;  SpeedButton2.Enabled:=False; //almoxarifado.
          Edit7.Enabled:=True;   SpeedButton3.Enabled:=True;  //marca.
          Edit9.Enabled:=True;   PngSpeedButton1.Enabled:=True; //unidade.
          Edit11.Enabled:=True;  PngSpeedButton2.Enabled:=True; //fornecedor.
          Edit13.Enabled:=True;  PngSpeedButton3.Enabled:=True; //familia.
          Edit15.Enabled:=False; //localização.
          {$ENDREGION}
        end;
    11: begin
          {$REGION 'Produtos com preco de custo zerado ou negativo'}
          MaskEdit1.Enabled:=True; //data inicial.
          MaskEdit2.Enabled:=True; //data final.
          ComboBox1.Enabled:=True; //status.
          ComboBox3.Enabled:=False; //composto.
          ComboBox4.Enabled:=True; //tipo.
          ComboBox5.Enabled:=False; //mostrar qtde zero.
          Edit1.Enabled:=False;  SpeedButton9.Enabled:=False; //produto.
          Edit3.Enabled:=True;   SpeedButton1.Enabled:=True;  //grupo.
          Edit5.Enabled:=False;  SpeedButton2.Enabled:=False; //almoxarifado.
          Edit7.Enabled:=True;   SpeedButton3.Enabled:=True;  //marca.
          Edit9.Enabled:=True;   PngSpeedButton1.Enabled:=True; //unidade.
          Edit11.Enabled:=True;  PngSpeedButton2.Enabled:=True; //fornecedor.
          Edit13.Enabled:=True;  PngSpeedButton3.Enabled:=True; //familia.
          Edit15.Enabled:=False; //localização.
          {$ENDREGION}
        end;
    12: begin
          {$REGION 'Produtos com códigos de fornecedores'}
          MaskEdit1.Enabled:=True; //data inicial.
          MaskEdit2.Enabled:=True; //data final.
          ComboBox1.Enabled:=True; //status.
          ComboBox3.Enabled:=False; //composto.
          ComboBox4.Enabled:=True; //tipo.
          ComboBox5.Enabled:=False; //mostrar qtde zero.
          Edit1.Enabled:=False;  SpeedButton9.Enabled:=False; //produto.
          Edit3.Enabled:=True;   SpeedButton1.Enabled:=True;  //grupo.
          Edit5.Enabled:=False;  SpeedButton2.Enabled:=False; //almoxarifado.
          Edit7.Enabled:=True;   SpeedButton3.Enabled:=True;  //marca.
          Edit9.Enabled:=True;   PngSpeedButton1.Enabled:=True; //unidade.
          Edit11.Enabled:=True;  PngSpeedButton2.Enabled:=True; //fornecedor.
          Edit13.Enabled:=True;  PngSpeedButton3.Enabled:=True; //familia.
          Edit15.Enabled:=False; //localização.
          {$ENDREGION}
        end;
    13: begin
          {$REGION 'Produtos compostos sintético'}
          MaskEdit1.Enabled:=True; //data inicial.
          MaskEdit2.Enabled:=True; //data final.
          ComboBox1.Enabled:=True; //status.
          ComboBox3.Enabled:=False; //composto.
          ComboBox4.Enabled:=True; //tipo.
          ComboBox5.Enabled:=False; //mostrar qtde zero.
          Edit1.Enabled:=False;  SpeedButton9.Enabled:=False; //produto.
          Edit3.Enabled:=True;   SpeedButton1.Enabled:=True;  //grupo.
          Edit5.Enabled:=False;  SpeedButton2.Enabled:=False; //almoxarifado.
          Edit7.Enabled:=False;  SpeedButton3.Enabled:=False; //marca.
          Edit9.Enabled:=False;  PngSpeedButton1.Enabled:=False; //unidade.
          Edit11.Enabled:=False; PngSpeedButton2.Enabled:=False; //fornecedor.
          Edit13.Enabled:=True;  PngSpeedButton3.Enabled:=True; //familia.
          Edit15.Enabled:=False; //localização.
          {$ENDREGION}
        end;
    14: begin
          {$REGION 'Produtos compostos analítico'}
          MaskEdit1.Enabled:=True; //data inicial.
          MaskEdit2.Enabled:=True; //data final.
          ComboBox1.Enabled:=True; //status.
          ComboBox3.Enabled:=False; //composto.
          ComboBox4.Enabled:=True; //tipo.
          ComboBox5.Enabled:=False; //mostrar qtde zero.
          Edit1.Enabled:=True;   SpeedButton9.Enabled:=True;  //produto.
          Edit3.Enabled:=True;   SpeedButton1.Enabled:=True;  //grupo.
          Edit5.Enabled:=False;  SpeedButton2.Enabled:=False; //almoxarifado.
          Edit7.Enabled:=False;  SpeedButton3.Enabled:=False; //marca.
          Edit9.Enabled:=False;  PngSpeedButton1.Enabled:=False; //unidade.
          Edit11.Enabled:=False; PngSpeedButton2.Enabled:=False; //fornecedor.
          Edit13.Enabled:=True;  PngSpeedButton3.Enabled:=True; //familia.
          Edit15.Enabled:=False; //localização.
          {$ENDREGION}
        end;
    15: begin
          {$REGION 'Produtos compostos com preço de custo menor que o preço de custo da composição.'}
          MaskEdit1.Enabled:=True; //data inicial.
          MaskEdit2.Enabled:=True; //data final.
          ComboBox1.Enabled:=True; //status.
          ComboBox3.Enabled:=False; //composto.
          ComboBox4.Enabled:=True; //tipo.
          ComboBox5.Enabled:=False; //mostrar qtde zero.
          Edit1.Enabled:=False;  SpeedButton9.Enabled:=False; //produto.
          Edit3.Enabled:=True;   SpeedButton1.Enabled:=True;  //grupo.
          Edit5.Enabled:=False;  SpeedButton2.Enabled:=False; //almoxarifado.
          Edit7.Enabled:=True;   SpeedButton3.Enabled:=True; //marca.
          Edit9.Enabled:=True;   PngSpeedButton1.Enabled:=True; //unidade.
          Edit11.Enabled:=True;  PngSpeedButton2.Enabled:=True; //fornecedor.
          Edit13.Enabled:=True;  PngSpeedButton3.Enabled:=True; //familia.
          Edit15.Enabled:=False; //localização.
          {$ENDREGION}
        end;
    16: begin
          {$REGION 'Produtos compostos de um produto.'}
          MaskEdit1.Enabled:=False; //data inicial.
          MaskEdit2.Enabled:=False; //data final.
          ComboBox1.Enabled:=False; //status.
          ComboBox3.Enabled:=False; //composto.
          ComboBox4.Enabled:=False; //tipo.
          ComboBox5.Enabled:=False; //mostrar qtde zero.
          Edit1.Enabled:=True;   SpeedButton9.Enabled:=True;  //produto.
          Edit3.Enabled:=False;  SpeedButton1.Enabled:=False; //grupo.
          Edit5.Enabled:=False;  SpeedButton2.Enabled:=False; //almoxarifado.
          Edit7.Enabled:=False;  SpeedButton3.Enabled:=False; //marca.
          Edit9.Enabled:=False;  PngSpeedButton1.Enabled:=False; //unidade.
          Edit11.Enabled:=False; PngSpeedButton2.Enabled:=False; //fornecedor.
          Edit13.Enabled:=False; PngSpeedButton3.Enabled:=False; //familia.
          Edit15.Enabled:=False; //localização.
          {$ENDREGION}
        end;
    17: begin
          {$REGION 'Produtos por grupo sem foto.'}
          MaskEdit1.Enabled:=True; //data inicial.
          MaskEdit2.Enabled:=True; //data final.
          ComboBox1.Enabled:=True; //status.
          ComboBox3.Enabled:=False; //composto.
          ComboBox4.Enabled:=True; //tipo.
          ComboBox5.Enabled:=False; //mostrar qtde zero.
          Edit1.Enabled:=False;  SpeedButton9.Enabled:=False; //produto.
          Edit3.Enabled:=True;   SpeedButton1.Enabled:=True;  //grupo.
          Edit5.Enabled:=False;  SpeedButton2.Enabled:=False; //almoxarifado.
          Edit7.Enabled:=True;   SpeedButton3.Enabled:=True;  //marca.
          Edit9.Enabled:=True;   PngSpeedButton1.Enabled:=True; //unidade.
          Edit11.Enabled:=True;  PngSpeedButton2.Enabled:=True; //fornecedor.
          Edit13.Enabled:=True;  PngSpeedButton3.Enabled:=True; //familia.
          Edit15.Enabled:=False; //localização.
          {$ENDREGION}
        end;
    18: begin
          {$REGION 'Produtos por unidade de medida.'}
          MaskEdit1.Enabled:=True; //data inicial.
          MaskEdit2.Enabled:=True; //data final.
          ComboBox1.Enabled:=True; //status.
          ComboBox3.Enabled:=False; //composto.
          ComboBox4.Enabled:=True; //tipo.
          ComboBox5.Enabled:=False; //mostrar qtde zero.
          Edit1.Enabled:=False;  SpeedButton9.Enabled:=False; //produto.
          Edit3.Enabled:=True;   SpeedButton1.Enabled:=True;  //grupo.
          Edit5.Enabled:=False;  SpeedButton2.Enabled:=False; //almoxarifado.
          Edit7.Enabled:=True;   SpeedButton3.Enabled:=True;  //marca.
          Edit9.Enabled:=True;   PngSpeedButton1.Enabled:=True; //unidade.
          Edit11.Enabled:=True;  PngSpeedButton2.Enabled:=True; //fornecedor.
          Edit13.Enabled:=True;  PngSpeedButton3.Enabled:=True; //familia.
          Edit15.Enabled:=False; //localização.
          {$ENDREGION}
        end;
    19: begin
          {$REGION 'Produtos vs produtos reais.'}
          MaskEdit1.Enabled:=True; //data inicial.
          MaskEdit2.Enabled:=True; //data final.
          ComboBox1.Enabled:=True; //status.
          ComboBox3.Enabled:=False; //composto.
          ComboBox4.Enabled:=True; //tipo.
          ComboBox5.Enabled:=False; //mostrar qtde zero.
          Edit1.Enabled:=False;  SpeedButton9.Enabled:=False; //produto.
          Edit3.Enabled:=True;   SpeedButton1.Enabled:=True;  //grupo.
          Edit5.Enabled:=False;  SpeedButton2.Enabled:=False; //almoxarifado.
          Edit7.Enabled:=True;   SpeedButton3.Enabled:=True;  //marca.
          Edit9.Enabled:=True;   PngSpeedButton1.Enabled:=True; //unidade.
          Edit11.Enabled:=True;  PngSpeedButton2.Enabled:=True; //fornecedor.
          Edit13.Enabled:=True;  PngSpeedButton3.Enabled:=True; //familia.
          Edit15.Enabled:=False; //localização.
          {$ENDREGION}
        end;
    20: begin
          {$REGION 'Posição atual do estoque.'}
          MaskEdit1.Enabled:=True; //data inicial.
          MaskEdit2.Enabled:=True; //data final.
          ComboBox1.Enabled:=True; //status.
          ComboBox3.Enabled:=False; //composto.
          ComboBox4.Enabled:=True; //tipo.
          ComboBox5.Enabled:=True; //mostrar qtde zero.
          Edit1.Enabled:=False;  SpeedButton9.Enabled:=False; //produto.
          Edit3.Enabled:=True;   SpeedButton1.Enabled:=True;  //grupo.
          Edit5.Enabled:=False;  SpeedButton2.Enabled:=False; //almoxarifado.
          Edit7.Enabled:=True;   SpeedButton3.Enabled:=True;  //marca.
          Edit9.Enabled:=True;   PngSpeedButton1.Enabled:=True; //unidade.
          Edit11.Enabled:=True;  PngSpeedButton2.Enabled:=True; //fornecedor.
          Edit13.Enabled:=True;  PngSpeedButton3.Enabled:=True; //familia.
          Edit15.Enabled:=True; //localização.
          {$ENDREGION}
        end;
    21: begin
          {$REGION 'Posição atual do estoque - sem valores.'}
          MaskEdit1.Enabled:=True; //data inicial.
          MaskEdit2.Enabled:=True; //data final.
          ComboBox1.Enabled:=True; //status.
          ComboBox3.Enabled:=False; //composto.
          ComboBox4.Enabled:=True; //tipo.
          ComboBox5.Enabled:=True; //mostrar qtde zero.
          Edit1.Enabled:=False;  SpeedButton9.Enabled:=False; //produto.
          Edit3.Enabled:=True;   SpeedButton1.Enabled:=True;  //grupo.
          Edit5.Enabled:=False;  SpeedButton2.Enabled:=False; //almoxarifado.
          Edit7.Enabled:=True;   SpeedButton3.Enabled:=True;  //marca.
          Edit9.Enabled:=True;   PngSpeedButton1.Enabled:=True; //unidade.
          Edit11.Enabled:=True;  PngSpeedButton2.Enabled:=True; //fornecedor.
          Edit13.Enabled:=True;  PngSpeedButton3.Enabled:=True; //familia.
          Edit15.Enabled:=True; //localização.
          {$ENDREGION}
        end;
    22: begin
          {$REGION 'Posição atual do estoque por almoxarifado.'}
          MaskEdit1.Enabled:=True; //data inicial.
          MaskEdit2.Enabled:=True; //data final.
          ComboBox1.Enabled:=True; //status.
          ComboBox3.Enabled:=False; //composto.
          ComboBox4.Enabled:=True; //tipo.
          ComboBox5.Enabled:=True; //mostrar qtde zero.
          Edit1.Enabled:=False;  SpeedButton9.Enabled:=False; //produto.
          Edit3.Enabled:=True;   SpeedButton1.Enabled:=True;  //grupo.
          Edit5.Enabled:=True;   SpeedButton2.Enabled:=True;  //almoxarifado.
          Edit7.Enabled:=True;   SpeedButton3.Enabled:=True;  //marca.
          Edit9.Enabled:=True;   PngSpeedButton1.Enabled:=True; //unidade.
          Edit11.Enabled:=True;  PngSpeedButton2.Enabled:=True; //fornecedor.
          Edit13.Enabled:=True;  PngSpeedButton3.Enabled:=True; //familia.
          Edit15.Enabled:=True; //localização.
          {$ENDREGION}
        end;
    23: begin
          {$REGION 'Posição atual do estoque por almoxarifado - sem valores.'}
          MaskEdit1.Enabled:=True; //data inicial.
          MaskEdit2.Enabled:=True; //data final.
          ComboBox1.Enabled:=True; //status.
          ComboBox3.Enabled:=False; //composto.
          ComboBox4.Enabled:=True; //tipo.
          ComboBox5.Enabled:=True; //mostrar qtde zero.
          Edit1.Enabled:=False;  SpeedButton9.Enabled:=False; //produto.
          Edit3.Enabled:=True;   SpeedButton1.Enabled:=True;  //grupo.
          Edit5.Enabled:=True;   SpeedButton2.Enabled:=True;  //almoxarifado.
          Edit7.Enabled:=True;   SpeedButton3.Enabled:=True;  //marca.
          Edit9.Enabled:=True;   PngSpeedButton1.Enabled:=True; //unidade.
          Edit11.Enabled:=True;  PngSpeedButton2.Enabled:=True; //fornecedor.
          Edit13.Enabled:=True;  PngSpeedButton3.Enabled:=True; //familia.
          Edit15.Enabled:=True; //localização.
          {$ENDREGION}
        end;
  end;
end;

procedure TFormProdutosRel.Edit3Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TEdit).Text;
end;

procedure TFormProdutosRel.Edit3Exit(Sender: TObject);
begin
  LocGruposExit(Edit3,Edit4);
end;

procedure TFormProdutosRel.Edit3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton1.Click;
end;

procedure TFormProdutosRel.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormProdutosRel.SpeedButton1Click(Sender: TObject);
begin
  LocGruposBotao(Edit3,Edit4);
end;

procedure TFormProdutosRel.Edit5Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TEdit).Text;
end;

procedure TFormProdutosRel.Edit5Exit(Sender: TObject);
begin
  LocAlmoxarifadosExit(Edit5,Edit6);
end;

procedure TFormProdutosRel.Edit5KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton2.Click;
end;

procedure TFormProdutosRel.Edit5KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormProdutosRel.SpeedButton2Click(Sender: TObject);
begin
  LocAlmoxarifadosBotao(Edit5,Edit6);
end;

procedure TFormProdutosRel.BitBtn3Click(Sender: TObject);
begin
  MostrarAjuda('');
end;

procedure TFormProdutosRel.Edit7Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TEdit).Text;
end;

procedure TFormProdutosRel.Edit7Exit(Sender: TObject);
begin
  LocMarcasExit(Edit7,Edit8);
end;

procedure TFormProdutosRel.Edit7KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton3.Click;
end;

procedure TFormProdutosRel.Edit7KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormProdutosRel.Edit9Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TEdit).Text;
end;

procedure TFormProdutosRel.Edit9Exit(Sender: TObject);
begin
  LocUnidadesExit(Edit9,Edit10);
end;

procedure TFormProdutosRel.Edit9KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  PngSpeedButton1.Click;
end;

procedure TFormProdutosRel.Edit9KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormProdutosRel.SpeedButton3Click(Sender: TObject);
begin
  LocMarcasBotao(Edit7,Edit8);
end;

end.
