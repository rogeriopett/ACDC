unit VendasRel;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, ExtCtrls, DB, PngBitBtn, PngSpeedButton, System.UITypes;

type
  TFormVendasRel = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Bevel1: TBevel;
    Label5: TLabel;
    ComboBox1: TComboBox;
    MaskEdit1: TMaskEdit;
    MaskEdit2: TMaskEdit;
    BitBtn1: TPngBitBtn;
    BitBtn2: TPngBitBtn;
    Edit1: TEdit;
    Edit2: TEdit;
    SpeedButton1: TPngSpeedButton;
    Label4: TLabel;
    Edit3: TEdit;
    Edit4: TEdit;
    SpeedButton2: TPngSpeedButton;
    Label6: TLabel;
    Edit5: TEdit;
    Edit6: TEdit;
    SpeedButton3: TPngSpeedButton;
    Label7: TLabel;
    Edit7: TEdit;
    Edit8: TEdit;
    Label8: TLabel;
    Edit9: TEdit;
    SpeedButton4: TPngSpeedButton;
    ComboBox3: TComboBox;
    Label9: TLabel;
    BitBtn3: TPngBitBtn;
    Edit10: TEdit;
    SpeedButton5: TPngSpeedButton;
    Label10: TLabel;
    Label11: TLabel;
    Edit11: TEdit;
    Edit12: TEdit;
    SpeedButton6: TPngSpeedButton;
    Label12: TLabel;
    Edit13: TEdit;
    Edit14: TEdit;
    SpeedButton7: TPngSpeedButton;
    Edit15: TEdit;
    Label13: TLabel;
    Edit16: TEdit;
    PngSpeedButton1: TPngSpeedButton;
    Label14: TLabel;
    ComboBox2: TComboBox;
    ComboBox4: TComboBox;
    Label15: TLabel;
    Label16: TLabel;
    PngSpeedButton2: TPngSpeedButton;
    Edit17: TEdit;
    Edit18: TEdit;
    Label17: TLabel;
    ComboBox5: TComboBox;
    Label18: TLabel;
    PngSpeedButton3: TPngSpeedButton;
    Edit19: TEdit;
    Edit20: TEdit;
    Label19: TLabel;
    PngSpeedButton4: TPngSpeedButton;
    Edit21: TEdit;
    Edit22: TEdit;
    Label20: TLabel;
    PngSpeedButton5: TPngSpeedButton;
    Edit23: TEdit;
    Edit24: TEdit;
    Label21: TLabel;
    ComboBox6: TComboBox;
    Label22: TLabel;
    ComboBox7: TComboBox;
    PngBitBtn1: TPngBitBtn;
    SaveDialog1: TSaveDialog;
    Label23: TLabel;
    PngSpeedButton6: TPngSpeedButton;
    Edit25: TEdit;
    Edit26: TEdit;
    ComboBox8: TComboBox;
    Label24: TLabel;
    Edit27: TEdit;
    Label25: TLabel;
    PngSpeedButton7: TPngSpeedButton;
    Edit28: TEdit;
    Edit29: TEdit;
    Edit30: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit1Exit(Sender: TObject);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Edit3Exit(Sender: TObject);
    procedure Edit3KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton2Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure Edit5Exit(Sender: TObject);
    procedure Edit5KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Edit5KeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton3Click(Sender: TObject);
    procedure Edit7KeyPress(Sender: TObject; var Key: Char);
    procedure Edit8Exit(Sender: TObject);
    procedure Edit8KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Edit8KeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure Edit10KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Edit11Exit(Sender: TObject);
    procedure Edit11KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Edit11KeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton6Click(Sender: TObject);
    procedure Edit13Exit(Sender: TObject);
    procedure Edit13KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Edit13KeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton7Click(Sender: TObject);
    procedure Edit15Exit(Sender: TObject);
    procedure Edit15KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Edit15KeyPress(Sender: TObject; var Key: Char);
    procedure PngSpeedButton1Click(Sender: TObject);
    procedure Edit17Exit(Sender: TObject);
    procedure Edit17KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Edit17KeyPress(Sender: TObject; var Key: Char);
    procedure PngSpeedButton2Click(Sender: TObject);
    procedure Edit17Enter(Sender: TObject);
    procedure Edit13Enter(Sender: TObject);
    procedure Edit11Enter(Sender: TObject);
    procedure Edit8Enter(Sender: TObject);
    procedure Edit5Enter(Sender: TObject);
    procedure Edit15Enter(Sender: TObject);
    procedure Edit1Enter(Sender: TObject);
    procedure Edit3Enter(Sender: TObject);
    procedure Edit19Enter(Sender: TObject);
    procedure Edit19Exit(Sender: TObject);
    procedure Edit19KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Edit19KeyPress(Sender: TObject; var Key: Char);
    procedure PngSpeedButton3Click(Sender: TObject);
    procedure Edit21Enter(Sender: TObject);
    procedure Edit21Exit(Sender: TObject);
    procedure Edit21KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Edit21KeyPress(Sender: TObject; var Key: Char);
    procedure PngSpeedButton4Click(Sender: TObject);
    procedure PngSpeedButton5Click(Sender: TObject);
    procedure Edit23Enter(Sender: TObject);
    procedure Edit23Exit(Sender: TObject);
    procedure Edit23KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Edit23KeyPress(Sender: TObject; var Key: Char);
    procedure PngBitBtn1Click(Sender: TObject);
    procedure Edit25Enter(Sender: TObject);
    procedure Edit25Exit(Sender: TObject);
    procedure Edit25KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Edit25KeyPress(Sender: TObject; var Key: Char);
    procedure PngSpeedButton6Click(Sender: TObject);
    procedure PngSpeedButton7Click(Sender: TObject);
    procedure Edit28Enter(Sender: TObject);
    procedure Edit28Exit(Sender: TObject);
    procedure Edit28KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Edit28KeyPress(Sender: TObject; var Key: Char);
    procedure Edit10Enter(Sender: TObject);
    procedure Edit10Exit(Sender: TObject);
    procedure Edit10KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormVendasRel: TFormVendasRel;

implementation
uses DataMod, Funcoes1, LotesLoc, FuncoesFirenet, VendasFast;

{$R *.dfm}

procedure TFormVendasRel.FormCreate(Sender: TObject);
begin
  ComboBox1.ItemIndex:=0;
  ComboBox2.ItemIndex:=0;
  ComboBox4.ItemIndex:=0;
  ComboBox5.ItemIndex:=0;
  ComboBox6.ItemIndex:=0;
  ComboBox7.ItemIndex:=0;
  ComboBox8.ItemIndex:=0;
  MaskEdit1.Text:=DateToStr(PrimeiroDia(Date),FS);
  MaskEdit2.Text:=DateToStr(UltimoDia(Date),FS);
  Edit7.Text:='20';

  ComboBox3.Items.Add('NENHUMA');
  ComboBox3.Items.Add('PRECO VENDA');
  ComboBox3.Items.Add(DM.TBTabPrecoTAB_DESCRICAO1.Value);
  ComboBox3.Items.Add(DM.TBTabPrecoTAB_DESCRICAO2.Value);
  ComboBox3.Items.Add(DM.TBTabPrecoTAB_DESCRICAO3.Value);
  ComboBox3.Items.Add(DM.TBTabPrecoTAB_DESCRICAO4.Value);
  ComboBox3.Items.Add(DM.TBTabPrecoTAB_DESCRICAO5.Value);
  ComboBox3.Items.Add(DM.TBTabPrecoTAB_DESCRICAO6.Value);
  ComboBox3.ItemIndex:=0;
end;

procedure TFormVendasRel.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormVendasRel.PngBitBtn1Click(Sender: TObject);
var F: TextFile;
  Where: String;
begin
  Where:='';
  case ComboBox1.ItemIndex of
    00: MessageDlg('Ainda não disponível para este relatório.',mtInformation,[mbOk],0);
    01: begin
          {$REGION 'Comissões por vendedor analítico'}
          if SaveDialog1.Execute then
          begin
            if Edit2.Text<>'' then Where:=Where+' and VED_VENDEDOR='+QuotedStr(Edit1.Text);
            if ComboBox4.Text='ABERTAS' then Where:=Where+' and VED_STATUS='+QuotedStr('A');
            if ComboBox4.Text='CANCELADAS' then Where:=Where+' and VED_STATUS='+QuotedStr('C');
            if ComboBox4.Text='FINALIZADAS' then Where:=Where+' and VED_STATUS='+QuotedStr('F');
            if ComboBox4.Text='INUTILIZADAS' then Where:=Where+' and VED_STATUS='+QuotedStr('I');
            Application.CreateForm(TFormVendasFast, FormVendasFast);
            FormVendasFast.QY12.Close;
            FormVendasFast.QY12.SQL.Clear;
            FormVendasFast.QY12.SQL.Add(
              'select VED_CLIENTE, VED_CODIGO, VED_COMISSAO, VED_DTEMISSAO, VED_NOME, VED_STATUS, '+
              'VED_TOTALCOMISSAO, VED_TOTALITENS, VED_VENDEDOR, VEN_NOME from VENDAS '+
              'left join VENDEDORES on VED_VENDEDOR=VEN_CODIGO '+
              'where VED_DTEMISSAO between :datainicial and :datafinal and VED_ENTRADASAIDA=''S'' '+Where+' '+
              'order by VEN_NOME, VED_NOME, VED_CODIGO desc');
            FormVendasFast.QY12.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
            FormVendasFast.QY12.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
            FormVendasFast.QY12.Open;
            FormVendasFast.QY12.First;
            AssignFile(F,SaveDialog1.FileName);
            Rewrite(F);
            WriteLn(F,'CODIGO VEND.;VENDEDOR;CODIGO;STATUS;DT. EMISSAO;CLIENTE;NOME;TOTAL ITENS;COMISSAO;TOTAL COMISSAO');
            while not FormVendasFast.QY12.Eof do
            begin
              WriteLn(F,
                FormVendasFast.QY12.FieldByName('VED_VENDEDOR').AsString
                +';'+FormVendasFast.QY12.FieldByName('VEN_NOME').AsString
                +';'+FormVendasFast.QY12.FieldByName('VED_CODIGO').AsString
                +';'+FormVendasFast.QY12.FieldByName('VED_STATUS').AsString
                +';'+FormVendasFast.QY12.FieldByName('VED_DTEMISSAO').AsString
                +';'+FormVendasFast.QY12.FieldByName('VED_CLIENTE').AsString
                +';'+FormVendasFast.QY12.FieldByName('VED_NOME').AsString
                +';'+FormVendasFast.QY12.FieldByName('VED_TOTALITENS').AsString
                +';'+FormVendasFast.QY12.FieldByName('VED_COMISSAO').AsString
                +';'+FormVendasFast.QY12.FieldByName('VED_TOTALCOMISSAO').AsString
              );
              FormVendasFast.QY12.Next;
            end;
            CloseFile(F);
            FormVendasFast.Free;
            FormVendasFast:=nil;
            Screen.Cursor:=crDefault;
            MessageDlg('Exportação OK.',mtInformation,[mbOk],0);
          end;
          {$ENDREGION}
        end;
    02: MessageDlg('Ainda não disponível para este relatório.',mtInformation,[mbOk],0);
    03: MessageDlg('Ainda não disponível para este relatório.',mtInformation,[mbOk],0);
    04: MessageDlg('Ainda não disponível para este relatório.',mtInformation,[mbOk],0);
    05: begin
          {$REGION 'Frequencia de vendas mensal por vendedor'}
          if SaveDialog1.Execute then
          begin
            Screen.Cursor:=crHourGlass;
            if Edit4.Text<>'' then Where:=Where+' and VED_CLIENTE='+QuotedStr(Edit3.Text);
            if Edit2.Text<>'' then Where:=Where+' and VED_VENDEDOR='+QuotedStr(Edit1.Text);
            if ComboBox4.Text='ABERTAS' then Where:=Where+' and VED_STATUS='+QuotedStr('A');
            if ComboBox4.Text='CANCELADAS' then Where:=Where+' and VED_STATUS='+QuotedStr('C');
            if ComboBox4.Text='FINALIZADAS' then Where:=Where+' and VED_STATUS='+QuotedStr('F');
            if ComboBox4.Text='INUTILIZADAS' then Where:=Where+' and VED_STATUS='+QuotedStr('I');
            Application.CreateForm(TFormVendasFast, FormVendasFast);
            FormVendasFast.QY27.Close;
            FormVendasFast.QY27.SQL.Clear;
            FormVendasFast.QY27.SQL.Add(
              'select CLI_CODIGO, CLI_NOME, VED_VENDEDOR, VEN_NOME, '+
              'sum(VED_VALORTOTAL) as TOTAL, '+
              'sum(decode(extract(MONTH from VED_DTEMISSAO),1,VED_VALORTOTAL,0)) as JANEIRO, '+
              'sum(decode(extract(MONTH from VED_DTEMISSAO),2,VED_VALORTOTAL,0)) as FEVEREIRO, '+
              'sum(decode(extract(MONTH from VED_DTEMISSAO),3,VED_VALORTOTAL,0)) as MARCO, '+
              'sum(decode(extract(MONTH from VED_DTEMISSAO),4,VED_VALORTOTAL,0)) as ABRIL, '+
              'sum(decode(extract(MONTH from VED_DTEMISSAO),5,VED_VALORTOTAL,0)) as MAIO, '+
              'sum(decode(extract(MONTH from VED_DTEMISSAO),6,VED_VALORTOTAL,0)) as JUNHO, '+
              'sum(decode(extract(MONTH from VED_DTEMISSAO),7,VED_VALORTOTAL,0)) as JULHO, '+
              'sum(decode(extract(MONTH from VED_DTEMISSAO),8,VED_VALORTOTAL,0)) as AGOSTO, '+
              'sum(decode(extract(MONTH from VED_DTEMISSAO),9,VED_VALORTOTAL,0)) as SETEMBRO, '+
              'sum(decode(extract(MONTH from VED_DTEMISSAO),10,VED_VALORTOTAL,0)) as OUTUBRO, '+
              'sum(decode(extract(MONTH from VED_DTEMISSAO),11,VED_VALORTOTAL,0)) as NOVEMBRO, '+
              'sum(decode(extract(MONTH from VED_DTEMISSAO),12,VED_VALORTOTAL,0)) as DEZEMBRO '+
              'from CLIENTES '+
              'left join VENDAS on CLI_CODIGO=VED_CLIENTE '+
              'left join VENDEDORES on VED_VENDEDOR=VEN_CODIGO '+
              'where VED_DTEMISSAO between :datainicial and :datafinal '+Where+' '+
              'group by VED_VENDEDOR, VEN_NOME, CLI_CODIGO, CLI_NOME '+
              'order by VEN_NOME, TOTAL desc, CLI_NOME');
            FormVendasFast.QY27.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
            FormVendasFast.QY27.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
            FormVendasFast.QY27.Open;
            FormVendasFast.QY27.First;
            AssignFile(F,SaveDialog1.FileName);
            Rewrite(F);
            WriteLn(F,'CLIENTE;NOME;VENDEDOR;NOME;TOTAL;JANEIRO;FEVEREIRO;MARCO;ABRIL;MAIO;JUNHO;JULHO;AGOSTO;SETEMBRO;OUTUBRO;NOVEMBRO;DEZEMBRO');
            while not FormVendasFast.QY27.Eof do
            begin
              WriteLn(F,
                FormVendasFast.QY27.FieldByName('CLI_CODIGO').AsString
                +';'+FormVendasFast.QY27.FieldByName('CLI_NOME').AsString
                +';'+FormVendasFast.QY27.FieldByName('VED_VENDEDOR').AsString
                +';'+FormVendasFast.QY27.FieldByName('VEN_NOME').AsString
                +';'+FormVendasFast.QY27.FieldByName('TOTAL').AsString
                +';'+FormVendasFast.QY27.FieldByName('JANEIRO').AsString
                +';'+FormVendasFast.QY27.FieldByName('FEVEREIRO').AsString
                +';'+FormVendasFast.QY27.FieldByName('MARCO').AsString
                +';'+FormVendasFast.QY27.FieldByName('ABRIL').AsString
                +';'+FormVendasFast.QY27.FieldByName('MAIO').AsString
                +';'+FormVendasFast.QY27.FieldByName('JUNHO').AsString
                +';'+FormVendasFast.QY27.FieldByName('JULHO').AsString
                +';'+FormVendasFast.QY27.FieldByName('AGOSTO').AsString
                +';'+FormVendasFast.QY27.FieldByName('SETEMBRO').AsString
                +';'+FormVendasFast.QY27.FieldByName('OUTUBRO').AsString
                +';'+FormVendasFast.QY27.FieldByName('NOVEMBRO').AsString
                +';'+FormVendasFast.QY27.FieldByName('DEZEMBRO').AsString
              );
              FormVendasFast.QY27.Next;
            end;
            CloseFile(F);
            FormVendasFast.Free;
            FormVendasFast:=nil;
            Screen.Cursor:=crDefault;
            MessageDlg('Exportação OK.',mtInformation,[mbOk],0);
          end;
          {$ENDREGION}
        end;
    06: MessageDlg('Ainda não disponível para este relatório.',mtInformation,[mbOk],0);
    07: MessageDlg('Ainda não disponível para este relatório.',mtInformation,[mbOk],0);
    08: MessageDlg('Ainda não disponível para este relatório.',mtInformation,[mbOk],0);
    09: MessageDlg('Ainda não disponível para este relatório.',mtInformation,[mbOk],0);
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
    24: MessageDlg('Ainda não disponível para este relatório.',mtInformation,[mbOk],0);
    25: begin
          {$REGION 'Vendas por vendedor analítico.'}
          if SaveDialog1.Execute then
          begin
            Screen.Cursor:=crHourGlass;
            if ComboBox5.Text='EMISSAO PEDIDO' then Where:=Where+' VED_DTEMISSAO between :datainicial and :datafinal' else
            if ComboBox5.Text='EMISSAO NOTA' then Where:=Where+' NFE_DTEMISSAO between :datainicial and :datafinal';
            if Edit4.Text<>'' then Where:=Where+' and VED_CLIENTE='+QuotedStr(Edit3.Text);
            if Edit2.Text<>'' then Where:=Where+' and VED_VENDEDOR='+QuotedStr(Edit1.Text);
            if ComboBox4.Text='ABERTAS' then Where:=Where+' and VED_STATUS='+QuotedStr('A');
            if ComboBox4.Text='CANCELADAS' then Where:=Where+' and VED_STATUS='+QuotedStr('C');
            if ComboBox4.Text='FINALIZADAS' then Where:=Where+' and VED_STATUS='+QuotedStr('F');
            if ComboBox4.Text='INUTILIZADAS' then Where:=Where+' and VED_STATUS='+QuotedStr('I');
            if ComboBox6.Text='SIM - ABERTOS' then Where:=Where+' and (VED_VIAINTERNET='+QuotedStr('S')+' and VED_VIAINTERNETSTATUS='+QuotedStr('A')+')';
            if ComboBox6.Text='SIM - FINALIZADOS' then Where:=Where+' and (VED_VIAINTERNET='+QuotedStr('S')+' and VED_VIAINTERNETSTATUS='+QuotedStr('F')+')';
            if ComboBox6.Text='NAO' then Where:=Where+' and VED_VIAINTERNET='+QuotedStr('N');
            if ComboBox7.Text='SIM' then Where:=Where+' and VED_ENTREGUE='+QuotedStr('S');
            if ComboBox7.Text='NAO' then Where:=Where+' and VED_ENTREGUE='+QuotedStr('N');
            Application.CreateForm(TFormVendasFast, FormVendasFast);
            FormVendasFast.QY04.Close;
            FormVendasFast.QY04.SQL.Clear;
            FormVendasFast.QY04.SQL.Add(
              'select VED_CLIENTE, VED_CODIGO, VED_DTEMISSAO, VED_DESCPORC, VED_FORMAPAGTO, VED_NFE, VED_NOME, VED_STATUS, VED_TOTALITENS, '+
              'VED_VALORTOTAL, VED_VENDEDOR, VED_VIAINTERNET, VED_VIAINTERNETSTATUS, CLI_FANTASIA, NFE_DTEMISSAO, VEN_NOME from VENDAS '+
              'left join CLIENTES on VED_CLIENTE=CLI_CODIGO '+
              'left join VENDEDORES on VED_VENDEDOR=VEN_CODIGO '+
              'left join NFE on VED_NFE=NFE_CODIGO '+
              'where '+Where+' '+
              'order by VEN_NOME, VED_NOME, VED_DTEMISSAO desc');
            FormVendasFast.QY04.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
            FormVendasFast.QY04.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
            FormVendasFast.QY04.Open;
            FormVendasFast.QY04.First;
            AssignFile(F,SaveDialog1.FileName);
            Rewrite(F);
            WriteLn(F,'CODIGO VEND.;VENDEDOR;CODIGO;CODIGO NFE;STATUS;DT. EMISSAO;CLIENTE;NOME;FORMA PAGTO;TOTAL ITENS;DESCONTO %;VALOR TOTAL;VIA INTERNET;VIA INTERNET STATUS');
            while not FormVendasFast.QY04.Eof do
            begin
              WriteLn(F,
                FormVendasFast.QY04.FieldByName('VED_VENDEDOR').AsString
                +';'+FormVendasFast.QY04.FieldByName('VEN_NOME').AsString
                +';'+FormVendasFast.QY04.FieldByName('VED_CODIGO').AsString
                +';'+FormVendasFast.QY04.FieldByName('VED_NFE').AsString
                +';'+FormVendasFast.QY04.FieldByName('VED_STATUS').AsString
                +';'+FormVendasFast.QY04.FieldByName('VED_DTEMISSAO').AsString
                +';'+FormVendasFast.QY04.FieldByName('VED_CLIENTE').AsString
                +';'+FormVendasFast.QY04.FieldByName('VED_NOME').AsString
                +';'+FormVendasFast.QY04.FieldByName('VED_FORMAPAGTO').AsString
                +';'+FormVendasFast.QY04.FieldByName('VED_TOTALITENS').AsString
                +';'+FormVendasFast.QY04.FieldByName('VED_DESCPORC').AsString
                +';'+FormVendasFast.QY04.FieldByName('VED_VALORTOTAL').AsString
                +';'+FormVendasFast.QY04.FieldByName('VED_VIAINTERNET').AsString
                +';'+FormVendasFast.QY04.FieldByName('VED_VIAINTERNETSTATUS').AsString
              );
              FormVendasFast.QY04.Next;
            end;
            CloseFile(F);
            FormVendasFast.Free;
            FormVendasFast:=nil;
            Screen.Cursor:=crDefault;
            MessageDlg('Exportação OK.',mtInformation,[mbOk],0);
          end;
          {$ENDREGION}
        end;
    26: MessageDlg('Ainda não disponível para este relatório.',mtInformation,[mbOk],0);
    27: MessageDlg('Ainda não disponível para este relatório.',mtInformation,[mbOk],0);
    28: MessageDlg('Ainda não disponível para este relatório.',mtInformation,[mbOk],0);
    29: MessageDlg('Ainda não disponível para este relatório.',mtInformation,[mbOk],0);
  end;
end;

procedure TFormVendasRel.PngSpeedButton1Click(Sender: TObject);
begin
  LocFamiliasBotao(Edit15,Edit16);
end;

procedure TFormVendasRel.PngSpeedButton2Click(Sender: TObject);
begin
  LocCidadesBotao(Edit17,Edit18);
end;

procedure TFormVendasRel.PngSpeedButton3Click(Sender: TObject);
begin
  LocEstadosBotao(Edit19,Edit20);
end;

procedure TFormVendasRel.PngSpeedButton4Click(Sender: TObject);
begin
  LocAtividadesBotao(Edit21,Edit22);
end;

procedure TFormVendasRel.PngSpeedButton5Click(Sender: TObject);
begin
  LocLocaisBotao(Edit23,Edit24);
end;

procedure TFormVendasRel.PngSpeedButton6Click(Sender: TObject);
begin
  LocFornecedoresBotao(Edit25,Edit26,nil);
end;

procedure TFormVendasRel.PngSpeedButton7Click(Sender: TObject);
begin
  LocClassFiscalBotao(Edit28,Edit30,Edit29);
end;

