unit Imagens.Utils;

interface

uses Vcl.Graphics, Vcl.Imaging.jpeg, Vcl.Imaging.pngimage, System.Classes, System.SysUtils;

procedure CropToFit(w, h: Integer; const ImagemOriginal, ImagemNova: string);
procedure CropToFitQuality(w, h: Integer; const ImagemOriginal, ImagemNova: string; JPEGQuality: Integer);

implementation

procedure CropToFit(w, h: Integer; const ImagemOriginal, ImagemNova: string);
var
  SourceImage: TGraphic;
  SourceWidth, SourceHeight: Integer;
  SourceAspectRatio, DesiredAspectRatio: Double;
  TempImage: TBitmap;
  TempWidth, TempHeight: Integer;
  X0, Y0: Integer;
  DesiredImage: TBitmap;
begin
  // Carregar a imagem original
  if LowerCase(ExtractFileExt(ImagemOriginal)) = '.jpg' then
    SourceImage := TJPEGImage.Create
  else if LowerCase(ExtractFileExt(ImagemOriginal)) = '.png' then
    SourceImage := TPNGImage.Create
  else
    raise Exception.Create('Formato de imagem não suportado');

  try
    SourceImage.LoadFromFile(ImagemOriginal);

    // Obter as dimensões da imagem original
    SourceWidth := SourceImage.Width;
    SourceHeight := SourceImage.Height;

    // Calcular as proporções
    SourceAspectRatio := SourceWidth / SourceHeight;
    DesiredAspectRatio := w / h;

    // Definir novas dimensões baseadas na proporção
    if SourceAspectRatio > DesiredAspectRatio then
    begin
      // A imagem original é mais larga
      TempHeight := h;
      TempWidth := Round(h * SourceAspectRatio);
    end else
    begin
      // A imagem original é mais alta ou igual
      TempWidth := w;
      TempHeight := Round(w / SourceAspectRatio);
    end;

    // Criar uma imagem temporária redimensionada
    TempImage := TBitmap.Create;
    try
      TempImage.SetSize(TempWidth, TempHeight);
      TempImage.Canvas.StretchDraw(Rect(0, 0, TempWidth, TempHeight), SourceImage);

      // Calcular as posições de corte (crop)
      X0 := (TempWidth - w) div 2;
      Y0 := (TempHeight - h) div 2;

      // Criar a imagem final com o tamanho desejado
      DesiredImage := TBitmap.Create;
      try
        DesiredImage.SetSize(w, h);

        // Copiar a região desejada da imagem temporária para a imagem final
        DesiredImage.Canvas.CopyRect(Rect(0, 0, w, h), TempImage.Canvas, Rect(X0, Y0, X0 + w, Y0 + h));

        // Salvar a imagem final
        DesiredImage.SaveToFile(ImagemNova);
      finally
        DesiredImage.Free;
      end;
    finally
      TempImage.Free;
    end;
  finally
    SourceImage.Free;
  end;
end;

procedure CropToFitQuality(w, h: Integer; const ImagemOriginal, ImagemNova: string; JPEGQuality: Integer);
var
  SourceImage: TGraphic;
  SourceWidth, SourceHeight: Integer;
  SourceAspectRatio, DesiredAspectRatio: Double;
  TempImage: TBitmap;
  TempWidth, TempHeight: Integer;
  X0, Y0: Integer;
  DesiredImage: TBitmap;
  JPEG: TJPEGImage;
begin
  // Carregar a imagem original
  if LowerCase(ExtractFileExt(ImagemOriginal)) = '.jpg' then
    SourceImage := TJPEGImage.Create
  else if LowerCase(ExtractFileExt(ImagemOriginal)) = '.png' then
    SourceImage := TPNGImage.Create
  else
    raise Exception.Create('Formato de imagem não suportado');

  try
    SourceImage.LoadFromFile(ImagemOriginal);

    // Obter as dimensões da imagem original
    SourceWidth := SourceImage.Width;
    SourceHeight := SourceImage.Height;

    // Calcular as proporções
    SourceAspectRatio := SourceWidth / SourceHeight;
    DesiredAspectRatio := w / h;

    // Definir novas dimensões baseadas na proporção
    if SourceAspectRatio > DesiredAspectRatio then
    begin
      // A imagem original é mais larga
      TempHeight := h;
      TempWidth := Round(h * SourceAspectRatio);
    end
    else
    begin
      // A imagem original é mais alta ou igual
      TempWidth := w;
      TempHeight := Round(w / SourceAspectRatio);
    end;

    // Criar uma imagem temporária redimensionada
    TempImage := TBitmap.Create;
    try
      TempImage.SetSize(TempWidth, TempHeight);
      TempImage.Canvas.StretchDraw(Rect(0, 0, TempWidth, TempHeight), SourceImage);

      // Calcular as posições de corte (crop)
      X0 := (TempWidth - w) div 2;
      Y0 := (TempHeight - h) div 2;

      // Criar a imagem final com o tamanho desejado
      DesiredImage := TBitmap.Create;
      try
        DesiredImage.SetSize(w, h);

        // Copiar a região desejada da imagem temporária para a imagem final
        DesiredImage.Canvas.CopyRect(Rect(0, 0, w, h), TempImage.Canvas, Rect(X0, Y0, X0 + w, Y0 + h));

        // Se for uma imagem JPEG, configuramos a qualidade
        if LowerCase(ExtractFileExt(ImagemNova)) = '.jpg' then
        begin
          JPEG := TJPEGImage.Create;
          try
            JPEG.Assign(DesiredImage);  // Converte o bitmap para JPEG
            JPEG.CompressionQuality := JPEGQuality;  // Configura a qualidade da imagem JPEG
            JPEG.SaveToFile(ImagemNova);  // Salva a imagem com a qualidade definida
          finally
            JPEG.Free;
          end;
        end
        else
        begin
          // Salva como PNG (não há configuração de qualidade para PNG)
          DesiredImage.SaveToFile(ImagemNova);
        end;
      finally
        DesiredImage.Free;
      end;
    finally
      TempImage.Free;
    end;
  finally
    SourceImage.Free;
  end;
end;
end.
