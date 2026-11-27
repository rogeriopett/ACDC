unit ReciboAvulso;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Mask, DBCtrls, StdCtrls, ComCtrls, StatusLine, ExtCtrls;

type
  TFormReciboAvulso = class(TForm)
    Image1: TImage;
    Edit1: TEdit;
    Edit3: TEdit;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    DBText4: TDBText;
    DBText5: TDBText;
    DBText6: TDBText;
    Edit2: TEdit;
    MaskEdit1: TMaskEdit;
    StaticText1: TStaticText;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    MaskEdit2: TMaskEdit;
    MaskEdit3: TMaskEdit;
    PrintDialog1: TPrintDialog;
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure MaskEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Edit3Exit(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormReciboAvulso: TFormReciboAvulso;
  ValorEdit3 : String;
implementation
uses DataMod, Main, ReciboAvulsoQ01, Funcoes1, ClientesLoc;
{$R *.dfm}

{function ExtensoMil(Numero : String) : String;
const
  Unidades : Array[1..19] of String = ('um','dois','tres','quatro',
    'cinco','seis','sete','oito','nove','dez','onze','doze','treze',
    'quatorze','quinze','dezesseis','dezessete','dezoito','dezenove');
  Dezenas : Array[2..9] of String = ('vinte','trinta','quarenta',
    'cinquenta','sessenta','setenta','oitenta','noventa');
  Centenas : Array[1..9] of String = ('cento','duzentos','trezentos',
    'quatrocentos','quinhentos','seiscentos','setecentos','oitocentos',
    'novecentos');
begin
  Result := '';
  if Numero[1] <> '0' then
    Result := Centenas[Ord(Numero[1])-Ord('0')];
  if StrToInt(Copy(Numero,2,2)) > 0 then begin
    if Result <> '' then
      Result := Result + ' e ';
    if StrToInt(Copy(Numero,2,2)) <= 19 then
      Result := Result + Unidades[StrToInt(Copy(Numero,2,2))]
    else begin
      Result := Result + Dezenas[Ord(Numero[2])-Ord('0')];
      if Numero[3] <> '0' then
        Result := Result + ' e ' + Unidades[Ord(Numero[3])-Ord('0')];
    end;
  end;
end;

function Extenso(Numero : String) : String;
const
  UnidSing : Array[0..5] of String = ('centavo','real','mil','milhao','bilhao','trilhao');
  UnidPlur : Array[0..5] of String = ('centavos','reais','mil','milhoes','bilhoes','trilhoes');
var
  Lista : TStringList;
  NumStr : String;
  i : Integer;
  JaLigou : Boolean;
  Texto : String;
  PosDec : Integer;
begin
  Lista := TStringList.Create;
  PosDec := Pos(DecimalSeparator,Numero);
  if PosDec > 0 then begin
    Lista.Add('0'+Copy(Numero,PosDec+1,2));
    NumStr := Copy(Numero,1,PosDec-1);
  end
  else begin
    Lista.Add('000');
    NumStr := Numero;
  end;
  while NumStr <> '' do
    if Length(NumStr) > 3 then begin
      Lista.Add(Copy(NumStr,Length(NumStr)-2,3));
      NumStr := Copy(NumStr,1,Length(NumStr)-3);
    end
    else begin
      while Length(NumStr) < 3 do
        NumStr := '0'+NumStr;
      Lista.Add(NumStr);
      NumStr := '';
    end;
  Result := '';
  JaLigou := False;
  for i := 0 to Lista.Count - 1 do begin
    if Lista[i] <> '000' then begin
      Texto := ExtensoMil(Lista[i]);
      if (Lista[i] <> '001') or ((i = 1) and (Lista.Count > 2)) then
        Texto := Texto + ' ' + UnidPlur[i]
      else
        Texto := Texto + ' ' + UnidSing[i];
      if (i = 2) and (Lista[1] = '000') then
        Texto := Texto + ' reais'
      else if (i > 2) and (Lista[2] = '000') and (Lista[1] = '000') then
        Texto := Texto + ' de reais';
      if Result <> '' then begin
        if JaLigou then
          Result := Texto + ', ' + Result
        else begin
          Result := Texto + ' e ' + Result;
          JaLigou := True;
        end;
      end
      else
        Result := Texto;
    end;
  end;
  Lista.Free;
end;}

procedure TFormReciboAvulso.Edit3KeyPress(Sender: TObject; var Key: Char);
begin //Só deixa digitar números no edit.
  if Key=#13 then Perform(wm_NextDlgCtl,0,0);
  if Key=#46 then Key:=#44; //troca ponto por virgula.
  if not (Key in ['0'..'9',',',Chr(8)]) then Key:=#0;
end;

procedure TFormReciboAvulso.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
  begin
    Perform(wm_NextDlgCtl,0,0);
    Key:=#0;
  end;
end;

procedure TFormReciboAvulso.MaskEdit1KeyPress(Sender: TObject;
  var Key: Char);
var F : TextFile;
    I : Integer;
begin
  if Key=#13 then
  begin
    if MessageDlg('Imprimir Recibo?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
    begin
      if ReciboEstilo='DOS' then //estilo DOS.
      begin
        AssignFile(F,ExtractFilePath(Application.ExeName)+'PRINT\Recibo.txt');
        Rewrite(F);
        for I := 1 to DM.TBParametrosPAR_LINHASINICIORECIBO.Value do
        begin //linhas iniciais
{01}      WriteLn(F,'');
        end; //#27#50 espaco entre linhas de  1/6", #27#48 espaco de 1/8", #27#49 espaco de 7/72".
{02}    WriteLn(F,#18#27#120#0+'================================================================================');
{03}    WriteLn(F,DM.TBEmpresaEMP_NOME.Value);
{04}    WriteLn(F,DM.TBEmpresaEMP_ENDERECO.Value);
{05}    WriteLn(F,DM.TBEmpresaEMP_BAIRRO.Value+' - '+DM.TBEmpresaEMP_CIDADE.Value+' - '+DM.TBEmpresaEMP_ESTADO.Value);
{06}    WriteLn(F,'Fones: '+DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_FONE2.Value);
{07}    WriteLn(F,'================================================================================');
{08}    WriteLn(F,#14+'     ...::: R  E  C  I  B  O :::...');
{09}    WriteLn(F,'--------------------------------------------------------------------------------');
{10}    WriteLn(F,#27#71+'Recebi(emos) de : '+#27#72+Edit1.Text);
{11}    WriteLn(F,#27#71+'Endereco........: '+#27#72+Edit4.Text);
{12}    WriteLn(F,#27#71+'Bairro..........: '+#27#72+Edit5.Text);
{13}    WriteLn(F,#27#71+'Cidade..........: '+#27#72+Edit6.Text);
{14}    WriteLn(F,#27#71+'CEP.............: '+#27#72+MaskEdit3.Text);
{15}    WriteLn(F,#27#71+'CNPJ............: '+#27#72+MaskEdit2.Text);
{16}    WriteLn(F,'');
{17}    WriteLn(F,'');
{18}    WriteLn(F,#27#71+'A importancia de: '+#27#72+Format('%m',[StrToFloat(ValorEdit3)]));
{19}    WriteLn(F,StaticText1.Caption);
{20}    WriteLn(F,'');
{21}    WriteLn(F,'');
{22}    WriteLn(F,#27#71+'Proveniente de..: '+#27#72+Edit2.Text);
{23}    WriteLn(F,#27#71+'Data............: '+#27#72+FormatDateTime('dddddd',StrToDate(MaskEdit1.Text)));
{24}    WriteLn(F,'--------------------------------------------------------------------------------');
{25}    WriteLn(F,'');
{26}    WriteLn(F,'');
{27}    WriteLn(F,'');
{28}    WriteLn(F,'________________________________');
{29}    WriteLn(F,'          Assinatura            ');
{30}    WriteLn(F,'================================================================================');
        for I := 1 to DM.TBParametrosPAR_LINHASFINALRECIBO.Value do
        begin
{31}      WriteLn(F,'');
        end;
        CloseFile(F);
        if (DebugPrint='NORMAL') and (Commandcom='Command.com') then
          WinExec(PChar('COMMAND.COM /C '+ExtractFilePath(Application.ExeName)+'PRINT\PRINT.BAT Recibo.txt '+ReciboPorta),sw_Hide) else
        if (DebugPrint='NORMAL') and (Commandcom='Cmd.exe') then
          WinExec(PChar('CMD.EXE /C '+ExtractFilePath(Application.ExeName)+'PRINT\PRINT.BAT Recibo.txt '+ReciboPorta),sw_Hide) else
        if (DebugPrint='DEBUG') and (Commandcom='Command.com') then
          WinExec(PChar('COMMAND.COM /C '+ExtractFilePath(Application.ExeName)+'PRINT\PRINT.BAT Recibo.txt '+ReciboPorta),sw_Normal) else
        if (DebugPrint='DEBUG') and (Commandcom='Cmd.exe') then
          WinExec(PChar('CMD.EXE /K '+ExtractFilePath(Application.ExeName)+'PRINT\PRINT.BAT Recibo.txt '+ReciboPorta),sw_Normal);
      end;
      if ReciboEstilo='WINDOWS' then //estilo windows.
      begin
        Application.CreateForm(TFormReciboAvulsoQ01, FormReciboAvulsoQ01);
        FormReciboAvulsoQ01.QuickRep1.ReportTitle:='Recibo Avulso';
        FormReciboAvulsoQ01.QRLabel12.Caption:=Format('%m',[StrToFloat(ValorEdit3)]); //valor.
        FormReciboAvulsoQ01.QRLabel8.Caption:=Edit1.Text; //recebi de quem...
        FormReciboAvulsoQ01.QRLabel18.Caption:=Edit4.Text; //endereco.
        FormReciboAvulsoQ01.QRLabel22.Caption:=Edit5.Text; //bairro.
        FormReciboAvulsoQ01.QRLabel19.Caption:=Edit6.Text; //cidade.
        FormReciboAvulsoQ01.QRLabel23.Caption:=MaskEdit3.Text; //CEP.
        FormReciboAvulsoQ01.QRLabel25.Caption:=MaskEdit2.Text; //CNPJ.
        FormReciboAvulsoQ01.QRLabel9.Caption:=StaticText1.Caption; //importancia.
        FormReciboAvulsoQ01.QRLabel10.Caption:=Edit2.Text; //proveniente.
        FormReciboAvulsoQ01.QRLabel11.Caption:=FormatDateTime('dddddd',Date);
        FormReciboAvulsoQ01.QuickRep1.PreviewModal;
        FormReciboAvulsoQ01.Free;
        FormReciboAvulsoQ01:=nil;
      end;
    end;
    Close;
  end;
end;

procedure TFormReciboAvulso.FormShow(Sender: TObject);
begin
  Edit3.Text:=''; //valor.
  Edit1.Text:=''; //de quem?
  Edit4.Text:=''; //endereco.
  Edit6.Text:=''; //cidade.
  Edit5.Text:=''; //bairro.
  MaskEdit2.Text:=''; //cnpj.
  MaskEdit3.Text:=''; //CEP.
  MaskEdit1.Text:=DateToStr(Date); //data.
  StaticText1.Caption:=''; //valor extenso.
  Edit2.Text:=''; //proveniente.
end;

procedure TFormReciboAvulso.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormReciboAvulso.Edit3Exit(Sender: TObject);
begin
  try
    ValorEdit3:=Edit3.Text;
    StaticText1.Caption:=Extenso(StrToFloat(Edit3.Text));
    Edit3.Text:=Format('%m',[StrToFloat(ValorEdit3)]);
    except on EConvertError do
    begin
      MessageDlg('Valor inválido!',mtError,[mbOk],0);
      Edit3.SetFocus;
    end;
  end; //try.
end;

procedure TFormReciboAvulso.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_F1 then
  MostrarAjuda('Modulo_Financeiro');
  
  if Key=VK_F4 then
  begin
    Application.CreateForm(TFormClientesLoc, FormClientesLoc);
    FormClientesLoc.ShowModal;
    if ClientesLoc.Procurar then
    begin
      Edit1.Text:=FormClientesLoc.QYClientesCLI_NOME.Value;
      Edit4.Text:=FormClientesLoc.QYClientesCLI_ENDERECO.Value;
      Edit6.Text:=FormClientesLoc.QYClientesCLI_CIDADE.Value;
      MaskEdit2.Text:=FormClientesLoc.QYClientesCLI_CNPJ.Value;
      Edit5.Text:=FormClientesLoc.QYClientesCLI_BAIRRO.Value;
      MaskEdit3.Text:=FormClientesLoc.QYClientesCLI_CEP.Value;
    end;
    FormClientesLoc.Free;
    FormClientesLoc:=nil;
  end;
end;

end.
