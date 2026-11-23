unit Empresa;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, DBCtrls, Buttons, ExtCtrls, DB, PngBitBtn, PngSpeedButton,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFormEmpresa = class(TForm)
    BitBtn1: TPngBitBtn;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label1: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit1: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    Bevel1: TBevel;
    DBEdit14: TDBEdit;
    Label14: TLabel;
    Label15: TLabel;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    SpeedButton1: TPngSpeedButton;
    DBEdit17: TDBEdit;
    Label16: TLabel;
    DBComboBox1: TDBComboBox;
    DBEdit19: TDBEdit;
    DBEdit20: TDBEdit;
    Label18: TLabel;
    Label19: TLabel;
    DBEdit21: TDBEdit;
    Label20: TLabel;
    DBEdit22: TDBEdit;
    Label22: TLabel;
    Label17: TLabel;
    DBComboBox2: TDBComboBox;
    Label23: TLabel;
    DBEdit18: TDBEdit;
    DBEdit23: TDBEdit;
    Label24: TLabel;
    DBEdit24: TDBEdit;
    PngBitBtn1: TPngBitBtn;
    Label3: TLabel;
    DBEdit6: TDBEdit;
    Label25: TLabel;
    DBComboBox3: TDBComboBox;
    Label26: TLabel;
    DBComboBox4: TDBComboBox;
    Label27: TLabel;
    DBComboBox5: TDBComboBox;
    DBEdit25: TDBEdit;
    SpeedButton3: TPngSpeedButton;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton1Click(Sender: TObject);
    procedure PngBitBtn1Click(Sender: TObject);
    procedure DBEdit7Enter(Sender: TObject);
    procedure DBEdit7Exit(Sender: TObject);
    procedure DBEdit7KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBEdit7KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit10Change(Sender: TObject);
    procedure DBEdit1Change(Sender: TObject);
    procedure DBEdit21Enter(Sender: TObject);
    procedure DBEdit21Exit(Sender: TObject);
    procedure DBEdit21KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit21KeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormEmpresa: TFormEmpresa;

implementation
uses DataMod, Main, EnderecosRuasLoc, EnderecosBuscaCEP, DataModSearch,
  Funcoes1, FuncoesFirenet;

{$R *.DFM}

procedure TFormEmpresa.BitBtn1Click(Sender: TObject);
begin
  Close;
end;

procedure TFormEmpresa.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;    
end;

procedure TFormEmpresa.PngBitBtn1Click(Sender: TObject);
begin
  Application.CreateForm(TFormEnderecosBuscaCEP, FormEnderecosBuscaCEP);
  FormEnderecosBuscaCEP.ShowModal;
  FormEnderecosBuscaCEP.Free;
  FormEnderecosBuscaCEP:=nil;
end;

procedure TFormEmpresa.DBEdit10Change(Sender: TObject);
begin
  FormatarTelefone(Sender as TDBEdit);
end;

procedure TFormEmpresa.DBEdit1Change(Sender: TObject);
begin
  FormatarTelefone(Sender as TDBEdit);
end;

procedure TFormEmpresa.DBEdit21Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TDBEdit).Text;
end;

procedure TFormEmpresa.DBEdit21Exit(Sender: TObject);
begin
  LocFornecedoresExit(DBEdit21,DBEdit25,DBEdit24,DM.TBEmpresa);
end;

procedure TFormEmpresa.DBEdit21KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton3.Click;
end;

procedure TFormEmpresa.DBEdit21KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormEmpresa.DBEdit7Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TDBEdit).Text;
end;