procedure TFormVendasRel.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TFormVendasRel.BitBtn1Click(Sender: TObject);
var Where: String;
begin
  Where:='';
  //o formvendasq03 listava a venda com seus produtos e calcula o custo que teve na venda e a margem de lucro.
  //foi removido pra ver quem usava.. rsrs.
  case ComboBox1.ItemIndex of
    00: begin
          {$REGION 'Análise valor de venda vs tabela de preço'}
          if Edit2.Text<>'' then Where:=Where+' and VED_VENDEDOR='+QuotedStr(Edit1.Text);
          if Edit4.Text<>'' then Where:=Where+' and VED_CLIENTE='+QuotedStr(Edit3.Text);
          if Edit6.Text<>'' then Where:=Where+' and PRO_GRUPO='+QuotedStr(Edit5.Text);
          if Edit9.Text<>'' then Where:=Where+' and VEI_PRODUTO='+QuotedStr(Edit8.Text);
          if ComboBox4.Text='ABERTAS' then Where:=Where+' and VED_STATUS='+QuotedStr('A');
          if ComboBox4.Text='CANCELADAS' then Where:=Where+' and VED_STATUS='+QuotedStr('C');
          if ComboBox4.Text='FINALIZADAS' then Where:=Where+' and VED_STATUS='+QuotedStr('F');
          if ComboBox4.Text='INUTILIZADAS' then Where:=Where+' and VED_STATUS='+QuotedStr('I');
          Application.CreateForm(TFormVendasFast, FormVendasFast);
          FormVendasFast.QY16.Close;
          FormVendasFast.QY16.SQL.Clear;
          FormVendasFast.QY16.SQL.Add(
            'select VEI_PRODUTO, VEI_QUANTIDADE, VEI_VALORUNIT, VEI_VALORTOTAL, VEI_VENDA, GRU_DESCRICAO, PRO_NOME, PRO_GRUPO, '+
            'PRO_PRECOVENDA, PRO_PRECO1, PRO_PRECO2, PRO_PRECO3, PRO_PRECO4, PRO_PRECO5, PRO_PRECO6, VED_CODIGO, VED_DTEMISSAO, '+
            'VED_NOME, VED_TABELAPRECO, VED_VENDEDOR from VENDASITENS '+
            'left join VENDAS on VEI_VENDA=VED_CODIGO '+
            'left join PRODUTOS on VEI_PRODUTO=PRO_CODIGO '+
            'left join GRUPOS on PRO_GRUPO=GRU_CODIGO '+
            'where VED_DTEMISSAO between :datainicial and :datafinal '+Where+' '+
            'order by GRU_DESCRICAO, VEI_PRODUTO, VED_NOME, VED_CODIGO');
          FormVendasFast.QY16.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
          FormVendasFast.QY16.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
          FormVendasFast.QY16.Open;
          FormVendasFast.frxReport16.Variables['TITULO']:=QuotedStr('Análise valor venda vs tabela de preço');
          FormVendasFast.frxReport16.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
          FormVendasFast.frxReport16.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
          FormVendasFast.frxReport16.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
          FormVendasFast.frxReport16.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
          FormVendasFast.frxReport16.Variables['DATAINICIAL']:=QuotedStr(MaskEdit1.Text);
          FormVendasFast.frxReport16.Variables['DATAFINAL']:=QuotedStr(MaskEdit2.Text);
          FormVendasFast.frxReport16.Variables['VED_STATUS']:=QuotedStr(ComboBox4.Text);
          FormVendasFast.frxReport16.Variables['CLI_CODIGO']:=QuotedStr(Edit3.Text);
          FormVendasFast.frxReport16.Variables['CLI_NOME']:=QuotedStr(Edit4.Text);
          FormVendasFast.frxReport16.Variables['GRU_CODIGO']:=QuotedStr(Edit5.Text);
          FormVendasFast.frxReport16.Variables['GRU_DESCRICAO']:=QuotedStr(Edit6.Text);
          FormVendasFast.frxReport16.Variables['PRO_CODIGO']:=QuotedStr(Edit8.Text);
          FormVendasFast.frxReport16.Variables['PRO_NOME']:=QuotedStr(Edit9.Text);
          FormVendasFast.frxReport16.Variables['VEN_CODIGO']:=QuotedStr(Edit1.Text);
          FormVendasFast.frxReport16.Variables['VEN_NOME']:=QuotedStr(Edit2.Text);
          FormVendasFast.frxReport16.Variables['TABELA']:=QuotedStr(ComboBox3.Text);
          FormVendasFast.frxReport16.Variables['TABELA_IDX']:=QuotedStr(ComboBox3.ItemIndex.ToString);
          FormVendasFast.frxReport16.Variables['TABELA1']:=QuotedStr(DM.TBTabPrecoTAB_DESCRICAO1.Value);
          FormVendasFast.frxReport16.Variables['TABELA2']:=QuotedStr(DM.TBTabPrecoTAB_DESCRICAO2.Value);
          FormVendasFast.frxReport16.Variables['TABELA3']:=QuotedStr(DM.TBTabPrecoTAB_DESCRICAO3.Value);
          FormVendasFast.frxReport16.Variables['TABELA4']:=QuotedStr(DM.TBTabPrecoTAB_DESCRICAO4.Value);
          FormVendasFast.frxReport16.Variables['TABELA5']:=QuotedStr(DM.TBTabPrecoTAB_DESCRICAO5.Value);
          FormVendasFast.frxReport16.Variables['TABELA6']:=QuotedStr(DM.TBTabPrecoTAB_DESCRICAO6.Value);
          FormVendasFast.frxReport16.ShowReport;
          FormVendasFast.Free;
          FormVendasFast:=nil;
          {$ENDREGION}
        end;
    01: begin
          {$REGION 'Comissões por vendedor analítico'}
          if Edit2.Text<>'' then Where:=Where+' and VED_VENDEDOR='+QuotedStr(Edit1.Text);
          if ComboBox4.Text='ABERTAS' then Where:=Where+' and VED_STATUS='+QuotedStr('A');
          if ComboBox4.Text='CANCELADAS' then Where:=Where+' and VED_STATUS='+QuotedStr('C');
          if ComboBox4.Text='FINALIZADAS' then Where:=Where+' and VED_STATUS='+QuotedStr('F');
          if ComboBox4.Text='INUTILIZADAS' then Where:=Where+' and VED_STATUS='+QuotedStr('I');
          Application.CreateForm(TFormVendasFast, FormVendasFast);
          FormVendasFast.QY12.Close;
          FormVendasFast.QY12.SQL.Clear;
          FormVendasFast.QY12.SQL.Add(
            'select VED_CLIENTE, VED_CODIGO, VED_COMISSAO, VED_DTEMISSAO, VED_NOME, VED_STATUS, '+
            'VED_TOTALCOMISSAO, VED_TOTALITENS, VED_VENDEDOR, VEN_NOME from VENDAS '+
            'left join VENDEDORES on VED_VENDEDOR=VEN_CODIGO '+
            'where VED_DTEMISSAO between :datainicial and :datafinal and VED_ENTRADASAIDA=''S'' '+Where+' '+
            'order by VEN_NOME, VED_NOME, VED_CODIGO desc');
          FormVendasFast.QY12.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
          FormVendasFast.QY12.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
          FormVendasFast.QY12.Open;
          FormVendasFast.frxReport12.Variables['TITULO']:=QuotedStr('Comissões por vendedor analítico');
          FormVendasFast.frxReport12.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
          FormVendasFast.frxReport12.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
          FormVendasFast.frxReport12.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
          FormVendasFast.frxReport12.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
          FormVendasFast.frxReport12.Variables['DATAINICIAL']:=QuotedStr(MaskEdit1.Text);
          FormVendasFast.frxReport12.Variables['DATAFINAL']:=QuotedStr(MaskEdit2.Text);
          FormVendasFast.frxReport12.Variables['VED_STATUS']:=QuotedStr(ComboBox4.Text);
          FormVendasFast.frxReport12.Variables['VEN_CODIGO']:=QuotedStr(Edit1.Text);
          FormVendasFast.frxReport12.Variables['VEN_NOME']:=QuotedStr(Edit2.Text);
          FormVendasFast.frxReport12.ShowReport;
          FormVendasFast.Free;
          FormVendasFast:=nil;

          {$ENDREGION}
        end;
    02: begin
          {$REGION 'Comissões por vendedor sintético'}
          if Edit2.Text<>'' then Where:=Where+' and VED_VENDEDOR='+QuotedStr(Edit1.Text);
          if ComboBox4.Text='ABERTAS' then Where:=Where+' and VED_STATUS='+QuotedStr('A');
          if ComboBox4.Text='CANCELADAS' then Where:=Where+' and VED_STATUS='+QuotedStr('C');
          if ComboBox4.Text='FINALIZADAS' then Where:=Where+' and VED_STATUS='+QuotedStr('F');
          if ComboBox4.Text='INUTILIZADAS' then Where:=Where+' and VED_STATUS='+QuotedStr('I');
          Application.CreateForm(TFormVendasFast, FormVendasFast);
          FormVendasFast.QY11.Close;
          FormVendasFast.QY11.SQL.Clear;
          FormVendasFast.QY11.SQL.Add(
            'select VED_VENDEDOR, VEN_NOME, sum(VED_TOTALITENS) as TOTALITENS, '+
            'sum(VED_TOTALCOMISSAO) as TOTALCOMISSAO from VENDAS '+
            'left join VENDEDORES on VED_VENDEDOR=VEN_CODIGO '+
            'where VED_DTEMISSAO between :datainicial and :datafinal and VED_ENTRADASAIDA=''S'' '+Where+' '+
            'group by VED_VENDEDOR, VEN_NOME '+
            'order by VED_VENDEDOR, VEN_NOME');
          FormVendasFast.QY11.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
          FormVendasFast.QY11.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
          FormVendasFast.QY11.Open;
          FormVendasFast.frxReport11.Variables['TITULO']:=QuotedStr('Comissões no período sintético');
          FormVendasFast.frxReport11.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
          FormVendasFast.frxReport11.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
          FormVendasFast.frxReport11.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
          FormVendasFast.frxReport11.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
          FormVendasFast.frxReport11.Variables['DATAINICIAL']:=QuotedStr(MaskEdit1.Text);
          FormVendasFast.frxReport11.Variables['DATAFINAL']:=QuotedStr(MaskEdit2.Text);
          FormVendasFast.frxReport11.Variables['VED_STATUS']:=QuotedStr(ComboBox4.Text);
          FormVendasFast.frxReport11.Variables['VEN_CODIGO']:=QuotedStr(Edit1.Text);
          FormVendasFast.frxReport11.Variables['VEN_NOME']:=QuotedStr(Edit2.Text);
          FormVendasFast.frxReport11.ShowReport;
          FormVendasFast.Free;
          FormVendasFast:=nil;
          {$ENDREGION}
        end;
    03: begin
          {$REGION 'Curva ABC clientes'}
          if Edit2.Text<>'' then Where:=Where+' and VED_VENDEDOR='+QuotedStr(Edit1.Text);
          if ComboBox4.Text='ABERTAS' then Where:=Where+' and VED_STATUS='+QuotedStr('A');
          if ComboBox4.Text='CANCELADAS' then Where:=Where+' and VED_STATUS='+QuotedStr('C');
          if ComboBox4.Text='FINALIZADAS' then Where:=Where+' and VED_STATUS='+QuotedStr('F');
          if ComboBox4.Text='INUTILIZADAS' then Where:=Where+' and VED_STATUS='+QuotedStr('I');
          if ComboBox8.Text='ENTRADA' then Where:=Where+' and VED_ENTRADASAIDA='+QuotedStr('E');
          if ComboBox8.Text='SAIDA' then Where:=Where+' and VED_ENTRADASAIDA='+QuotedStr('S');
          Application.CreateForm(TFormVendasFast, FormVendasFast);
          FormVendasFast.QY25.Close;
          FormVendasFast.QY25.SQL.Clear;
          FormVendasFast.QY25.SQL.Add(
            'select VED_VENDEDOR, VEN_NOME, sum(VED_VALORTOTAL) as VALORTOTALVENDEDOR from VENDAS '+
            'left join VENDEDORES on VED_VENDEDOR=VEN_CODIGO '+
            'where VED_DTEMISSAO between :datainicial and :datafinal '+Where+' '+
            'group by VED_VENDEDOR, VEN_NOME order by VEN_NOME');
          FormVendasFast.QY25a.Close;
          FormVendasFast.QY25a.SQL.Clear;
          FormVendasFast.QY25a.SQL.Add(
            'select D3.VED_CLIENTE, D3.VED_NOME, D3.VED_VENDEDOR, D3.TOTALVENDA, D3.TOTALVENDAGERAL, D3.PERCENTUAL, D3.PERCENTUALACUMULADO, '+
            'case '+
            '  when D3.PERCENTUALACUMULADO <= 80 then ''A'' '+
            '  when D3.PERCENTUALACUMULADO <= 95 then ''B'' '+
            '  else ''C'' '+
            'end as CLASSE from ( '+
            '    select D2.VED_CLIENTE, D2.VED_NOME, D2.VED_VENDEDOR, D2.TOTALVENDA, D2.TOTALVENDAGERAL, D2.PERCENTUAL, '+
            '    sum(D2.PERCENTUAL) over (order by D2.PERCENTUAL desc) as PERCENTUALACUMULADO from ( '+
            '        select D1.VED_CLIENTE, D1.VED_NOME, D1.VED_VENDEDOR, D1.TOTALVENDA, sum(D1.TOTALVENDA) over() as TOTALVENDAGERAL, '+
            '        cast(D1.TOTALVENDA as numeric (15,4)) / cast(sum(D1.TOTALVENDA) over() as numeric (15,4)) * 100 as PERCENTUAL from ( '+
            '            select VED_CLIENTE, VED_NOME, VED_VENDEDOR, sum(VED_VALORTOTAL) as TOTALVENDA from VENDAS '+
            '            where VED_DTEMISSAO between :datainicial and :datafinal and VED_VENDEDOR=:VED_VENDEDOR '+Where+' '+
            '            group by VED_VENDEDOR, VED_CLIENTE, VED_NOME '+
            '            order by VED_VENDEDOR, 4 desc) D1) D2) D3');
          FormVendasFast.QY25.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
          FormVendasFast.QY25.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
          FormVendasFast.QY25a.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
          FormVendasFast.QY25a.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
          FormVendasFast.QY25.Open;
          FormVendasFast.QY25a.Open;
          FormVendasFast.frxReport25.Variables['TITULO']:=QuotedStr('Curva ABC Clientes');
          FormVendasFast.frxReport25.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
          FormVendasFast.frxReport25.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
          FormVendasFast.frxReport25.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
          FormVendasFast.frxReport25.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
          FormVendasFast.frxReport25.Variables['DATAINICIAL']:=QuotedStr(MaskEdit1.Text);
          FormVendasFast.frxReport25.Variables['DATAFINAL']:=QuotedStr(MaskEdit2.Text);
          FormVendasFast.frxReport25.Variables['VED_STATUS']:=QuotedStr(ComboBox4.Text);
          FormVendasFast.frxReport25.Variables['VED_ENTRADASAIDA']:=QuotedStr(ComboBox8.Text);
          FormVendasFast.frxReport25.Variables['VEN_CODIGO']:=QuotedStr(Edit1.Text);
          FormVendasFast.frxReport25.Variables['VEN_NOME']:=QuotedStr(Edit2.Text);
          FormVendasFast.frxReport25.ShowReport;
          FormVendasFast.Free;
          FormVendasFast:=nil;
          {$ENDREGION}
        end;
    04: begin
          {$REGION 'Curva ABC produtos'}
          //1: ordenar os itens pelo valor total de forma decrescente.                   //
          //2: calcular o valor total de todas as vendas.                                //
          //3: calcular o percentual que cada item representa sobre o total geral.       //
          //4: calcular o percentual acumulado.                                          //
          //5: definir os critérios para classificar os produtos.                        //
          if Edit16.Text<>'' then Where:=Where+' and PRO_FAMILIA='+QuotedStr(Edit15.Text);
          if Edit6.Text<>'' then Where:=Where+' and PRO_GRUPO='+QuotedStr(Edit5.Text);
          if ComboBox4.Text='ABERTAS' then Where:=Where+' and VED_STATUS='+QuotedStr('A');
          if ComboBox4.Text='CANCELADAS' then Where:=Where+' and VED_STATUS='+QuotedStr('C');
          if ComboBox4.Text='FINALIZADAS' then Where:=Where+' and VED_STATUS='+QuotedStr('F');
          if ComboBox4.Text='INUTILIZADAS' then Where:=Where+' and VED_STATUS='+QuotedStr('I');
          if ComboBox8.Text='ENTRADA' then Where:=Where+' and VED_ENTRADASAIDA='+QuotedStr('E');
          if ComboBox8.Text='SAIDA' then Where:=Where+' and VED_ENTRADASAIDA='+QuotedStr('S');
          Application.CreateForm(TFormVendasFast, FormVendasFast);
          FormVendasFast.QY24.Close;
          FormVendasFast.QY24.SQL.Clear;
          FormVendasFast.QY24.SQL.Add(
            'select D3.VEI_PRODUTO, D3.QTDEVENDIDA, D3.VALORTOTALITEM, D3.TOTALGERAL, D3.PERCENTUAL, D3.PERCENTUALACUMULADO, D3.TOTALCUSTO, '+
            'D3.PRECOVENDAMEDIO, D3.PRO_NOME, D3.PRO_FAMILIA, D3.PRO_GRUPO, D3.PRO_PRECOCUSTO, D3.PRO_PRECOVENDA, D3.PRO_UNIDADE, '+
            'case '+
            '  when D3.PERCENTUALACUMULADO <= 80 then ''A'' '+
            '  when D3.PERCENTUALACUMULADO <= 95 then ''B'' '+
            '  else ''C'' '+
            'end as CLASSE '+
            'from ( '+
            '    select D2.VEI_PRODUTO, D2.QTDEVENDIDA, D2.VALORTOTALITEM, D2.TOTALGERAL, D2.PERCENTUAL, D2.PRO_NOME, D2.PRO_FAMILIA, '+
            '    D2.PRO_GRUPO, D2.PRO_PRECOCUSTO, D2.PRO_PRECOVENDA, D2.PRO_UNIDADE, D2.TOTALCUSTO, D2.PRECOVENDAMEDIO, '+
            '    sum(D2.PERCENTUAL) over (order by D2.PERCENTUAL desc) as PERCENTUALACUMULADO '+
            '    from ( '+
            '        select D1.VEI_PRODUTO, D1.QTDEVENDIDA, D1.VALORTOTALITEM, D1.PRO_NOME, D1.PRO_FAMILIA, D1.PRO_GRUPO, D1.PRO_PRECOCUSTO, '+
            '        D1.PRO_PRECOVENDA, D1.PRO_UNIDADE, '+
            '        cast(D1.VALORTOTALITEM as numeric(15,4)) / cast(D1.QTDEVENDIDA as numeric(15,4)) as PRECOVENDAMEDIO, '+
            '        cast(D1.QTDEVENDIDA as numeric(15,4)) * cast(D1.PRO_PRECOCUSTO as numeric(15,4)) as TOTALCUSTO, '+
            '        sum(D1.VALORTOTALITEM) over() as TOTALGERAL, '+
            '        cast(D1.VALORTOTALITEM as numeric (15,4)) / cast(sum(D1.VALORTOTALITEM) over() as numeric (15,4)) * 100 as PERCENTUAL '+
            '        from ( '+
            '            select VEI_PRODUTO, sum(VEI_QUANTIDADE) as QTDEVENDIDA, sum(VEI_VALORTOTAL) as VALORTOTALITEM, PRO_NOME, PRO_FAMILIA, '+
            '            PRO_GRUPO, PRO_PRECOCUSTO, PRO_PRECOVENDA, PRO_UNIDADE from VENDASITENS '+
            '            left join VENDAS on VEI_VENDA=VED_CODIGO '+
            '            left join PRODUTOS on VEI_PRODUTO=PRO_CODIGO '+
            '            where VED_DTEMISSAO between :datainicial and :datafinal '+Where+' '+
            '            group by VEI_PRODUTO, PRO_NOME, PRO_FAMILIA, PRO_GRUPO, PRO_PRECOCUSTO, PRO_PRECOVENDA, PRO_UNIDADE '+
            '            order by 2 desc) D1) D2) D3');
          FormVendasFast.QY24.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
          FormVendasFast.QY24.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
          FormVendasFast.QY24.Open;
          FormVendasFast.frxReport24.Variables['TITULO']:=QuotedStr('Curva ABC Produtos');
          FormVendasFast.frxReport24.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
          FormVendasFast.frxReport24.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
          FormVendasFast.frxReport24.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
          FormVendasFast.frxReport24.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
          FormVendasFast.frxReport24.Variables['DATAINICIAL']:=QuotedStr(MaskEdit1.Text);
          FormVendasFast.frxReport24.Variables['DATAFINAL']:=QuotedStr(MaskEdit2.Text);
          FormVendasFast.frxReport24.Variables['VED_STATUS']:=QuotedStr(ComboBox4.Text);
          FormVendasFast.frxReport24.Variables['VED_ENTRADASAIDA']:=QuotedStr(ComboBox8.Text);
          FormVendasFast.frxReport24.Variables['GRU_CODIGO']:=QuotedStr(Edit5.Text);
          FormVendasFast.frxReport24.Variables['GRU_DESCRICAO']:=QuotedStr(Edit6.Text);
          FormVendasFast.frxReport24.Variables['FAM_CODIGO']:=QuotedStr(Edit15.Text);
          FormVendasFast.frxReport24.Variables['FAM_DESCRICAO']:=QuotedStr(Edit16.Text);
          FormVendasFast.frxReport24.ShowReport;
          FormVendasFast.Free;
          FormVendasFast:=nil;
          {$ENDREGION}
        end;
    05: begin
          {$REGION 'Frequencia de vendas mensal por vendedor'}
          if Edit4.Text<>'' then Where:=Where+' and VED_CLIENTE='+QuotedStr(Edit3.Text);
          if Edit2.Text<>'' then Where:=Where+' and VED_VENDEDOR='+QuotedStr(Edit1.Text);
          if Edit22.Text<>'' then Where:=Where+' and CLI_ATIVIDADE='+QuotedStr(Edit21.Text);
          if Edit24.Text<>'' then Where:=Where+' and CLI_LOCALTRABALHO='+QuotedStr(Edit23.Text);
          if ComboBox4.Text='ABERTAS' then Where:=Where+' and VED_STATUS='+QuotedStr('A');
          if ComboBox4.Text='CANCELADAS' then Where:=Where+' and VED_STATUS='+QuotedStr('C');
          if ComboBox4.Text='FINALIZADAS' then Where:=Where+' and VED_STATUS='+QuotedStr('F');
          if ComboBox4.Text='INUTILIZADAS' then Where:=Where+' and VED_STATUS='+QuotedStr('I');
          Application.CreateForm(TFormVendasFast, FormVendasFast);
          FormVendasFast.QY27.Close;
          FormVendasFast.QY27.SQL.Clear;
          FormVendasFast.QY27.SQL.Add(
            'select CLI_CODIGO, CLI_NOME, VED_VENDEDOR, VEN_NOME, '+
            'sum(VED_VALORTOTAL) as TOTAL, '+
            'sum(decode(extract(MONTH from VED_DTEMISSAO),1,VED_VALORTOTAL,0)) as JANEIRO, '+
            'sum(decode(extract(MONTH from VED_DTEMISSAO),2,VED_VALORTOTAL,0)) as FEVEREIRO, '+
            'sum(decode(extract(MONTH from VED_DTEMISSAO),3,VED_VALORTOTAL,0)) as MARCO, '+
            'sum(decode(extract(MONTH from VED_DTEMISSAO),4,VED_VALORTOTAL,0)) as ABRIL, '+
            'sum(decode(extract(MONTH from VED_DTEMISSAO),5,VED_VALORTOTAL,0)) as MAIO, '+
            'sum(decode(extract(MONTH from VED_DTEMISSAO),6,VED_VALORTOTAL,0)) as JUNHO, '+
            'sum(decode(extract(MONTH from VED_DTEMISSAO),7,VED_VALORTOTAL,0)) as JULHO, '+
            'sum(decode(extract(MONTH from VED_DTEMISSAO),8,VED_VALORTOTAL,0)) as AGOSTO, '+
            'sum(decode(extract(MONTH from VED_DTEMISSAO),9,VED_VALORTOTAL,0)) as SETEMBRO, '+
            'sum(decode(extract(MONTH from VED_DTEMISSAO),10,VED_VALORTOTAL,0)) as OUTUBRO, '+
            'sum(decode(extract(MONTH from VED_DTEMISSAO),11,VED_VALORTOTAL,0)) as NOVEMBRO, '+
            'sum(decode(extract(MONTH from VED_DTEMISSAO),12,VED_VALORTOTAL,0)) as DEZEMBRO '+
            'from CLIENTES '+
            'left join VENDAS on CLI_CODIGO=VED_CLIENTE '+
            'left join VENDEDORES on VED_VENDEDOR=VEN_CODIGO '+
            'where VED_DTEMISSAO between :datainicial and :datafinal '+Where+' '+
            'group by VED_VENDEDOR, VEN_NOME, CLI_CODIGO, CLI_NOME '+
            'order by VEN_NOME, TOTAL desc, CLI_NOME');
          FormVendasFast.QY27.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
          FormVendasFast.QY27.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
          FormVendasFast.QY27.Open;
          FormVendasFast.frxReport27.Variables['TITULO']:=QuotedStr('Frequência de vendas mensal por vendedor');
          FormVendasFast.frxReport27.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
          FormVendasFast.frxReport27.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
          FormVendasFast.frxReport27.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
          FormVendasFast.frxReport27.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
          FormVendasFast.frxReport27.Variables['DATAINICIAL']:=QuotedStr(MaskEdit1.Text);
          FormVendasFast.frxReport27.Variables['DATAFINAL']:=QuotedStr(MaskEdit2.Text);
          FormVendasFast.frxReport27.Variables['VED_STATUS']:=QuotedStr(ComboBox4.Text);
          FormVendasFast.frxReport27.Variables['CLI_CODIGO']:=QuotedStr(Edit3.Text);
          FormVendasFast.frxReport27.Variables['CLI_NOME']:=QuotedStr(Edit4.Text);
          FormVendasFast.frxReport27.Variables['CLI_LOCALTRABALHO']:=QuotedStr(Edit23.Text);
          FormVendasFast.frxReport27.Variables['LCA_DESCRICAO']:=QuotedStr(Edit24.Text);
          FormVendasFast.frxReport27.Variables['VEN_CODIGO']:=QuotedStr(Edit1.Text);
          FormVendasFast.frxReport27.Variables['VEN_NOME']:=QuotedStr(Edit2.Text);
          FormVendasFast.frxReport27.Variables['ATI_CODIGO']:=QuotedStr(Edit21.Text);
          FormVendasFast.frxReport27.Variables['ATI_DESCRICAO']:=QuotedStr(Edit22.Text);
          FormVendasFast.frxReport27.ShowReport;
          FormVendasFast.Free;
          FormVendasFast:=nil;
          {$ENDREGION}
        end;
    06: begin
          {$REGION 'Frequencia de vendas por vendedor'}
          if Edit2.Text<>'' then Where:=Where+' and VED_VENDEDOR='+QuotedStr(Edit1.Text);
          if Edit4.Text<>'' then Where:=Where+' and VED_CLIENTE='+QuotedStr(Edit3.Text);
          if ComboBox4.Text='ABERTAS' then Where:=Where+' and VED_STATUS='+QuotedStr('A');
          if ComboBox4.Text='CANCELADAS' then Where:=Where+' and VED_STATUS='+QuotedStr('C');
          if ComboBox4.Text='FINALIZADAS' then Where:=Where+' and VED_STATUS='+QuotedStr('F');
          if ComboBox4.Text='INUTILIZADAS' then Where:=Where+' and VED_STATUS='+QuotedStr('I');
          Application.CreateForm(TFormVendasFast, FormVendasFast);
          FormVendasFast.QY23.Close;
          FormVendasFast.QY23.SQL.Clear;
          FormVendasFast.QY23.SQL.Add(
            'with DADOS as ( '+
            '    select '+
            '    atual.VED_CLIENTE, '+
            '    atual.VED_VENDEDOR, '+
            '    cli.CLI_NOME, '+
            '    ven.VEN_NOME, '+
            '    avg(datediff(day, anterior.VED_DTEMISSAO, atual.VED_DTEMISSAO)) as INTERVALOMEDIO, '+
            '    count(atual.VED_CODIGO) as QTDEVEZES, '+
            '    max(atual.VED_DTEMISSAO) as MAISRECENTE '+
            '    from ( '+
            '        select '+
            '        VED_CODIGO, '+
            '        (select first(1) V2.VED_CODIGO from VENDAS V2 '+
            '           where V2.VED_CLIENTE = V1.VED_CLIENTE and V2.VED_DTEMISSAO < V1.VED_DTEMISSAO '+
            '           order by V2.VED_DTEMISSAO desc) as VED_CODIGO_ANTERIOR '+
            '        from VENDAS V1 where VED_DTEMISSAO between :datainicial and :datafinal '+Where+' ) A '+
            '    join VENDAS anterior on anterior.VED_CODIGO = A.VED_CODIGO_ANTERIOR '+
            '    join VENDAS atual on atual.VED_CODIGO = A.VED_CODIGO '+
            '    left join CLIENTES cli on atual.VED_CLIENTE=cli.CLI_CODIGO '+
            '    left join VENDEDORES ven on atual.VED_VENDEDOR=ven.VEN_CODIGO '+
            '    group by atual.VED_VENDEDOR, ven.VEN_NOME, atual.VED_CLIENTE, cli.CLI_NOME '+
            ') '+
            'select '+
            '    VED_VENDEDOR, VEN_NOME, VED_CLIENTE, CLI_NOME, INTERVALOMEDIO, QTDEVEZES, MAISRECENTE, '+
            '    MAISRECENTE + INTERVALOMEDIO as PROXIMAVENDA, '+
            '    case '+
            '        when MAISRECENTE + INTERVALOMEDIO < current_date then ''SIM'' '+
            '        else ''NAO'' '+
            '    end as ATRASADO, '+
            '    current_date - (MAISRECENTE + INTERVALOMEDIO) as DIASATRASO '+
            'from DADOS '+
            'where QTDEVEZES >= :quantidade_minima '+
            'order by VEN_NOME, CLI_NOME');
          FormVendasFast.QY23.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
          FormVendasFast.QY23.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
          FormVendasFast.QY23.ParamByName('quantidade_minima').asInteger:=StrToInt(Edit7.Text);
          FormVendasFast.QY23.Open;
          FormVendasFast.frxReport23.Variables['TITULO']:=QuotedStr('Frequência de vendas por vendedor');
          FormVendasFast.frxReport23.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
          FormVendasFast.frxReport23.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
          FormVendasFast.frxReport23.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
          FormVendasFast.frxReport23.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
          FormVendasFast.frxReport23.Variables['DATAINICIAL']:=QuotedStr(MaskEdit1.Text);
          FormVendasFast.frxReport23.Variables['DATAFINAL']:=QuotedStr(MaskEdit2.Text);
          FormVendasFast.frxReport23.Variables['VED_STATUS']:=QuotedStr(ComboBox4.Text);
          FormVendasFast.frxReport23.Variables['CLI_CODIGO']:=QuotedStr(Edit3.Text);
          FormVendasFast.frxReport23.Variables['CLI_NOME']:=QuotedStr(Edit4.Text);
          FormVendasFast.frxReport23.Variables['VEN_CODIGO']:=QuotedStr(Edit1.Text);
          FormVendasFast.frxReport23.Variables['VEN_NOME']:=QuotedStr(Edit2.Text);
          FormVendasFast.frxReport23.Variables['QTDE_MINIMA']:=QuotedStr(Edit7.Text);
          FormVendasFast.frxReport23.ShowReport;
          FormVendasFast.Free;
          FormVendasFast:=nil;
          {$ENDREGION}
        end;
    07: begin
          {$REGION 'Frequencia de vendas sem agrupamento'}
          if Edit2.Text<>'' then Where:=Where+' and VED_VENDEDOR='+QuotedStr(Edit1.Text);
          if Edit4.Text<>'' then Where:=Where+' and VED_CLIENTE='+QuotedStr(Edit3.Text);
          if ComboBox4.Text='ABERTAS' then Where:=Where+' and VED_STATUS='+QuotedStr('A');
          if ComboBox4.Text='CANCELADAS' then Where:=Where+' and VED_STATUS='+QuotedStr('C');
          if ComboBox4.Text='FINALIZADAS' then Where:=Where+' and VED_STATUS='+QuotedStr('F');
          if ComboBox4.Text='INUTILIZADAS' then Where:=Where+' and VED_STATUS='+QuotedStr('I');
          Application.CreateForm(TFormVendasFast, FormVendasFast);
          FormVendasFast.QY26.Close;
          FormVendasFast.QY26.SQL.Clear;
          FormVendasFast.QY26.SQL.Add(
            'with DADOS as ( '+
            '    select '+
            '    atual.VED_CLIENTE, '+
            '    cli.CLI_NOME, '+
            '    avg(datediff(day, anterior.VED_DTEMISSAO, atual.VED_DTEMISSAO)) as INTERVALOMEDIO, '+
            '    count(atual.VED_CODIGO) as QTDEVEZES, '+
            '    max(atual.VED_DTEMISSAO) as MAISRECENTE '+
            '    from ( '+
            '        select '+
            '        VED_CODIGO, '+
            '        (select first(1) V2.VED_CODIGO from VENDAS V2 '+
            '           where V2.VED_CLIENTE = V1.VED_CLIENTE and V2.VED_DTEMISSAO < V1.VED_DTEMISSAO '+
            '           order by V2.VED_DTEMISSAO desc) as VED_CODIGO_ANTERIOR '+
            '        from VENDAS V1 where VED_DTEMISSAO between :datainicial and :datafinal '+Where+' ) A '+
            '    join VENDAS anterior on anterior.VED_CODIGO = A.VED_CODIGO_ANTERIOR '+
            '    join VENDAS atual on atual.VED_CODIGO = A.VED_CODIGO '+
            '    left join CLIENTES cli on atual.VED_CLIENTE=cli.CLI_CODIGO '+
            '    group by atual.VED_CLIENTE, cli.CLI_NOME '+
            ') '+
            'select '+
            '    VED_CLIENTE, CLI_NOME, INTERVALOMEDIO, QTDEVEZES, MAISRECENTE, '+
            '    MAISRECENTE + INTERVALOMEDIO as PROXIMAVENDA, '+
            '    case '+
            '        when MAISRECENTE + INTERVALOMEDIO < current_date then ''SIM'' '+
            '        else ''NAO'' '+
            '    end as ATRASADO, '+
            '    current_date - (MAISRECENTE + INTERVALOMEDIO) as DIASATRASO '+
            'from DADOS '+
            'where QTDEVEZES >= :quantidade_minima '+
            'order by CLI_NOME');
          FormVendasFast.QY26.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
          FormVendasFast.QY26.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
          FormVendasFast.QY26.ParamByName('quantidade_minima').asInteger:=StrToInt(Edit7.Text);
          FormVendasFast.QY26.Open;
          FormVendasFast.frxReport26.Variables['TITULO']:=QuotedStr('Frequência de vendas sem agrupamento');
          FormVendasFast.frxReport26.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
          FormVendasFast.frxReport26.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
          FormVendasFast.frxReport26.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
          FormVendasFast.frxReport26.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
          FormVendasFast.frxReport26.Variables['DATAINICIAL']:=QuotedStr(MaskEdit1.Text);
          FormVendasFast.frxReport26.Variables['DATAFINAL']:=QuotedStr(MaskEdit2.Text);
          FormVendasFast.frxReport26.Variables['VED_STATUS']:=QuotedStr(ComboBox4.Text);
          FormVendasFast.frxReport26.Variables['QTDE_MINIMA']:=QuotedStr(Edit7.Text);
          FormVendasFast.frxReport26.Variables['CLI_CODIGO']:=QuotedStr(Edit3.Text);
          FormVendasFast.frxReport26.Variables['CLI_NOME']:=QuotedStr(Edit4.Text);
          FormVendasFast.frxReport26.Variables['VEN_CODIGO']:=QuotedStr(Edit1.Text);
          FormVendasFast.frxReport26.Variables['VEN_NOME']:=QuotedStr(Edit2.Text);
          FormVendasFast.frxReport26.ShowReport;
          FormVendasFast.Free;
          FormVendasFast:=nil;
          {$ENDREGION}
        end;
    08: begin
          {$REGION 'Margem bruta'}
          if Edit2.Text<>'' then Where:=Where+' and VED_VENDEDOR='+QuotedStr(Edit1.Text);
          if Edit9.Text<>'' then Where:=Where+' and VEI_PRODUTO='+QuotedStr(Edit8.Text);
          if ComboBox4.Text='ABERTAS' then Where:=Where+' and VED_STATUS='+QuotedStr('A');
          if ComboBox4.Text='CANCELADAS' then Where:=Where+' and VED_STATUS='+QuotedStr('C');
          if ComboBox4.Text='FINALIZADAS' then Where:=Where+' and VED_STATUS='+QuotedStr('F');
          if ComboBox4.Text='INUTILIZADAS' then Where:=Where+' and VED_STATUS='+QuotedStr('I');
          Application.CreateForm(TFormVendasFast, FormVendasFast);
          FormVendasFast.QY28.Close;
          FormVendasFast.QY28.SQL.Clear;
          FormVendasFast.QY28.SQL.Add(
            'select C.VEI_PRODUTO, C.QTDE, C.VALORTOTAL, C.VALORCOMISSAO, C.VALORUNIT, C.PRECOCUSTO, C.PRO_NOME, '+
            'C.CUSTOTOTAL, C.MARGEM, iif(C.CUSTOTOTAL > 0, cast((C.MARGEM * 100) / C.CUSTOTOTAL as numeric(15,2)), 0) as MARGEMPORC '+
            'from ( '+
            '    select B.VEI_PRODUTO, B.QTDE, B.VALORTOTAL, B.VALORCOMISSAO, B.VALORUNIT, B.PRECOCUSTO, '+
            '    B.PRO_NOME, B.CUSTOTOTAL, cast(B.VALORTOTAL - B.CUSTOTOTAL as numeric(15,2)) as MARGEM '+
            '    from ( '+
            '        select A.VEI_PRODUTO, A.QTDE, A.VALORTOTAL, A.VALORCOMISSAO, A.VALORUNIT, A.PRECOCUSTO, '+
            '        A.PRO_NOME, cast(A.QTDE as numeric(15,4)) * cast(a.PRECOCUSTO as numeric(15,2)) as CUSTOTOTAL '+
            '        from ( '+
            '            select VEI_PRODUTO, PRO_NOME, '+
            '            sum(cast(VEI_QUANTIDADE as numeric(15,4))) as QTDE, '+
            '            sum(cast(VEI_VALORTOTAL as numeric(15,2))) as VALORTOTAL, '+
            '            sum(cast(VEI_VALORCOMISSAO as numeric(15,2))) as VALORCOMISSAO, '+
            '            avg(cast(VEI_VALORUNIT as numeric(15,2))) as VALORUNIT, '+
            '            avg(cast(VEI_PRECOCUSTO as numeric(15,2))) as PRECOCUSTO '+
            '            from VENDASITENS '+
            '            left join VENDAS on VEI_VENDA=VED_CODIGO '+
            '            left join PRODUTOS on VEI_PRODUTO=PRO_CODIGO '+
            '            where VED_DTEMISSAO between :datainicial and :datafinal '+Where+' '+
            '            group by VEI_PRODUTO, PRO_NOME '+
            '            order by VEI_PRODUTO) A) B) C');
          FormVendasFast.QY28.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
          FormVendasFast.QY28.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
          FormVendasFast.QY28.Open;
          FormVendasFast.frxReport28.Variables['TITULO']:=QuotedStr('Margem bruta');
          FormVendasFast.frxReport28.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
          FormVendasFast.frxReport28.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
          FormVendasFast.frxReport28.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
          FormVendasFast.frxReport28.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
          FormVendasFast.frxReport28.Variables['DATAINICIAL']:=QuotedStr(MaskEdit1.Text);
          FormVendasFast.frxReport28.Variables['DATAFINAL']:=QuotedStr(MaskEdit2.Text);
          FormVendasFast.frxReport28.Variables['VED_STATUS']:=QuotedStr(ComboBox4.Text);
          FormVendasFast.frxReport28.Variables['VEN_CODIGO']:=QuotedStr(Edit1.Text);
          FormVendasFast.frxReport28.Variables['VEN_NOME']:=QuotedStr(Edit2.Text);
          FormVendasFast.frxReport28.Variables['PRO_CODIGO']:=QuotedStr(Edit8.Text);
          FormVendasFast.frxReport28.Variables['PRO_NOME']:=QuotedStr(Edit9.Text);
          FormVendasFast.frxReport28.ShowReport;
          FormVendasFast.Free;
          FormVendasFast:=nil;
          {$ENDREGION}
        end;
    09: begin
          {$REGION 'Melhores clientes por item vendido'}
          //este relatório só faz sentido se utilizar somente uma das opções... grupo ou produto.
          if Edit6.Text<>'' then Where:=' and GRU_CODIGO='+QuotedStr(Edit5.Text);
          if Edit9.Text<>'' then Where:=Where+' and VEI_PRODUTO='+QuotedStr(Edit8.Text);
          if ComboBox4.Text='ABERTAS' then Where:=Where+' and VED_STATUS='+QuotedStr('A');
          if ComboBox4.Text='CANCELADAS' then Where:=Where+' and VED_STATUS='+QuotedStr('C');
          if ComboBox4.Text='FINALIZADAS' then Where:=Where+' and VED_STATUS='+QuotedStr('F');
          if ComboBox4.Text='INUTILIZADAS' then Where:=Where+' and VED_STATUS='+QuotedStr('I');
          Application.CreateForm(TFormVendasFast, FormVendasFast);
          FormVendasFast.QY21.Close;
          FormVendasFast.QY21.SQL.Clear;
          FormVendasFast.QY21.SQL.Add(
            'select GRU_DESCRICAO, GRU_CODIGO, VEI_PRODUTO, VEI_DESCRICAO, CLI_NOME, CLI_CODIGO, sum(VEI_QUANTIDADE) as QTDE from VENDASITENS '+
            'left join VENDAS on VEI_VENDA=VED_CODIGO '+
            'left join CLIENTES on VED_CLIENTE=CLI_CODIGO '+
            'left join PRODUTOS on VEI_PRODUTO=PRO_CODIGO '+
            'left join GRUPOS on PRO_GRUPO=GRU_CODIGO '+
            'where VED_DTEMISSAO between :datainicial and :datafinal '+Where+' '+
            'group by GRU_DESCRICAO, GRU_CODIGO, VEI_PRODUTO, VEI_DESCRICAO, CLI_NOME, CLI_CODIGO '+
            'having sum(VEI_QUANTIDADE) >= :quantidade '+
            'order by GRU_DESCRICAO, VEI_DESCRICAO, 7 desc, CLI_NOME');
          FormVendasFast.QY21.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
          FormVendasFast.QY21.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
          FormVendasFast.QY21.ParamByName('quantidade').AsInteger:=StrToInt(Edit7.Text);
          FormVendasFast.QY21.Open;
          FormVendasFast.frxReport21.Variables['TITULO']:=QuotedStr('Melhores clientes por item vendido');
          FormVendasFast.frxReport21.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
          FormVendasFast.frxReport21.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
          FormVendasFast.frxReport21.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
          FormVendasFast.frxReport21.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
          FormVendasFast.frxReport21.Variables['DATAINICIAL']:=QuotedStr(MaskEdit1.Text);
          FormVendasFast.frxReport21.Variables['DATAFINAL']:=QuotedStr(MaskEdit2.Text);
          FormVendasFast.frxReport21.Variables['VED_STATUS']:=QuotedStr(ComboBox4.Text);
          FormVendasFast.frxReport21.Variables['GRU_CODIGO']:=QuotedStr(Edit5.Text);
          FormVendasFast.frxReport21.Variables['GRU_DESCRICAO']:=QuotedStr(Edit6.Text);
          FormVendasFast.frxReport21.Variables['PRO_CODIGO']:=QuotedStr(Edit8.Text);
          FormVendasFast.frxReport21.Variables['PRO_NOME']:=QuotedStr(Edit9.Text);
          FormVendasFast.frxReport21.Variables['QUANTIDADE']:=QuotedStr(Edit7.Text);
          FormVendasFast.frxReport21.ShowReport;
          FormVendasFast.Free;
          FormVendasFast:=nil;
          {$ENDREGION}
        end;
    10: begin
          {$REGION 'Produtos vendidos por cliente'}
          if ComboBox5.Text='EMISSAO PEDIDO' then Where:='(VED_DTEMISSAO between :datainicial and :datafinal)' else
          if ComboBox5.Text='EMISSAO NOTA' then Where:='(NFE_DTEMISSAO between :datainicial and :datafinal)' else
          if ComboBox5.Text='DATA ENTREGA' then Where:='(VED_DTENTREGA between :datainicial and :datafinal)';
          if Edit2.Text<>'' then Where:=Where+' and VED_VENDEDOR='+QuotedStr(Edit1.Text);
          if Edit4.Text<>'' then Where:=Where+' and VED_CLIENTE='+QuotedStr(Edit3.Text);
          if Edit9.Text<>'' then Where:=Where+' and VEI_PRODUTO='+QuotedStr(Edit8.Text);
          if ComboBox4.Text='ABERTAS' then Where:=Where+' and VED_STATUS='+QuotedStr('A');
          if ComboBox4.Text='CANCELADAS' then Where:=Where+' and VED_STATUS='+QuotedStr('C');
          if ComboBox4.Text='FINALIZADAS' then Where:=Where+' and VED_STATUS='+QuotedStr('F');
          if ComboBox4.Text='INUTILIZADAS' then Where:=Where+' and VED_STATUS='+QuotedStr('I');
          Application.CreateForm(TFormVendasFast, FormVendasFast);
          FormVendasFast.QY14.Close;
          FormVendasFast.QY14.SQL.Clear;
          FormVendasFast.QY14.SQL.Add(
            'select VEI_PRODUTO, VEI_DESCRICAO, VEI_PRODUTOREAL, VEI_CONVERSAO, sum(VEI_QUANTIDADE) as QTDE,'+
            'sum(VEI_QUANTIDADETROCA) as QTDETROCA, sum(VEI_VALORTOTAL) as TOTAL, VED_CLIENTE, CLI_NOME, PRO_NOME from VENDASITENS '+
            'left join VENDAS on VEI_VENDA=VED_CODIGO '+
            'left join CLIENTES on VED_CLIENTE=CLI_CODIGO '+
            'left join PRODUTOS on VEI_PRODUTOREAL=PRO_CODIGO '+
            'left join NFE on VED_NFE=NFE_CODIGO '+
            'where '+Where+' '+
            'group by CLI_NOME, VED_CLIENTE, VEI_PRODUTO, VEI_DESCRICAO, VEI_PRODUTOREAL, VEI_CONVERSAO, PRO_NOME '+
            'order by CLI_NOME, VEI_DESCRICAO');
          FormVendasFast.QY14.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
          FormVendasFast.QY14.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
          FormVendasFast.QY14.Open;
          FormVendasFast.frxReport14.Variables['TITULO']:=QuotedStr('Produtos vendidos por cliente');
          FormVendasFast.frxReport14.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
          FormVendasFast.frxReport14.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
          FormVendasFast.frxReport14.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
          FormVendasFast.frxReport14.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
          FormVendasFast.frxReport14.Variables['DATAINICIAL']:=QuotedStr(MaskEdit1.Text);
          FormVendasFast.frxReport14.Variables['DATAFINAL']:=QuotedStr(MaskEdit2.Text);
          FormVendasFast.frxReport14.Variables['DATA']:=QuotedStr(ComboBox5.Text);
          FormVendasFast.frxReport14.Variables['VED_STATUS']:=QuotedStr(ComboBox4.Text);
          FormVendasFast.frxReport14.Variables['CLI_CODIGO']:=QuotedStr(Edit3.Text);
          FormVendasFast.frxReport14.Variables['CLI_NOME']:=QuotedStr(Edit4.Text);
          FormVendasFast.frxReport14.Variables['PRO_CODIGO']:=QuotedStr(Edit8.Text);
          FormVendasFast.frxReport14.Variables['PRO_NOME']:=QuotedStr(Edit9.Text);
          FormVendasFast.frxReport14.Variables['VEN_CODIGO']:=QuotedStr(Edit1.Text);
          FormVendasFast.frxReport14.Variables['VEN_NOME']:=QuotedStr(Edit2.Text);
          FormVendasFast.frxReport14.ShowReport;
          FormVendasFast.Free;
          FormVendasFast:=nil;
          {$ENDREGION}
        end;
    11: begin
          {$REGION 'Produtos vendidos por vendedor'}
          if ComboBox5.Text='EMISSAO PEDIDO' then Where:='(VED_DTEMISSAO between :datainicial and :datafinal)' else
          if ComboBox5.Text='EMISSAO NOTA' then Where:='(NFE_DTEMISSAO between :datainicial and :datafinal)' else
          if ComboBox5.Text='DATA ENTREGA' then Where:='(VED_DTENTREGA between :datainicial and :datafinal)';
          if Edit2.Text<>'' then Where:=Where+' and VED_VENDEDOR='+QuotedStr(Edit1.Text);
          if Edit4.Text<>'' then Where:=Where+' and VED_CLIENTE='+QuotedStr(Edit3.Text);
          if Edit9.Text<>'' then Where:=Where+' and VEI_PRODUTO='+QuotedStr(Edit8.Text);
          if ComboBox4.Text='ABERTAS' then Where:=Where+' and VED_STATUS='+QuotedStr('A');
          if ComboBox4.Text='CANCELADAS' then Where:=Where+' and VED_STATUS='+QuotedStr('C');
          if ComboBox4.Text='FINALIZADAS' then Where:=Where+' and VED_STATUS='+QuotedStr('F');
          if ComboBox4.Text='INUTILIZADAS' then Where:=Where+' and VED_STATUS='+QuotedStr('I');
          Application.CreateForm(TFormVendasFast, FormVendasFast);
          FormVendasFast.QY15.Close;
          FormVendasFast.QY15.SQL.Clear;
          FormVendasFast.QY15.SQL.Add(
            'select VEI_PRODUTO, VEI_DESCRICAO, VEI_PRODUTOREAL, VEI_CONVERSAO, sum(VEI_QUANTIDADE) as QTDE,'+
            'sum(VEI_QUANTIDADETROCA) as QTDETROCA, sum(VEI_VALORTOTAL) as TOTAL, VED_VENDEDOR, VEN_NOME, PRO_NOME from VENDASITENS '+
            'left join VENDAS on VEI_VENDA=VED_CODIGO '+
            'left join VENDEDORES on VED_VENDEDOR=VEN_CODIGO '+
            'left join PRODUTOS on VEI_PRODUTOREAL=PRO_CODIGO '+
            'left join NFE on VED_NFE=NFE_CODIGO '+
            'where '+Where+' '+
            'group by VEN_NOME, VED_VENDEDOR, VEI_PRODUTO, VEI_DESCRICAO, VEI_PRODUTOREAL, VEI_CONVERSAO, PRO_NOME '+
            'order by VEN_NOME, VEI_DESCRICAO');
          FormVendasFast.QY15.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
          FormVendasFast.QY15.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
          FormVendasFast.QY15.Open;
          FormVendasFast.frxReport15.Variables['TITULO']:=QuotedStr('Produtos vendidos por cliente');
          FormVendasFast.frxReport15.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
          FormVendasFast.frxReport15.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
          FormVendasFast.frxReport15.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
          FormVendasFast.frxReport15.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
          FormVendasFast.frxReport15.Variables['DATAINICIAL']:=QuotedStr(MaskEdit1.Text);
          FormVendasFast.frxReport15.Variables['DATAFINAL']:=QuotedStr(MaskEdit2.Text);
          FormVendasFast.frxReport15.Variables['DATA']:=QuotedStr(ComboBox5.Text);
          FormVendasFast.frxReport15.Variables['VED_STATUS']:=QuotedStr(ComboBox4.Text);
          FormVendasFast.frxReport15.Variables['CLI_CODIGO']:=QuotedStr(Edit3.Text);
          FormVendasFast.frxReport15.Variables['CLI_NOME']:=QuotedStr(Edit4.Text);
          FormVendasFast.frxReport15.Variables['PRO_CODIGO']:=QuotedStr(Edit8.Text);
          FormVendasFast.frxReport15.Variables['PRO_NOME']:=QuotedStr(Edit9.Text);
          FormVendasFast.frxReport15.Variables['VEN_CODIGO']:=QuotedStr(Edit1.Text);
          FormVendasFast.frxReport15.Variables['VEN_NOME']:=QuotedStr(Edit2.Text);
          FormVendasFast.frxReport15.ShowReport;
          FormVendasFast.Free;
          FormVendasFast:=nil;
          {$ENDREGION}
        end;
    12: begin
          {$REGION 'Protocolo de entrega a transportadora'}
          if ComboBox5.Text='EMISSAO PEDIDO' then Where:='(VED_DTEMISSAO between :datainicial and :datafinal)' else
          if ComboBox5.Text='EMISSAO NOTA' then Where:='(NFE_DTEMISSAO between :datainicial and :datafinal)' else
          if ComboBox5.Text='DATA ENTREGA' then Where:='(VED_DTENTREGA between :datainicial and :datafinal)';
          if Edit26.Text<>'' then Where:=Where+' and VED_TRANSPORTADORA='+QuotedStr(Edit25.Text);
          if ComboBox4.Text='ABERTAS' then Where:=Where+' and VED_STATUS='+QuotedStr('A');
          if ComboBox4.Text='CANCELADAS' then Where:=Where+' and VED_STATUS='+QuotedStr('C');
          if ComboBox4.Text='FINALIZADAS' then Where:=Where+' and VED_STATUS='+QuotedStr('F');
          if ComboBox4.Text='INUTILIZADAS' then Where:=Where+' and VED_STATUS='+QuotedStr('I');
          Application.CreateForm(TFormVendasFast, FormVendasFast);
          FormVendasFast.QY34.Close;
          FormVendasFast.QY34.SQL.Clear;
          FormVendasFast.QY34.SQL.Add(
            'select VED_CLIENTE, VED_CODIGO, VED_DTEMISSAO, VED_ESPECIE, VED_NFE, VED_NOME, VED_STATUS, VED_TRANSPORTADORA, '+
            'VED_TRANSPNOME, VED_VALORTOTAL, VED_VOLUMES, VED_VOLUMESNUM, NFE_DTEMISSAO from VENDAS '+
            'left join NFE on VED_NFE=NFE_CODIGO '+
            'where '+Where+' '+
            'order by VED_TRANSPNOME, VED_NOME, VED_DTEMISSAO desc');
          FormVendasFast.QY34.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
          FormVendasFast.QY34.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
          FormVendasFast.QY34.Open;
          FormVendasFast.frxReport34.Variables['TITULO']:=QuotedStr('Protocolo de entrega a transportadora');
          FormVendasFast.frxReport34.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
          FormVendasFast.frxReport34.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
          FormVendasFast.frxReport34.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
          FormVendasFast.frxReport34.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
          FormVendasFast.frxReport34.Variables['DATA']:=QuotedStr(ComboBox5.Text);
          FormVendasFast.frxReport34.Variables['DATAINICIAL']:=QuotedStr(MaskEdit1.Text);
          FormVendasFast.frxReport34.Variables['DATAFINAL']:=QuotedStr(MaskEdit2.Text);
          FormVendasFast.frxReport34.Variables['VED_STATUS']:=QuotedStr(ComboBox4.Text);
          FormVendasFast.frxReport34.Variables['FOR_CODIGO']:=QuotedStr(Edit25.Text);
          FormVendasFast.frxReport34.Variables['FOR_NOME']:=QuotedStr(Edit26.Text);
          FormVendasFast.frxReport34.ShowReport;
          FormVendasFast.Free;
          FormVendasFast:=nil;
          {$ENDREGION}
        end;
    13: begin
          {$REGION 'Rastreamento de lotes'}
          Where:=' and VEI_LOTE<>'+QuotedStr('');
          if Edit27.Text<>'' then Where:=' and VEI_LOTE='+QuotedStr(Edit10.Text);
          if Edit4.Text<>'' then Where:=Where+' and VED_CLIENTE='+QuotedStr(Edit3.Text);
          if Edit2.Text<>'' then Where:=Where+' and VED_VENDEDOR='+QuotedStr(Edit1.Text);
          if ComboBox4.Text='ABERTAS' then Where:=Where+' and VED_STATUS='+QuotedStr('A');
          if ComboBox4.Text='CANCELADAS' then Where:=Where+' and VED_STATUS='+QuotedStr('C');
          if ComboBox4.Text='FINALIZADAS' then Where:=Where+' and VED_STATUS='+QuotedStr('F');
          if ComboBox4.Text='INUTILIZADAS' then Where:=Where+' and VED_STATUS='+QuotedStr('I');
          Application.CreateForm(TFormVendasFast, FormVendasFast);
          FormVendasFast.QY22.Close;
          FormVendasFast.QY22.SQL.Clear;
          FormVendasFast.QY22.SQL.Add(
            'select VEI_DESCRICAO, VEI_LOTE, VEI_PRODUTO, VEI_QUANTIDADE, VEI_VENDA, VED_CLIENTE, '+
            'VED_DTEMISSAO, VED_NOME, VED_STATUS, LOT_CODIGO, LOT_FABRICACAO, LOT_LOTE, LOT_QUANTIDADE, LOT_VALIDADE from VENDASITENS '+
            'left join VENDAS on VEI_VENDA=VED_CODIGO '+
            'left join LOTES on VEI_LOTE=LOT_CODIGO '+
            'where VED_DTEMISSAO between :datainicial and :datafinal '+Where+' '+
            'order by VEI_LOTE, VEI_PRODUTO, VED_NOME');
          FormVendasFast.QY22.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
          FormVendasFast.QY22.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
          FormVendasFast.QY22.Open;
          FormVendasFast.frxReport22.Variables['TITULO']:=QuotedStr('Rastreamento de lotes');
          FormVendasFast.frxReport22.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
          FormVendasFast.frxReport22.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
          FormVendasFast.frxReport22.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
          FormVendasFast.frxReport22.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
          FormVendasFast.frxReport22.Variables['DATAINICIAL']:=QuotedStr(MaskEdit1.Text);
          FormVendasFast.frxReport22.Variables['DATAFINAL']:=QuotedStr(MaskEdit2.Text);
          FormVendasFast.frxReport22.Variables['VED_STATUS']:=QuotedStr(ComboBox4.Text);
          FormVendasFast.frxReport22.Variables['CLI_CODIGO']:=QuotedStr(Edit3.Text);
          FormVendasFast.frxReport22.Variables['CLI_NOME']:=QuotedStr(Edit4.Text);
          FormVendasFast.frxReport22.Variables['VEN_CODIGO']:=QuotedStr(Edit1.Text);
          FormVendasFast.frxReport22.Variables['VEN_NOME']:=QuotedStr(Edit2.Text);
          FormVendasFast.frxReport22.Variables['LOT_CODIGO']:=QuotedStr(Edit10.Text);
          FormVendasFast.frxReport22.Variables['LOT_LOTE']:=QuotedStr(Edit27.Text);
          FormVendasFast.frxReport22.ShowReport;
          FormVendasFast.Free;
          FormVendasFast:=nil;
          {$ENDREGION}
        end;
    14: begin
          {$REGION 'Trocas por vendedor'}
          if ComboBox5.Text='EMISSAO PEDIDO' then Where:=' and (VED_DTEMISSAO between :datainicial and :datafinal)' else
          if ComboBox5.Text='EMISSAO NOTA' then Where:=' and (NFE_DTEMISSAO between :datainicial and :datafinal)' else
          if ComboBox5.Text='DATA ENTREGA' then Where:=Where+' VED_DTENTREGA between :datainicial and :datafinal';
          if Edit2.Text<>'' then Where:=Where+' and VED_VENDEDOR='+QuotedStr(Edit1.Text);
          if Edit4.Text<>'' then Where:=Where+' and VED_CLIENTE='+QuotedStr(Edit3.Text);
          if ComboBox4.Text='ABERTAS' then Where:=Where+' and VED_STATUS='+QuotedStr('A');
          if ComboBox4.Text='CANCELADAS' then Where:=Where+' and VED_STATUS='+QuotedStr('C');
          if ComboBox4.Text='FINALIZADAS' then Where:=Where+' and VED_STATUS='+QuotedStr('F');
          if ComboBox4.Text='INUTILIZADAS' then Where:=Where+' and VED_STATUS='+QuotedStr('I');
          Application.CreateForm(TFormVendasFast, FormVendasFast);
          FormVendasFast.QY17.Close;
          FormVendasFast.QY17.SQL.Clear;
          FormVendasFast.QY17.SQL.Add(
            'select VEI_PRODUTO, VEI_DESCRICAO, VEI_PRODUTOREAL, VEI_CONVERSAO, sum(VEI_QUANTIDADE) as QTDE, '+
            'sum(VEI_QUANTIDADETROCA) as QTDETROCA, sum(VEI_VALORTOTAL) as TOTAL, sum(VEI_DESCVALOR) as TOTALDESC, '+
            'VED_VENDEDOR, VEN_NOME, PRO_NOME from VENDASITENS '+
            'left join VENDAS on VEI_VENDA=VED_CODIGO '+
            'left join VENDEDORES on VED_VENDEDOR=VEN_CODIGO '+
            'left join PRODUTOS on VEI_PRODUTOREAL=PRO_CODIGO '+
            'left join NFE on VED_NFE=NFE_CODIGO '+
            'where VEI_QUANTIDADETROCA>0 '+Where+' '+
            'group by VEN_NOME, VED_VENDEDOR, VEI_PRODUTO, VEI_DESCRICAO, VEI_PRODUTOREAL, VEI_CONVERSAO, PRO_NOME '+
            'order by VEN_NOME, VEI_DESCRICAO');
          FormVendasFast.QY17.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
          FormVendasFast.QY17.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
          FormVendasFast.QY17.Open;
          FormVendasFast.frxReport17.Variables['TITULO']:=QuotedStr('Trocas realizadas por vendedor');
          FormVendasFast.frxReport17.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
          FormVendasFast.frxReport17.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
          FormVendasFast.frxReport17.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
          FormVendasFast.frxReport17.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
          FormVendasFast.frxReport17.Variables['DATAINICIAL']:=QuotedStr(MaskEdit1.Text);
          FormVendasFast.frxReport17.Variables['DATAFINAL']:=QuotedStr(MaskEdit2.Text);
          FormVendasFast.frxReport17.Variables['DATA']:=QuotedStr(ComboBox5.Text);
          FormVendasFast.frxReport17.Variables['VED_STATUS']:=QuotedStr(ComboBox4.Text);
          FormVendasFast.frxReport17.Variables['CLI_CODIGO']:=QuotedStr(Edit3.Text);
          FormVendasFast.frxReport17.Variables['CLI_NOME']:=QuotedStr(Edit4.Text);
          FormVendasFast.frxReport17.Variables['VEN_CODIGO']:=QuotedStr(Edit1.Text);
          FormVendasFast.frxReport17.Variables['VEN_NOME']:=QuotedStr(Edit2.Text);
          FormVendasFast.frxReport17.ShowReport;
          FormVendasFast.Free;
          FormVendasFast:=nil;
          {$ENDREGION}
        end;
    15: begin
          {$REGION 'Vendas por classificação fiscal'}
          if Edit2.Text<>'' then Where:=Where+' and VED_VENDEDOR='+QuotedStr(Edit1.Text);
          if Edit30.Text<>'' then Where:=Where+' and VEI_CLASSFISCAL='+QuotedStr(Edit28.Text)+' and coalesce(VEI_EXCECAO,0)='+QuotedStr(Edit29.Text);
          if ComboBox4.Text='ABERTAS' then Where:=Where+' and VED_STATUS='+QuotedStr('A');
          if ComboBox4.Text='CANCELADAS' then Where:=Where+' and VED_STATUS='+QuotedStr('C');
          if ComboBox4.Text='FINALIZADAS' then Where:=Where+' and VED_STATUS='+QuotedStr('F');
          if ComboBox4.Text='INUTILIZADAS' then Where:=Where+' and VED_STATUS='+QuotedStr('I');
          Application.CreateForm(TFormVendasFast, FormVendasFast);
          FormVendasFast.QY35.Close;
          FormVendasFast.QY35.SQL.Clear;
          FormVendasFast.QY35.SQL.Add(
            'select VEI_CLASSFISCAL||''-''||coalesce(VEI_EXCECAO,0) as VEI_CLASSFISCAL, VEI_DESCRICAO, coalesce(VEI_EXCECAO,0) as VEI_EXCECAO, '+
            'VEI_PRECOCUSTO, VEI_PRODUTO, VEI_QUANTIDADE, VEI_VALORTOTAL, VEI_VALORUNIT, VED_CODIGO, VED_DTEMISSAO, '+
            'VED_NFE, VED_STATUS, VED_VALORTOTAL, CLF_DESCRICAO from VENDASITENS '+
            'left join VENDAS on VEI_VENDA=VED_CODIGO '+
            'left join CLASSFISCAL on VEI_CLASSFISCAL=CLF_CODIGO and coalesce(VEI_EXCECAO,0)=CLF_EXCECAO '+
            'where VED_DTEMISSAO between :datainicial and :datafinal '+Where+' '+
            'order by 1, VED_DTEMISSAO');
          FormVendasFast.QY35.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
          FormVendasFast.QY35.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
          FormVendasFast.QY35.Open;
          FormVendasFast.frxReport35.Variables['TITULO']:=QuotedStr('Vendas por classificação fiscal');
          FormVendasFast.frxReport35.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
          FormVendasFast.frxReport35.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
          FormVendasFast.frxReport35.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
          FormVendasFast.frxReport35.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
          FormVendasFast.frxReport35.Variables['DATAINICIAL']:=QuotedStr(MaskEdit1.Text);
          FormVendasFast.frxReport35.Variables['DATAFINAL']:=QuotedStr(MaskEdit2.Text);
          FormVendasFast.frxReport35.Variables['VED_STATUS']:=QuotedStr(ComboBox4.Text);
          FormVendasFast.frxReport35.Variables['CLF_CODIGO']:=QuotedStr(Edit28.Text);
          FormVendasFast.frxReport35.Variables['CLF_EXCECAO']:=QuotedStr(Edit29.Text);
          FormVendasFast.frxReport35.Variables['CLF_DESCRICAO']:=QuotedStr(Edit30.Text);
          FormVendasFast.frxReport35.Variables['VEN_CODIGO']:=QuotedStr(Edit1.Text);
          FormVendasFast.frxReport35.Variables['VEN_NOME']:=QuotedStr(Edit2.Text);
          FormVendasFast.frxReport35.ShowReport;
          FormVendasFast.Free;
          FormVendasFast:=nil;
          {$ENDREGION}
        end;
    16: begin
          {$REGION 'Vendas por cliente'}
          if Edit4.Text<>'' then Where:=Where+' and VED_CLIENTE='+QuotedStr(Edit3.Text);
          if Edit2.Text<>'' then Where:=Where+' and VED_VENDEDOR='+QuotedStr(Edit1.Text);
          if ComboBox4.Text='ABERTAS' then Where:=Where+' and VED_STATUS='+QuotedStr('A');
          if ComboBox4.Text='CANCELADAS' then Where:=Where+' and VED_STATUS='+QuotedStr('C');
          if ComboBox4.Text='FINALIZADAS' then Where:=Where+' and VED_STATUS='+QuotedStr('F');
          if ComboBox4.Text='INUTILIZADAS' then Where:=Where+' and VED_STATUS='+QuotedStr('I');
          if ComboBox6.Text='SIM - ABERTOS' then Where:=Where+' and (VED_VIAINTERNET='+QuotedStr('S')+' and VED_VIAINTERNETSTATUS='+QuotedStr('A')+')';
          if ComboBox6.Text='SIM - FINALIZADOS' then Where:=Where+' and (VED_VIAINTERNET='+QuotedStr('S')+' and VED_VIAINTERNETSTATUS='+QuotedStr('F')+')';
          if ComboBox6.Text='NAO' then Where:=Where+' and VED_VIAINTERNET='+QuotedStr('N');
          if ComboBox7.Text='SIM' then Where:=Where+' and VED_ENTREGUE='+QuotedStr('S');
          if ComboBox7.Text='NAO' then Where:=Where+' and VED_ENTREGUE='+QuotedStr('N');
          Application.CreateForm(TFormVendasFast, FormVendasFast);
          FormVendasFast.QY01.Close;
          FormVendasFast.QY01.SQL.Clear;
          FormVendasFast.QY01.SQL.Add(
            'select VED_CODIGO, VED_CLIENTE, VED_DESCVALOR, VED_DTEMISSAO, VED_NFE, VED_STATUS, VED_TOTALSERVICOS, '+
            'VED_TOTALPRODUTOS, VED_TOTALITENS, VED_VALORTOTAL, VED_VIAINTERNET, VED_VIAINTERNETSTATUS, VED_VENDEDOR, CLI_NOME from VENDAS '+
            'left join CLIENTES on VED_CLIENTE=CLI_CODIGO '+
            'where VED_DTEMISSAO between :datainicial and :datafinal '+Where+' '+
            'order by CLI_NOME, VED_DTEMISSAO, VED_CODIGO desc');
          FormVendasFast.QY01.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
          FormVendasFast.QY01.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
          FormVendasFast.QY01.Open;
          FormVendasFast.frxReport1.Variables['TITULO']:=QuotedStr('Vendas por cliente');
          FormVendasFast.frxReport1.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
          FormVendasFast.frxReport1.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
          FormVendasFast.frxReport1.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
          FormVendasFast.frxReport1.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
          FormVendasFast.frxReport1.Variables['DATAINICIAL']:=QuotedStr(MaskEdit1.Text);
          FormVendasFast.frxReport1.Variables['DATAFINAL']:=QuotedStr(MaskEdit2.Text);
          FormVendasFast.frxReport1.Variables['VED_ENTREGUE']:=QuotedStr(ComboBox7.Text);
          FormVendasFast.frxReport1.Variables['VED_STATUS']:=QuotedStr(ComboBox4.Text);
          FormVendasFast.frxReport1.Variables['VED_VIAINTERNET']:=QuotedStr(ComboBox6.Text);
          FormVendasFast.frxReport1.Variables['CLI_CODIGO']:=QuotedStr(Edit3.Text);
          FormVendasFast.frxReport1.Variables['CLI_NOME']:=QuotedStr(Edit4.Text);
          FormVendasFast.frxReport1.Variables['VEN_CODIGO']:=QuotedStr(Edit1.Text);
          FormVendasFast.frxReport1.Variables['VEN_NOME']:=QuotedStr(Edit2.Text);
          FormVendasFast.frxReport1.ShowReport;
          FormVendasFast.Free;
          FormVendasFast:=nil;
          {$ENDREGION}
        end;
    17: begin
          {$REGION 'Vendas por cliente com itens'}
          if Edit4.Text<>'' then Where:=Where+' and VED_CLIENTE='+QuotedStr(Edit3.Text);
          if Edit2.Text<>'' then Where:=Where+' and VED_VENDEDOR='+QuotedStr(Edit1.Text);
          if ComboBox4.Text='ABERTAS' then Where:=Where+' and VED_STATUS='+QuotedStr('A');
          if ComboBox4.Text='CANCELADAS' then Where:=Where+' and VED_STATUS='+QuotedStr('C');
          if ComboBox4.Text='FINALIZADAS' then Where:=Where+' and VED_STATUS='+QuotedStr('F');
          if ComboBox4.Text='INUTILIZADAS' then Where:=Where+' and VED_STATUS='+QuotedStr('I');
          if ComboBox6.Text='SIM - ABERTOS' then Where:=Where+' and (VED_VIAINTERNET='+QuotedStr('S')+' and VED_VIAINTERNETSTATUS='+QuotedStr('A')+')';
          if ComboBox6.Text='SIM - FINALIZADOS' then Where:=Where+' and (VED_VIAINTERNET='+QuotedStr('S')+' and VED_VIAINTERNETSTATUS='+QuotedStr('F')+')';
          if ComboBox6.Text='NAO' then Where:=Where+' and VED_VIAINTERNET='+QuotedStr('N');
          if ComboBox7.Text='SIM' then Where:=Where+' and VED_ENTREGUE='+QuotedStr('S');
          if ComboBox7.Text='NAO' then Where:=Where+' and VED_ENTREGUE='+QuotedStr('N');
          Application.CreateForm(TFormVendasFast, FormVendasFast);
          FormVendasFast.QY02.Close;
          FormVendasFast.QY02.SQL.Clear;
          FormVendasFast.QY02.SQL.Add(
            'select VED_CODIGO, VED_CLIENTE, VED_DESCVALOR, VED_DTEMISSAO, VED_NFE, VED_STATUS, VED_TOTALSERVICOS, '+
            'VED_TOTALPRODUTOS, VED_TOTALITENS, VED_VALORTOTAL, VED_VIAINTERNET, VED_VIAINTERNETSTATUS, VED_VENDEDOR, CLI_NOME from VENDAS '+
            'left join CLIENTES on VED_CLIENTE=CLI_CODIGO '+
            'where VED_DTEMISSAO between :datainicial and :datafinal '+Where+' '+
            'order by CLI_NOME, VED_DTEMISSAO, VED_CODIGO desc');
          FormVendasFast.QY02.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
          FormVendasFast.QY02.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
          FormVendasFast.QY02.Open;
          FormVendasFast.QY02a.Open;
          FormVendasFast.frxReport2.Variables['TITULO']:=QuotedStr('Vendas por cliente com itens');
          FormVendasFast.frxReport2.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
          FormVendasFast.frxReport2.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
          FormVendasFast.frxReport2.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
          FormVendasFast.frxReport2.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
          FormVendasFast.frxReport2.Variables['DATAINICIAL']:=QuotedStr(MaskEdit1.Text);
          FormVendasFast.frxReport2.Variables['DATAFINAL']:=QuotedStr(MaskEdit2.Text);
          FormVendasFast.frxReport2.Variables['VED_ENTREGUE']:=QuotedStr(ComboBox7.Text);
          FormVendasFast.frxReport2.Variables['VED_STATUS']:=QuotedStr(ComboBox4.Text);
          FormVendasFast.frxReport2.Variables['VED_VIAINTERNET']:=QuotedStr(ComboBox6.Text);
          FormVendasFast.frxReport2.Variables['CLI_CODIGO']:=QuotedStr(Edit3.Text);
          FormVendasFast.frxReport2.Variables['CLI_NOME']:=QuotedStr(Edit4.Text);
          FormVendasFast.frxReport2.Variables['VEN_CODIGO']:=QuotedStr(Edit1.Text);
          FormVendasFast.frxReport2.Variables['VEN_NOME']:=QuotedStr(Edit2.Text);
          FormVendasFast.frxReport2.ShowReport;
          FormVendasFast.Free;
          FormVendasFast:=nil;
          {$ENDREGION}
        end;
    18: begin
          {$REGION 'Vendas por condição de pagamento analítico'}
          if Edit14.Text<>'' then Where:=Where+' and VED_CONDICAO='+QuotedStr(Edit13.Text);
          if Edit4.Text<>'' then Where:=Where+' and VED_CLIENTE='+QuotedStr(Edit3.Text);
          if Edit2.Text<>'' then Where:=Where+' and VED_VENDEDOR='+QuotedStr(Edit1.Text);
          if ComboBox4.Text='ABERTAS' then Where:=Where+' and VED_STATUS='+QuotedStr('A');
          if ComboBox4.Text='CANCELADAS' then Where:=Where+' and VED_STATUS='+QuotedStr('C');
          if ComboBox4.Text='FINALIZADAS' then Where:=Where+' and VED_STATUS='+QuotedStr('F');
          if ComboBox4.Text='INUTILIZADAS' then Where:=Where+' and VED_STATUS='+QuotedStr('I');
          if ComboBox6.Text='SIM - ABERTOS' then Where:=Where+' and (VED_VIAINTERNET='+QuotedStr('S')+' and VED_VIAINTERNETSTATUS='+QuotedStr('A')+')';
          if ComboBox6.Text='SIM - FINALIZADOS' then Where:=Where+' and (VED_VIAINTERNET='+QuotedStr('S')+' and VED_VIAINTERNETSTATUS='+QuotedStr('F')+')';
          if ComboBox6.Text='NAO' then Where:=Where+' and VED_VIAINTERNET='+QuotedStr('N');
          if ComboBox7.Text='SIM' then Where:=Where+' and VED_ENTREGUE='+QuotedStr('S');
          if ComboBox7.Text='NAO' then Where:=Where+' and VED_ENTREGUE='+QuotedStr('N');
          Application.CreateForm(TFormVendasFast, FormVendasFast);
          FormVendasFast.QY10.Close;
          FormVendasFast.QY10.SQL.Clear;
          FormVendasFast.QY10.SQL.Add(
            'select VED_CLIENTE, VED_CODIGO, VED_CONDICAO, VED_DTEMISSAO, VED_NOME, VED_VALORTOTAL, VED_VENDEDOR, CPG_DESCRICAO, VEN_NOME from VENDAS '+
            'left join CONDICOES on VED_CONDICAO=CPG_CODIGO '+
            'left join VENDEDORES on VED_VENDEDOR=VEN_CODIGO '+
            'where VED_DTEMISSAO between :datainicial and :datafinal '+Where+' '+
            'order by CPG_DESCRICAO, VED_DTEMISSAO, VED_NOME');
          FormVendasFast.QY10.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
          FormVendasFast.QY10.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
          FormVendasFast.QY10.Open;
          FormVendasFast.frxReport10.Variables['TITULO']:=QuotedStr('Vendas por condição de pagamento sintético');
          FormVendasFast.frxReport10.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
          FormVendasFast.frxReport10.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
          FormVendasFast.frxReport10.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
          FormVendasFast.frxReport10.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
          FormVendasFast.frxReport10.Variables['DATAINICIAL']:=QuotedStr(MaskEdit1.Text);
          FormVendasFast.frxReport10.Variables['DATAFINAL']:=QuotedStr(MaskEdit2.Text);
          FormVendasFast.frxReport10.Variables['VED_ENTREGUE']:=QuotedStr(ComboBox7.Text);
          FormVendasFast.frxReport10.Variables['VED_STATUS']:=QuotedStr(ComboBox4.Text);
          FormVendasFast.frxReport10.Variables['VED_VIAINTERNET']:=QuotedStr(ComboBox6.Text);
          FormVendasFast.frxReport10.Variables['CPG_CODIGO']:=QuotedStr(Edit13.Text);
          FormVendasFast.frxReport10.Variables['CPG_DESCRICAO']:=QuotedStr(Edit14.Text);
          FormVendasFast.frxReport10.Variables['VEN_CODIGO']:=QuotedStr(Edit1.Text);
          FormVendasFast.frxReport10.Variables['VEN_NOME']:=QuotedStr(Edit2.Text);
          FormVendasFast.frxReport10.ShowReport;
          FormVendasFast.Free;
          FormVendasFast:=nil;
          {$ENDREGION}
        end;
    19: begin
          {$REGION 'Vendas por condição de pagamento sintético'}
          if Edit14.Text<>'' then Where:=Where+' and VED_CONDICAO='+QuotedStr(Edit13.Text);
          if Edit4.Text<>'' then Where:=Where+' and VED_CLIENTE='+QuotedStr(Edit3.Text);
          if Edit2.Text<>'' then Where:=Where+' and VED_VENDEDOR='+QuotedStr(Edit1.Text);
          if ComboBox4.Text='ABERTAS' then Where:=Where+' and VED_STATUS='+QuotedStr('A');
          if ComboBox4.Text='CANCELADAS' then Where:=Where+' and VED_STATUS='+QuotedStr('C');
          if ComboBox4.Text='FINALIZADAS' then Where:=Where+' and VED_STATUS='+QuotedStr('F');
          if ComboBox4.Text='INUTILIZADAS' then Where:=Where+' and VED_STATUS='+QuotedStr('I');
          if ComboBox6.Text='SIM - ABERTOS' then Where:=Where+' and (VED_VIAINTERNET='+QuotedStr('S')+' and VED_VIAINTERNETSTATUS='+QuotedStr('A')+')';
          if ComboBox6.Text='SIM - FINALIZADOS' then Where:=Where+' and (VED_VIAINTERNET='+QuotedStr('S')+' and VED_VIAINTERNETSTATUS='+QuotedStr('F')+')';
          if ComboBox6.Text='NAO' then Where:=Where+' and VED_VIAINTERNET='+QuotedStr('N');
          if ComboBox7.Text='SIM' then Where:=Where+' and VED_ENTREGUE='+QuotedStr('S');
          if ComboBox7.Text='NAO' then Where:=Where+' and VED_ENTREGUE='+QuotedStr('N');
          Application.CreateForm(TFormVendasFast, FormVendasFast);
          FormVendasFast.QY09.Close;
          FormVendasFast.QY09.SQL.Clear;
          FormVendasFast.QY09.SQL.Add(
            'select sum(VED_VALORTOTAL) as TOTAL, VED_CONDICAO, VED_VENDEDOR, CPG_DESCRICAO, VEN_NOME from VENDAS '+
            'left join CONDICOES on VED_CONDICAO=CPG_CODIGO '+
            'left join VENDEDORES on VED_VENDEDOR=VEN_CODIGO '+
            'where VED_DTEMISSAO between :datainicial and :datafinal '+Where+' '+
            'group by VED_CONDICAO, CPG_DESCRICAO, VED_VENDEDOR, VEN_NOME '+
            'order by CPG_DESCRICAO, VEN_NOME');
          FormVendasFast.QY09.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
          FormVendasFast.QY09.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
          FormVendasFast.QY09.Open;
          FormVendasFast.frxReport9.Variables['TITULO']:=QuotedStr('Vendas por condição de pagamento sintético');
          FormVendasFast.frxReport9.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
          FormVendasFast.frxReport9.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
          FormVendasFast.frxReport9.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
          FormVendasFast.frxReport9.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
          FormVendasFast.frxReport9.Variables['DATAINICIAL']:=QuotedStr(MaskEdit1.Text);
          FormVendasFast.frxReport9.Variables['DATAFINAL']:=QuotedStr(MaskEdit2.Text);
          FormVendasFast.frxReport9.Variables['VED_ENTREGUE']:=QuotedStr(ComboBox7.Text);
          FormVendasFast.frxReport9.Variables['VED_STATUS']:=QuotedStr(ComboBox4.Text);
          FormVendasFast.frxReport9.Variables['VED_VIAINTERNET']:=QuotedStr(ComboBox6.Text);
          FormVendasFast.frxReport9.Variables['CPG_CODIGO']:=QuotedStr(Edit13.Text);
          FormVendasFast.frxReport9.Variables['CPG_DESCRICAO']:=QuotedStr(Edit14.Text);
          FormVendasFast.frxReport9.Variables['VEN_CODIGO']:=QuotedStr(Edit1.Text);
          FormVendasFast.frxReport9.Variables['VEN_NOME']:=QuotedStr(Edit2.Text);
          FormVendasFast.frxReport9.ShowReport;
          FormVendasFast.Free;
          FormVendasFast:=nil;
          {$ENDREGION}
        end;
    20: begin
          {$REGION 'Vendas por família'}
          if Edit4.Text<>'' then Where:=Where+' and VED_CLIENTE='+QuotedStr(Edit3.Text);
          if Edit2.Text<>'' then Where:=Where+' and VED_VENDEDOR='+QuotedStr(Edit1.Text);
          if Edit16.Text<>'' then Where:=Where+' and PRO_FAMILIA='+QuotedStr(Edit15.Text);
          if Edit9.Text<>'' then Where:=Where+' and VEI_PRODUTO='+QuotedStr(Edit8.Text);
          if ComboBox4.Text='ABERTAS' then Where:=Where+' and VED_STATUS='+QuotedStr('A');
          if ComboBox4.Text='CANCELADAS' then Where:=Where+' and VED_STATUS='+QuotedStr('C');
          if ComboBox4.Text='FINALIZADAS' then Where:=Where+' and VED_STATUS='+QuotedStr('F');
          if ComboBox4.Text='INUTILIZADAS' then Where:=Where+' and VED_STATUS='+QuotedStr('I');
          if ComboBox6.Text='SIM - ABERTOS' then Where:=Where+' and (VED_VIAINTERNET='+QuotedStr('S')+' and VED_VIAINTERNETSTATUS='+QuotedStr('A')+')';
          if ComboBox6.Text='SIM - FINALIZADOS' then Where:=Where+' and (VED_VIAINTERNET='+QuotedStr('S')+' and VED_VIAINTERNETSTATUS='+QuotedStr('F')+')';
          if ComboBox6.Text='NAO' then Where:=Where+' and VED_VIAINTERNET='+QuotedStr('N');
          if ComboBox7.Text='SIM' then Where:=Where+' and VED_ENTREGUE='+QuotedStr('S');
          if ComboBox7.Text='NAO' then Where:=Where+' and VED_ENTREGUE='+QuotedStr('N');
          Application.CreateForm(TFormVendasFast, FormVendasFast);
          FormVendasFast.QY06.Close;
          FormVendasFast.QY06.SQL.Clear;
          FormVendasFast.QY06.SQL.Add(
            'select VEI_DESCRICAO, VEI_DESCVALOR, VEI_PRODUTO, VEI_QUANTIDADE, VEI_VALORTOTAL, VEI_VALORUNIT, VEI_VENDA, '+
            'VED_NOME, VED_CLIENTE, VED_VENDEDOR, VED_DTEMISSAO, PRO_FAMILIA, FAM_DESCRICAO from VENDASITENS '+
            'left join VENDAS on VEI_VENDA=VED_CODIGO '+
            'left join PRODUTOS on VEI_PRODUTO=PRO_CODIGO '+
            'left join FAMILIAS on PRO_FAMILIA=FAM_CODIGO '+
            'where VED_DTEMISSAO between :datainicial and :datafinal '+Where+' '+
            'order by FAM_DESCRICAO, VEI_DESCRICAO, VED_NOME, VED_CODIGO desc');
          FormVendasFast.QY06.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
          FormVendasFast.QY06.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
          FormVendasFast.QY06.Open;
          FormVendasFast.frxReport6.Variables['TITULO']:=QuotedStr('Vendas por família');
          FormVendasFast.frxReport6.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
          FormVendasFast.frxReport6.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
          FormVendasFast.frxReport6.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
          FormVendasFast.frxReport6.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
          FormVendasFast.frxReport6.Variables['DATAINICIAL']:=QuotedStr(MaskEdit1.Text);
          FormVendasFast.frxReport6.Variables['DATAFINAL']:=QuotedStr(MaskEdit2.Text);
          FormVendasFast.frxReport6.Variables['VED_ENTREGUE']:=QuotedStr(ComboBox7.Text);
          FormVendasFast.frxReport6.Variables['VED_STATUS']:=QuotedStr(ComboBox4.Text);
          FormVendasFast.frxReport6.Variables['VED_VIAINTERNET']:=QuotedStr(ComboBox6.Text);
          FormVendasFast.frxReport6.Variables['CLI_CODIGO']:=QuotedStr(Edit3.Text);
          FormVendasFast.frxReport6.Variables['CLI_NOME']:=QuotedStr(Edit4.Text);
          FormVendasFast.frxReport6.Variables['FAM_CODIGO']:=QuotedStr(Edit15.Text);
          FormVendasFast.frxReport6.Variables['FAM_DESCRICAO']:=QuotedStr(Edit16.Text);
          FormVendasFast.frxReport6.Variables['PRO_CODIGO']:=QuotedStr(Edit8.Text);
          FormVendasFast.frxReport6.Variables['PRO_NOME']:=QuotedStr(Edit9.Text);
          FormVendasFast.frxReport6.Variables['VEN_CODIGO']:=QuotedStr(Edit1.Text);
          FormVendasFast.frxReport6.Variables['VEN_NOME']:=QuotedStr(Edit2.Text);
          FormVendasFast.frxReport6.ShowReport;
          FormVendasFast.Free;
          FormVendasFast:=nil;
          {$ENDREGION}
        end;
    21: begin
          {$REGION 'Vendas por grupo'}
          if Edit4.Text<>'' then Where:=Where+' and VED_CLIENTE='+QuotedStr(Edit3.Text);
          if Edit2.Text<>'' then Where:=Where+' and VED_VENDEDOR='+QuotedStr(Edit1.Text);
          if Edit6.Text<>'' then Where:=Where+' and PRO_GRUPO='+QuotedStr(Edit5.Text);
          if Edit9.Text<>'' then Where:=Where+' and VEI_PRODUTO='+QuotedStr(Edit8.Text);
          if Edit20.Text<>'' then Where:=Where+' and VED_ESTADOCODIGO='+QuotedStr(Edit19.Text);
          if ComboBox4.Text='ABERTAS' then Where:=Where+' and VED_STATUS='+QuotedStr('A');
          if ComboBox4.Text='CANCELADAS' then Where:=Where+' and VED_STATUS='+QuotedStr('C');
          if ComboBox4.Text='FINALIZADAS' then Where:=Where+' and VED_STATUS='+QuotedStr('F');
          if ComboBox4.Text='INUTILIZADAS' then Where:=Where+' and VED_STATUS='+QuotedStr('I');
          if ComboBox6.Text='SIM - ABERTOS' then Where:=Where+' and (VED_VIAINTERNET='+QuotedStr('S')+' and VED_VIAINTERNETSTATUS='+QuotedStr('A')+')';
          if ComboBox6.Text='SIM - FINALIZADOS' then Where:=Where+' and (VED_VIAINTERNET='+QuotedStr('S')+' and VED_VIAINTERNETSTATUS='+QuotedStr('F')+')';
          if ComboBox6.Text='NAO' then Where:=Where+' and VED_VIAINTERNET='+QuotedStr('N');
          if ComboBox7.Text='SIM' then Where:=Where+' and VED_ENTREGUE='+QuotedStr('S');
          if ComboBox7.Text='NAO' then Where:=Where+' and VED_ENTREGUE='+QuotedStr('N');
          Application.CreateForm(TFormVendasFast, FormVendasFast);
          FormVendasFast.QY05.Close;
          FormVendasFast.QY05.SQL.Clear;
          FormVendasFast.QY05.SQL.Add(
            'select VEI_DESCRICAO, VEI_DESCVALOR, VEI_PRODUTO, VEI_QUANTIDADE, VEI_VALORTOTAL, VEI_VALORUNIT, VEI_VENDA, '+
            'VED_NOME, VED_CLIENTE, VED_VENDEDOR, VED_DTEMISSAO, PRO_GRUPO, GRU_DESCRICAO from VENDASITENS '+
            'left join VENDAS on VEI_VENDA=VED_CODIGO '+
            'left join PRODUTOS on VEI_PRODUTO=PRO_CODIGO '+
            'left join GRUPOS on PRO_GRUPO=GRU_CODIGO '+
            'where VED_DTEMISSAO between :datainicial and :datafinal '+Where+' '+
            'order by GRU_DESCRICAO, VEI_DESCRICAO, VED_NOME, VED_CODIGO desc');
          FormVendasFast.QY05.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
          FormVendasFast.QY05.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
          FormVendasFast.QY05.Open;
          FormVendasFast.frxReport5.Variables['TITULO']:=QuotedStr('Vendas por grupo');
          FormVendasFast.frxReport5.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
          FormVendasFast.frxReport5.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
          FormVendasFast.frxReport5.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
          FormVendasFast.frxReport5.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
          FormVendasFast.frxReport5.Variables['DATAINICIAL']:=QuotedStr(MaskEdit1.Text);
          FormVendasFast.frxReport5.Variables['DATAFINAL']:=QuotedStr(MaskEdit2.Text);
          FormVendasFast.frxReport5.Variables['VED_ENTREGUE']:=QuotedStr(ComboBox7.Text);
          FormVendasFast.frxReport5.Variables['VED_STATUS']:=QuotedStr(ComboBox4.Text);
          FormVendasFast.frxReport5.Variables['VED_VIAINTERNET']:=QuotedStr(ComboBox6.Text);
          FormVendasFast.frxReport5.Variables['CLI_CODIGO']:=QuotedStr(Edit3.Text);
          FormVendasFast.frxReport5.Variables['CLI_NOME']:=QuotedStr(Edit4.Text);
          FormVendasFast.frxReport5.Variables['GRU_CODIGO']:=QuotedStr(Edit5.Text);
          FormVendasFast.frxReport5.Variables['GRU_DESCRICAO']:=QuotedStr(Edit6.Text);
          FormVendasFast.frxReport5.Variables['PRO_CODIGO']:=QuotedStr(Edit8.Text);
          FormVendasFast.frxReport5.Variables['PRO_NOME']:=QuotedStr(Edit9.Text);
          FormVendasFast.frxReport5.Variables['VEN_CODIGO']:=QuotedStr(Edit1.Text);
          FormVendasFast.frxReport5.Variables['VEN_NOME']:=QuotedStr(Edit2.Text);
          FormVendasFast.frxReport5.Variables['ESD_CODIGO']:=QuotedStr(Edit19.Text);
          FormVendasFast.frxReport5.Variables['ESD_NOME']:=QuotedStr(Edit20.Text);
          FormVendasFast.frxReport5.ShowReport;
          FormVendasFast.Free;
          FormVendasFast:=nil;
          {$ENDREGION}
        end;
    22: begin
          {$REGION 'Vendas por marca'}
          if Edit4.Text<>'' then Where:=Where+' and VED_CLIENTE='+QuotedStr(Edit3.Text);
          if Edit2.Text<>'' then Where:=Where+' and VED_VENDEDOR='+QuotedStr(Edit1.Text);
          if Edit12.Text<>'' then Where:=Where+' and PRO_MARCA='+QuotedStr(Edit11.Text);
          if Edit9.Text<>'' then Where:=Where+' and VEI_PRODUTO='+QuotedStr(Edit8.Text);
          if ComboBox4.Text='ABERTAS' then Where:=Where+' and VED_STATUS='+QuotedStr('A');
          if ComboBox4.Text='CANCELADAS' then Where:=Where+' and VED_STATUS='+QuotedStr('C');
          if ComboBox4.Text='FINALIZADAS' then Where:=Where+' and VED_STATUS='+QuotedStr('F');
          if ComboBox4.Text='INUTILIZADAS' then Where:=Where+' and VED_STATUS='+QuotedStr('I');
          if ComboBox6.Text='SIM - ABERTOS' then Where:=Where+' and (VED_VIAINTERNET='+QuotedStr('S')+' and VED_VIAINTERNETSTATUS='+QuotedStr('A')+')';
          if ComboBox6.Text='SIM - FINALIZADOS' then Where:=Where+' and (VED_VIAINTERNET='+QuotedStr('S')+' and VED_VIAINTERNETSTATUS='+QuotedStr('F')+')';
          if ComboBox6.Text='NAO' then Where:=Where+' and VED_VIAINTERNET='+QuotedStr('N');
          if ComboBox7.Text='SIM' then Where:=Where+' and VED_ENTREGUE='+QuotedStr('S');
          if ComboBox7.Text='NAO' then Where:=Where+' and VED_ENTREGUE='+QuotedStr('N');
          Application.CreateForm(TFormVendasFast, FormVendasFast);
          FormVendasFast.QY07.Close;
          FormVendasFast.QY07.SQL.Clear;
          FormVendasFast.QY07.SQL.Add(
            'select VEI_DESCRICAO, VEI_DESCVALOR, VEI_PRODUTO, VEI_QUANTIDADE, VEI_VALORTOTAL, VEI_VALORUNIT, VEI_VENDA, '+
            'VED_NOME, VED_CLIENTE, VED_VENDEDOR, VED_DTEMISSAO, PRO_MARCA, MAR_DESCRICAO from VENDASITENS '+
            'left join VENDAS on VEI_VENDA=VED_CODIGO '+
            'left join PRODUTOS on VEI_PRODUTO=PRO_CODIGO '+
            'left join MARCAS on PRO_MARCA=MAR_CODIGO '+
            'where VED_DTEMISSAO between :datainicial and :datafinal '+Where+' '+
            'order by MAR_DESCRICAO, VEI_DESCRICAO, VED_NOME, VED_CODIGO desc');
          FormVendasFast.QY07.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
          FormVendasFast.QY07.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
          FormVendasFast.QY07.Open;
          FormVendasFast.frxReport7.Variables['TITULO']:=QuotedStr('Vendas por marca');
          FormVendasFast.frxReport7.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
          FormVendasFast.frxReport7.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
          FormVendasFast.frxReport7.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
          FormVendasFast.frxReport7.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
          FormVendasFast.frxReport7.Variables['DATAINICIAL']:=QuotedStr(MaskEdit1.Text);
          FormVendasFast.frxReport7.Variables['DATAFINAL']:=QuotedStr(MaskEdit2.Text);
          FormVendasFast.frxReport7.Variables['VED_ENTREGUE']:=QuotedStr(ComboBox7.Text);
          FormVendasFast.frxReport7.Variables['VED_STATUS']:=QuotedStr(ComboBox4.Text);
          FormVendasFast.frxReport7.Variables['VED_VIAINTERNET']:=QuotedStr(ComboBox6.Text);
          FormVendasFast.frxReport7.Variables['CLI_CODIGO']:=QuotedStr(Edit3.Text);
          FormVendasFast.frxReport7.Variables['CLI_NOME']:=QuotedStr(Edit4.Text);
          FormVendasFast.frxReport7.Variables['MAR_CODIGO']:=QuotedStr(Edit11.Text);
          FormVendasFast.frxReport7.Variables['MAR_DESCRICAO']:=QuotedStr(Edit12.Text);
          FormVendasFast.frxReport7.Variables['PRO_CODIGO']:=QuotedStr(Edit8.Text);
          FormVendasFast.frxReport7.Variables['PRO_NOME']:=QuotedStr(Edit9.Text);
          FormVendasFast.frxReport7.Variables['VEN_CODIGO']:=QuotedStr(Edit1.Text);
          FormVendasFast.frxReport7.Variables['VEN_NOME']:=QuotedStr(Edit2.Text);
          FormVendasFast.frxReport7.ShowReport;
          FormVendasFast.Free;
          FormVendasFast:=nil;
          {$ENDREGION}
        end;
    23: begin
          {$REGION 'Vendas por produto'}
          if Edit2.Text<>'' then Where:=Where+' and VED_VENDEDOR='+QuotedStr(Edit1.Text);
          if Edit9.Text<>'' then Where:=Where+' and VEI_PRODUTO='+QuotedStr(Edit8.Text);
          if ComboBox4.Text='ABERTAS' then Where:=Where+' and VED_STATUS='+QuotedStr('A');
          if ComboBox4.Text='CANCELADAS' then Where:=Where+' and VED_STATUS='+QuotedStr('C');
          if ComboBox4.Text='FINALIZADAS' then Where:=Where+' and VED_STATUS='+QuotedStr('F');
          if ComboBox4.Text='INUTILIZADAS' then Where:=Where+' and VED_STATUS='+QuotedStr('I');
          Application.CreateForm(TFormVendasFast, FormVendasFast);
          FormVendasFast.QY13.Close;
          FormVendasFast.QY13.SQL.Clear;
          FormVendasFast.QY13.SQL.Add(
            'select VEI_PRECOCUSTO, VEI_PRODUTO, VEI_QUANTIDADE, VEI_VALORTOTAL, VEI_VALORUNIT, VED_CLIENTE, '+
            'VED_CODIGO, VED_DTEMISSAO, VED_NFE, VED_NOME, VED_STATUS, VED_VALORTOTAL, PRO_NOME from VENDASITENS '+
            'left join VENDAS on VEI_VENDA=VED_CODIGO '+
            'left join PRODUTOS on VEI_PRODUTO=PRO_CODIGO '+
            'where VED_DTEMISSAO between :datainicial and :datafinal '+Where+' '+
            'order by PRO_NOME, VED_DTEMISSAO');
          FormVendasFast.QY13.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
          FormVendasFast.QY13.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
          FormVendasFast.QY13.Open;
          FormVendasFast.frxReport13.Variables['TITULO']:=QuotedStr('Vendas por produto');
          FormVendasFast.frxReport13.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
          FormVendasFast.frxReport13.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
          FormVendasFast.frxReport13.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
          FormVendasFast.frxReport13.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
          FormVendasFast.frxReport13.Variables['DATAINICIAL']:=QuotedStr(MaskEdit1.Text);
          FormVendasFast.frxReport13.Variables['DATAFINAL']:=QuotedStr(MaskEdit2.Text);
          FormVendasFast.frxReport13.Variables['VED_STATUS']:=QuotedStr(ComboBox4.Text);
          FormVendasFast.frxReport13.Variables['PRO_CODIGO']:=QuotedStr(Edit8.Text);
          FormVendasFast.frxReport13.Variables['PRO_NOME']:=QuotedStr(Edit9.Text);
          FormVendasFast.frxReport13.Variables['VEN_CODIGO']:=QuotedStr(Edit1.Text);
          FormVendasFast.frxReport13.Variables['VEN_NOME']:=QuotedStr(Edit2.Text);
          FormVendasFast.frxReport13.ShowReport;
          FormVendasFast.Free;
          FormVendasFast:=nil;
          {$ENDREGION}
        end;
    24: begin
          {$REGION 'Vendas por ramo de atividade'}
          if ComboBox5.Text='EMISSAO PEDIDO' then Where:=Where+' VED_DTEMISSAO between :datainicial and :datafinal' else
          if ComboBox5.Text='EMISSAO NOTA' then Where:=Where+' NFE_DTEMISSAO between :datainicial and :datafinal' else
          if ComboBox5.Text='DATA ENTREGA' then Where:=Where+' VED_DTENTREGA between :datainicial and :datafinal';
          if Edit4.Text<>'' then Where:=Where+' and VED_CLIENTE='+QuotedStr(Edit3.Text);
          if Edit2.Text<>'' then Where:=Where+' and VED_VENDEDOR='+QuotedStr(Edit1.Text);
          if Edit22.Text<>'' then Where:=Where+' and CLI_ATIVIDADE='+QuotedStr(Edit21.Text);
          if Edit24.Text<>'' then Where:=Where+' and CLI_LOCALTRABALHO='+QuotedStr(Edit23.Text);
          if ComboBox4.Text='ABERTAS' then Where:=Where+' and VED_STATUS='+QuotedStr('A');
          if ComboBox4.Text='CANCELADAS' then Where:=Where+' and VED_STATUS='+QuotedStr('C');
          if ComboBox4.Text='FINALIZADAS' then Where:=Where+' and VED_STATUS='+QuotedStr('F');
          if ComboBox4.Text='INUTILIZADAS' then Where:=Where+' and VED_STATUS='+QuotedStr('I');
          if ComboBox6.Text='SIM - ABERTOS' then Where:=Where+' and (VED_VIAINTERNET='+QuotedStr('S')+' and VED_VIAINTERNETSTATUS='+QuotedStr('A')+')';
          if ComboBox6.Text='SIM - FINALIZADOS' then Where:=Where+' and (VED_VIAINTERNET='+QuotedStr('S')+' and VED_VIAINTERNETSTATUS='+QuotedStr('F')+')';
          if ComboBox6.Text='NAO' then Where:=Where+' and VED_VIAINTERNET='+QuotedStr('N');
          if ComboBox7.Text='SIM' then Where:=Where+' and VED_ENTREGUE='+QuotedStr('S');
          if ComboBox7.Text='NAO' then Where:=Where+' and VED_ENTREGUE='+QuotedStr('N');
          Application.CreateForm(TFormVendasFast, FormVendasFast);
          FormVendasFast.QY08.Close;
          FormVendasFast.QY08.SQL.Clear;
          FormVendasFast.QY08.SQL.Add(
            'select VED_CLIENTE, VED_CODIGO, VED_DTEMISSAO, VED_DESCPORC, VED_FORMAPAGTO, VED_NFE, VED_NOME, VED_STATUS, VED_VALORTOTAL, '+
            'VED_VENDEDOR, VED_VIAINTERNET, VED_VIAINTERNETSTATUS, NFE_DTEMISSAO, CLI_ATIVIDADE, CLI_LOCALTRABALHO, ATI_DESCRICAO, VEN_NOME from VENDAS '+
            'left join CLIENTES on VED_CLIENTE=CLI_CODIGO '+
            'left join ATIVIDADES on CLI_ATIVIDADE=ATI_CODIGO '+
            'left join VENDEDORES on VED_VENDEDOR=VEN_CODIGO '+
            'left join NFE on VED_NFE=NFE_CODIGO '+
            'where '+Where+' '+
            'order by ATI_DESCRICAO, VED_NOME, VED_CODIGO desc');
          FormVendasFast.QY08.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
          FormVendasFast.QY08.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
          FormVendasFast.QY08.Open;
          FormVendasFast.frxReport8.Variables['TITULO']:=QuotedStr('Vendas por ramo de atividade');
          FormVendasFast.frxReport8.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
          FormVendasFast.frxReport8.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
          FormVendasFast.frxReport8.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
          FormVendasFast.frxReport8.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
          FormVendasFast.frxReport8.Variables['DATAINICIAL']:=QuotedStr(MaskEdit1.Text);
          FormVendasFast.frxReport8.Variables['DATAFINAL']:=QuotedStr(MaskEdit2.Text);
          FormVendasFast.frxReport8.Variables['DATA']:=QuotedStr(ComboBox5.Text);
          FormVendasFast.frxReport8.Variables['VED_ENTREGUE']:=QuotedStr(ComboBox7.Text);
          FormVendasFast.frxReport8.Variables['VED_STATUS']:=QuotedStr(ComboBox4.Text);
          FormVendasFast.frxReport8.Variables['VED_VIAINTERNET']:=QuotedStr(ComboBox6.Text);
          FormVendasFast.frxReport8.Variables['CLI_CODIGO']:=QuotedStr(Edit3.Text);
          FormVendasFast.frxReport8.Variables['CLI_NOME']:=QuotedStr(Edit4.Text);
          FormVendasFast.frxReport8.Variables['VEN_CODIGO']:=QuotedStr(Edit1.Text);
          FormVendasFast.frxReport8.Variables['VEN_NOME']:=QuotedStr(Edit2.Text);
          FormVendasFast.frxReport8.Variables['ATI_CODIGO']:=QuotedStr(Edit21.Text);
          FormVendasFast.frxReport8.Variables['ATI_DESCRICAO']:=QuotedStr(Edit22.Text);
          FormVendasFast.frxReport8.Variables['LCA_CODIGO']:=QuotedStr(Edit23.Text);
          FormVendasFast.frxReport8.Variables['LCA_DESCRICAO']:=QuotedStr(Edit24.Text);
          FormVendasFast.frxReport8.ShowReport;
          FormVendasFast.Free;
          FormVendasFast:=nil;
          {$ENDREGION}
        end;
    25: begin
          {$REGION 'Vendas por vendedor analitico'}
          if ComboBox5.Text='EMISSAO PEDIDO' then Where:=Where+' VED_DTEMISSAO between :datainicial and :datafinal' else
          if ComboBox5.Text='EMISSAO NOTA' then Where:=Where+' NFE_DTEMISSAO between :datainicial and :datafinal' else
          if ComboBox5.Text='DATA ENTREGA' then Where:=Where+' VED_DTENTREGA between :datainicial and :datafinal';
          if Edit4.Text<>'' then Where:=Where+' and VED_CLIENTE='+QuotedStr(Edit3.Text);
          if Edit2.Text<>'' then Where:=Where+' and VED_VENDEDOR='+QuotedStr(Edit1.Text);
          if Edit24.Text<>'' then Where:=Where+' and CLI_LOCALTRABALHO='+QuotedStr(Edit23.Text);
          if ComboBox4.Text='ABERTAS' then Where:=Where+' and VED_STATUS='+QuotedStr('A');
          if ComboBox4.Text='CANCELADAS' then Where:=Where+' and VED_STATUS='+QuotedStr('C');
          if ComboBox4.Text='FINALIZADAS' then Where:=Where+' and VED_STATUS='+QuotedStr('F');
          if ComboBox4.Text='INUTILIZADAS' then Where:=Where+' and VED_STATUS='+QuotedStr('I');
          if ComboBox6.Text='SIM - ABERTOS' then Where:=Where+' and (VED_VIAINTERNET='+QuotedStr('S')+' and VED_VIAINTERNETSTATUS='+QuotedStr('A')+')';
          if ComboBox6.Text='SIM - FINALIZADOS' then Where:=Where+' and (VED_VIAINTERNET='+QuotedStr('S')+' and VED_VIAINTERNETSTATUS='+QuotedStr('F')+')';
          if ComboBox6.Text='NAO' then Where:=Where+' and VED_VIAINTERNET='+QuotedStr('N');
          if ComboBox7.Text='SIM' then Where:=Where+' and VED_ENTREGUE='+QuotedStr('S');
          if ComboBox7.Text='NAO' then Where:=Where+' and VED_ENTREGUE='+QuotedStr('N');
          if ComboBox8.Text='ENTRADA' then Where:=Where+' and VED_ENTRADASAIDA='+QuotedStr('E');
          if ComboBox8.Text='SAIDA' then Where:=Where+' and VED_ENTRADASAIDA='+QuotedStr('S');

          Application.CreateForm(TFormVendasFast, FormVendasFast);
          FormVendasFast.QY04.Close;
          FormVendasFast.QY04.SQL.Clear;
          FormVendasFast.QY04.SQL.Add(
            'select VED_CLIENTE, VED_CODIGO, VED_DTEMISSAO, VED_DESCPORC, VED_FORMAPAGTO, VED_NFE, VED_NOME, VED_STATUS, VED_TOTALITENS, '+
            'VED_VALORTOTAL, VED_VENDEDOR, VED_VIAINTERNET, VED_VIAINTERNETSTATUS, CLI_FANTASIA, NFE_DTEMISSAO, VEN_NOME, '+
            'case when CLI_DTCADASTRO between :datainicial and :datafinal then true else false end as NOVO from VENDAS '+
            'left join CLIENTES on VED_CLIENTE=CLI_CODIGO '+
            'left join VENDEDORES on VED_VENDEDOR=VEN_CODIGO '+
            'left join NFE on VED_NFE=NFE_CODIGO '+
            'where '+Where+' '+
            'order by VEN_NOME, VED_NOME, VED_DTEMISSAO desc');
          FormVendasFast.QY04.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
          FormVendasFast.QY04.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
          FormVendasFast.QY04.Open;
          FormVendasFast.frxReport4.Variables['TITULO']:=QuotedStr('Vendas por vendedor analítico');
          FormVendasFast.frxReport4.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
          FormVendasFast.frxReport4.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
          FormVendasFast.frxReport4.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
          FormVendasFast.frxReport4.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
          FormVendasFast.frxReport4.Variables['DATAINICIAL']:=QuotedStr(MaskEdit1.Text);
          FormVendasFast.frxReport4.Variables['DATAFINAL']:=QuotedStr(MaskEdit2.Text);
          FormVendasFast.frxReport4.Variables['DATA']:=QuotedStr(ComboBox5.Text);
          FormVendasFast.frxReport4.Variables['VED_ENTREGUE']:=QuotedStr(ComboBox7.Text);
          FormVendasFast.frxReport4.Variables['VED_STATUS']:=QuotedStr(ComboBox4.Text);
          FormVendasFast.frxReport4.Variables['VED_VIAINTERNET']:=QuotedStr(ComboBox6.Text);
          FormVendasFast.frxReport4.Variables['VED_ENTRADASAIDA']:=QuotedStr(ComboBox8.Text);
          FormVendasFast.frxReport4.Variables['CLI_CODIGO']:=QuotedStr(Edit3.Text);
          FormVendasFast.frxReport4.Variables['CLI_NOME']:=QuotedStr(Edit4.Text);
          FormVendasFast.frxReport4.Variables['VEN_CODIGO']:=QuotedStr(Edit1.Text);
          FormVendasFast.frxReport4.Variables['VEN_NOME']:=QuotedStr(Edit2.Text);
          FormVendasFast.frxReport4.Variables['FANTASIA']:=QuotedStr(DM.TBParametrosPAR_IMPRIMIRNOMEFANTASIA.Value);
          FormVendasFast.frxReport4.Variables['LCA_CODIGO']:=QuotedStr(Edit23.Text);
          FormVendasFast.frxReport4.Variables['LCA_DESCRICAO']:=QuotedStr(Edit24.Text);
          FormVendasFast.frxReport4.ShowReport;
          FormVendasFast.Free;
          FormVendasFast:=nil;
          {$ENDREGION}
        end;
    26: begin
          {$REGION 'Vendas por vendedor e cidade'}
          if Edit2.Text<>'' then Where:=Where+' and VED_VENDEDOR='+QuotedStr(Edit1.Text);
          if Edit4.Text<>'' then Where:=Where+' and VED_CLIENTE='+QuotedStr(Edit3.Text);
          if Edit18.Text<>'' then Where:=Where+' and VED_CIDADECODIGO='+QuotedStr(Edit17.Text);
          if ComboBox4.Text='ABERTAS' then Where:=Where+' and VED_STATUS='+QuotedStr('A');
          if ComboBox4.Text='CANCELADAS' then Where:=Where+' and VED_STATUS='+QuotedStr('C');
          if ComboBox4.Text='FINALIZADAS' then Where:=Where+' and VED_STATUS='+QuotedStr('F');
          if ComboBox4.Text='INUTILIZADAS' then Where:=Where+' and VED_STATUS='+QuotedStr('I');
          Application.CreateForm(TFormVendasFast, FormVendasFast);
          FormVendasFast.QY19.Close;
          FormVendasFast.QY19.SQL.Clear;
          FormVendasFast.QY19.SQL.Add(
            'select VED_CIDADE, VED_CIDADECODIGO, VED_CLIENTE, VED_CODIGO, VED_DESCPORC, VED_DTEMISSAO, VED_FORMAPAGTO, '+
            'VED_NOME, VED_TOTALITENS, VED_VALORTOTAL, VED_VENDEDOR, VEN_NOME from VENDAS '+
            'left join VENDEDORES on VED_VENDEDOR=VEN_CODIGO '+
            'where VED_DTEMISSAO between :datainicial and :datafinal '+Where+' '+
            'order by VEN_NOME, VED_CIDADE, VED_NOME, VED_CODIGO desc');
          FormVendasFast.QY19.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
          FormVendasFast.QY19.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
          FormVendasFast.QY19.Open;
          FormVendasFast.frxReport19.Variables['TITULO']:=QuotedStr('Vendas por vendedor e cidade');
          FormVendasFast.frxReport19.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
          FormVendasFast.frxReport19.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
          FormVendasFast.frxReport19.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
          FormVendasFast.frxReport19.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
          FormVendasFast.frxReport19.Variables['DATAINICIAL']:=QuotedStr(MaskEdit1.Text);
          FormVendasFast.frxReport19.Variables['DATAFINAL']:=QuotedStr(MaskEdit2.Text);
          FormVendasFast.frxReport19.Variables['VED_STATUS']:=QuotedStr(ComboBox4.Text);
          FormVendasFast.frxReport19.Variables['CID_CODIGO']:=QuotedStr(Edit17.Text);
          FormVendasFast.frxReport19.Variables['CID_NOME']:=QuotedStr(Edit18.Text);
          FormVendasFast.frxReport19.Variables['CLI_CODIGO']:=QuotedStr(Edit3.Text);
          FormVendasFast.frxReport19.Variables['CLI_NOME']:=QuotedStr(Edit4.Text);
          FormVendasFast.frxReport19.Variables['VEN_CODIGO']:=QuotedStr(Edit1.Text);
          FormVendasFast.frxReport19.Variables['VEN_NOME']:=QuotedStr(Edit2.Text);
          FormVendasFast.frxReport19.ShowReport;
          FormVendasFast.Free;
          FormVendasFast:=nil;
          {$ENDREGION}
        end;
    27: begin
          {$REGION 'Vendas por vendedor e estado'}
          if Edit2.Text<>'' then Where:=Where+' and VED_VENDEDOR='+QuotedStr(Edit1.Text);
          if Edit4.Text<>'' then Where:=Where+' and VED_CLIENTE='+QuotedStr(Edit3.Text);
          if Edit20.Text<>'' then Where:=Where+' and VED_ESTADOCODIGO='+QuotedStr(Edit19.Text);
          if ComboBox4.Text='ABERTAS' then Where:=Where+' and VED_STATUS='+QuotedStr('A');
          if ComboBox4.Text='CANCELADAS' then Where:=Where+' and VED_STATUS='+QuotedStr('C');
          if ComboBox4.Text='FINALIZADAS' then Where:=Where+' and VED_STATUS='+QuotedStr('F');
          if ComboBox4.Text='INUTILIZADAS' then Where:=Where+' and VED_STATUS='+QuotedStr('I');
          Application.CreateForm(TFormVendasFast, FormVendasFast);
          FormVendasFast.QY20.Close;
          FormVendasFast.QY20.SQL.Clear;
          FormVendasFast.QY20.SQL.Add(
            'select VED_CIDADE, VED_CIDADECODIGO, VED_CLIENTE, VED_CODIGO, VED_DESCPORC, VED_DTEMISSAO, VED_ESTADO, VED_ESTADOCODIGO, '+
            'VED_FORMAPAGTO, VED_NOME, VED_TOTALITENS, VED_VALORTOTAL, VED_VENDEDOR, VEN_NOME from VENDAS '+
            'left join VENDEDORES on VED_VENDEDOR=VEN_CODIGO '+
            'where VED_DTEMISSAO between :datainicial and :datafinal '+Where+' '+
            'order by VEN_NOME, VED_ESTADO, VED_NOME, VED_CODIGO desc');
          FormVendasFast.QY20.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
          FormVendasFast.QY20.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
          FormVendasFast.QY20.Open;
          FormVendasFast.frxReport20.Variables['TITULO']:=QuotedStr('Vendas por vendedor e estado');
          FormVendasFast.frxReport20.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
          FormVendasFast.frxReport20.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
          FormVendasFast.frxReport20.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
          FormVendasFast.frxReport20.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
          FormVendasFast.frxReport20.Variables['DATAINICIAL']:=QuotedStr(MaskEdit1.Text);
          FormVendasFast.frxReport20.Variables['DATAFINAL']:=QuotedStr(MaskEdit2.Text);
          FormVendasFast.frxReport20.Variables['VED_STATUS']:=QuotedStr(ComboBox4.Text);
          FormVendasFast.frxReport20.Variables['ESD_CODIGO']:=QuotedStr(Edit17.Text);
          FormVendasFast.frxReport20.Variables['ESD_NOME']:=QuotedStr(Edit18.Text);
          FormVendasFast.frxReport20.Variables['CLI_CODIGO']:=QuotedStr(Edit3.Text);
          FormVendasFast.frxReport20.Variables['CLI_NOME']:=QuotedStr(Edit4.Text);
          FormVendasFast.frxReport20.Variables['VEN_CODIGO']:=QuotedStr(Edit1.Text);
          FormVendasFast.frxReport20.Variables['VEN_NOME']:=QuotedStr(Edit2.Text);
          FormVendasFast.frxReport20.ShowReport;
          FormVendasFast.Free;
          FormVendasFast:=nil;
          {$ENDREGION}
        end;
    28: begin
          {$REGION 'Vendas por vendedor e tipo de frete'}
          if Edit2.Text<>'' then Where:=Where+' and VED_VENDEDOR='+QuotedStr(Edit1.Text);
          if Edit4.Text<>'' then Where:=Where+' and VED_CLIENTE='+QuotedStr(Edit3.Text);
          if ComboBox4.Text='ABERTAS' then Where:=Where+' and VED_STATUS='+QuotedStr('A');
          if ComboBox4.Text='CANCELADAS' then Where:=Where+' and VED_STATUS='+QuotedStr('C');
          if ComboBox4.Text='FINALIZADAS' then Where:=Where+' and VED_STATUS='+QuotedStr('F');
          if ComboBox4.Text='INUTILIZADAS' then Where:=Where+' and VED_STATUS='+QuotedStr('I');
          Application.CreateForm(TFormVendasFast, FormVendasFast);
          FormVendasFast.QY18.Close;
          FormVendasFast.QY18.SQL.Clear;
          FormVendasFast.QY18.SQL.Add(
            'select VED_CLIENTE, VED_CODIGO, VED_DESCPORC, VED_DTEMISSAO, VED_EXPEDIDOPOR, VED_FRETE, VED_NOME, '+
            'VED_TOTALITENS, VED_TRANSPNOME, VED_VALORFRETE, VED_VALORTOTAL, VED_VENDEDOR, VEN_NOME from VENDAS '+
            'left join VENDEDORES on VED_VENDEDOR=VEN_CODIGO '+
            'where VED_DTEMISSAO between :datainicial and :datafinal '+
            'and VED_FRETE='+QuotedStr(ComboBox2.Text)+' '+Where+' '+
            'order by VED_VENDEDOR, VED_NOME, VED_CODIGO desc');
          FormVendasFast.QY18.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
          FormVendasFast.QY18.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
          FormVendasFast.QY18.Open;
          FormVendasFast.frxReport18.Variables['TITULO']:=QuotedStr('Vendas por vendedor e tipo de frete');
          FormVendasFast.frxReport18.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
          FormVendasFast.frxReport18.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
          FormVendasFast.frxReport18.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
          FormVendasFast.frxReport18.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
          FormVendasFast.frxReport18.Variables['DATAINICIAL']:=QuotedStr(MaskEdit1.Text);
          FormVendasFast.frxReport18.Variables['DATAFINAL']:=QuotedStr(MaskEdit2.Text);
          FormVendasFast.frxReport18.Variables['VED_FRETE']:=QuotedStr(ComboBox2.Text);
          FormVendasFast.frxReport18.Variables['VED_STATUS']:=QuotedStr(ComboBox4.Text);
          FormVendasFast.frxReport18.Variables['CLI_CODIGO']:=QuotedStr(Edit3.Text);
          FormVendasFast.frxReport18.Variables['CLI_NOME']:=QuotedStr(Edit4.Text);
          FormVendasFast.frxReport18.Variables['VEN_CODIGO']:=QuotedStr(Edit1.Text);
          FormVendasFast.frxReport18.Variables['VEN_NOME']:=QuotedStr(Edit2.Text);
          FormVendasFast.frxReport18.ShowReport;
          FormVendasFast.Free;
          FormVendasFast:=nil;
          {$ENDREGION}
        end;
    29: begin
          {$REGION 'Vendas por vendedor sintético'}
          if ComboBox5.Text='EMISSAO PEDIDO' then Where:=Where+' VED_DTEMISSAO between :datainicial and :datafinal' else
          if ComboBox5.Text='EMISSAO NOTA' then Where:=Where+' NFE_DTEMISSAO between :datainicial and :datafinal' else
          if ComboBox5.Text='DATA ENTREGA' then Where:=Where+' VED_DTENTREGA between :datainicial and :datafinal';
          if Edit4.Text<>'' then Where:=Where+' and VED_CLIENTE='+QuotedStr(Edit3.Text);
          if Edit2.Text<>'' then Where:=Where+' and VED_VENDEDOR='+QuotedStr(Edit1.Text);
          if ComboBox4.Text='ABERTAS' then Where:=Where+' and VED_STATUS='+QuotedStr('A');
          if ComboBox4.Text='CANCELADAS' then Where:=Where+' and VED_STATUS='+QuotedStr('C');
          if ComboBox4.Text='FINALIZADAS' then Where:=Where+' and VED_STATUS='+QuotedStr('F');
          if ComboBox4.Text='INUTILIZADAS' then Where:=Where+' and VED_STATUS='+QuotedStr('I');
          if ComboBox6.Text='SIM - ABERTOS' then Where:=Where+' and (VED_VIAINTERNET='+QuotedStr('S')+' and VED_VIAINTERNETSTATUS='+QuotedStr('A')+')';
          if ComboBox6.Text='SIM - FINALIZADOS' then Where:=Where+' and (VED_VIAINTERNET='+QuotedStr('S')+' and VED_VIAINTERNETSTATUS='+QuotedStr('F')+')';
          if ComboBox6.Text='NAO' then Where:=Where+' and VED_VIAINTERNET='+QuotedStr('N');
          if ComboBox7.Text='SIM' then Where:=Where+' and VED_ENTREGUE='+QuotedStr('S');
          if ComboBox7.Text='NAO' then Where:=Where+' and VED_ENTREGUE='+QuotedStr('N');
          if ComboBox8.Text='ENTRADA' then Where:=Where+' and VED_ENTRADASAIDA='+QuotedStr('E');
          if ComboBox8.Text='SAIDA' then Where:=Where+' and VED_ENTRADASAIDA='+QuotedStr('S');

          Application.CreateForm(TFormVendasFast, FormVendasFast);
          FormVendasFast.QY03.Close;
          FormVendasFast.QY03.SQL.Clear;
          FormVendasFast.QY03.SQL.Add(
            'select VED_VENDEDOR, VED_DTEMISSAO, coalesce(sum(VED_TOTALITENS),0) as TOTALITENS, coalesce(sum(VED_VALORTOTAL),0) as TOTAL, count(VED_VENDEDOR) as QTDE, VEN_NOME from VENDAS '+
            'left join VENDEDORES on VED_VENDEDOR=VEN_CODIGO '+
            'left join NFE on VED_NFE=NFE_CODIGO '+
            'where '+Where+' '+
            'group by VED_VENDEDOR, VED_DTEMISSAO, VEN_NOME '+
            'order by VED_VENDEDOR, VED_DTEMISSAO');
          FormVendasFast.QY03.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
          FormVendasFast.QY03.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
          FormVendasFast.QY03.Open;
          FormVendasFast.frxReport3.Variables['TITULO']:=QuotedStr('Vendas por vendedor sintético');
          FormVendasFast.frxReport3.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
          FormVendasFast.frxReport3.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
          FormVendasFast.frxReport3.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
          FormVendasFast.frxReport3.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
          FormVendasFast.frxReport3.Variables['DATAINICIAL']:=QuotedStr(MaskEdit1.Text);
          FormVendasFast.frxReport3.Variables['DATAFINAL']:=QuotedStr(MaskEdit2.Text);
          FormVendasFast.frxReport3.Variables['DATA']:=QuotedStr(ComboBox5.Text);
          FormVendasFast.frxReport3.Variables['VED_ENTREGUE']:=QuotedStr(ComboBox7.Text);
          FormVendasFast.frxReport3.Variables['VED_STATUS']:=QuotedStr(ComboBox4.Text);
          FormVendasFast.frxReport3.Variables['VED_VIAINTERNET']:=QuotedStr(ComboBox6.Text);
          FormVendasFast.frxReport3.Variables['VED_ENTRADASAIDA']:=QuotedStr(ComboBox8.Text);
          FormVendasFast.frxReport3.Variables['CLI_CODIGO']:=QuotedStr(Edit3.Text);
          FormVendasFast.frxReport3.Variables['CLI_NOME']:=QuotedStr(Edit4.Text);
          FormVendasFast.frxReport3.Variables['VEN_CODIGO']:=QuotedStr(Edit1.Text);
          FormVendasFast.frxReport3.Variables['VEN_NOME']:=QuotedStr(Edit2.Text);
          FormVendasFast.frxReport3.ShowReport;
          FormVendasFast.Free;
          FormVendasFast:=nil;
          {$ENDREGION}
        end;
    30: begin
          {$REGION 'Vendas por cliente com itens e data de entrega'}
          if ComboBox5.Text='EMISSAO PEDIDO' then Where:='VED_DTEMISSAO between :datainicial and :datafinal' else
          if ComboBox5.Text='EMISSAO NOTA' then Where:='VED_DTEMISSAO between :datainicial and :datafinal' else
          if ComboBox5.Text='DATA ENTREGA' then Where:='VED_DTENTREGA between :datainicial and :datafinal';
          if Edit4.Text<>'' then Where:=Where+' and VED_CLIENTE='+QuotedStr(Edit3.Text);
          if Edit2.Text<>'' then Where:=Where+' and VED_VENDEDOR='+QuotedStr(Edit1.Text);
          if ComboBox4.Text='ABERTAS' then Where:=Where+' and VED_STATUS='+QuotedStr('A');
          if ComboBox4.Text='CANCELADAS' then Where:=Where+' and VED_STATUS='+QuotedStr('C');
          if ComboBox4.Text='FINALIZADAS' then Where:=Where+' and VED_STATUS='+QuotedStr('F');
          if ComboBox4.Text='INUTILIZADAS' then Where:=Where+' and VED_STATUS='+QuotedStr('I');
          if ComboBox7.Text='SIM' then Where:=Where+' and VED_ENTREGUE='+QuotedStr('S');
          if ComboBox7.Text='NAO' then Where:=Where+' and VED_ENTREGUE='+QuotedStr('N');

          Application.CreateForm(TFormVendasFast, FormVendasFast);
          FormVendasFast.QY36.Close;
          FormVendasFast.QY36.SQL.Clear;
          FormVendasFast.QY36.SQL.Add(
            'select VED_CODIGO, VED_CLIENTE, VED_DTEMISSAO, VED_DTENTREGA, VED_NFE, VED_PRODUCAO, '+
            'VED_STATUS, VED_VALORTOTAL, VED_VENDEDOR, CLI_NOME, PRD_STATUS from VENDAS '+
            'left join CLIENTES on VED_CLIENTE=CLI_CODIGO '+
            'left join PRODUCAO on VED_PRODUCAO=PRD_CODIGO '+
            'where '+Where+' '+
            'order by CLI_NOME, VED_DTENTREGA, VED_CODIGO desc');
          FormVendasFast.QY36.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
          FormVendasFast.QY36.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
          FormVendasFast.QY36.Open;
          FormVendasFast.QY36a.Open;
          FormVendasFast.frxReport36.Variables['TITULO']:=QuotedStr('Vendas por cliente com itens e data de entrega');
          FormVendasFast.frxReport36.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
          FormVendasFast.frxReport36.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
          FormVendasFast.frxReport36.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
          FormVendasFast.frxReport36.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
          FormVendasFast.frxReport36.Variables['DATAINICIAL']:=QuotedStr(MaskEdit1.Text);
          FormVendasFast.frxReport36.Variables['DATAFINAL']:=QuotedStr(MaskEdit2.Text);
          FormVendasFast.frxReport36.Variables['VED_ENTREGUE']:=QuotedStr(ComboBox7.Text);
          FormVendasFast.frxReport36.Variables['VED_STATUS']:=QuotedStr(ComboBox4.Text);
          FormVendasFast.frxReport36.Variables['CLI_CODIGO']:=QuotedStr(Edit3.Text);
          FormVendasFast.frxReport36.Variables['CLI_NOME']:=QuotedStr(Edit4.Text);
          FormVendasFast.frxReport36.Variables['VEN_CODIGO']:=QuotedStr(Edit1.Text);
          FormVendasFast.frxReport36.Variables['VEN_NOME']:=QuotedStr(Edit2.Text);
          FormVendasFast.frxReport36.Variables['DATA']:=QuotedStr(ComboBox5.Text);
          FormVendasFast.frxReport36.ShowReport;
          FormVendasFast.Free;
          FormVendasFast:=nil;
          {$ENDREGION}
        end;
  end; //case.
