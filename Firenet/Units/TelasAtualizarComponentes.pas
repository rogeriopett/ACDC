unit TelasAtualizarComponentes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, ExtCtrls, Buttons, Menus, DBCtrls;

type
  TFormTelasAtualizarComponentes = class(TForm)
    Panel1: TPanel;
    Label3: TLabel;
    Label1: TLabel;
    ProgressBar2: TProgressBar;
    ProgressBar1: TProgressBar;
    Label2: TLabel;
    Timer1: TTimer;
    procedure Timer1Timer(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    procedure AtualizarComponentes;
    procedure RemoverComponentesModulosInativos;
  public
    { Public declarations }
  end;

var
  FormTelasAtualizarComponentes: TFormTelasAtualizarComponentes;
  PodeFechar: Boolean = False; //o timer verifica esta variavel para fechar o form automaticamente.

implementation
uses DataMod, Funcoes1, Main, Telas;

{$R *.dfm}

procedure TFormTelasAtualizarComponentes.AtualizarComponentes;
var FormClass: TFormClass;
  Form: TForm;
  I: Integer;
  S: String;
begin
  PodeFechar:=False;
  Timer1.Enabled:=True;
  Screen.Cursor:=crHourGlass;
  //Zera tabela de componentes.
  DM.QYAux.Close;
  DM.QYAux.SQL.Clear;
  DM.QYAux.SQL.Add('delete from COMPONENTES');
  DM.QYAux.ExecSQL;

  //MudarSQL(DM.TBComponentes,'select * from COMPONENTES'); //retorna o SQL original.
  DM.TBComponentes.Close;
  DM.TBComponentes.Open;
  DM.TBComponentes.DisableControls;
  //DM.TBTelas.DisableControls;

  //mudamos o sql das telas... queremos selecionar todas as telas.
  //o sql normal é pra selecionar só as telas ativas. (conforme modulos).
  DM.QYAux.Close; //era TBTelas.
  DM.QYAux.SQL.Clear;
  //DM.QYAux.SQL.Add('select * from TELAS left join MODULOS on TEL_MODULO=MOD_CODIGO order by TEL_NOMEFORM');
  DM.QYAux.SQL.Add('select TEL_NOMEFORM from TELAS where TEL_STATUS=''A'' order by TEL_NOMEFORM');
  DM.QYAux.Open;
  DM.QYAux.FetchAll;

  Label1.Caption:='';
  Label3.Caption:='';
  ProgressBar1.Position:=0;
  ProgressBar2.Position:=0;
  ProgressBar2.Max:=DM.QYAux.RecordCount;

  DM.QYAux.First;
  while not DM.QYAux.Eof do
  begin
    Label3.Caption:='Telas - '+IntToStr(ProgressBar2.Position+1)+' de '+IntToStr(ProgressBar2.Max);
    FormClass:=TFormClass(FindClass(DM.QYAux.FieldByName('TEL_NOMEFORM').AsString));
    //Se for FormMain não precisa ser criado novamente.
    //if UpperCase(DM.QYAux.FieldByName('TEL_NOMEFORM').AsString)<>'TFORMMAIN' then
    Form:=FormClass.Create(Self);// else
    //Form:=FormMain;

    ProgressBar1.Position:=0;
    ProgressBar1.Max:=Form.ComponentCount;
    for I:=0 to Form.ComponentCount-1 do
    begin
      Label1.Caption:=Form.Name+' - '+IntToStr(ProgressBar1.Position+1)+' de '+IntToStr(ProgressBar1.Max);
      if (Form.Components[I] is TMenuItem)    and ((Form.Components[I] as TMenuItem).Tag=1) or
         (Form.Components[I] is TToolButton)  and ((Form.Components[I] as TToolButton).Tag=1) or
         (Form.Components[I] is TGroupBox)    and ((Form.Components[I] as TGroupBox).Tag=1) or
         (Form.Components[I] is TDBComboBox)  and ((Form.Components[I] as TDBComboBox).Tag=1) or
         (Form.Components[I] is TEdit)        and ((Form.Components[I] as TEdit).Tag=1) or
         (Form.Components[I] is TDBEdit)      and ((Form.Components[I] as TDBEdit).Tag=1) or
         (Form.Components[I] is TSpeedButton) and ((Form.Components[I] as TSpeedButton).Tag=1) or
         (Form.Components[I] is TTabSheet)    and ((Form.Components[I] as TTabSheet).Tag=1) then
      begin
        DM.TBComponentes.Insert;
        DM.TBComponentesCOM_TELA.Value:=DM.QYAux.FieldByName('TEL_NOMEFORM').AsString;
        DM.TBComponentesCOM_COMPONENTE.Value:=Form.Components[I].Name;
        if Form.Components[I] is TMenuItem then
        begin
          S:=RemoveAcentos((Form.Components[I] as TMenuitem).Caption);
          if Pos('&',S)>0 then
          Delete(S,Pos('&',S),1);
          DM.TBComponentesCOM_DESCRICAO.Value:=S;
          DM.TBComponentesCOM_TIPO.Value:='Menu Item';
        end else
        if Form.Components[I] is TToolButton then
        begin
          DM.TBComponentesCOM_DESCRICAO.Value:=RemoveAcentos((Form.Components[I] as TToolButton).Hint); //ele pega o hint do menuitem se estiver associado.
          DM.TBComponentesCOM_TIPO.Value:='Botao';
        end else
        if Form.Components[I] is TSpeedButton then
        begin
          DM.TBComponentesCOM_DESCRICAO.Value:=RemoveAcentos((Form.Components[I] as TSpeedButton).Hint);
          DM.TBComponentesCOM_TIPO.Value:='Botao';
        end;
        if Form.Components[I] is TGroupBox then
        begin
          DM.TBComponentesCOM_DESCRICAO.Value:=RemoveAcentos((Form.Components[I] as TGroupBox).Hint);
          DM.TBComponentesCOM_TIPO.Value:='Group Box';
        end;
        if Form.Components[I] is TDBComboBox then
        begin
          DM.TBComponentesCOM_DESCRICAO.Value:=RemoveAcentos((Form.Components[I] as TDBComboBox).Hint);
          DM.TBComponentesCOM_TIPO.Value:='Campo';
        end;
        if Form.Components[I] is TEdit then
        begin
          DM.TBComponentesCOM_DESCRICAO.Value:=RemoveAcentos((Form.Components[I] as TEdit).Hint);
          DM.TBComponentesCOM_TIPO.Value:='Campo';
        end;
        if Form.Components[I] is TDBEdit then
        begin
          DM.TBComponentesCOM_DESCRICAO.Value:=RemoveAcentos((Form.Components[I] as TDBEdit).Hint);
          DM.TBComponentesCOM_TIPO.Value:='Campo';
        end;
        if Form.Components[I] is TTabSheet then
        begin
          DM.TBComponentesCOM_DESCRICAO.Value:=RemoveAcentos((Form.Components[I] as TTabSheet).Hint);
          DM.TBComponentesCOM_TIPO.Value:='Aba';
        end;
        DM.TBComponentes.Post;
      end;
      ProgressBar1.StepIt;
      Application.ProcessMessages;
    end; //for.
    if (UpperCase(DM.QYAux.FieldByName('TEL_NOMEFORM').AsString)<>'TFORMMAIN') then
    begin
      Form.Free;
      Form:=nil;
    end;
    DM.QYAux.Next;
    ProgressBar2.StepIt;
  end; //while.
  DM.TBComponentes.EnableControls;
  DM.QYAux.Close;

  //volta o sql normal.
  {DM.TBTelas.Close;
  DM.TBTelas.SelectSQL.Clear;
  if FormTelas<>nil then
  DM.TBTelas.SelectSQL.Add('select * from TELAS left join MODULOS on TEL_MODULO=MOD_CODIGO order by TEL_NOMEFORM') else
  DM.TBTelas.SelectSQL.Add('select * from TELAS left join MODULOS on TEL_MODULO=MOD_CODIGO where TEL_STATUS=''A'' order by TEL_DESCRICAO');
  DM.TBTelas.Open;

  DM.TBTelas.EnableControls;}
  Screen.Cursor:=crDefault;
end;

//############################################################################
// Esta rotina remove os registros dos componentes do FormMain que fazem    //
// parte dos modulos inativos.                                              //
// Quando inativar um módulo, lembrar de inativar as telas desse módulo.    //
// Como o FormMain não pode ser inativado, deve-se retirar da tabela de     //
// componentes os acessos à essas telas.                                    //
// Revisado em: 21/10/2008.                                                 //
//############################################################################
procedure TFormTelasAtualizarComponentes.RemoverComponentesModulosInativos;
var
  MenuItem: TMenuItem;
  procedure RemoverSubItens(Menu: TMenuItem);
  var I,B: Byte;
  begin
    for I:=0 to Menu.Count-1 do
    begin
      if DM.TBComponentes.Locate('COM_TELA;COM_COMPONENTE',VarArrayOf(['TFormMain',Menu.Items[I].Name]),[]) then
      DM.TBComponentes.Delete;
      //faz um loop pra encontrar o botao com o mesmo caption do subitem do menu passado no parametro.
      //TOOLBAR 1.
      for B:=0 to FormMain.ToolBar1.ButtonCount-1 do
      if FormMain.ToolBar1.Buttons[B].Caption=Menu.Items[I].Caption then
      if DM.TBComponentes.Locate('COM_TELA;COM_COMPONENTE',VarArrayOf(['TFormMain',FormMain.ToolBar1.Buttons[B].Name]),[]) then
      DM.TBComponentes.Delete;

      //TOOLBAR 2.
      for B:=0 to FormMain.ToolBar2.ButtonCount-1 do
      if FormMain.ToolBar2.Buttons[B].Caption=Menu.Items[I].Caption then
      if DM.TBComponentes.Locate('COM_TELA;COM_COMPONENTE',VarArrayOf(['TFormMain',FormMain.ToolBar2.Buttons[B].Name]),[]) then
      DM.TBComponentes.Delete;
    end;
  end;
begin
  DM.TBModulos.DisableControls;
  DM.TBModulos.First;
  try
    FormMain:=TFormMain.Create(nil);
    while not DM.TBModulos.Eof do
    begin
      if DM.TBModulosMOD_ACESSO.Value='N' then
      begin
        MenuItem:=FormMain.MainMenu1.Items.Find(DM.TBModulosMOD_MENUITEM.Value);
        if MenuItem<>nil then
        begin
          RemoverSubItens(FormMain.MainMenu1.Items.Find(DM.TBModulosMOD_MENUITEM.Value));
          if DM.TBComponentes.Locate('COM_TELA;COM_COMPONENTE',VarArrayOf(['TFormMain',MenuItem.Name]),[]) then
          DM.TBComponentes.Delete;
        end;
      end;
      DM.TBModulos.Next;
    end;
  finally
    FreeAndNil(FormMain);
  end;
  DM.TBModulos.EnableControls;
end;

procedure TFormTelasAtualizarComponentes.Timer1Timer(Sender: TObject);
begin
  if PodeFechar then
  begin
    Timer1.Enabled:=False;
    DM.AtualizandoAcessos:=False;
    Close;
  end;
end;

procedure TFormTelasAtualizarComponentes.FormActivate(Sender: TObject);
begin
  Screen.Cursor:=crHourGlass;
  try
    DM.AtualizandoAcessos:=True;
    Timer1.Enabled:=True;
    AtualizarComponentes;
    RemoverComponentesModulosInativos;
    PodeFechar:=True; //o timer verifica essa variavel.
  finally
    Screen.Cursor:=crDefault;
  end;
end;

procedure TFormTelasAtualizarComponentes.FormCreate(Sender: TObject);
begin
  Label1.Caption:='';
  Label3.Caption:='';
  ProgressBar1.Position:=0;
  ProgressBar2.Position:=0;
end;

end.