procedure TFormEmpresa.DBEdit7Exit(Sender: TObject);
begin
  if DM.CodigosOld=(Sender as TDBEdit).Text then
  Exit;
  if (DM.TBEmpresa.State in [dsInsert, dsEdit]) and ((Sender as TDBEdit).Text='     -   ') then
  begin
    DM.TBEmpresaEMP_CEP.Clear;
    DM.TBEmpresaEMP_ENDERECO.Clear;
    DM.TBEmpresaEMP_BAIRRO.Clear;
    DM.TBEmpresaEMP_ESTADO.Clear;
    DM.TBEmpresaEMP_ESTADOCODIGO.Clear;
    DM.TBEmpresaEMP_CIDADE.Clear;
    DM.TBEmpresaEMP_CIDADECODIGO.Clear;
    DM.TBEmpresaEMP_PAIS.Clear;
    DM.TBEmpresaEMP_PAISCODIGO.Clear;
    Exit;
  end;
  if (DM.TBEmpresa.State in [dsInsert, dsEdit]) and ((Sender as TDBEdit).Text<>'     -   ') then
  begin
    DMS.QYRuas.Close;
    DMS.QYRuas.ParamByName('codigo').AsString:=(Sender as TDBEdit).Text;
    DMS.QYRuas.Open;
    if not DMS.QYRuas.IsEmpty then
    begin
      DM.TBEmpresaEMP_ENDERECO.Value:=DMS.QYRuasRUA_NOME.Value;
      DM.TBEmpresaEMP_BAIRRO.Value:=DMS.QYRuasBAI_NOME.Value;
      DM.TBEmpresaEMP_ESTADO.Value:=DMS.QYRuasESD_SIGLA.Value;
      DM.TBEmpresaEMP_ESTADOCODIGO.Value:=DMS.QYRuasRUA_ESTADO.Value;
      DM.TBEmpresaEMP_CIDADE.Value:=DMS.QYRuasCID_NOME.Value;
      DM.TBEmpresaEMP_CIDADECODIGO.Value:=DMS.QYRuasRUA_CIDADE.Value;
      DM.TBEmpresaEMP_PAIS.Value:=DMS.QYRuasPAI_NOME.Value;
      DM.TBEmpresaEMP_PAISCODIGO.Value:=DMS.QYRuasRUA_PAIS.Value;
      DMS.QYRuas.FetchAll;
      //se tiver mais de uma rua com o mesmo CEP, abre a tela de localização de ruas já com a listagem das ruas.
      if DMS.QYRuas.RecordCount>1 then
      begin
        Application.CreateForm(TFormEnderecosRuasLoc, FormEnderecosRuasLoc);
        FormEnderecosRuasLoc.QYRuas.SQL.Clear;
        FormEnderecosRuasLoc.QYRuas.SQL.Add('select * from RUAS '+
                                            'left join BAIRROS on RUA_BAIRRO=BAI_CODIGO '+
                                            'left join CIDADES on RUA_CIDADE=CID_CODIGO '+
                                            'left join ESTADOS on RUA_ESTADO=ESD_CODIGO '+
                                            'left join PAISES on RUA_PAIS=PAI_CODIGO '+
                                            'where RUA_CEP like '+QuotedStr('%'+(Sender as TDBEdit).Text+'%')+' order by RUA_NOME');
        FormEnderecosRuasLoc.QYRuas.Active:=True;
        EnderecosRuasLoc.FocoNoGrid:=True;
        FormEnderecosRuasLoc.ShowModal;
        if EnderecosRuasLoc.Procurar then
        begin
          DM.TBEmpresaEMP_ENDERECO.Value:=FormEnderecosRuasLoc.QYRuasRUA_NOME.Value;
          DM.TBEmpresaEMP_BAIRRO.Value:=FormEnderecosRuasLoc.QYRuasBAI_NOME.Value;
          DM.TBEmpresaEMP_ESTADO.Value:=FormEnderecosRuasLoc.QYRuasESD_SIGLA.Value;
          DM.TBEmpresaEMP_ESTADOCODIGO.Value:=FormEnderecosRuasLoc.QYRuasRUA_ESTADO.Value;
          DM.TBEmpresaEMP_CIDADE.Value:=FormEnderecosRuasLoc.QYRuasCID_NOME.Value;
          DM.TBEmpresaEMP_CIDADECODIGO.Value:=FormEnderecosRuasLoc.QYRuasCID_CODIGO.Value;
          DM.TBEmpresaEMP_CEP.Value:=FormEnderecosRuasLoc.QYRuasRUA_CEP.Value;
          DM.TBEmpresaEMP_PAIS.Value:=FormEnderecosRuasLoc.QYRuasPAI_NOME.Value;
          DM.TBEmpresaEMP_PAISCODIGO.Value:=FormEnderecosRuasLoc.QYRuasRUA_PAIS.Value;
        end;
        FormEnderecosRuasLoc.Free;
        FormEnderecosRuasLoc:=nil;
      end;
    end else
    begin
      DM.TBEmpresaEMP_CEP.Clear;
      DM.TBEmpresaEMP_ENDERECO.Clear;
      DM.TBEmpresaEMP_BAIRRO.Clear;
      DM.TBEmpresaEMP_ESTADO.Clear;
      DM.TBEmpresaEMP_ESTADOCODIGO.Clear;
      DM.TBEmpresaEMP_CIDADE.Clear;
      DM.TBEmpresaEMP_CIDADECODIGO.Clear;
      DM.TBEmpresaEMP_PAIS.Clear;
      DM.TBEmpresaEMP_PAISCODIGO.Clear;
      MessageDlg('Endereço não encontrado.',mtInformation,[mbOk],0);
      (Sender as TDBEdit).SetFocus;
    end;
    DMS.QYRuas.Close;
  end;
