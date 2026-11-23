unit ImageUtils;

interface

uses JPEG, Winapi.Windows, vcl.Graphics, System.SysUtils, System.Classes, System.Math,
  Vcl.Imaging.PNGImage;

type
  TRGBArray = array[Word] of TRGBTriple;
  pRGBArray = ^TRGBArray;

procedure SmoothResize(Src, Dst: TBitmap);
function LoadJPEGPictureFile(Bitmap: TBitmap; FilePath, FileName: string): Boolean;
function SaveJPEGPictureFile(Bitmap: TBitmap; FilePath, FileName: string; Quality: Integer): Boolean;
procedure ResizeImage(FileName: string; MaxWidth: Integer);
function JPEGDimensions(Filename : string; var X, Y : Word) : boolean;
procedure Rotacionar(const FileName: String; Angulo: Double);

implementation
{ Before importing an image (jpg) into a database,
  I would like to resize it (reduce its size) and
  generate the corresponding smaller file. How can I do this?

  Load the JPEG into a bitmap, create a new bitmap
  of the size that you want and pass them both into
  SmoothResize then save it again ...
  there's a neat routine JPEGDimensions that
  gets the JPEG dimensions without actually loading the JPEG into a bitmap,
  saves loads of time if you only need to test its size before resizing. }

procedure SmoothResize(Src, Dst: TBitmap);
var
  x, y: Integer;
  xP, yP: Integer;
  xP2, yP2: Integer;
  SrcLine1, SrcLine2: pRGBArray;
  t3: Integer;
  z, z2, iz2: Integer;
  DstLine: pRGBArray;
  DstGap: Integer;
  w1, w2, w3, w4: Integer;
begin
  Src.PixelFormat := pf24Bit;
  Dst.PixelFormat := pf24Bit;

  if (Src.Width = Dst.Width) and (Src.Height = Dst.Height) then
    Dst.Assign(Src)
  else
  begin
    DstLine := Dst.ScanLine[0];
    DstGap  := Integer(Dst.ScanLine[1]) - Integer(DstLine);

    xP2 := MulDiv(pred(Src.Width), $10000, Dst.Width);
    yP2 := MulDiv(pred(Src.Height), $10000, Dst.Height);
    yP  := 0;

    for y := 0 to pred(Dst.Height) do
    begin
      xP := 0;

      SrcLine1 := Src.ScanLine[yP shr 16];

      if (yP shr 16 < pred(Src.Height)) then
        SrcLine2 := Src.ScanLine[succ(yP shr 16)]
      else
        SrcLine2 := Src.ScanLine[yP shr 16];

      z2  := succ(yP and $FFFF);
      iz2 := succ((not yp) and $FFFF);
      for x := 0 to pred(Dst.Width) do
      begin
        t3 := xP shr 16;
        z  := xP and $FFFF;
        w2 := MulDiv(z, iz2, $10000);
        w1 := iz2 - w2;
        w4 := MulDiv(z, z2, $10000);
        w3 := z2 - w4;
        DstLine[x].rgbtRed := (SrcLine1[t3].rgbtRed * w1 +
          SrcLine1[t3 + 1].rgbtRed * w2 +
          SrcLine2[t3].rgbtRed * w3 + SrcLine2[t3 + 1].rgbtRed * w4) shr 16;
        DstLine[x].rgbtGreen :=
          (SrcLine1[t3].rgbtGreen * w1 + SrcLine1[t3 + 1].rgbtGreen * w2 +

          SrcLine2[t3].rgbtGreen * w3 + SrcLine2[t3 + 1].rgbtGreen * w4) shr 16;
        DstLine[x].rgbtBlue := (SrcLine1[t3].rgbtBlue * w1 +
          SrcLine1[t3 + 1].rgbtBlue * w2 +
          SrcLine2[t3].rgbtBlue * w3 +
          SrcLine2[t3 + 1].rgbtBlue * w4) shr 16;
        Inc(xP, xP2);
      end; {for}
      Inc(yP, yP2);
      DstLine := pRGBArray(Integer(DstLine) + DstGap);
    end; {for}
  end; {if}
end; {SmoothResize}

function LoadJPEGPictureFile(Bitmap: TBitmap; FilePath, FileName: string): Boolean;
var
  JPEGImage: TJPEGImage;
begin
  if (FileName = '') then
  Result := False else
  begin
    try
      JPEGImage := TJPEGImage.Create;
      try
        JPEGImage.LoadFromFile(FilePath + FileName);
        // might fail...with an Exception.
        Bitmap.Assign(JPEGImage);
        // Assign the image to our bitmap.Result := True;
        // Got it so return True.
      finally
        JPEGImage.Free;  // ...must get rid of the JPEG image. finally
      end;
    except
      Result := False;
    end;
  end;
end;

function SaveJPEGPictureFile(Bitmap: TBitmap; FilePath, FileName: string; Quality: Integer): Boolean;
begin
  Result := True;
  try
    if ForceDirectories(FilePath) then
    begin
      with TJPegImage.Create do
      begin
        try
          Assign(Bitmap);
          CompressionQuality := Quality;
          SaveToFile(FilePath + FileName);
        finally
          Free;
        end;
      end;
    end;
  except
    raise;
    Result := False;
  end;
end;

procedure ResizeImage(FileName: string; MaxWidth: Integer);
var
  OldBitmap: TBitmap;
  NewBitmap: TBitmap;
  aWidth: Integer;