end;

procedure TFormVendasRel.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormVendasRel.Edit21Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TEdit).Text;
end;

procedure TFormVendasRel.Edit21Exit(Sender: TObject);
begin
  LocAtividadesExit(Edit21,Edit22);
end;

procedure TFormVendasRel.Edit21KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  PngSpeedButton4.Click;
end;

procedure TFormVendasRel.Edit21KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormVendasRel.Edit23Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TEdit).Text;
end;

procedure TFormVendasRel.Edit23Exit(Sender: TObject);
begin
  LocLocaisExit(Edit23,Edit24);
end;

procedure TFormVendasRel.Edit23KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  PngSpeedButton5.Click;
end;

procedure TFormVendasRel.Edit23KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormVendasRel.Edit25Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TEdit).Text;
end;

procedure TFormVendasRel.Edit25Exit(Sender: TObject);
begin
  LocFornecedoresExit(Edit25,Edit26,nil);
end;

procedure TFormVendasRel.Edit25KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  PngSpeedButton6.Click;
end;

procedure TFormVendasRel.Edit25KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormVendasRel.Edit28Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TEdit).Text;
end;

procedure TFormVendasRel.Edit28Exit(Sender: TObject);
begin
  LocClassFiscalExit(Edit28,Edit30,Edit29);