end;

procedure TFormEmpresa.DBEdit7KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton1.Click;
end;

procedure TFormEmpresa.DBEdit7KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormEmpresa.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if DM.TBEmpresa.State in [dsInsert, dsEdit] then
  DM.TBEmpresa.Post;
end;

procedure TFormEmpresa.SpeedButton1Click(Sender: TObject);
begin
  DBEdit14.SetFocus; //tira o foco do campo CEP.
  Application.CreateForm(TFormEnderecosRuasLoc, FormEnderecosRuasLoc);
  FormEnderecosRuasLoc.ShowModal;
  if EnderecosRuasLoc.Procurar then
  begin
    DM.TBEmpresa.Edit;
    DM.TBEmpresaEMP_BAIRRO.Value:=FormEnderecosRuasLoc.QYRuasBAI_NOME.Value;
    DM.TBEmpresaEMP_CEP.Value:=FormEnderecosRuasLoc.QYRuasRUA_CEP.Value;
    DM.TBEmpresaEMP_CIDADE.Value:=FormEnderecosRuasLoc.QYRuasCID_NOME.Value;
    DM.TBEmpresaEMP_CIDADECODIGO.Value:=FormEnderecosRuasLoc.QYRuasCID_CODIGO.Value; //tabela ibge.
    DM.TBEmpresaEMP_ENDERECO.Value:=FormEnderecosRuasLoc.QYRuasRUA_NOME.Value;
    DM.TBEmpresaEMP_ESTADO.Value:=FormEnderecosRuasLoc.QYRuasESD_SIGLA.Value;
    DM.TBEmpresaEMP_ESTADOCODIGO.Value:=FormEnderecosRuasLoc.QYRuasRUA_ESTADO.Value;
    DM.TBEmpresaEMP_PAIS.Value:=FormEnderecosRuasLoc.QYRuasPAI_NOME.Value;
    DM.TBEmpresaEMP_PAISCODIGO.Value:=FormEnderecosRuasLoc.QYRuasPAI_CODIGO.Value;
  end;
  FormEnderecosRuasLoc.Free;
  FormEnderecosRuasLoc:=nil;
end;

procedure TFormEmpresa.SpeedButton3Click(Sender: TObject);
begin
  LocFornecedoresBotao(DBEdit21,DBEdit25,DBEdit24,DM.TBEmpresa);
end;

end.
