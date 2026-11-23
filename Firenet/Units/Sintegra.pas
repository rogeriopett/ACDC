unit Sintegra;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ACBrSintegra, ComCtrls, ExtDlgs, StdCtrls, DB, ImgList, PngImageList,
  Menus, Buttons, PngSpeedButton, ExtCtrls, Mask, CheckLst, System.ImageList,
  System.UITypes, ACBrBase, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client, FireDAC.Comp.DataSet;

type
  TFormSintegra = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    MaskEdit1: TMaskEdit;
    MaskEdit2: TMaskEdit;
    ComboBox1: TComboBox;
    Panel2: TPanel;
    Bevel4: TBevel;
    SpeedButton5: TPngSpeedButton;
    Bevel7: TBevel;
    SpeedButton2: TPngSpeedButton;
    SpeedButton3: TPngSpeedButton;
    MainMenu1: TMainMenu;
    Arquivo1: TMenuItem;
    GerarArquivo1: TMenuItem;
    N1: TMenuItem;
    Fechar1: TMenuItem;
    Ajuda1: TMenuItem;
    Ajuda2: TMenuItem;
    PngImageList1: TPngImageList;
    Memo1: TMemo;
    SaveTextFileDialog1: TSaveTextFileDialog;
    StatusBar1: TStatusBar;
    ACBrSintegra: TACBrSintegra;
    CheckListBox1: TCheckListBox;
    ComboBox2: TComboBox;
    Label4: TLabel;
    ComboBox3: TComboBox;
    Label5: TLabel;
    ComboBox4: TComboBox;
    Label6: TLabel;
    Edit1: TEdit;
    Label7: TLabel;
    CheckBox1: TCheckBox;
    Label8: TLabel;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    QY: TFDQuery;
    TR: TFDTransaction;
    QY2: TFDQuery;
    TR2: TFDTransaction;
    procedure Fechar1Click(Sender: TObject);
    procedure Ajuda2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Memo1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Memo1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Memo1MouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure GerarArquivo1Click(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
  private
    { Private declarations }
    procedure GerarRegistro10;
    procedure GerarRegistro11;
    procedure GerarRegistro50;
    procedure GerarRegistro51;
    procedure GerarRegistro53;
    procedure GerarRegistro54;
    procedure GerarRegistro60A;
    procedure GerarRegistro60D;
    procedure GerarRegistro60M;
    procedure GerarRegistro61;
    procedure GerarRegistro70;
    procedure GerarRegistro71;
    procedure GerarRegistro74;
    procedure GerarRegistro75;
    procedure GerarRegistro76;
    procedure GerarRegistro85;
    procedure GerarRegistro86;
    procedure GerarRegistro88;
  public
    { Public declarations }
  end;

var
  FormSintegra: TFormSintegra;

implementation
uses DataMod, DataMod2, Funcoes1, FuncoesFirenet, Icms;
{$R *.dfm}

procedure TFormSintegra.GerarRegistro10;
begin
  with ACBrSintegra do
  begin
    Registro10.CNPJ:=LimparFormatacao(DM.TBEmpresaEMP_CNPJ.Value);
    Registro10.Inscricao:=LimparFormatacao(DM.TBEmpresaEMP_IE.Value);
    Registro10.RazaoSocial:=DM.TBEmpresaEMP_NOME.Value;
    Registro10.Cidade:=DM.TBEmpresaEMP_CIDADE.Value;
    Registro10.Estado:=DM.TBEmpresaEMP_ESTADO.Value;
    Registro10.Telefone:=LimparFormatacao(DM.TBEmpresaEMP_FONE1.Value);
    Registro10.DataInicial:=StrToDate(MaskEdit1.Text,FS);
    Registro10.DataFinal:=StrToDate(MaskEdit2.Text,FS);
    Registro10.CodigoConvenio:=IntToStr(ComboBox2.ItemIndex+1);
    Registro10.NaturezaInformacoes:=IntToStr(ComboBox3.ItemIndex+1);
    Registro10.FinalidadeArquivo:=Copy(ComboBox1.Items[ComboBox1.ItemIndex],1,1);
  end;
end;

procedure TFormSintegra.GerarRegistro11;
begin
  with ACBrSintegra do
  begin
    Registro11.Endereco:=DM.TBEmpresaEMP_ENDERECO.Value;
    Registro11.Numero:=DM.TBEmpresaEMP_NUMERO.Value;
    Registro11.Bairro:=DM.TBEmpresaEMP_BAIRRO.Value;
    Registro11.Cep:=DM.TBEmpresaEMP_CEP.Value;
    Registro11.Responsavel:=Edit1.Text;
    Registro11.Telefone:=LimparFormatacao(DM.TBEmpresaEMP_FONE1.Value);
  end;
end;

procedure TFormSintegra.GerarRegistro50;
var WRegistro50: TRegistro50;
begin
  //notas fiscais modelo 1.
  QY.Close;
  QY.SQL.Clear;
  QY.SQL.Add('select * from NOTAS where NOT_STATUS<>''A'' and NOT_DTEMISSAO between :datainicial and :datafinal order by NOT_DTEMISSAO, NOT_CODIGO');
  QY.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
  QY.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
  QY.Open;
  QY.First;
  while not QY.Eof do
  begin
    //verifica se foi usado mais de um CFOP e aliquota diferente para a nota... se tiver mais de um registro é pq tem.
    QY2.Close;
    QY2.SQL.Clear;
    QY2.SQL.Add('select NOI_CFOP, NOI_ALIQICMS, sum(NOI_VALORTOTAL) as VALORTOTAL, sum(NOI_BASEICMS) as BASEICMS, sum(NOI_VALORICMS) as VALORICMS from NOTASITENS where NOI_NOTA=:nota group by NOI_CFOP, NOI_ALIQICMS');
    QY2.ParamByName('nota').AsInteger:=QY.FieldByName('NOT_CODIGO').AsInteger;
    QY2.Open;
    QY2.FetchAll;
    if QY2.RecordCount>1 then
    begin
      QY2.First;
      while not QY2.Eof do
      begin
        WRegistro50:=TRegistro50.Create;
        if (not QY.FieldByName('NOT_CNPJ').IsNull) and (QY.FieldByName('NOT_CNPJ').AsString<>'  .   .   /    -  ') then
        WRegistro50.CPFCNPJ:=LimparFormatacao(QY.FieldByName('NOT_CNPJ').AsString) else
        WRegistro50.CPFCNPJ:=LimparFormatacao(QY.FieldByName('NOT_CPF').AsString);
        if QY.FieldByName('NOT_IE').AsString='' then
        WRegistro50.Inscricao:='ISENTO' else
        WRegistro50.Inscricao:=Trim(QY.FieldByName('NOT_IE').AsString);
        WRegistro50.DataDocumento:=QY.FieldByName('NOT_DTEMISSAO').AsDateTime;
        WRegistro50.UF:=QY.FieldByName('NOT_ESTADO').AsString;
        WRegistro50.Modelo:='1';
        WRegistro50.Serie:='1';
        WRegistro50.Numero:=QY.FieldByName('NOT_CODIGO').AsString;
        WRegistro50.Cfop:=QY2.FieldByName('NOI_CFOP').AsString; //QY.FieldByName('NOT_CFOP').AsString;
        WRegistro50.EmissorDocumento:='P'; //P-proprio T-Terceiros.
        WRegistro50.ValorContabil:=QY2.FieldByName('VALORTOTAL').AsFloat;
        WRegistro50.BasedeCalculo:=QY2.FieldByName('BASEICMS').AsFloat;
        WRegistro50.Icms:=QY2.FieldByName('VALORICMS').AsFloat;
        WRegistro50.Isentas:=0; //TODO... o que informar?
        WRegistro50.Outras:=0; //TODO... o que informar?
        WRegistro50.Aliquota:=QY.FieldByName('NOI_ALIQICMS').AsFloat;
        if QY.FieldByName('NOT_STATUS').AsString='F' then
        WRegistro50.Situacao:='N';
        if QY.FieldByName('NOT_STATUS').AsString='C' then
        WRegistro50.Situacao:='S';
        ACBrSintegra.Registros50.Add(WRegistro50);
        QY2.Next;
      end;
    end else
    //CFOP e aliquota tudo igual.
    begin
      WRegistro50:=TRegistro50.Create;
      if (not QY.FieldByName('NOT_CNPJ').IsNull) and (QY.FieldByName('NOT_CNPJ').AsString<>'  .   .   /    -  ') then
      WRegistro50.CPFCNPJ:=QY.FieldByName('NOT_CNPJ').AsString else
      WRegistro50.CPFCNPJ:=QY.FieldByName('NOT_CPF').AsString;
      if QY.FieldByName('NOT_IE').AsString='' then
      WRegistro50.Inscricao:='ISENTO' else
      WRegistro50.Inscricao:=Trim(QY.FieldByName('NOT_IE').AsString);
      WRegistro50.DataDocumento:=QY.FieldByName('NOT_DTEMISSAO').AsDateTime;
      WRegistro50.UF:=QY.FieldByName('NOT_ESTADO').AsString;
      WRegistro50.Modelo:='1';
      WRegistro50.Serie:='1';
      WRegistro50.Numero:=QY.FieldByName('NOT_CODIGO').AsString;
      WRegistro50.Cfop:=QY.FieldByName('NOT_CFOP').AsString;
      WRegistro50.EmissorDocumento:='P'; //P-proprio T-Terceiros.
      WRegistro50.ValorContabil:=QY.FieldByName('NOT_VALORTOTAL').AsFloat;
      WRegistro50.BasedeCalculo:=QY.FieldByName('NOT_BASEICMS').AsFloat;
      WRegistro50.Icms:=QY.FieldByName('NOT_TOTALICMS').AsFloat;
      WRegistro50.Isentas:=0; //TODO... o que informar?
      WRegistro50.Outras:=0; //TODO... o que informar?
      WRegistro50.Aliquota:=QY.FieldByName('NOT_ALIQICMS').AsFloat; //??????????
      if QY.FieldByName('NOT_STATUS').AsString='F' then
      WRegistro50.Situacao:='N';
      if QY.FieldByName('NOT_STATUS').AsString='C' then
      WRegistro50.Situacao:='S';
      ACBrSintegra.Registros50.Add(WRegistro50);
      QY2.Close;
    end;
    QY.Next;
  end;
  QY.Close;
  //notas fiscais eletronicas modelo 55.
  QY.Close;
  QY.SQL.Clear;
  QY.SQL.Add('select * from NFE where NFE_STATUS<>''A'' and NFE_DTEMISSAO between :datainicial and :datafinal order by NFE_DTEMISSAO, NFE_CODIGO');
  QY.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
  QY.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
  QY.Open;
  QY.First;
  while not QY.Eof do
  begin
    //verifica se foi usado mais de um CFOP e aliquota diferente para a nota... se tiver mais de um registro é pq tem.
    QY2.Close;
    QY2.SQL.Clear;
    QY2.SQL.Add('select NFI_CFOP, NFI_ALIQICMS, sum(NFI_VALORTOTAL) as VALORTOTAL, sum(NFI_BASEICMS) as BASEICMS, sum(NFI_VALORICMS) as VALORICMS from NFEITENS where NFI_NOTA=:nota group by NFI_CFOP, NFI_ALIQICMS');
    QY2.ParamByName('nota').AsInteger:=QY.FieldByName('NFE_CODIGO').AsInteger;
    QY2.Open;
    QY2.FetchAll;
    if QY2.RecordCount>1 then
    begin
      QY2.First;
      while not QY2.Eof do
      begin
        WRegistro50:=TRegistro50.Create;
        if (not QY.FieldByName('NFE_CNPJ').IsNull) and (QY.FieldByName('NFE_CNPJ').AsString<>'  .   .   /    -  ') then
        WRegistro50.CPFCNPJ:=QY.FieldByName('NFE_CNPJ').AsString else
        WRegistro50.CPFCNPJ:=QY.FieldByName('NFE_CPF').AsString;
        if QY.FieldByName('NFE_IE').AsString='' then
        WRegistro50.Inscricao:='ISENTO' else
        WRegistro50.Inscricao:=Trim(QY.FieldByName('NFE_IE').AsString);
        WRegistro50.DataDocumento:=QY.FieldByName('NFE_DTEMISSAO').AsDateTime;
        WRegistro50.UF:=QY.FieldByName('NFE_ESTADO').AsString;
        WRegistro50.Modelo:=QY.FieldByName('NFE_MODELO').AsString;
        WRegistro50.Serie:=QY.FieldByName('NFE_SERIE').AsString;
        WRegistro50.Numero:=QY.FieldByName('NFE_CODIGO').AsString;
        WRegistro50.Cfop:=QY2.FieldByName('NFI_CFOP').AsString;
        WRegistro50.EmissorDocumento:='P'; //P-proprio T-Terceiros.
        WRegistro50.ValorContabil:=QY2.FieldByName('VALORTOTAL').AsFloat;
        WRegistro50.BasedeCalculo:=QY2.FieldByName('BASEICMS').AsFloat;
        WRegistro50.Icms:=QY2.FieldByName('VALORICMS').AsFloat;
        WRegistro50.Isentas:=0; //TODO... o que informar?
        WRegistro50.Outras:=0; //TODO... o que informar?
        WRegistro50.Aliquota:=QY2.FieldByName('NFI_ALIQICMS').AsFloat;
        if QY.FieldByName('NFE_STATUS').AsString='F' then
        WRegistro50.Situacao:='N';
        if QY.FieldByName('NFE_STATUS').AsString='C' then
        WRegistro50.Situacao:='S';
        if QY.FieldByName('NFE_STATUS').AsString='I' then
        WRegistro50.Situacao:='4';
        ACBrSintegra.Registros50.Add(WRegistro50);
        QY2.Next;
      end;
      QY2.Close;
    end else
    //CFOP e aliquota tudo igual.
    begin
      WRegistro50:=TRegistro50.Create;
      if (not QY.FieldByName('NFE_CNPJ').IsNull) and (QY.FieldByName('NFE_CNPJ').AsString<>'  .   .   /    -  ') then
      WRegistro50.CPFCNPJ:=QY.FieldByName('NFE_CNPJ').AsString else
      WRegistro50.CPFCNPJ:=QY.FieldByName('NFE_CPF').AsString;
      if QY.FieldByName('NFE_IE').AsString='' then
      WRegistro50.Inscricao:='ISENTO' else
      WRegistro50.Inscricao:=Trim(QY.FieldByName('NFE_IE').AsString);
      WRegistro50.DataDocumento:=QY.FieldByName('NFE_DTEMISSAO').AsDateTime;
      WRegistro50.UF:=QY.FieldByName('NFE_ESTADO').AsString;
      WRegistro50.Modelo:=QY.FieldByName('NFE_MODELO').AsString;
      WRegistro50.Serie:=QY.FieldByName('NFE_SERIE').AsString;
      WRegistro50.Numero:=QY.FieldByName('NFE_CODIGO').AsString;
      WRegistro50.Cfop:=QY.FieldByName('NFE_CFOP').AsString;
      WRegistro50.EmissorDocumento:='P'; //P-proprio T-Terceiros.
      WRegistro50.ValorContabil:=QY.FieldByName('NFE_VALORTOTAL').AsFloat;
      WRegistro50.BasedeCalculo:=QY.FieldByName('NFE_BASEICMS').AsFloat;
      WRegistro50.Icms:=QY.FieldByName('NFE_TOTALICMS').AsFloat;
      WRegistro50.Isentas:=0; //TODO... o que informar?
      WRegistro50.Outras:=0; //TODO... o que informar?
      WRegistro50.Aliquota:=QY2.FieldByName('NFI_ALIQICMS').AsFloat;
      if QY.FieldByName('NFE_STATUS').AsString='F' then
      WRegistro50.Situacao:='N';
      if QY.FieldByName('NFE_STATUS').AsString='C' then
      WRegistro50.Situacao:='S';
      if QY.FieldByName('NFE_STATUS').AsString='I' then
      WRegistro50.Situacao:='4';
      ACBrSintegra.Registros50.Add(WRegistro50);
      QY2.Close;
    end;
    QY.Next;
  end;
  QY.Close;
  //notas fiscais de entrada de energia elétrica (modelo 6) e telecomunicação (modelo 22).
  QY.Close;
  QY.SQL.Clear;
  QY.SQL.Add('select * from COMPRAS where COM_STATUS<>''A'' and (COM_MODELO=6 or COM_MODELO=22) and COM_NOTADATA between :datainicial and :datafinal order by COM_NOTADATA, COM_CODIGO');
  QY.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
  QY.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
  QY.Open;
  QY.First;
  while not QY.Eof do
  begin
    WRegistro50:=TRegistro50.Create;
    if (not QY.FieldByName('COM_CNPJ').IsNull) and (QY.FieldByName('COM_CNPJ').AsString<>'  .   .   /    -  ') then
    WRegistro50.CPFCNPJ:=QY.FieldByName('COM_CNPJ').AsString else
    WRegistro50.CPFCNPJ:=QY.FieldByName('COM_CPF').AsString;
    if QY.FieldByName('COM_IE').AsString='' then
    WRegistro50.Inscricao:='ISENTO' else
    WRegistro50.Inscricao:=Trim(QY.FieldByName('COM_IE').AsString);
    WRegistro50.DataDocumento:=QY.FieldByName('COM_NOTADATA').AsDateTime;
    WRegistro50.UF:=QY.FieldByName('COM_ESTADO').AsString;
    WRegistro50.Modelo:=QY.FieldByName('COM_MODELO').AsString;
    WRegistro50.Serie:=QY.FieldByName('COM_SERIE').AsString;
    WRegistro50.Numero:=QY.FieldByName('COM_CODIGO').AsString;
    WRegistro50.Cfop:=QY.FieldByName('COM_CFOP').AsString;
    WRegistro50.EmissorDocumento:='T'; //P-proprio T-Terceiros.
    WRegistro50.ValorContabil:=QY.FieldByName('COM_VALORTOTAL').AsFloat;
    WRegistro50.BasedeCalculo:=QY.FieldByName('COM_BASEICMS').AsFloat;
    WRegistro50.Icms:=QY.FieldByName('COM_TOTALICMS').AsFloat;
    WRegistro50.Isentas:=0; //TODO... o que informar?
    WRegistro50.Outras:=0; //TODO... o que informar?
    WRegistro50.Aliquota:=QY.FieldByName('COM_ALIQICMS').AsFloat;
    if QY.FieldByName('COM_STATUS').AsString='F' then
    WRegistro50.Situacao:='N';
    if QY.FieldByName('COM_STATUS').AsString='C' then
    WRegistro50.Situacao:='S';
    ACBrSintegra.Registros50.Add(WRegistro50);
    QY.Next;
  end;
  QY.Close;
end;

procedure TFormSintegra.GerarRegistro51;
var WRegistro51: TRegistro51;
begin
  //TOTAL DE NOTA FISCAL QUANTO AO IPI.
  //notas fiscais modelo 1.
  QY.Close;
  QY.SQL.Clear;
  QY.SQL.Add('select * from NOTAS where NOT_STATUS<>''A'' and NOT_DTEMISSAO between :datainicial and :datafinal order by NOT_DTEMISSAO, NOT_CODIGO');
  QY.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
  QY.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
  QY.Open;
  QY.First;
  while not QY.Eof do
  begin
    WRegistro51:=TRegistro51.Create;
    if (not QY.FieldByName('NOT_CNPJ').IsNull) and (QY.FieldByName('NOT_CNPJ').AsString<>'  .   .   /    -  ') then
    WRegistro51.CPFCNPJ:=LimparFormatacao(QY.FieldByName('NOT_CNPJ').AsString) else
    WRegistro51.CPFCNPJ:=LimparFormatacao(QY.FieldByName('NOT_CPF').AsString);
    if QY.FieldByName('NOT_IE').AsString='' then
    WRegistro51.Inscricao:='ISENTO' else
    WRegistro51.Inscricao:=Trim(QY.FieldByName('NOT_IE').AsString);
    WRegistro51.DataDocumento:=QY.FieldByName('NOT_DTEMISSAO').AsDateTime;
    WRegistro51.Estado:=QY.FieldByName('NOT_ESTADO').AsString;
    WRegistro51.Serie:=QY.FieldByName('NOT_SERIE').AsString;
    WRegistro51.Numero:=QY.FieldByName('NOT_CODIGO').AsString;
    WRegistro51.Cfop:=QY.FieldByName('NOT_CFOP').AsString; //QY.FieldByName('NOT_CFOP').AsString;
    WRegistro51.ValorContabil:=QY.FieldByName('NOT_VALORTOTAL').AsFloat;
    WRegistro51.ValorIpi:=QY.FieldByName('NOT_TOTALICMS').AsFloat;
    WRegistro51.ValorIsentas:=0; //TODO... o que informar?
    WRegistro51.ValorOutras:=0; //TODO... o que informar?
    if QY.FieldByName('NOT_STATUS').AsString='F' then
    WRegistro51.Situacao:='N';
    if QY.FieldByName('NOT_STATUS').AsString='C' then
    WRegistro51.Situacao:='S';
    ACBrSintegra.Registros51.Add(WRegistro51);
    QY.Next;
  end;
  QY.Close;

  //notas fiscais eletronicas.
  QY.Close;
  QY.SQL.Clear;
  QY.SQL.Add('select * from NFE where NFE_STATUS<>''A'' and NFE_DTEMISSAO between :datainicial and :datafinal order by NFE_DTEMISSAO, NFE_CODIGO');
  QY.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
  QY.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
  QY.Open;
  QY.First;
  while not QY.Eof do
  begin
    WRegistro51:=TRegistro51.Create;
    if (not QY.FieldByName('NFE_CNPJ').IsNull) and (QY.FieldByName('NFE_CNPJ').AsString<>'  .   .   /    -  ') then
    WRegistro51.CPFCNPJ:=QY.FieldByName('NFE_CNPJ').AsString else
    WRegistro51.CPFCNPJ:=QY.FieldByName('NFE_CPF').AsString;
    if QY.FieldByName('NFE_IE').AsString='' then
    WRegistro51.Inscricao:='ISENTO' else
    WRegistro51.Inscricao:=Trim(QY.FieldByName('NFE_IE').AsString);
    WRegistro51.DataDocumento:=QY.FieldByName('NFE_DTEMISSAO').AsDateTime;
    WRegistro51.Estado:=QY.FieldByName('NFE_ESTADO').AsString;
    WRegistro51.Serie:=QY.FieldByName('NFE_SERIE').AsString;
    WRegistro51.Numero:=QY.FieldByName('NFE_CODIGO').AsString;
    WRegistro51.Cfop:=QY.FieldByName('NFE_CFOP').AsString; //QY.FieldByName('NOT_CFOP').AsString;
    WRegistro51.ValorContabil:=QY.FieldByName('NFE_VALORTOTAL').AsFloat;
    WRegistro51.ValorIpi:=QY.FieldByName('NFE_TOTALICMS').AsFloat;
    WRegistro51.ValorIsentas:=0; //TODO... o que informar?
    WRegistro51.ValorOutras:=0; //TODO... o que informar?
    if QY.FieldByName('NFE_STATUS').AsString='F' then
    WRegistro51.Situacao:='N';
    if QY.FieldByName('NFE_STATUS').AsString='C' then
    WRegistro51.Situacao:='S';
    if QY.FieldByName('NFE_STATUS').AsString='I' then
    WRegistro51.Situacao:='4';
    ACBrSintegra.Registros51.Add(WRegistro51);
    QY.Next;
  end;
  QY.Close;
end;

procedure TFormSintegra.GerarRegistro53;
var WRegistro53: TRegistro53;
begin
  //SUBSTITUICAO TRIBUTARIA.
  //notas fiscais modelo 1.
  QY.Close;
  QY.SQL.Clear;
  QY.SQL.Add('select * from NOTAS where NOT_STATUS<>''A'' and NOT_TOTALICMSST<>0 and NOT_DTEMISSAO between :datainicial and :datafinal order by NOT_DTEMISSAO, NOT_CODIGO');
  QY.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
  QY.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
  QY.Open;
  QY.First;
  while not QY.Eof do
  begin
    WRegistro53:=TRegistro53.Create;
    if (not QY.FieldByName('NOT_CNPJ').IsNull) and (QY.FieldByName('NOT_CNPJ').AsString<>'  .   .   /    -  ') then
    WRegistro53.CPFCNPJ:=QY.FieldByName('NOT_CNPJ').AsString else
    WRegistro53.CPFCNPJ:=QY.FieldByName('NOT_CPF').AsString;
    if QY.FieldByName('NOT_IE').AsString='' then
    WRegistro53.Inscricao:='ISENTO' else
    WRegistro53.Inscricao:=Trim(QY.FieldByName('NOT_IE').AsString);
    WRegistro53.DataDocumento:=QY.FieldByName('NOT_DTEMISSAO').AsDateTime;
    WRegistro53.Estado:=QY.FieldByName('NOT_ESTADO').AsString;
    WRegistro53.Modelo:=QY.FieldByName('NOT_MODELO').AsString;
    WRegistro53.Serie:=QY.FieldByName('NOT_SERIE').AsString;
    WRegistro53.Numero:=QY.FieldByName('NOT_CODIGO').AsString;
    WRegistro53.Cfop:=QY.FieldByName('NOT_CFOP').AsString;
    WRegistro53.Emitente:='P';
    WRegistro53.BaseST:=QY.FieldByName('NOT_BASEICMSST').AsFloat;
    WRegistro53.IcmsRetido:=QY.FieldByName('NOT_TOTALICMSST').AsFloat;
    WRegistro53.Despesas:=QY.FieldByName('NOT_VALORDESPACES').AsFloat+QY.FieldByName('NOT_VALORSEGURO').AsFloat+QY.FieldByName('NOT_VALORFRETE').AsFloat;
    if QY.FieldByName('NOT_STATUS').AsString='F' then
    WRegistro53.Situacao:='N';
    if QY.FieldByName('NOT_STATUS').AsString='C' then
    WRegistro53.Situacao:='S';
    WRegistro53.CodigoAntecipacao:=''; //TODO... qual codigo da tabela no manual informar?
    ACBrSintegra.Registros53.Add(WRegistro53);
    QY.Next;
  end;
  QY.Close;

  //notas fiscais eletronicas.
  QY.Close;
  QY.SQL.Clear;
  QY.SQL.Add('select * from NFE where NFE_STATUS<>''A'' and NFE_TOTALICMSST<>0 and NFE_DTEMISSAO between :datainicial and :datafinal order by NFE_DTEMISSAO, NFE_CODIGO');
  QY.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
  QY.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
  QY.Open;
  QY.First;
  while not QY.Eof do
  begin
    WRegistro53:=TRegistro53.Create;
    if (not QY.FieldByName('NFE_CNPJ').IsNull) and (QY.FieldByName('NFE_CNPJ').AsString<>'  .   .   /    -  ') then
    WRegistro53.CPFCNPJ:=QY.FieldByName('NFE_CNPJ').AsString else
    WRegistro53.CPFCNPJ:=QY.FieldByName('NFE_CPF').AsString;
    if QY.FieldByName('NFE_IE').AsString='' then
    WRegistro53.Inscricao:='ISENTO' else
    WRegistro53.Inscricao:=Trim(QY.FieldByName('NFE_IE').AsString);
    WRegistro53.DataDocumento:=QY.FieldByName('NFE_DTEMISSAO').AsDateTime;
    WRegistro53.Estado:=QY.FieldByName('NFE_ESTADO').AsString;
    WRegistro53.Modelo:=QY.FieldByName('NFE_MODELO').AsString;
    WRegistro53.Serie:=QY.FieldByName('NFE_SERIE').AsString;
    WRegistro53.Numero:=QY.FieldByName('NFE_CODIGO').AsString;
    WRegistro53.Cfop:=QY.FieldByName('NFE_CFOP').AsString;
    WRegistro53.Emitente:='P';
    WRegistro53.BaseST:=QY.FieldByName('NFE_BASEICMSST').AsFloat;
    WRegistro53.IcmsRetido:=QY.FieldByName('NFE_TOTALICMSST').AsFloat;
    WRegistro53.Despesas:=QY.FieldByName('NFE_VALORDESPACES').AsFloat+QY.FieldByName('NFE_VALORSEGURO').AsFloat+QY.FieldByName('NFE_VALORFRETE').AsFloat;
    if QY.FieldByName('NFE_STATUS').AsString='F' then
    WRegistro53.Situacao:='N';
    if QY.FieldByName('NFE_STATUS').AsString='C' then
    WRegistro53.Situacao:='S';
    if QY.FieldByName('NFE_STATUS').AsString='I' then
    WRegistro53.Situacao:='4';
    WRegistro53.CodigoAntecipacao:=''; //TODO... qual codigo da tabela que tem no manual informar?
    ACBrSintegra.Registros53.Add(WRegistro53);
    QY.Next;
  end;
  QY.Close;
end;

procedure TFormSintegra.GerarRegistro54;
var
  WRegistro54: TRegistro54;
  WRegistro75: TRegistro75;
  Contador, Nota: Integer;
begin
  //PRODUTOS.
  //notas fiscais.
  QY.Close;
  QY.SQL.Clear;
  QY.SQL.Add('select * from NOTASITENS left join NOTAS on NOI_NOTA=NOT_CODIGO where NOT_STATUS<>''A'' and NOT_DTEMISSAO between :datainicial and :datafinal order by NOT_DTEMISSAO, NOT_CODIGO');
  QY.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
  QY.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
  QY.Open;
  QY.First;
  Contador:=0;
  Nota:=0;
  while not QY.Eof do
  begin
    Contador:=Contador+1;
    WRegistro54:=TRegistro54.Create;
    if (not QY.FieldByName('NOT_CNPJ').IsNull) and (QY.FieldByName('NOT_CNPJ').AsString<>'  .   .   /    -  ') then
    WRegistro54.CPFCNPJ:=LimparFormatacao(QY.FieldByName('NOT_CNPJ').AsString) else
    WRegistro54.CPFCNPJ:=LimparFormatacao(QY.FieldByName('NOT_CPF').AsString);
    WRegistro54.Modelo:=QY.FieldByName('NOT_MODELO').AsString;
    WRegistro54.Serie:=QY.FieldByName('NOT_SERIE').AsString;
    WRegistro54.Numero:=QY.FieldByName('NOT_CODIGO').AsString;
    WRegistro54.Cfop:=QY.FieldByName('NOT_CFOP').AsString;
    WRegistro54.CST:=AlignText(QY.FieldByName('NOT_CSTICMS').AsString,'0',3,taRight);
    if Nota<>QY.FieldByName('NOT_CODIGO').AsInteger then //reseta o contador quando muda a nota.
    begin
      Nota:=QY.FieldByName('NOT_CODIGO').AsInteger;
      Contador:=1;
    end;
    WRegistro54.NumeroItem:=Contador;
    WRegistro54.Codigo:=QY.FieldByName('NOI_PRODUTO').AsString;
    WRegistro54.Descricao:=QY.FieldByName('NOI_DESCRICAO').AsString;
    WRegistro54.Quantidade:=QY.FieldByName('NOI_QUANTIDADE').AsFloat;
    WRegistro54.Valor:=QY.FieldByName('NOI_VALORTOTALBRUTO').AsFloat;
    WRegistro54.ValorDescontoDespesa:=QY.FieldByName('NOI_DESCVALOR').AsFloat;
    WRegistro54.BasedeCalculo:=QY.FieldByName('NOI_BASEICMS').AsFloat;
    WRegistro54.BaseST:=QY.FieldByName('NOI_BASEICMSST').AsFloat;
    WRegistro54.ValorIpi:=QY.FieldByName('NOI_VALORIPI').AsFloat;
    WRegistro54.Aliquota:=QY.FieldByName('NOI_ALIQICMS').AsFloat;
    ACBrSintegra.Registros54.Add(WRegistro54);
    //cria um registro 75 correspondente.
    WRegistro75:=TRegistro75.Create;
    WRegistro75.DataInicial:=ACBrSintegra.Registro10.DataInicial;
    WRegistro75.DataFinal:=ACBrSintegra.Registro10.DataFinal;
    WRegistro75.Codigo:=QY.FieldByName('NOI_PRODUTO').AsString;
    if QY.FieldByName('NOI_CLASSFISCAL').AsString='' then
    WRegistro75.NCM:='12345678' else
    WRegistro75.NCM:=QY.FieldByName('NOI_CLASSFISCAL').AsString;
    WRegistro75.Descricao:=QY.FieldByName('NOI_DESCRICAO').AsString;
    WRegistro75.Unidade:=QY.FieldByName('NOI_UNIDADE').AsString;
    WRegistro75.AliquotaIpi:=QY.FieldByName('NOI_ALIQIPI').AsFloat;
    WRegistro75.AliquotaICMS:=QY.FieldByName('NOI_ALIQICMS').AsFloat;
    WRegistro75.Reducao:=QY.FieldByName('NOI_ALIQICMSRED').AsFloat;
    WRegistro75.BaseST:=QY.FieldByName('NOI_BASEICMSST').AsFloat;
    ACBrSintegra.Registros75.Add(WRegistro75);
    QY.Next;
  end;
  QY.Close;

  //notas fiscais eletronicas.
  QY.Close;
  QY.SQL.Clear;
  QY.SQL.Add('select * from NFEITENS left join NFE on NFI_NOTA=NFE_CODIGO where NFE_STATUS<>''A'' and NFE_DTEMISSAO between :datainicial and :datafinal order by NFE_DTEMISSAO, NFE_CODIGO');
  QY.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
  QY.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
  QY.Open;
  QY.First;
  Contador:=0;
  while not QY.Eof do
  begin
    Contador:=Contador+1;
    WRegistro54:=TRegistro54.Create;
    if (not QY.FieldByName('NFE_CNPJ').IsNull) and (QY.FieldByName('NFE_CNPJ').AsString<>'  .   .   /    -  ') then
    WRegistro54.CPFCNPJ:=LimparFormatacao(QY.FieldByName('NFE_CNPJ').AsString) else
    WRegistro54.CPFCNPJ:=LimparFormatacao(QY.FieldByName('NFE_CPF').AsString);
    WRegistro54.Modelo:=QY.FieldByName('NFE_MODELO').AsString;
    WRegistro54.Serie:=QY.FieldByName('NFE_SERIE').AsString;
    WRegistro54.Numero:=QY.FieldByName('NFE_CODIGO').AsString;
    WRegistro54.Cfop:=QY.FieldByName('NFE_CFOP').AsString;
    WRegistro54.CST:=AlignText(QY.FieldByName('NFI_CSTICMS').AsString,'0',3,taRight);
    if Nota<>QY.FieldByName('NFE_CODIGO').AsInteger then //reseta o contador quando muda a nota.
    begin
      Nota:=QY.FieldByName('NFE_CODIGO').AsInteger;
      Contador:=1;
    end;
    WRegistro54.NumeroItem:=Contador;
    WRegistro54.Codigo:=QY.FieldByName('NFI_PRODUTO').AsString;
    WRegistro54.Descricao:=QY.FieldByName('NFI_DESCRICAO').AsString;
    WRegistro54.Quantidade:=QY.FieldByName('NFI_QUANTIDADE').AsFloat;
    WRegistro54.Valor:=QY.FieldByName('NFI_VALORTOTALBRUTO').AsFloat;
    WRegistro54.ValorDescontoDespesa:=QY.FieldByName('NFI_DESCVALOR').AsFloat;
    WRegistro54.BasedeCalculo:=QY.FieldByName('NFI_BASEICMS').AsFloat;
    WRegistro54.BaseST:=QY.FieldByName('NFI_BASEICMSST').AsFloat;
    WRegistro54.ValorIpi:=QY.FieldByName('NFI_VALORIPI').AsFloat;
    WRegistro54.Aliquota:=QY.FieldByName('NFI_ALIQICMS').AsFloat;
    ACBrSintegra.Registros54.Add(WRegistro54);
    //cria um registro 75 correspondente.
    WRegistro75:=TRegistro75.Create;
    WRegistro75.DataInicial:=ACBrSintegra.Registro10.DataInicial;
    WRegistro75.DataFinal:=ACBrSintegra.Registro10.DataFinal;
    WRegistro75.Codigo:=QY.FieldByName('NFI_PRODUTO').AsString;
    if QY.FieldByName('NFI_CLASSFISCAL').AsString='' then
    WRegistro75.NCM:='12345678' else
    WRegistro75.NCM:=QY.FieldByName('NFI_CLASSFISCAL').AsString;
    WRegistro75.Descricao:=QY.FieldByName('NFI_DESCRICAO').AsString;
    WRegistro75.Unidade:=QY.FieldByName('NFI_UNIDADE').AsString;
    WRegistro75.AliquotaIpi:=QY.FieldByName('NFI_ALIQIPI').AsFloat;
    WRegistro75.AliquotaICMS:=QY.FieldByName('NFI_ALIQICMS').AsFloat;
    WRegistro75.Reducao:=QY.FieldByName('NFI_ALIQICMSRED').AsFloat;
    WRegistro75.BaseST:=QY.FieldByName('NFI_BASEICMSST').AsFloat;
    ACBrSintegra.Registros75.Add(WRegistro75);
    QY.Next;
  end;
  QY.Close;
end;

procedure TFormSintegra.GerarRegistro60A;
var WRegistro60A: TRegistro60A;
begin
{  WRegistro60A:=TRegistro60A.Create;
  WRegistro60A.Emissao:=ACBrSintegra.Registro10.DataInicial;
  WRegistro60A.NumSerie:='000000987456';
  WRegistro60A.StAliquota:='F';
  WRegistro60A.Valor:=500;
  ACBrSintegra.Registros60A.Add(WRegistro60A);

  WRegistro60A:=TRegistro60A.Create;
  WRegistro60A.Emissao:=ACBrSintegra.Registro10.DataInicial;
  WRegistro60A.NumSerie:='000000777777';
  WRegistro60A.StAliquota:='1800';
  WRegistro60A.Valor:=100;
  ACBrSintegra.Registros60A.Add(WRegistro60A);}
end;

procedure TFormSintegra.GerarRegistro60D;
var
  WRegistro60D: TRegistro60D;
  WRegistro75: TRegistro75;
begin
{  WRegistro60D:=TRegistro60D.Create;

  WRegistro60D.Emissao:=ACBrSintegra.Registro10.DataInicial;
  WRegistro60D.NumSerie:='000000987456';
  WRegistro60D.Codigo:='1234567890123';
  WRegistro60D.Quantidade:=100;
  WRegistro60D.Valor:=500;
  WRegistro60D.BaseDeCalculo:=0;
  WRegistro60D.StAliquota:='F';
  WRegistro60D.ValorIcms:=0;
  ACBrSintegra.Registros60D.Add(WRegistro60D);

  WRegistro75:=TRegistro75.Create;
  WRegistro75.Codigo:=WRegistro60D.Codigo;
  WRegistro75.AliquotaICMS:=0;
  WRegistro75.DataInicial:=ACBrSintegra.Registro10.DataInicial;
  WRegistro75.DataFinal:=ACBrSintegra.Registro10.DataFinal;
  WRegistro75.Descricao:='PRODUTO DE TESTE';
  WRegistro75.Unidade:='UN';
  ACBrSintegra.Registros75.Add(WRegistro75);

  WRegistro60D:=TRegistro60D.Create;
  WRegistro60D.Emissao:=ACBrSintegra.Registro10.DataInicial;
  WRegistro60D.NumSerie:='000000777777';
  WRegistro60D.Codigo:='0000000000017';
  WRegistro60D.Quantidade:=100;
  WRegistro60D.Valor:=550;
  WRegistro60D.BaseDeCalculo:=0;
  WRegistro60D.StAliquota:='I';
  WRegistro60D.ValorIcms:=0;
  ACBrSintegra.Registros60D.Add(WRegistro60D);

  WRegistro75:=TRegistro75.Create;
  WRegistro75.Codigo:=WRegistro60D.Codigo;
  WRegistro75.AliquotaICMS:=0;
  WRegistro75.DataInicial:=ACBrSintegra.Registro10.DataInicial;
  WRegistro75.DataFinal:=ACBrSintegra.Registro10.DataFinal;
  WRegistro75.Descricao:='PRODUTO DE TESTE II';
  WRegistro75.Unidade:='UN';
  ACBrSintegra.Registros75.Add(WRegistro75);}
end;

procedure TFormSintegra.GerarRegistro60M;
var WRegistro60M: TRegistro60M;
begin
{  WRegistro60M:=TRegistro60M.Create;
  WRegistro60M.Emissao:=ACBrSintegra.Registro10.DataInicial;
  WRegistro60M.NumSerie:='000000987456';
  WRegistro60M.NumOrdem:=1;
  WRegistro60M.ModeloDoc:='2D';
  WRegistro60M.CooInicial:=1000;
  WRegistro60M.CooFinal:=1050;
  WRegistro60M.CRZ:=1;
  WRegistro60M.CRO:=1;
  WRegistro60M.VendaBruta:=2050.35;
  WRegistro60M.ValorGT:=10000;
  ACBrSintegra.Registros60M.Add(WRegistro60M);

  WRegistro60M:=TRegistro60M.Create;
  WRegistro60M.Emissao:=ACBrSintegra.Registro10.DataInicial;
  WRegistro60M.NumSerie:='000000777777';
  WRegistro60M.NumOrdem:=2;
  WRegistro60M.ModeloDoc:='2D';
  WRegistro60M.CooInicial:=2000;
  WRegistro60M.CooFinal:=2010;
  WRegistro60M.CRZ:=1;
  WRegistro60M.CRO:=1;
  WRegistro60M.VendaBruta:=300;
  WRegistro60M.ValorGT:=15000;
  ACBrSintegra.Registros60M.Add(WRegistro60M);}
end;

procedure TFormSintegra.GerarRegistro61;
var WRegistro61: TRegistro61;
begin
  WRegistro61:=TRegistro61.Create;
  WRegistro61.Emissao:=StrToDate(MaskEdit1.Text,FS);
  WRegistro61.Modelo:='2';
  WRegistro61.Serie:='U';
  WRegistro61.SubSerie:='';
  WRegistro61.NumOrdemInicial:=1;
  WRegistro61.NumOrdemFinal:=10;
  WRegistro61.Valor:=100.00;
  WRegistro61.BaseDeCalculo:=100.00;
  WRegistro61.ValorIcms:=17.00;
  WRegistro61.Isentas:=0;
  WRegistro61.Outras:=0;
  WRegistro61.Aliquota:=17;
  ACBrSintegra.Registros61.Add(WRegistro61);
end;

procedure TFormSintegra.GerarRegistro70;
var WRegistro70: TRegistro70;
begin
  QY.Close;
  QY.SQL.Clear;
  QY.SQL.Add('select * from CTE where CTE_STATUS<>''A'' and CTE_DTEMISSAO between :datainicial and :datafinal order by CTE_CODIGO');
  QY.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
  QY.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
  QY.Open;
  while not QY.Eof do
  begin
    WRegistro70:=TRegistro70.Create;
    if QY.FieldByName('CTE_PAGOPOR').AsString='R' then
    begin
      if (not QY.FieldByName('CTE_REMCNPJ').IsNull) and (QY.FieldByName('CTE_REMCNPJ').AsString<>'  .   .   /    -  ') then
      WRegistro70.CPFCNPJ:=LimparFormatacao(QY.FieldByName('CTE_REMCNPJ').AsString) else
      WRegistro70.CPFCNPJ:=LimparFormatacao(QY.FieldByName('CTE_REMCPF').AsString);
      if QY.FieldByName('CTE_REMIE').AsString='' then
      WRegistro70.Inscricao:='ISENTO' else
      WRegistro70.Inscricao:=Trim(QY.FieldByName('CTE_REMIE').AsString);
      WRegistro70.UF:=QY.FieldByName('CTE_REMESTADO').AsString;
    end else
    if QY.FieldByName('CTE_PAGOPOR').AsString='D' then
    begin
      if (not QY.FieldByName('CTE_DESCNPJ').IsNull) and (QY.FieldByName('CTE_DESCNPJ').AsString<>'  .   .   /    -  ') then
      WRegistro70.CPFCNPJ:=LimparFormatacao(QY.FieldByName('CTE_DESCNPJ').AsString) else
      WRegistro70.CPFCNPJ:=LimparFormatacao(QY.FieldByName('CTE_DESCPF').AsString);
      if QY.FieldByName('CTE_DESIE').AsString='' then
      WRegistro70.Inscricao:='ISENTO' else
      WRegistro70.Inscricao:=Trim(QY.FieldByName('CTE_DESIE').AsString);
      WRegistro70.UF:=QY.FieldByName('CTE_DESESTADO').AsString;
    end;
    WRegistro70.DataDocumento:=QY.FieldByName('CTE_DTEMISSAO').AsDateTime;
    WRegistro70.Modelo:=QY.FieldByName('CTE_MODELO').AsString;
    WRegistro70.Serie:='U'; //TODO... é o certo? QY.FieldByName('CTE_SERIE').AsString;
    WRegistro70.SubSerie:='  ';
    WRegistro70.Numero:=QY.FieldByName('CTE_CODIGO').AsString;
    WRegistro70.Cfop:=QY.FieldByName('CTE_CFOP').AsString;
    WRegistro70.ValorContabil:=QY.FieldByName('CTE_VALORTOTAL').AsFloat;
    WRegistro70.BasedeCalculo:=QY.FieldByName('CTE_BASEICMS').AsFloat;
    WRegistro70.Icms:=QY.FieldByName('CTE_TOTALICMS').AsFloat;
    WRegistro70.Isentas:=0; //TODO... o que preencher?
    WRegistro70.Outras:=0; //TODO... o que preencher?
    WRegistro70.CifFobOutros:='0'; //1-CIF 2-FOB 0-Outros... TODO... está correto?
    if QY.FieldByName('CTE_STATUS').AsString='F' then
    WRegistro70.Situacao:='N' else
    if QY.FieldByName('CTE_STATUS').AsString='C' then
    WRegistro70.Situacao:='S' else
    if QY.FieldByName('CTE_STATUS').AsString='I' then
    WRegistro70.Situacao:='4';
    ACBrSintegra.Registros70.Add(WRegistro70);
    QY.Next;
  end;
  QY.Close;
end;

procedure TFormSintegra.GerarRegistro71;
var WRegistro71: TRegistro71;
begin
  QY.Close;
  QY.SQL.Clear;
  QY.SQL.Add('select * from CTENOTAS left join CTE on CTN_CTE=CTE_CODIGO where CTE_STATUS<>''A'' and CTE_DTEMISSAO between :datainicial and :datafinal order by CTN_CTE, CTE_CODIGO');
  QY.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
  QY.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
  QY.Open;
  while not QY.Eof do
  begin
    if QY.FieldByName('CTE_PAGOPOR').AsString='R' then
    begin
      if (not QY.FieldByName('CTE_REMCNPJ').IsNull) and (QY.FieldByName('CTE_REMCNPJ').AsString<>'  .   .   /    -  ') then
      WRegistro71.CPFCNPJ:=LimparFormatacao(QY.FieldByName('CTE_REMCNPJ').AsString) else
      WRegistro71.CPFCNPJ:=LimparFormatacao(QY.FieldByName('CTE_REMCPF').AsString);
      if QY.FieldByName('CTE_REMIE').AsString='' then
      WRegistro71.Inscricao:='ISENTO' else
      WRegistro71.Inscricao:=Trim(QY.FieldByName('CTE_REMIE').AsString);
      WRegistro71.UF:=QY.FieldByName('CTE_REMESTADO').AsString;

      if (not QY.FieldByName('CTE_DESCNPJ').IsNull) and (QY.FieldByName('CTE_DESCNPJ').AsString<>'  .   .   /    -  ') then
      WRegistro71.CPFCNPJNF:=LimparFormatacao(QY.FieldByName('CTE_DESCNPJ').AsString) else
      WRegistro71.CPFCNPJNF:=LimparFormatacao(QY.FieldByName('CTE_DESCPF').AsString);
      if QY.FieldByName('CTE_DESIE').AsString='' then
      WRegistro71.Inscricao:='ISENTO' else
      WRegistro71.InscricaoNF:=Trim(QY.FieldByName('CTE_DESIE').AsString);
      WRegistro71.UFNF:=QY.FieldByName('CTE_DESESTADO').AsString;
    end else
    if QY.FieldByName('CTE_PAGOPOR').AsString='D' then
    begin
      if (not QY.FieldByName('CTE_DESCNPJ').IsNull) and (QY.FieldByName('CTE_DESCNPJ').AsString<>'  .   .   /    -  ') then
      WRegistro71.CPFCNPJ:=LimparFormatacao(QY.FieldByName('CTE_DESCNPJ').AsString) else
      WRegistro71.CPFCNPJ:=LimparFormatacao(QY.FieldByName('CTE_DESCPF').AsString);
      if QY.FieldByName('CTE_DESIE').AsString='' then
      WRegistro71.Inscricao:='ISENTO' else
      WRegistro71.Inscricao:=Trim(QY.FieldByName('CTE_DESIE').AsString);
      WRegistro71.UF:=QY.FieldByName('CTE_DESESTADO').AsString;

      if (not QY.FieldByName('CTE_REMCNPJ').IsNull) and (QY.FieldByName('CTE_REMCNPJ').AsString<>'  .   .   /    -  ') then
      WRegistro71.CPFCNPJNF:=LimparFormatacao(QY.FieldByName('CTE_REMCNPJ').AsString) else
      WRegistro71.CPFCNPJNF:=LimparFormatacao(QY.FieldByName('CTE_REMCPF').AsString);
      if QY.FieldByName('CTE_REMIE').AsString='' then
      WRegistro71.Inscricao:='ISENTO' else
      WRegistro71.InscricaoNF:=Trim(QY.FieldByName('CTE_REMIE').AsString);
      WRegistro71.UFNF:=QY.FieldByName('CTE_REMESTADO').AsString;
    end;
    WRegistro71.DataDocumento:=QY.FieldByName('CTE_DTEMISSAO').AsDateTime;
    WRegistro71.Modelo:=QY.FieldByName('CTE_MODELO').AsString;
    WRegistro71.Serie:=QY.FieldByName('CTE_SERIE').AsString;
    WRegistro71.SubSerie:='';
    WRegistro71.Numero:=QY.FieldByName('CTE_CODIGO').AsString;
    WRegistro71.DataNF:=QY.FieldByName('CTN_DTEMISSAO').AsDateTime;
    WRegistro71.ModeloNF:=QY.FieldByName('CTN_MODELO').AsString;
    WRegistro71.SerieNF:=QY.FieldByName('CTN_SERIE').AsString;
    WRegistro71.NumeroNF:=QY.FieldByName('CTN_NUMERO').AsString;
    WRegistro71.ValorNF:=QY.FieldByName('CTN_VALORTOTAL').AsFloat;
    ACBrSintegra.Registros71.Add(WRegistro71);
    QY.Next;
  end;
  QY.Close;
end;

procedure TFormSintegra.GerarRegistro74;
var
  WRegistro74: TRegistro74;
  WRegistro75: TRegistro75;
  Estoque: String;
  EstoqueE: Extended;
begin
  //registro de inventário.
  QY.Close;
  QY.SQL.Clear;
  if CheckBox1.Checked then
  QY.SQL.Add('select * from PRODUTOS where PRO_DTCADASTRO<=:database and PRO_TIPOITEM=''00 - MERCADORIA PARA REVENDA'' order by PRO_CODIGO') else
  QY.SQL.Add('select * from PRODUTOS where PRO_DTCADASTRO<=:database and PRO_TIPOITEM=''00 - MERCADORIA PARA REVENDA'' and PRO_COMPOSTO=''N'' order by PRO_CODIGO');
  QY.ParamByName('database').AsDate:=StrToDate(MaskEdit2.Text,FS);
  QY.Open;
  while not QY.Eof do
  begin

    //pega o estoque atual na data final informada... se nao tem movimento, pega o estoque atual.
    Estoque:=QY.FieldByName('PRO_ESTOQUEATUAL').AsString;
    EstoqueE:=QY.FieldByName('PRO_ESTOQUEATUAL').AsExtended;
    DM.QYAux2.Close;
    DM.QYAux2.SQL.Clear;
    DM.QYAux2.SQL.Add('select first(1) EST_ESTOQUEPOSTERIOR from ESTOQUE where EST_PRODUTO=:produto and EST_DATA <= :data order by EST_CODIGO desc');
    DM.QYAux2.ParamByName('produto').AsInteger:=QY.FieldByName('PRO_CODIGO').AsInteger;
    DM.QYAux2.ParamByName('data').AsDate:=StrToDate(MaskEdit2.Text);
    DM.QYAux2.Open;
    DM.QYAux2.FetchAll;
    if DM.QYAux2.RecordCount=1 then
    begin
      Estoque:=DM.QYAux2.FieldByName('EST_ESTOQUEPOSTERIOR').AsString;
      EstoqueE:=DM.QYAux2.FieldByName('EST_ESTOQUEPOSTERIOR').AsExtended
    end;
    DM.QYAux2.Close;

    if (CheckBox3.Checked) and (EstoqueE<=0) then
    begin
      QY.Next;
      Continue;
    end;

    //trocado pela linha abaixo. WRegistro74.Quantidade:=QY.FieldByName('PRO_ESTOQUEATUAL').AsFloat;
    WRegistro74:=TRegistro74.Create;
    WRegistro74.Data:=StrToDate(MaskEdit2.Text); //TODO... Qual data colocar? Date;
    WRegistro74.Codigo:=QY.FieldByName('PRO_CODIGO').AsString;
    WRegistro74.Quantidade:=Estoque.ToExtended;
    //trocado pela linha abaixo. WRegistro74.ValorProduto:=QY.FieldByName('PRO_ESTOQUEATUAL').AsFloat * QY.FieldByName('PRO_PRECOVENDA').AsFloat;
    WRegistro74.ValorProduto:=Estoque.ToExtended * QY.FieldByName('PRO_PRECOCUSTO').AsExtended;
    WRegistro74.CodigoPosse:='1';
    WRegistro74.CNPJPossuidor:='';
    WRegistro74.InscricaoPossuidor:='';
    WRegistro74.UFPossuidor:='';
    ACBrSintegra.Registros74.Add(WRegistro74);

    //para cada 54, 60R, 74 ou 77 deve haver um registro 75.
    WRegistro75:=TRegistro75.Create;
    WRegistro75.DataInicial:=StrToDate(MaskEdit1.Text,FS);
    WRegistro75.DataFinal:=StrToDate(MaskEdit2.Text,FS);
    WRegistro75.Codigo:=QY.FieldByName('PRO_CODIGO').AsString;
    if QY.FieldByName('PRO_CLASSFISCAL').AsString='' then
    WRegistro75.NCM:='12345678' else
    WRegistro75.NCM:=QY.FieldByName('PRO_CLASSFISCAL').AsString;
    WRegistro75.Descricao:=QY.FieldByName('PRO_NOME').AsString;
    WRegistro75.Unidade:=QY.FieldByName('PRO_UNIDADE').AsString;
    WRegistro75.AliquotaIpi:=QY.FieldByName('PRO_ALIQIPI').AsFloat;
    WRegistro75.AliquotaICMS:=QY.FieldByName('PRO_ALIQICMS').AsFloat;
    WRegistro75.Reducao:=QY.FieldByName('PRO_ALIQICMSRED').AsFloat;
    if QY.FieldByName('PRO_SUBSTITUICAOTRIB').AsString='S' then
    WRegistro75.BaseST:=QY.FieldByName('PRO_PRECOVENDA').AsFloat else
    WRegistro75.BaseST:=0;
    ACBrSintegra.Registros75.Add(WRegistro75);

    QY.Next;
  end;
  QY.Close;
end;

procedure TFormSintegra.GerarRegistro75;
var WRegistro75: TRegistro75;
begin
{  QY.Close;
  QY.SQL.Clear;
  QY.SQL.Add('select NFI_PRODUTO from NFEITENS left join NFE on NFI_NOTA=NFE_CODIGO where NFE_DTEMISSAO between :datainicial and :datafinal order by NFI_PRODUTO');
  QY.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
  QY.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
  QY.Open;
  while not QY.Eof do
  begin
    QY2.Close;
    QY2.SQL.Clear;
    QY2.SQL.Add('select * from PRODUTOS where PRO_CODIGO=:codigo');
    QY2.ParamByName('codigo').AsInteger:=QY.FieldByName('NFI_PRODUTO').AsInteger;
    QY2.Open;
    WRegistro75:=TRegistro75.Create;
    WRegistro75.DataInicial:=StrToDate(MaskEdit1.Text,FS);
    WRegistro75.DataFinal:=StrToDate(MaskEdit2.Text);
    WRegistro75.Codigo:=QY.FieldByName('NFI_PRODUTO').AsString;
    WRegistro75.NCM:=QY2.FieldByName('PRO_CLASSFISCAL').AsString;
    WRegistro75.Descricao:=QY2.FieldByName('PRO_NOME').AsString;
    WRegistro75.Unidade:=QY2.FieldByName('PRO_UNIDADE').AsString;
    WRegistro75.AliquotaIpi:=QY2.FieldByName('PRO_ALIQIPI').AsFloat;
    WRegistro75.AliquotaICMS:=QY2.FieldByName('PRO_ALIQICMS').AsFloat;
    WRegistro75.Reducao:=QY2.FieldByName('PRO_ALIQICMSRED').AsFloat;
    if QY2.FieldByName('PRO_SUBSTITUICAOTRIB').AsString='S' then
    WRegistro75.BaseST:=QY2.FieldByName('PRO_PRECOVENDA').AsFloat else
    WRegistro75.BaseST:=0;
    ACBrSintegra.Registros75.Add(WRegistro75);
    QY.Next;
  end;
  QY.Close; }
end;

procedure TFormSintegra.GerarRegistro76;
var WRegistro76: TRegistro76;
begin
  WRegistro76:=TRegistro76.Create;
  WRegistro76.CPFCNPJ:='01005030000153';
  WRegistro76.Inscricao:='ISENTO';
  WRegistro76.Modelo:=22;
  WRegistro76.Serie:='U';
  WRegistro76.SubSerie:='';
  WRegistro76.Numero:=567;
  WRegistro76.Cfop:='5102';
  WRegistro76.TipoReceita:=trTerceiros;
  WRegistro76.DataDocumento:=StrToDate(MaskEdit1.Text,FS);
  WRegistro76.Uf:='SC';
  WRegistro76.ValorTotal:=100.00;
  WRegistro76.BasedeCalculo:=100.00;
  WRegistro76.Icms:=7.00;
  WRegistro76.Isentas:=0;
  WRegistro76.Outras:=0;
  WRegistro76.Aliquota:=7;
  WRegistro76.Situacao:='N';
  ACBrSintegra.Registros76.Add(WRegistro76);
end;

procedure TFormSintegra.GerarRegistro85;
var WRegistro85: TRegistro85;
begin
  WRegistro85:=TRegistro85.Create;
  WRegistro85.Declaracao:='123';
  WRegistro85.DataDeclaracao:=StrToDate(MaskEdit1.Text,FS);
  WRegistro85.NaturezaExportacao:='99';
  WRegistro85.RegistroExportacao:='2233';
  WRegistro85.DataRegistro:=StrToDate(MaskEdit1.Text,FS);
  WRegistro85.Conhecimento:='12345';
  WRegistro85.DataConhecimento:=StrToDate(MaskEdit1.Text,FS);
  WRegistro85.TipoConhecimento:='1';
  WRegistro85.Pais:='2810';
  WRegistro85.DataAverbacao:=StrToDate(MaskEdit1.Text,FS);
  WRegistro85.NumeroNotaFiscal:='123456';
  WRegistro85.DataNotaFiscal:=StrToDate(MaskEdit1.Text,FS);
  WRegistro85.Modelo:='55';
  WRegistro85.Serie:='1';
  ACBrSintegra.Registros85.Add(WRegistro85);
end;

procedure TFormSintegra.GerarRegistro86;
var WRegistro86: TRegistro86;
begin
  WRegistro86:=TRegistro86.Create;
  WRegistro86.RegistroExportacao:='2233';
  WRegistro86.DataRegistro:=StrToDate(MaskEdit1.Text,FS);
  WRegistro86.CPFCNPJ:='01005030000153';
  WRegistro86.Inscricao:='ISENTO';
  WRegistro86.UF:='SC';
  WRegistro86.NumeroNotaFiscal:='123456';
  WRegistro86.DataDocumento:=StrToDate(MaskEdit1.Text,FS);
  WRegistro86.Modelo:='55';
  WRegistro86.Serie:='1';
  WRegistro86.Codigo:='320';
  WRegistro86.Quantidade:=1;
  WRegistro86.ValorUnitario:=30.00;
  WRegistro86.ValorTotalProduto:=30.00;
  WRegistro86.Relacionamento:='1';
  ACBrSintegra.Registros86.Add(WRegistro86);
end;

procedure TFormSintegra.GerarRegistro88;
//var WRegistro88: TRegistro88EC;
begin
//  WRegistro88:=TRegistro88.Create;
end;

procedure TFormSintegra.GerarArquivo1Click(Sender: TObject);
begin
  if Edit1.Text='' then
  begin
    MessageDlg('Informe o nome do responsável.',mtInformation,[mbOk],0);
    Edit1.SetFocus;
    Exit;
  end;
  try
    if StrToDate(MaskEdit2.Text)<StrToDate(MaskEdit1.Text) then
    begin
      MessageDlg('Data final não pode ser menor que a data inicial.',mtError,[mbOk],0);
      MaskEdit2.SetFocus;
      Exit;
    end else
    if StrToDate(MaskEdit1.Text)>Date then
    begin
      MessageDlg('Data final não pode ser maior que a data atual.',mtError,[mbOk],0);
      MaskEdit2.SetFocus;
      Exit;
    end;
  except
    MessageDlg('Intervalo de datas inválido.',mtError,[mbOk],0);
    MaskEdit1.SetFocus;
    Exit;
  end;
  if SaveTextFileDialog1.Execute then
  begin
    try
      ACBrSintegra.FileName:=SaveTextFileDialog1.FileName;
      ACBrSintegra.VersaoValidador:=TVersaoValidador(ComboBox4.ItemIndex); //ver se dá certo.
      GerarRegistro10;
      GerarRegistro11;
      if CheckListBox1.Checked[00] then GerarRegistro50;
      if CheckListBox1.Checked[01] then GerarRegistro51;
      if CheckListBox1.Checked[02] then GerarRegistro53;
      if CheckListBox1.Checked[03] then GerarRegistro54;
      if CheckListBox1.Checked[04] then GerarRegistro60M;
      if CheckListBox1.Checked[05] then GerarRegistro60A;
      if CheckListBox1.Checked[06] then GerarRegistro60D;
      if CheckListBox1.Checked[07] then GerarRegistro61;
      if CheckListBox1.Checked[08] then GerarRegistro70;
      if CheckListBox1.Checked[09] then GerarRegistro71;
      if CheckListBox1.Checked[10] then GerarRegistro74;
      if CheckListBox1.Checked[11] then GerarRegistro75;
      if CheckListBox1.Checked[12] then GerarRegistro76;
      if CheckListBox1.Checked[13] then GerarRegistro85;
      if CheckListBox1.Checked[14] then GerarRegistro86;
      if CheckListBox1.Checked[15] then GerarRegistro88;
      if CheckListBox1.Checked[16] then ACBrSintegra.Informa88SME:=True else ACBrSintegra.Informa88SME:=False;
      if CheckListBox1.Checked[17] then ACBrSintegra.Informa88SMS:=True else ACBrSintegra.Informa88SMS:=False;

      ACBrSintegra.GeraArquivo;
      MessageDlg('Arquivo gerado com sucesso.',mtInformation,[mbOk],0);
      Memo1.Lines.LoadFromFile(ACBrSintegra.FileName);
    except
      on e:Exception do
      begin
        MessageDlg('Erro ao gerar o arquivo do sintegra.'+#13+'Erro: '+e.Message,mtError,[mbOk],0);
      end;
    end;
  end;
end;

procedure TFormSintegra.Ajuda2Click(Sender: TObject);
begin
  MostrarAjuda('');
end;

procedure TFormSintegra.CheckBox2Click(Sender: TObject);
var I: Byte;
begin
  for I:=0 to CheckListBox1.Items.Count-1 do
  begin
    CheckListBox1.Checked[I]:=CheckBox2.Checked;
  end;
end;

procedure TFormSintegra.Fechar1Click(Sender: TObject);
begin
  Close;
end;

procedure TFormSintegra.FormCreate(Sender: TObject);
begin
  MaskEdit1.Text:=DateToStr(PrimeiroDia(Date));
  MaskEdit2.Text:=DateToStr(UltimoDia(Date));
  ComboBox1.ItemIndex:=0;
  ComboBox2.ItemIndex:=2;
  ComboBox3.ItemIndex:=2;
  ComboBox4.ItemIndex:=1;
  //ACBrSintegra.FileName:=ExtractFilePath(Application.ExeName)+'Print\Sintegra.txt';
  Memo1.Lines.Clear;
end;

procedure TFormSintegra.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormSintegra.Memo1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var Linha, Coluna, LineLength: Integer;
begin
  Linha:=SendMessage(Memo1.Handle,EM_LINEFROMCHAR,Memo1.SelStart,0);
  Coluna:=SendMessage(Memo1.Handle,EM_LINEINDEX,Linha,0);
  LineLength:=SendMessage(Memo1.Handle,EM_LINELENGTH,Coluna,0);
  Coluna:=Memo1.SelStart-Coluna;
  StatusBar1.Panels[0].Text:='Linha: '+IntToStr(Linha+1);
  StatusBar1.Panels[1].Text:='Coluna: '+IntToStr(Coluna+1);
  StatusBar1.Panels[2].Text:='Nº Caracteres: '+IntToStr(LineLength);
end;

procedure TFormSintegra.Memo1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var Linha, Coluna, LineLength: Integer;
begin
  Linha:=SendMessage(Memo1.Handle,EM_LINEFROMCHAR,Memo1.SelStart,0);
  Coluna:=SendMessage(Memo1.Handle,EM_LINEINDEX,Linha,0);
  LineLength:=SendMessage(Memo1.Handle,EM_LINELENGTH,Coluna,0);
  Coluna:=Memo1.SelStart-Coluna;
  StatusBar1.Panels[0].Text:='Linha: '+IntToStr(Linha+1);
  StatusBar1.Panels[1].Text:='Coluna: '+IntToStr(Coluna+1);
  StatusBar1.Panels[2].Text:='Nº Caracteres: '+IntToStr(LineLength);
end;

procedure TFormSintegra.Memo1MouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var Dummy: Word;
begin
  Memo1KeyUp(Sender,Dummy,Shift);
end;

end.