end;

procedure TFormVendasRel.Edit28KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  PngSpeedButton7.Click;
end;

procedure TFormVendasRel.Edit28KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormVendasRel.Edit1Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TEdit).Text;
end;

procedure TFormVendasRel.Edit1Exit(Sender: TObject);
begin
  LocVendedoresExit(Edit1,Edit2,nil);
end;

procedure TFormVendasRel.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton1.Click;
end;

procedure TFormVendasRel.Edit3Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TEdit).Text;
end;

procedure TFormVendasRel.Edit3Exit(Sender: TObject);
begin
  LocClientesExit(Edit3,Edit4);
end;

procedure TFormVendasRel.Edit3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton2.Click;
end;

procedure TFormVendasRel.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormVendasRel.SpeedButton2Click(Sender: TObject);
begin
  LocClientesBotao(Edit3,Edit4);
end;

procedure TFormVendasRel.ComboBox1Change(Sender: TObject);
begin
  case ComboBox1.ItemIndex of
    00: begin
          {$REGION 'Análise valor de venda vs tabela de preço'}
          ComboBox2.Enabled:=False;
          ComboBox3.Enabled:=True;
          ComboBox4.Enabled:=True;
          ComboBox5.Enabled:=False;
          ComboBox6.Enabled:=False;
          ComboBox7.Enabled:=False;
          ComboBox8.Enabled:=False;
          Edit1.Enabled:=True;   SpeedButton1.Enabled:=True;
          Edit3.Enabled:=True;   SpeedButton2.Enabled:=True;
          Edit5.Enabled:=True;   SpeedButton3.Enabled:=True;
          Edit7.Enabled:=False;
          Edit8.Enabled:=True;   SpeedButton4.Enabled:=True;
          Edit10.Enabled:=False; SpeedButton5.Enabled:=False;
          Edit11.Enabled:=False; SpeedButton6.Enabled:=False;
          Edit13.Enabled:=False; SpeedButton7.Enabled:=False;
          Edit15.Enabled:=False; PngSpeedButton1.Enabled:=False;
          Edit17.Enabled:=False; PngSpeedButton2.Enabled:=False;
          Edit19.Enabled:=False; PngSpeedButton3.Enabled:=False;
          Edit21.Enabled:=False; PngSpeedButton4.Enabled:=False;
          Edit23.Enabled:=False; PngSpeedButton5.Enabled:=False;
          Edit25.Enabled:=False; PngSpeedButton6.Enabled:=False;
          Edit28.Enabled:=False; PngSpeedButton7.Enabled:=False;
          {$ENDREGION}
        end;
    01: begin
          {$REGION 'Comissões por vendedor analítico'}
          ComboBox2.Enabled:=False;
          ComboBox3.Enabled:=False;
          ComboBox4.Enabled:=True;
          ComboBox5.Enabled:=False;
          ComboBox6.Enabled:=False;
          ComboBox7.Enabled:=False;
          ComboBox8.Enabled:=False;
          Edit1.Enabled:=True;   SpeedButton1.Enabled:=True;
          Edit3.Enabled:=False;  SpeedButton2.Enabled:=False;
          Edit5.Enabled:=False;  SpeedButton3.Enabled:=False;
          Edit7.Enabled:=False;
          Edit8.Enabled:=False;  SpeedButton4.Enabled:=False;
          Edit10.Enabled:=False; SpeedButton5.Enabled:=False;
          Edit11.Enabled:=False; SpeedButton6.Enabled:=False;
          Edit13.Enabled:=False; SpeedButton7.Enabled:=False;
          Edit15.Enabled:=False; PngSpeedButton1.Enabled:=False;
          Edit17.Enabled:=False; PngSpeedButton2.Enabled:=False;
          Edit19.Enabled:=False; PngSpeedButton3.Enabled:=False;
          Edit21.Enabled:=False; PngSpeedButton4.Enabled:=False;
          Edit23.Enabled:=False; PngSpeedButton5.Enabled:=False;
          Edit25.Enabled:=False; PngSpeedButton6.Enabled:=False;
          Edit28.Enabled:=False; PngSpeedButton7.Enabled:=False;
          {$ENDREGION}
        end;
    02: begin
          {$REGION 'Comissões por vendedor sintético'}
          ComboBox2.Enabled:=False;
          ComboBox3.Enabled:=False;
          ComboBox4.Enabled:=True;
          ComboBox5.Enabled:=False;
          ComboBox6.Enabled:=False;
          ComboBox7.Enabled:=False;
          ComboBox8.Enabled:=False;
          Edit1.Enabled:=True;   SpeedButton1.Enabled:=True;
          Edit3.Enabled:=False;  SpeedButton2.Enabled:=False;
          Edit5.Enabled:=False;  SpeedButton3.Enabled:=False;
          Edit7.Enabled:=False;
          Edit8.Enabled:=False;  SpeedButton4.Enabled:=False;
          Edit10.Enabled:=False; SpeedButton5.Enabled:=False;
          Edit11.Enabled:=False; SpeedButton6.Enabled:=False;
          Edit13.Enabled:=False; SpeedButton7.Enabled:=False;
          Edit15.Enabled:=False; PngSpeedButton1.Enabled:=False;
          Edit17.Enabled:=False; PngSpeedButton2.Enabled:=False;
          Edit19.Enabled:=False; PngSpeedButton3.Enabled:=False;
          Edit21.Enabled:=False; PngSpeedButton4.Enabled:=False;
          Edit23.Enabled:=False; PngSpeedButton5.Enabled:=False;
          Edit25.Enabled:=False; PngSpeedButton6.Enabled:=False;
          Edit28.Enabled:=False; PngSpeedButton7.Enabled:=False;
          {$ENDREGION}
        end;
    03: begin
          {$REGION 'Curva ABC clientes'}
          ComboBox2.Enabled:=False;
          ComboBox3.Enabled:=False;
          ComboBox4.Enabled:=True;
          ComboBox5.Enabled:=False;
          ComboBox6.Enabled:=False;
          ComboBox7.Enabled:=False;
          ComboBox8.Enabled:=True;
          Edit1.Enabled:=True;   SpeedButton1.Enabled:=True;
          Edit3.Enabled:=False;  SpeedButton2.Enabled:=False;
          Edit5.Enabled:=False;  SpeedButton3.Enabled:=False;
          Edit7.Enabled:=False;
          Edit8.Enabled:=False;  SpeedButton4.Enabled:=False;
          Edit10.Enabled:=False; SpeedButton5.Enabled:=False;
          Edit11.Enabled:=False; SpeedButton6.Enabled:=False;
          Edit13.Enabled:=False; SpeedButton7.Enabled:=False;
          Edit15.Enabled:=False; PngSpeedButton1.Enabled:=False;
          Edit17.Enabled:=False; PngSpeedButton2.Enabled:=False;
          Edit19.Enabled:=False; PngSpeedButton3.Enabled:=False;
          Edit21.Enabled:=False; PngSpeedButton4.Enabled:=False;
          Edit23.Enabled:=False; PngSpeedButton5.Enabled:=False;
          Edit25.Enabled:=False; PngSpeedButton6.Enabled:=False;
          Edit28.Enabled:=False; PngSpeedButton7.Enabled:=False;
          {$ENDREGION}
        end;
    04: begin
          {$REGION 'Curva ABC produtos'}
          ComboBox2.Enabled:=False;
          ComboBox3.Enabled:=False;
          ComboBox4.Enabled:=True;
          ComboBox5.Enabled:=False;
          ComboBox6.Enabled:=False;
          ComboBox7.Enabled:=False;
          ComboBox8.Enabled:=True;
          Edit1.Enabled:=False;  SpeedButton1.Enabled:=False;
          Edit3.Enabled:=False;  SpeedButton2.Enabled:=False;
          Edit5.Enabled:=True;   SpeedButton3.Enabled:=True;
          Edit7.Enabled:=False;
          Edit8.Enabled:=False;  SpeedButton4.Enabled:=False;
          Edit10.Enabled:=False; SpeedButton5.Enabled:=False;
          Edit11.Enabled:=False; SpeedButton6.Enabled:=False;
          Edit13.Enabled:=False; SpeedButton7.Enabled:=False;
          Edit15.Enabled:=True;  PngSpeedButton1.Enabled:=True;
          Edit17.Enabled:=False; PngSpeedButton2.Enabled:=False;
          Edit19.Enabled:=False; PngSpeedButton3.Enabled:=False;
          Edit21.Enabled:=False; PngSpeedButton4.Enabled:=False;
          Edit23.Enabled:=False; PngSpeedButton5.Enabled:=False;
          Edit25.Enabled:=False; PngSpeedButton6.Enabled:=False;
          Edit28.Enabled:=False; PngSpeedButton7.Enabled:=False;
          {$ENDREGION}
        end;
    05: begin
          {$REGION 'Frequencia de vendas mensal por vendedor'}
          ComboBox2.Enabled:=False;
          ComboBox3.Enabled:=False;
          ComboBox4.Enabled:=True;
          ComboBox5.Enabled:=False;
          ComboBox6.Enabled:=False;
          ComboBox7.Enabled:=False;
          ComboBox8.Enabled:=False;
          Edit1.Enabled:=True;   SpeedButton1.Enabled:=True;
          Edit3.Enabled:=True;   SpeedButton2.Enabled:=True;
          Edit5.Enabled:=False;  SpeedButton3.Enabled:=False;
          Edit7.Enabled:=False;
          Edit8.Enabled:=False;  SpeedButton4.Enabled:=False;
          Edit10.Enabled:=False; SpeedButton5.Enabled:=False;
          Edit11.Enabled:=False; SpeedButton6.Enabled:=False;
          Edit13.Enabled:=False; SpeedButton7.Enabled:=False;
          Edit15.Enabled:=False; PngSpeedButton1.Enabled:=False;
          Edit17.Enabled:=False; PngSpeedButton2.Enabled:=False;
          Edit19.Enabled:=False; PngSpeedButton3.Enabled:=False;
          Edit21.Enabled:=True;  PngSpeedButton4.Enabled:=True;
          Edit23.Enabled:=True;  PngSpeedButton5.Enabled:=True;
          Edit25.Enabled:=False; PngSpeedButton6.Enabled:=False;
          Edit28.Enabled:=False; PngSpeedButton7.Enabled:=False;
          {$ENDREGION}
        end;
    06: begin
          {$REGION 'Frequencia de vendas por vendedor'}
          ComboBox2.Enabled:=False;
          ComboBox3.Enabled:=False;
          ComboBox4.Enabled:=True;
          ComboBox5.Enabled:=False;
          ComboBox6.Enabled:=False;
          ComboBox7.Enabled:=False;
          ComboBox8.Enabled:=False;
          Edit1.Enabled:=True;   SpeedButton1.Enabled:=True;
          Edit3.Enabled:=True;   SpeedButton2.Enabled:=True;
          Edit5.Enabled:=False;  SpeedButton3.Enabled:=False;
          Edit7.Enabled:=True;
          Edit8.Enabled:=False;  SpeedButton4.Enabled:=False;
          Edit10.Enabled:=False; SpeedButton5.Enabled:=False;
          Edit11.Enabled:=False; SpeedButton6.Enabled:=False;
          Edit13.Enabled:=False; SpeedButton7.Enabled:=False;
          Edit15.Enabled:=False; PngSpeedButton1.Enabled:=False;
          Edit17.Enabled:=False; PngSpeedButton2.Enabled:=False;
          Edit19.Enabled:=False; PngSpeedButton3.Enabled:=False;
          Edit21.Enabled:=False; PngSpeedButton4.Enabled:=False;
          Edit23.Enabled:=False; PngSpeedButton5.Enabled:=False;
          Edit25.Enabled:=False; PngSpeedButton6.Enabled:=False;
          Edit28.Enabled:=False; PngSpeedButton7.Enabled:=False;
          {$ENDREGION}
        end;
    07: begin
          {$REGION 'Frequencia de vendas sem agrupamento'}
          ComboBox2.Enabled:=False;
          ComboBox3.Enabled:=False;
          ComboBox4.Enabled:=True;
          ComboBox5.Enabled:=False;
          ComboBox6.Enabled:=False;
          ComboBox7.Enabled:=False;
          ComboBox8.Enabled:=False;
          Edit1.Enabled:=True;   SpeedButton1.Enabled:=True;
          Edit3.Enabled:=True;   SpeedButton2.Enabled:=True;
          Edit5.Enabled:=False;  SpeedButton3.Enabled:=False;
          Edit7.Enabled:=True;
          Edit8.Enabled:=False;  SpeedButton4.Enabled:=False;
          Edit10.Enabled:=False; SpeedButton5.Enabled:=False;
          Edit11.Enabled:=False; SpeedButton6.Enabled:=False;
          Edit13.Enabled:=False; SpeedButton7.Enabled:=False;
          Edit15.Enabled:=False; PngSpeedButton1.Enabled:=False;
          Edit17.Enabled:=False; PngSpeedButton2.Enabled:=False;
          Edit19.Enabled:=False; PngSpeedButton3.Enabled:=False;
          Edit21.Enabled:=False; PngSpeedButton4.Enabled:=False;
          Edit23.Enabled:=False; PngSpeedButton5.Enabled:=False;
          Edit25.Enabled:=False; PngSpeedButton6.Enabled:=False;
          Edit28.Enabled:=False; PngSpeedButton7.Enabled:=False;
          {$ENDREGION}
        end;
    08: begin
          {$REGION 'Margem bruta'}
          ComboBox2.Enabled:=False;
          ComboBox3.Enabled:=False;
          ComboBox4.Enabled:=True;
          ComboBox5.Enabled:=False;
          ComboBox6.Enabled:=False;
          ComboBox7.Enabled:=False;
          ComboBox8.Enabled:=False;
          Edit1.Enabled:=True;   SpeedButton1.Enabled:=True;
          Edit3.Enabled:=False;  SpeedButton2.Enabled:=False;
          Edit5.Enabled:=False;  SpeedButton3.Enabled:=False;
          Edit7.Enabled:=False;
          Edit8.Enabled:=True;   SpeedButton4.Enabled:=True;
          Edit10.Enabled:=False; SpeedButton5.Enabled:=False;
          Edit11.Enabled:=False; SpeedButton6.Enabled:=False;
          Edit13.Enabled:=False; SpeedButton7.Enabled:=False;
          Edit15.Enabled:=False; PngSpeedButton1.Enabled:=False;
          Edit17.Enabled:=False; PngSpeedButton2.Enabled:=False;
          Edit19.Enabled:=False; PngSpeedButton3.Enabled:=False;
          Edit21.Enabled:=False; PngSpeedButton4.Enabled:=False;
          Edit23.Enabled:=False; PngSpeedButton5.Enabled:=False;
          Edit25.Enabled:=False; PngSpeedButton6.Enabled:=False;
          Edit28.Enabled:=False; PngSpeedButton7.Enabled:=False;
          {$ENDREGION}
        end;
    09: begin
          {$REGION 'Melhores clientes por item vendido'}
          ComboBox2.Enabled:=False;
          ComboBox3.Enabled:=False;
          ComboBox4.Enabled:=True;
          ComboBox5.Enabled:=False;
          ComboBox6.Enabled:=False;
          ComboBox7.Enabled:=False;
          ComboBox8.Enabled:=False;
          Edit1.Enabled:=False;  SpeedButton1.Enabled:=False;
          Edit3.Enabled:=False;  SpeedButton2.Enabled:=False;
          Edit5.Enabled:=True;   SpeedButton3.Enabled:=True;
          Edit7.Enabled:=True;
          Edit8.Enabled:=True;   SpeedButton4.Enabled:=True;
          Edit10.Enabled:=False; SpeedButton5.Enabled:=False;
          Edit11.Enabled:=False; SpeedButton6.Enabled:=False;
          Edit13.Enabled:=False; SpeedButton7.Enabled:=False;
          Edit15.Enabled:=False; PngSpeedButton1.Enabled:=False;
          Edit17.Enabled:=False; PngSpeedButton2.Enabled:=False;
          Edit19.Enabled:=False; PngSpeedButton3.Enabled:=False;
          Edit21.Enabled:=False; PngSpeedButton4.Enabled:=False;
          Edit23.Enabled:=False; PngSpeedButton5.Enabled:=False;
          Edit25.Enabled:=False; PngSpeedButton6.Enabled:=False;
          Edit28.Enabled:=False; PngSpeedButton7.Enabled:=False;
          {$ENDREGION}
        end;
    10: begin
          {$REGION 'Produtos vendidos por cliente'}
          ComboBox2.Enabled:=False;
          ComboBox3.Enabled:=False;
          ComboBox4.Enabled:=True;
          ComboBox5.Enabled:=True;
          ComboBox6.Enabled:=False;
          ComboBox7.Enabled:=False;
          ComboBox8.Enabled:=False;
          Edit1.Enabled:=True;   SpeedButton1.Enabled:=True;
          Edit3.Enabled:=True;   SpeedButton2.Enabled:=True;
          Edit5.Enabled:=False;  SpeedButton3.Enabled:=False;
          Edit7.Enabled:=False;
          Edit8.Enabled:=True;   SpeedButton4.Enabled:=True;
          Edit10.Enabled:=False; SpeedButton5.Enabled:=False;
          Edit11.Enabled:=False; SpeedButton6.Enabled:=False;
          Edit13.Enabled:=False; SpeedButton7.Enabled:=False;
          Edit15.Enabled:=False; PngSpeedButton1.Enabled:=False;
          Edit17.Enabled:=False; PngSpeedButton2.Enabled:=False;
          Edit19.Enabled:=False; PngSpeedButton3.Enabled:=False;
          Edit21.Enabled:=False; PngSpeedButton4.Enabled:=False;
          Edit23.Enabled:=False; PngSpeedButton5.Enabled:=False;
          Edit25.Enabled:=False; PngSpeedButton6.Enabled:=False;
          Edit28.Enabled:=False; PngSpeedButton7.Enabled:=False;
          {$ENDREGION}
        end;
    11: begin
          {$REGION 'Produtos vendidos por vendedor'}
          ComboBox2.Enabled:=False;
          ComboBox3.Enabled:=False;
          ComboBox4.Enabled:=True;
          ComboBox5.Enabled:=True;
          ComboBox6.Enabled:=False;
          ComboBox7.Enabled:=False;
          ComboBox8.Enabled:=False;
          Edit1.Enabled:=True;   SpeedButton1.Enabled:=True;
          Edit3.Enabled:=True;   SpeedButton2.Enabled:=True;
          Edit5.Enabled:=False;  SpeedButton3.Enabled:=False;
          Edit7.Enabled:=False;
          Edit8.Enabled:=True;   SpeedButton4.Enabled:=True;
          Edit10.Enabled:=False; SpeedButton5.Enabled:=False;
          Edit11.Enabled:=False; SpeedButton6.Enabled:=False;
          Edit13.Enabled:=False; SpeedButton7.Enabled:=False;
          Edit15.Enabled:=False; PngSpeedButton1.Enabled:=False;
          Edit17.Enabled:=False; PngSpeedButton2.Enabled:=False;
          Edit19.Enabled:=False; PngSpeedButton3.Enabled:=False;
          Edit21.Enabled:=False; PngSpeedButton4.Enabled:=False;
          Edit23.Enabled:=False; PngSpeedButton5.Enabled:=False;
          Edit25.Enabled:=False; PngSpeedButton6.Enabled:=False;
          Edit28.Enabled:=False; PngSpeedButton7.Enabled:=False;
          {$ENDREGION}
        end;
    12: begin
          {$REGION 'Produtos vendidos por vendedor'}
          ComboBox2.Enabled:=False;
          ComboBox3.Enabled:=False;
          ComboBox4.Enabled:=True;
          ComboBox5.Enabled:=True;
          ComboBox6.Enabled:=False;
          ComboBox7.Enabled:=False;
          ComboBox8.Enabled:=False;
          Edit1.Enabled:=False;  SpeedButton1.Enabled:=False;
          Edit3.Enabled:=False;  SpeedButton2.Enabled:=False;
          Edit5.Enabled:=False;  SpeedButton3.Enabled:=False;
          Edit7.Enabled:=False;
          Edit8.Enabled:=False;  SpeedButton4.Enabled:=False;
          Edit10.Enabled:=False; SpeedButton5.Enabled:=False;
          Edit11.Enabled:=False; SpeedButton6.Enabled:=False;
          Edit13.Enabled:=False; SpeedButton7.Enabled:=False;
          Edit15.Enabled:=False; PngSpeedButton1.Enabled:=False;
          Edit17.Enabled:=False; PngSpeedButton2.Enabled:=False;
          Edit19.Enabled:=False; PngSpeedButton3.Enabled:=False;
          Edit21.Enabled:=False; PngSpeedButton4.Enabled:=False;
          Edit23.Enabled:=False; PngSpeedButton5.Enabled:=False;
          Edit25.Enabled:=True;  PngSpeedButton6.Enabled:=True;
          Edit28.Enabled:=False; PngSpeedButton7.Enabled:=False;
          {$ENDREGION}
        end;
    13: begin
          {$REGION 'Rastreamento de Lotes'}
          ComboBox2.Enabled:=False;
          ComboBox3.Enabled:=False;
          ComboBox4.Enabled:=True;
          ComboBox5.Enabled:=False;
          ComboBox6.Enabled:=False;
          ComboBox7.Enabled:=False;
          ComboBox8.Enabled:=False;
          Edit1.Enabled:=True;   SpeedButton1.Enabled:=True;
          Edit3.Enabled:=True;   SpeedButton2.Enabled:=True;
          Edit5.Enabled:=False;  SpeedButton3.Enabled:=False;
          Edit7.Enabled:=False;
          Edit8.Enabled:=False;  SpeedButton4.Enabled:=False;
          Edit10.Enabled:=True;  SpeedButton5.Enabled:=True;
          Edit11.Enabled:=False; SpeedButton6.Enabled:=False;
          Edit13.Enabled:=False; SpeedButton7.Enabled:=False;
          Edit15.Enabled:=False; PngSpeedButton1.Enabled:=False;
          Edit17.Enabled:=False; PngSpeedButton2.Enabled:=False;
          Edit19.Enabled:=False; PngSpeedButton3.Enabled:=False;
          Edit21.Enabled:=False; PngSpeedButton4.Enabled:=False;
          Edit23.Enabled:=False; PngSpeedButton5.Enabled:=False;
          Edit25.Enabled:=False; PngSpeedButton6.Enabled:=False;
          Edit28.Enabled:=False; PngSpeedButton7.Enabled:=False;
          {$ENDREGION}
        end;
    14: begin
          {$REGION 'Trocas por vendedor'}
          ComboBox2.Enabled:=False;
          ComboBox3.Enabled:=False;
          ComboBox4.Enabled:=True;
          ComboBox5.Enabled:=True;
          ComboBox6.Enabled:=False;
          ComboBox7.Enabled:=False;
          ComboBox8.Enabled:=False;
          Edit1.Enabled:=True;   SpeedButton1.Enabled:=True;
          Edit3.Enabled:=True;   SpeedButton2.Enabled:=True;
          Edit5.Enabled:=False;  SpeedButton3.Enabled:=False;
          Edit7.Enabled:=False;
          Edit8.Enabled:=False;  SpeedButton4.Enabled:=False;
          Edit10.Enabled:=False; SpeedButton5.Enabled:=False;
          Edit11.Enabled:=False; SpeedButton6.Enabled:=False;
          Edit13.Enabled:=False; SpeedButton7.Enabled:=False;
          Edit15.Enabled:=False; PngSpeedButton1.Enabled:=False;
          Edit17.Enabled:=False; PngSpeedButton2.Enabled:=False;
          Edit19.Enabled:=False; PngSpeedButton3.Enabled:=False;
          Edit21.Enabled:=False; PngSpeedButton4.Enabled:=False;
          Edit23.Enabled:=False; PngSpeedButton5.Enabled:=False;
          Edit25.Enabled:=False; PngSpeedButton6.Enabled:=False;
          Edit28.Enabled:=False; PngSpeedButton7.Enabled:=False;
          {$ENDREGION}
        end;
    15: begin
          {$REGION 'Vendas por classificação fiscal'}
          ComboBox2.Enabled:=False;
          ComboBox3.Enabled:=False;
          ComboBox4.Enabled:=True;
          ComboBox5.Enabled:=False;
          ComboBox6.Enabled:=False;
          ComboBox7.Enabled:=False;
          ComboBox8.Enabled:=False;
          Edit1.Enabled:=True;   SpeedButton1.Enabled:=True;
          Edit3.Enabled:=False;  SpeedButton2.Enabled:=False;
          Edit5.Enabled:=False;  SpeedButton3.Enabled:=False;
          Edit7.Enabled:=False;
          Edit8.Enabled:=True;   SpeedButton4.Enabled:=True;
          Edit10.Enabled:=False; SpeedButton5.Enabled:=False;
          Edit11.Enabled:=False; SpeedButton6.Enabled:=False;
          Edit13.Enabled:=False; SpeedButton7.Enabled:=False;
          Edit15.Enabled:=False; PngSpeedButton1.Enabled:=False;
          Edit17.Enabled:=False; PngSpeedButton2.Enabled:=False;
          Edit19.Enabled:=False; PngSpeedButton3.Enabled:=False;
          Edit21.Enabled:=False; PngSpeedButton4.Enabled:=False;
          Edit23.Enabled:=False; PngSpeedButton5.Enabled:=False;
          Edit25.Enabled:=False; PngSpeedButton6.Enabled:=False;
          Edit28.Enabled:=True;  PngSpeedButton7.Enabled:=True;
          {$ENDREGION}
        end;
    16: begin
          {$REGION 'Vendas por cliente'}
          ComboBox2.Enabled:=False;
          ComboBox3.Enabled:=False;
          ComboBox4.Enabled:=True;
          ComboBox5.Enabled:=False;
          ComboBox6.Enabled:=True;
          ComboBox7.Enabled:=True;
          ComboBox8.Enabled:=False;
          Edit1.Enabled:=True;   SpeedButton1.Enabled:=True;
          Edit3.Enabled:=True;   SpeedButton2.Enabled:=True;
          Edit5.Enabled:=False;  SpeedButton3.Enabled:=False;
          Edit7.Enabled:=False;
          Edit8.Enabled:=False;  SpeedButton4.Enabled:=False;
          Edit10.Enabled:=False; SpeedButton5.Enabled:=False;
          Edit11.Enabled:=False; SpeedButton6.Enabled:=False;
          Edit13.Enabled:=False; SpeedButton7.Enabled:=False;
          Edit15.Enabled:=False; PngSpeedButton1.Enabled:=False;
          Edit17.Enabled:=False; PngSpeedButton2.Enabled:=False;
          Edit19.Enabled:=False; PngSpeedButton3.Enabled:=False;
          Edit21.Enabled:=False; PngSpeedButton4.Enabled:=False;
          Edit23.Enabled:=False; PngSpeedButton5.Enabled:=False;
          Edit25.Enabled:=False; PngSpeedButton6.Enabled:=False;
          Edit28.Enabled:=False; PngSpeedButton7.Enabled:=False;
          {$ENDREGION}
        end;
    17: begin
          {$REGION 'Vendas por cliente com itens'}
          ComboBox2.Enabled:=False;
          ComboBox3.Enabled:=False;
          ComboBox4.Enabled:=True;
          ComboBox5.Enabled:=False;
          ComboBox6.Enabled:=True;
          ComboBox7.Enabled:=True;
          ComboBox8.Enabled:=False;
          Edit1.Enabled:=False;  SpeedButton1.Enabled:=False;
          Edit3.Enabled:=True;   SpeedButton2.Enabled:=True;
          Edit5.Enabled:=False;  SpeedButton3.Enabled:=False;
          Edit7.Enabled:=False;
          Edit8.Enabled:=False;  SpeedButton4.Enabled:=False;
          Edit10.Enabled:=False; SpeedButton5.Enabled:=False;
          Edit11.Enabled:=False; SpeedButton6.Enabled:=False;
          Edit13.Enabled:=False; SpeedButton7.Enabled:=False;
          Edit15.Enabled:=False; PngSpeedButton1.Enabled:=False;
          Edit17.Enabled:=False; PngSpeedButton2.Enabled:=False;
          Edit19.Enabled:=False; PngSpeedButton3.Enabled:=False;
          Edit21.Enabled:=False; PngSpeedButton4.Enabled:=False;
          Edit23.Enabled:=False; PngSpeedButton5.Enabled:=False;
          Edit25.Enabled:=False; PngSpeedButton6.Enabled:=False;
          Edit28.Enabled:=False; PngSpeedButton7.Enabled:=False;
          {$ENDREGION}
        end;
    18: begin
          {$REGION 'Vendas por condição de pagamento analítico'}
          ComboBox2.Enabled:=False;
          ComboBox3.Enabled:=False;
          ComboBox4.Enabled:=True;
          ComboBox5.Enabled:=False;
          ComboBox6.Enabled:=True;
          ComboBox7.Enabled:=True;
          ComboBox8.Enabled:=False;
          Edit1.Enabled:=True;   SpeedButton1.Enabled:=True;
          Edit3.Enabled:=False;  SpeedButton2.Enabled:=False;
          Edit5.Enabled:=False;  SpeedButton3.Enabled:=False;
          Edit7.Enabled:=False;
          Edit8.Enabled:=False;  SpeedButton4.Enabled:=False;
          Edit10.Enabled:=False; SpeedButton5.Enabled:=False;
          Edit11.Enabled:=False; SpeedButton6.Enabled:=False;
          Edit13.Enabled:=True;  SpeedButton7.Enabled:=True;
          Edit15.Enabled:=False; PngSpeedButton1.Enabled:=False;
          Edit17.Enabled:=False; PngSpeedButton2.Enabled:=False;
          Edit19.Enabled:=False; PngSpeedButton3.Enabled:=False;
          Edit21.Enabled:=False; PngSpeedButton4.Enabled:=False;
          Edit23.Enabled:=False; PngSpeedButton5.Enabled:=False;
          Edit25.Enabled:=False; PngSpeedButton6.Enabled:=False;
          Edit28.Enabled:=False; PngSpeedButton7.Enabled:=False;
          {$ENDREGION}
        end;
    19: begin
          {$REGION 'Vendas por condição de pagamento sintético'}
          ComboBox2.Enabled:=False;
          ComboBox3.Enabled:=False;
          ComboBox4.Enabled:=True;
          ComboBox5.Enabled:=False;
          ComboBox6.Enabled:=True;
          ComboBox7.Enabled:=True;
          ComboBox8.Enabled:=False;
          Edit1.Enabled:=True;   SpeedButton1.Enabled:=True;
          Edit3.Enabled:=False;  SpeedButton2.Enabled:=False;
          Edit5.Enabled:=False;  SpeedButton3.Enabled:=False;
          Edit7.Enabled:=False;
          Edit8.Enabled:=False;  SpeedButton4.Enabled:=False;
          Edit10.Enabled:=False; SpeedButton5.Enabled:=False;
          Edit11.Enabled:=False; SpeedButton6.Enabled:=False;
          Edit13.Enabled:=True;  SpeedButton7.Enabled:=True;
          Edit15.Enabled:=False; PngSpeedButton1.Enabled:=False;
          Edit17.Enabled:=False; PngSpeedButton2.Enabled:=False;
          Edit19.Enabled:=False; PngSpeedButton3.Enabled:=False;
          Edit21.Enabled:=False; PngSpeedButton4.Enabled:=False;
          Edit23.Enabled:=False; PngSpeedButton5.Enabled:=False;
          Edit25.Enabled:=False; PngSpeedButton6.Enabled:=False;
          Edit28.Enabled:=False; PngSpeedButton7.Enabled:=False;
          {$ENDREGION}
        end;
    20: begin
          {$REGION 'Vendas por família'}
          ComboBox2.Enabled:=False;
          ComboBox3.Enabled:=False;
          ComboBox4.Enabled:=True;
          ComboBox5.Enabled:=False;
          ComboBox6.Enabled:=True;
          ComboBox7.Enabled:=True;
          ComboBox8.Enabled:=False;
          Edit1.Enabled:=True;   SpeedButton1.Enabled:=True;
          Edit3.Enabled:=True;   SpeedButton2.Enabled:=True;
          Edit5.Enabled:=False;  SpeedButton3.Enabled:=False;
          Edit7.Enabled:=False;
          Edit8.Enabled:=True;   SpeedButton4.Enabled:=True;
          Edit10.Enabled:=False; SpeedButton5.Enabled:=False;
          Edit11.Enabled:=False; SpeedButton6.Enabled:=False;
          Edit13.Enabled:=False; SpeedButton7.Enabled:=False;
          Edit15.Enabled:=True;  PngSpeedButton1.Enabled:=True;
          Edit17.Enabled:=False; PngSpeedButton2.Enabled:=False;
          Edit19.Enabled:=False; PngSpeedButton3.Enabled:=False;
          Edit21.Enabled:=False; PngSpeedButton4.Enabled:=False;
          Edit23.Enabled:=False; PngSpeedButton5.Enabled:=False;
          Edit25.Enabled:=False; PngSpeedButton6.Enabled:=False;
          Edit28.Enabled:=False; PngSpeedButton7.Enabled:=False;
          {$ENDREGION}
        end;
    21: begin
          {$REGION 'Vendas por grupo'}
          ComboBox2.Enabled:=False;
          ComboBox3.Enabled:=False;
          ComboBox4.Enabled:=True;
          ComboBox5.Enabled:=False;
          ComboBox6.Enabled:=True;
          ComboBox7.Enabled:=True;
          ComboBox8.Enabled:=False;
          Edit1.Enabled:=True;  SpeedButton1.Enabled:=True;
          Edit3.Enabled:=True;   SpeedButton2.Enabled:=True;
          Edit5.Enabled:=True;   SpeedButton3.Enabled:=True;
          Edit7.Enabled:=False;
          Edit8.Enabled:=True;   SpeedButton4.Enabled:=True;
          Edit10.Enabled:=False; SpeedButton5.Enabled:=False;
          Edit11.Enabled:=False; SpeedButton6.Enabled:=False;
          Edit13.Enabled:=False; SpeedButton7.Enabled:=False;
          Edit15.Enabled:=False; PngSpeedButton1.Enabled:=False;
          Edit17.Enabled:=False; PngSpeedButton2.Enabled:=False;
          Edit19.Enabled:=True;  PngSpeedButton3.Enabled:=True;
          Edit21.Enabled:=False; PngSpeedButton4.Enabled:=False;
          Edit23.Enabled:=False; PngSpeedButton5.Enabled:=False;
          Edit25.Enabled:=False; PngSpeedButton6.Enabled:=False;
          Edit28.Enabled:=False; PngSpeedButton7.Enabled:=False;
          {$ENDREGION}
        end;
    22: begin
          {$REGION 'Vendas por marca'}
          ComboBox2.Enabled:=False;
          ComboBox3.Enabled:=False;
          ComboBox4.Enabled:=True;
          ComboBox5.Enabled:=False;
          ComboBox6.Enabled:=True;
          ComboBox7.Enabled:=True;
          ComboBox8.Enabled:=False;
          Edit1.Enabled:=True;   SpeedButton1.Enabled:=True;
          Edit3.Enabled:=True;   SpeedButton2.Enabled:=True;
          Edit5.Enabled:=False;  SpeedButton3.Enabled:=False;
          Edit7.Enabled:=False;
          Edit8.Enabled:=True;   SpeedButton4.Enabled:=True;
          Edit10.Enabled:=False; SpeedButton5.Enabled:=False;
          Edit11.Enabled:=True;  SpeedButton6.Enabled:=True;
          Edit13.Enabled:=False; SpeedButton7.Enabled:=False;
          Edit15.Enabled:=False; PngSpeedButton1.Enabled:=False;
          Edit17.Enabled:=False; PngSpeedButton2.Enabled:=False;
          Edit19.Enabled:=False; PngSpeedButton3.Enabled:=False;
          Edit21.Enabled:=False; PngSpeedButton4.Enabled:=False;
          Edit23.Enabled:=False; PngSpeedButton5.Enabled:=False;
          Edit25.Enabled:=False; PngSpeedButton6.Enabled:=False;
          Edit28.Enabled:=False; PngSpeedButton7.Enabled:=False;
          {$ENDREGION}
        end;
    23: begin
          {$REGION 'Vendas por produto'}
          ComboBox2.Enabled:=False;
          ComboBox3.Enabled:=False;
          ComboBox4.Enabled:=True;
          ComboBox5.Enabled:=False;
          ComboBox6.Enabled:=False;
          ComboBox7.Enabled:=False;
          ComboBox8.Enabled:=False;
          Edit1.Enabled:=True;   SpeedButton1.Enabled:=True;
          Edit3.Enabled:=False;  SpeedButton2.Enabled:=False;
          Edit5.Enabled:=False;  SpeedButton3.Enabled:=False;
          Edit7.Enabled:=False;
          Edit8.Enabled:=True;   SpeedButton4.Enabled:=True;
          Edit10.Enabled:=False; SpeedButton5.Enabled:=False;
          Edit11.Enabled:=False; SpeedButton6.Enabled:=False;
          Edit13.Enabled:=False; SpeedButton7.Enabled:=False;
          Edit15.Enabled:=False; PngSpeedButton1.Enabled:=False;
          Edit17.Enabled:=False; PngSpeedButton2.Enabled:=False;
          Edit19.Enabled:=False; PngSpeedButton3.Enabled:=False;
          Edit21.Enabled:=False; PngSpeedButton4.Enabled:=False;
          Edit23.Enabled:=False; PngSpeedButton5.Enabled:=False;
          Edit25.Enabled:=False; PngSpeedButton6.Enabled:=False;
          Edit28.Enabled:=False; PngSpeedButton7.Enabled:=False;
          {$ENDREGION}
        end;
    24: begin
          {$REGION 'Vendas por ramo de atividade'}
          ComboBox2.Enabled:=False;
          ComboBox3.Enabled:=False;
          ComboBox4.Enabled:=True;
          ComboBox5.Enabled:=True;
          ComboBox6.Enabled:=True;
          ComboBox7.Enabled:=True;
          ComboBox8.Enabled:=False;
          Edit1.Enabled:=True;   SpeedButton1.Enabled:=True;
          Edit3.Enabled:=True;   SpeedButton2.Enabled:=True;
          Edit5.Enabled:=False;  SpeedButton3.Enabled:=False;
          Edit7.Enabled:=False;
          Edit8.Enabled:=False;  SpeedButton4.Enabled:=False;
          Edit10.Enabled:=False; SpeedButton5.Enabled:=False;
          Edit11.Enabled:=False; SpeedButton6.Enabled:=False;
          Edit13.Enabled:=False; SpeedButton7.Enabled:=False;
          Edit15.Enabled:=False; PngSpeedButton1.Enabled:=False;
          Edit17.Enabled:=False; PngSpeedButton2.Enabled:=False;
          Edit19.Enabled:=False; PngSpeedButton3.Enabled:=False;
          Edit21.Enabled:=True;  PngSpeedButton4.Enabled:=True;
          Edit23.Enabled:=True;  PngSpeedButton5.Enabled:=True;
          Edit25.Enabled:=False; PngSpeedButton6.Enabled:=False;
          Edit28.Enabled:=False; PngSpeedButton7.Enabled:=False;
          {$ENDREGION}
        end;
    25: begin
          {$REGION 'Vendas por vendedor analítico'}
          ComboBox2.Enabled:=False;
          ComboBox3.Enabled:=False;
          ComboBox4.Enabled:=True;
          ComboBox5.Enabled:=True;
          ComboBox6.Enabled:=True;
          ComboBox7.Enabled:=True;
          ComboBox8.Enabled:=True;
          Edit1.Enabled:=True;   SpeedButton1.Enabled:=True;
          Edit3.Enabled:=True;   SpeedButton2.Enabled:=True;
          Edit5.Enabled:=False;  SpeedButton3.Enabled:=False;
          Edit7.Enabled:=False;
          Edit8.Enabled:=False;  SpeedButton4.Enabled:=False;
          Edit10.Enabled:=False; SpeedButton5.Enabled:=False;
          Edit11.Enabled:=False; SpeedButton6.Enabled:=False;
          Edit13.Enabled:=False; SpeedButton7.Enabled:=False;
          Edit15.Enabled:=False; PngSpeedButton1.Enabled:=False;
          Edit17.Enabled:=False; PngSpeedButton2.Enabled:=False;
          Edit19.Enabled:=False; PngSpeedButton3.Enabled:=False;
          Edit21.Enabled:=False; PngSpeedButton4.Enabled:=False;
          Edit23.Enabled:=True;  PngSpeedButton5.Enabled:=True;
          Edit25.Enabled:=False; PngSpeedButton6.Enabled:=False;
          Edit28.Enabled:=False; PngSpeedButton7.Enabled:=False;
          {$ENDREGION}
        end;
    26: begin
          {$REGION 'Vendas por vendedor e cidade'}
          ComboBox2.Enabled:=False;
          ComboBox3.Enabled:=False;
          ComboBox4.Enabled:=True;
          ComboBox5.Enabled:=False;
          ComboBox6.Enabled:=False;
          ComboBox7.Enabled:=False;
          ComboBox8.Enabled:=False;
          Edit1.Enabled:=True;   SpeedButton1.Enabled:=True;
          Edit3.Enabled:=True;   SpeedButton2.Enabled:=True;
          Edit5.Enabled:=False;  SpeedButton3.Enabled:=False;
          Edit7.Enabled:=False;
          Edit8.Enabled:=False;  SpeedButton4.Enabled:=False;
          Edit10.Enabled:=False; SpeedButton5.Enabled:=False;
          Edit11.Enabled:=False; SpeedButton6.Enabled:=False;
          Edit13.Enabled:=False; SpeedButton7.Enabled:=False;
          Edit15.Enabled:=False; PngSpeedButton1.Enabled:=False;
          Edit17.Enabled:=True;  PngSpeedButton2.Enabled:=True;
          Edit19.Enabled:=False; PngSpeedButton3.Enabled:=False;
          Edit21.Enabled:=False; PngSpeedButton4.Enabled:=False;
          Edit23.Enabled:=False; PngSpeedButton5.Enabled:=False;
          Edit25.Enabled:=False; PngSpeedButton6.Enabled:=False;
          Edit28.Enabled:=False; PngSpeedButton7.Enabled:=False;
          {$ENDREGION}
        end;
    27: begin
          {$REGION 'Vendas por vendedor e estado'}
          ComboBox2.Enabled:=False;
          ComboBox3.Enabled:=False;
          ComboBox4.Enabled:=True;
          ComboBox5.Enabled:=False;
          ComboBox6.Enabled:=False;
          ComboBox7.Enabled:=False;
          ComboBox8.Enabled:=False;
          Edit1.Enabled:=True;   SpeedButton1.Enabled:=True;
          Edit3.Enabled:=True;   SpeedButton2.Enabled:=True;
          Edit5.Enabled:=False;  SpeedButton3.Enabled:=False;
          Edit7.Enabled:=False;
          Edit8.Enabled:=False;  SpeedButton4.Enabled:=False;
          Edit10.Enabled:=False; SpeedButton5.Enabled:=False;
          Edit11.Enabled:=False; SpeedButton6.Enabled:=False;
          Edit13.Enabled:=False; SpeedButton7.Enabled:=False;
          Edit15.Enabled:=False; PngSpeedButton1.Enabled:=False;
          Edit17.Enabled:=False; PngSpeedButton2.Enabled:=False;
          Edit19.Enabled:=True;  PngSpeedButton3.Enabled:=True;
          Edit21.Enabled:=False; PngSpeedButton4.Enabled:=False;
          Edit23.Enabled:=False; PngSpeedButton5.Enabled:=False;
          Edit25.Enabled:=False; PngSpeedButton6.Enabled:=False;
          Edit28.Enabled:=False; PngSpeedButton7.Enabled:=False;
          {$ENDREGION}
        end;
    28: begin
          {$REGION 'Vendas por vendedor e tipo de frete'}
          ComboBox2.Enabled:=True;
          ComboBox3.Enabled:=False;
          ComboBox4.Enabled:=True;
          ComboBox5.Enabled:=False;
          ComboBox6.Enabled:=False;
          ComboBox7.Enabled:=False;
          ComboBox8.Enabled:=False;
          Edit1.Enabled:=True;   SpeedButton1.Enabled:=True;
          Edit3.Enabled:=True;   SpeedButton2.Enabled:=True;
          Edit5.Enabled:=False;  SpeedButton3.Enabled:=False;
          Edit7.Enabled:=False;
          Edit8.Enabled:=False;  SpeedButton4.Enabled:=False;
          Edit10.Enabled:=False; SpeedButton5.Enabled:=False;
          Edit11.Enabled:=False; SpeedButton6.Enabled:=False;
          Edit13.Enabled:=False; SpeedButton7.Enabled:=False;
          Edit15.Enabled:=False; PngSpeedButton1.Enabled:=False;
          Edit17.Enabled:=False; PngSpeedButton2.Enabled:=False;
          Edit19.Enabled:=False; PngSpeedButton3.Enabled:=False;
          Edit21.Enabled:=False; PngSpeedButton4.Enabled:=False;
          Edit23.Enabled:=False; PngSpeedButton5.Enabled:=False;
          Edit25.Enabled:=False; PngSpeedButton6.Enabled:=False;
          Edit28.Enabled:=False; PngSpeedButton7.Enabled:=False;
          {$ENDREGION}
        end;
    29: begin
          {$REGION 'Vendas por vendedor sintético'}
          ComboBox2.Enabled:=False;
          ComboBox3.Enabled:=False;
          ComboBox4.Enabled:=True;
          ComboBox5.Enabled:=True;
          ComboBox6.Enabled:=True;
          ComboBox7.Enabled:=True;
          ComboBox8.Enabled:=True;
          Edit1.Enabled:=True;   SpeedButton1.Enabled:=True;
          Edit3.Enabled:=False;  SpeedButton2.Enabled:=False;
          Edit5.Enabled:=False;  SpeedButton3.Enabled:=False;
          Edit7.Enabled:=False;
          Edit8.Enabled:=False;  SpeedButton4.Enabled:=False;
          Edit10.Enabled:=False; SpeedButton5.Enabled:=False;
          Edit11.Enabled:=False; SpeedButton6.Enabled:=False;
          Edit13.Enabled:=False; SpeedButton7.Enabled:=False;
          Edit15.Enabled:=False; PngSpeedButton1.Enabled:=False;
          Edit17.Enabled:=False; PngSpeedButton2.Enabled:=False;
          Edit19.Enabled:=False; PngSpeedButton3.Enabled:=False;
          Edit21.Enabled:=False; PngSpeedButton4.Enabled:=False;
          Edit23.Enabled:=False; PngSpeedButton5.Enabled:=False;
          Edit25.Enabled:=False; PngSpeedButton6.Enabled:=False;
          Edit28.Enabled:=False; PngSpeedButton7.Enabled:=False;
          {$ENDREGION}
        end;
    30: begin
          {$REGION 'Vendas por cliente com itens e data entrega'}
          ComboBox2.Enabled:=False;
          ComboBox3.Enabled:=False;
          ComboBox4.Enabled:=True;
          ComboBox5.Enabled:=True;
          ComboBox6.Enabled:=True;
          ComboBox7.Enabled:=True;
          ComboBox8.Enabled:=False;
          Edit1.Enabled:=False;  SpeedButton1.Enabled:=False;
          Edit3.Enabled:=True;   SpeedButton2.Enabled:=True;
          Edit5.Enabled:=False;  SpeedButton3.Enabled:=False;
          Edit7.Enabled:=False;
          Edit8.Enabled:=False;  SpeedButton4.Enabled:=False;
          Edit10.Enabled:=False; SpeedButton5.Enabled:=False;
          Edit11.Enabled:=False; SpeedButton6.Enabled:=False;
          Edit13.Enabled:=False; SpeedButton7.Enabled:=False;
          Edit15.Enabled:=False; PngSpeedButton1.Enabled:=False;
          Edit17.Enabled:=False; PngSpeedButton2.Enabled:=False;
          Edit19.Enabled:=False; PngSpeedButton3.Enabled:=False;
          Edit21.Enabled:=False; PngSpeedButton4.Enabled:=False;
          Edit23.Enabled:=False; PngSpeedButton5.Enabled:=False;
          Edit25.Enabled:=False; PngSpeedButton6.Enabled:=False;
          Edit28.Enabled:=False; PngSpeedButton7.Enabled:=False;
          {$ENDREGION}
        end;

  end;
