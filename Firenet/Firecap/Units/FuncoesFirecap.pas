unit FuncoesFirecap;

interface

uses DataMod, Vcl.Forms, Variants, QRCtrls, System.SysUtils, Graphics;

procedure RestaurarTamanhoForm(Formulario: TForm; Usuario: String);
procedure SalvarConsultaSQL(Formulario,Usuario,SQL: String);
procedure SalvarTamanhoForm(Formulario,Usuario: String; W,H,T,L: Integer);
procedure LogoTipo(Form: TForm; Tamanho: Integer=1);

implementation

procedure RestaurarTamanhoForm(Formulario: TForm; Usuario: String);
begin
  if DM.TBForms.Locate('FMS_FORM;FMS_USUARIO',VarArrayOf([Formulario.Name,Usuario]),[]) then
  begin
    Formulario.Width:=DM.TBFormsFMS_WIDTH.Value;
    Formulario.Height:=DM.TBFormsFMS_HEIGHT.Value;
    Formulario.Top:=DM.TBFormsFMS_TOP.Value;
    Formulario.Left:=DM.TBFormsFMS_LEFT.Value;
  end;
end;

procedure SalvarConsultaSQL(Formulario,Usuario,SQL: String);
begin
  if DM.TBSqls.Locate('SQL_FORM;SQL_USUARIO',VarArrayOf([Formulario,Usuario]),[]) then
  begin
    DM.TBSqls.Edit;
    DM.TBSqlsSQL_QUERY.Value:=SQL;
    DM.TBSqls.Post;
  end else
  begin
    DM.TBSqls.Insert;
    DM.TBSqlsSQL_FORM.Value:=Formulario;
    DM.TBSqlsSQL_USUARIO.Value:=Usuario;
    DM.TBSqlsSQL_QUERY.Value:=SQL;
    DM.TBSqls.Post;
  end;
end;

procedure SalvarTamanhoForm(Formulario,Usuario: String; W,H,T,L: Integer);
begin
  if DM.TBForms.Locate('FMS_FORM;FMS_USUARIO',VarArrayOf([Formulario,Usuario]),[]) then
  begin
    DM.TBForms.Edit;
    DM.TBFormsFMS_WIDTH.Value:=W;
    DM.TBFormsFMS_HEIGHT.Value:=H;
    DM.TBFormsFMS_TOP.Value:=T;
    DM.TBFormsFMS_LEFT.Value:=L;
    DM.TBForms.Post;
  end else
  begin
    DM.TBForms.Insert;
    DM.TBFormsFMS_FORM.Value:=Formulario;
    DM.TBFormsFMS_USUARIO.Value:=Usuario;
    DM.TBFormsFMS_WIDTH.Value:=W;
    DM.TBFormsFMS_HEIGHT.Value:=H;
    DM.TBFormsFMS_TOP.Value:=T;
    DM.TBFormsFMS_LEFT.Value:=L;
    DM.TBForms.Post;
  end;
end;

procedure LogoTipo(Form: TForm; Tamanho: Integer=1);
begin
  if DM.TBParametrosPAR_IMPRIMIRLOGOTIPO.Value='N' then
  begin
    //O cabeçalho dos relatórios devem conter esses componentes abaixo.
    //Altura cabeçalho: 65.
    //Fonte Times tamanho 12 para o nome da empresa.
    //Fonte Arial tamanho 8 para email, cnpj, fone, data, página.
    //Fonte Arial Negrito e Italico tamanho 8 para a descrição do relatório.
    //O campo date time deve estar com o valor de left em 680 e 1009 para landscape.
    //O campo nosso_nome deve estar com o valor de left em 671. e 1001 para landscape.
    TQRDBText(Form.FindComponent('EMPRESA')).Left:=3;
    TQRDBText(Form.FindComponent('EMAIL')).Left:=3;
    TQRDBText(Form.FindComponent('CNPJ')).Left:=3;
    TQRDBText(Form.FindComponent('FONE1')).Left:=3;
    TQRImage(Form.FindComponent('IMAGEM')).Visible:=False;
  end else
  begin
    try
      if Tamanho=1 then
      TQRImage(Form.FindComponent('IMAGEM')).Picture.LoadFromFile(ExtractFilePath(Application.ExeName)+'Logo_Empresa_120x60.jpg') else
      if Tamanho=2 then
      begin
        TQRImage(Form.FindComponent('IMAGEM')).Picture.LoadFromFile(ExtractFilePath(Application.ExeName)+'Logo_Empresa_290x60.jpg');
        TQRImage(Form.FindComponent('IMAGEM')).Width:=290;
        TQRDBText(Form.FindComponent('EMPRESA')).Font.Color:=clWhite;
        TQRDBText(Form.FindComponent('EMAIL')).Font.Color:=clWhite;
        TQRDBText(Form.FindComponent('CNPJ')).Font.Color:=clWhite;
        TQRDBText(Form.FindComponent('FONE1')).Font.Color:=clWhite;
      end;
      except on exception do //nothing.
    end;
  end;
end;

end.
