unit POXControl;

interface

uses Windows, Messages, SysUtils, DFX, digifx, Graphics,
     Controls, ExtCtrls, Classes;

procedure Draw(var Image: TImage; Frame: integer);
procedure PoxSetup();
procedure PoxShutDown();
procedure LoadPOX(POXFile: string);

var
RLE: TRLESprite;


implementation


procedure PoxSetup();
begin
  DFXInit(ExtractFilePath(ParamStr(0)));
end;

procedure PoxShutDown();
begin
  if Assigned(RLE) then RLE.free;
  RLE:=nil;
  DFXShutDown;
end;

procedure Draw(var Image: TImage; Frame: integer);
var
BitPlane: TBitPlane;

begin
  if assigned(RLE) then
  begin
    BitPlane := TBitPlane.create(Image.width,Image.height);
    BitPlane.KeyColor := clBlack;
    BitPlane.Clear;
    RLE.Draw(Frame + 5,0,0,BitPlane.Bits);
//    RLE.DrawColorize(Frame,0,0,BitPlane.Bits,100,50,50,100,100);
    BitPlane.DrawToDC(Image.canvas.handle,0,0);

    BitPlane.Free;
  end;
  Image.Refresh;


end;

procedure LoadPOX(POXFile: string);
var
  Stream: TFileStream;
  L: longint;
  EOB,BB: word;
  TextOnly: boolean;
  M: array [1..2] of Char;
  Comments: string;
begin
  RLE.free;
  RLE:=nil;
  EOB:=$4242;
  try
    Stream:=TFileStream.create(POXFile, fmOpenRead or fmShareCompat);
    try
      TextOnly:=false;
      Stream.Read(L,sizeof(L));
      if (L<>$41584F50) then exit;
      Stream.Read(M,sizeof(M));
      Stream.Read(BB,sizeof(BB)); //CRLF
      if (M=#67#67) then begin //CC
        Stream.Read(L,sizeof(L));
      end
      else if (M=#76#67) then begin //LC
        L:=Stream.Size-Stream.Position;
        TextOnly:=true;
      end
      else if (M=#68#83) then begin //DS
        Stream.Read(L,sizeof(L));
      end
      else if (M=#83#84) then begin //ST
        Stream.Read(L,sizeof(L));
      end
      else if (M=#84#84) then begin //TT
        Stream.Read(L,sizeof(L));
      end
      else if (M=#80#82) then begin //PR
        Stream.Read(L,sizeof(L));
      end
      else if (M=#83#67) then begin //SC
        Stream.Read(L,sizeof(L));
      end
      else if (M=#76#76) then begin //LL
        Stream.Read(L,sizeof(L));
      end
      else if (M=#73#73) then begin //II
        Stream.Read(L,sizeof(L));
      end
      else if (M=#83#80) then begin //SP
        Stream.Read(L,sizeof(L));
      end
      else exit;
      SetLength(Comments,L);
      Stream.Read(Comments[1],L);

      if TextOnly then
      begin
        RLE:=nil;
      end
      else begin
        Stream.Read(BB,sizeof(BB));
        if BB=EOB then
        begin
          RLE:=TRLESprite.create;
          RLE.LoadFromStream(Stream);
        end
        else
        begin
          exit;
        end;
      end;
    finally
      Stream.free;
    end;
  except
  end;
end;

end.