end;

procedure TFormVendasRel.Edit5Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TEdit).Text;
end;

procedure TFormVendasRel.Edit5Exit(Sender: TObject);
begin
  LocGruposExit(Edit5,Edit6);
end;

procedure TFormVendasRel.Edit5KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton3.Click;
end;

procedure TFormVendasRel.Edit5KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormVendasRel.SpeedButton3Click(Sender: TObject);
begin
  LocGruposBotao(Edit5,Edit6);
end;

procedure TFormVendasRel.Edit7KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
end;

procedure TFormVendasRel.Edit8Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TEdit).Text;
end;

procedure TFormVendasRel.Edit8Exit(Sender: TObject);
begin
  LocProdutosExit(Edit8,Edit9);
end;

procedure TFormVendasRel.Edit8KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton4.Click;
end;

procedure TFormVendasRel.Edit8KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormVendasRel.SpeedButton4Click(Sender: TObject);
begin
  LocProdutosBotao(Edit8,Edit9);
end;

procedure TFormVendasRel.SpeedButton1Click(Sender: TObject);
begin
  LocVendedoresBotao(Edit1,Edit2,nil);
end;

procedure TFormVendasRel.BitBtn3Click(Sender: TObject);
begin
  MostrarAjuda('');
end;

procedure TFormVendasRel.SpeedButton5Click(Sender: TObject);
begin
  LocLotesBotao(Edit10,Edit27);