begin
  OldBitmap := TBitmap.Create;
  try
    if LoadJPEGPictureFile(OldBitmap, ExtractFilePath(FileName), ExtractFileName(FileName)) then
    begin
      aWidth := OldBitmap.Width;
      if (OldBitmap.Width > MaxWidth) then
      begin
        aWidth    := MaxWidth;
        NewBitmap := TBitmap.Create;
        try
          NewBitmap.Width  := MaxWidth;
          NewBitmap.Height := MulDiv(MaxWidth, OldBitmap.Height, OldBitmap.Width);
          SmoothResize(OldBitmap, NewBitmap);
          RenameFile(FileName, ChangeFileExt(FileName, '.$$$'));
          if SaveJPEGPictureFile(NewBitmap, ExtractFilePath(FileName), ExtractFileName(FileName), 75) then
          DeleteFile(ChangeFileExt(FileName, '.$$$')) else
          RenameFile(ChangeFileExt(FileName, '.$$$'), FileName);
        finally
          NewBitmap.Free;
        end;
      end;
    end;
  finally
    OldBitmap.Free;
  end;
end;

function JPEGDimensions(Filename : string; var X, Y : Word) : boolean;
var
  SegmentPos : Integer;
  SOIcount : Integer;
  b : byte;
begin
  Result  := False;
  with TFileStream.Create(Filename, fmOpenRead or fmShareDenyNone) do
  begin
    try
      Position := 0;
      Read(X, 2);
      if (X <> $D8FF) then
        exit;
      SOIcount  := 0;
      Position  := 0;
      while (Position + 7 < Size) do
      begin
        Read(b, 1);
        if (b = $FF) then begin
          Read(b, 1);
          if (b = $D8) then
            inc(SOIcount);
          if (b = $DA) then
            break;
        end;
      end;
      if (b <> $DA) then
      Exit;
      SegmentPos  := -1;
      Position    := 0;
      while (Position + 7 < Size) do
      begin
        Read(b, 1);
        if (b = $FF) then
        begin
          Read(b, 1);
          if (b in [$C0, $C1, $C2]) then
          begin
            SegmentPos  := Position;
            dec(SOIcount);
            if (SOIcount = 0) then
              break;
          end;
        end;
      end;
      if (SegmentPos = -1) then
        exit;
      if (Position + 7 > Size) then
        exit;
      Position := SegmentPos + 3;
      Read(Y, 2);
      Read(X, 2);
      X := Swap(X);
      Y := Swap(Y);
      Result  := true;
    finally
      Free;
    end;
  end;
end;

procedure PngToJpg(FileName: String);
var
  PNG: TPNGImage;
  BMP: TBitmap;
  JPG: TJPEGImage;
begin
  PNG:=TPNGImage.Create;
  BMP:=TBitmap.Create;
  JPG:=TJPEGImage.Create;
  try
    PNG.LoadFromFile(FileName);
    BMP.Assign(PNG);
    JPG.Assign(BMP);
    JPG.SaveToFile(FileName);
  finally
    FreeAndNil(BMP);
    FreeAndNil(PNG);
    FreeAndNil(JPG);
  end;
end;

procedure Rotacionar(const FileName: String; Angulo: Double);
var
  JpegImg: TJPEGImage;
  SrcBmp, DstBmp: TBitmap;
  Rad: Double;
  SinA, CosA: Double;
  X, Y, NewX, NewY: Integer;
  CX, CY, NCX, NCY: Integer;
  MinX, MinY, MaxX, MaxY: Integer;
begin
  JpegImg := TJPEGImage.Create;
  SrcBmp := TBitmap.Create;
  DstBmp := TBitmap.Create;
  try
    // carregar JPG
    JpegImg.LoadFromFile(FileName);
    SrcBmp.Assign(JpegImg);

    // converter ângulo para radianos
    Rad := DegToRad(Angulo);
    SinA := Sin(Rad);
    CosA := Cos(Rad);

    // centro da imagem original
    CX := SrcBmp.Width div 2;
    CY := SrcBmp.Height div 2;

    // calcular bounding box do bitmap rotacionado
    MinX :=  MaxInt; MinY :=  MaxInt;
    MaxX := -MaxInt; MaxY := -MaxInt;

    for X := -CX to SrcBmp.Width - CX do
      for Y := -CY to SrcBmp.Height - CY do
      begin
        NewX := Round(X * CosA - Y * SinA);
        NewY := Round(X * SinA + Y * CosA);

        if NewX < MinX then MinX := NewX;
        if NewY < MinY then MinY := NewY;
        if NewX > MaxX then MaxX := NewX;
        if NewY > MaxY then MaxY := NewY;
      end;

    // cria novo bitmap com dimensões ajustadas
    DstBmp.PixelFormat := pf24bit;
    DstBmp.Width  := MaxX - MinX + 1;
    DstBmp.Height := MaxY - MinY + 1;
    DstBmp.Canvas.Brush.Color := clWhite;
    DstBmp.Canvas.FillRect(Rect(0, 0, DstBmp.Width, DstBmp.Height));

    NCX := DstBmp.Width div 2;
    NCY := DstBmp.Height div 2;

    // copiar pixels rotacionando
    for X := 0 to SrcBmp.Width - 1 do
      for Y := 0 to SrcBmp.Height - 1 do
      begin
        NewX := Round((X - CX) * CosA - (Y - CY) * SinA) + NCX;
        NewY := Round((X - CX) * SinA + (Y - CY) * CosA) + NCY;

        if (NewX >= 0) and (NewX < DstBmp.Width) and
           (NewY >= 0) and (NewY < DstBmp.Height) then
          DstBmp.Canvas.Pixels[NewX, NewY] := SrcBmp.Canvas.Pixels[X, Y];
      end;

    // salvar novamente em JPG
    JpegImg.Assign(DstBmp);
    JpegImg.SaveToFile(FileName); // ou em outro caminho
  finally
    JpegImg.Free;
    SrcBmp.Free;
    DstBmp.Free;
  end;
end;

end.