//  Application.CreateForm(TFormLotesLoc, FormLotesLoc);
//  FormLotesLoc.Label2.Visible:=False; //se invisivel, então pesquisa lotes em todos os produtos.
//  FormLotesLoc.Label3.Visible:=False;
//  FormLotesLoc.ShowModal;
//  if LotesLoc.Procurar then
//  begin
//    Edit10.Text:=FormLotesLoc.QYLotesLOT_CODIGO.Value.ToString;
//    Edit27.Text:=FormLotesLoc.QYLotesLOT_LOTE.Value;
//  end;
//  FormLotesLoc.Free;
//  FormLotesLoc:=nil;
end;

procedure TFormVendasRel.Edit10Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TEdit).Text;
end;

procedure TFormVendasRel.Edit10Exit(Sender: TObject);
begin
  LocLotesExit(Edit10,Edit27);
end;

procedure TFormVendasRel.Edit10KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton5.Click;
end;

procedure TFormVendasRel.Edit10KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormVendasRel.Edit11Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TEdit).Text;
end;

procedure TFormVendasRel.Edit11Exit(Sender: TObject);
begin
  LocMarcasExit(Edit11,Edit12);
end;

procedure TFormVendasRel.Edit11KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton6.Click;
end;

procedure TFormVendasRel.Edit11KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormVendasRel.SpeedButton6Click(Sender: TObject);
begin
  LocMarcasBotao(Edit11,Edit12);
end;

procedure TFormVendasRel.Edit13Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TEdit).Text;
end;

procedure TFormVendasRel.Edit13Exit(Sender: TObject);
begin
  LocCondicoesExit(Edit13,Edit14);
end;

procedure TFormVendasRel.Edit13KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton7.Click;
end;

procedure TFormVendasRel.Edit13KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormVendasRel.Edit15Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TEdit).Text;
end;

procedure TFormVendasRel.Edit15Exit(Sender: TObject);
begin
  LocFamiliasExit(Edit15,Edit16);
end;

procedure TFormVendasRel.Edit15KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  PngSpeedButton1.Click;
end;

procedure TFormVendasRel.Edit15KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormVendasRel.Edit17Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TEdit).Text;
end;

procedure TFormVendasRel.Edit17Exit(Sender: TObject);
begin
  LocCidadesExit(Edit17,Edit18);
end;

procedure TFormVendasRel.Edit17KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  PngSpeedButton2.Click;
end;

procedure TFormVendasRel.Edit17KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormVendasRel.Edit19Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TEdit).Text;
end;

procedure TFormVendasRel.Edit19Exit(Sender: TObject);
begin
  LocEstadosExit(Edit19,Edit20);
end;

procedure TFormVendasRel.Edit19KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  PngSpeedButton3.Click;
end;

procedure TFormVendasRel.Edit19KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormVendasRel.SpeedButton7Click(Sender: TObject);
begin
  LocCondicoesBotao(Edit13,Edit14);
end;

end.

