unit ufunctions;

interface

 function isCPF(CPF: string): boolean;
 function isCNPJ(CNPJ: string): boolean;
 function imprimeCNPJ(CNPJ: string): string;
 function imprimeCPF(CPF: string): string;
 function GetStrNumber(const S: string): string;
 function GeraDigitoEAN(Codigo: string; Numero: word): string;
 function ValidaEAN(Cod: string; Num: word; var CodEAN, Digito: string): Boolean;
 Function EAN13( CodigoBarras : String ) : String;
 function f_transz(vlr:double;masc:string):string;
 function f_strtran(campo:string;oquef:string;oqued:string):string;
 function f_strz(vlr:double;tam:integer;dec:integer):string;
 function f_iifi(teste:boolean;pri:integer;seg:integer):integer;
 function f_upper(campo:string):string;
 function f_crypdbf(l_font:string): string;
 function f_pos(ss: string; s:string): integer;
 function f_vali(campo:string):integer;
 function f_prmstrd(prm:integer;txt:string;delim:string):string;
 function f_alltrim(campo:string):string;
 function f_dcrypdbf(l_font:string): string;
 function StrCrypt(const AString, StrChave: AnsiString): AnsiString;
 function CryptografaSTR(Action, Src: String): String;
 function StringCrc16(AString : AnsiString ) : word;
 function f_CutChr(var Value: String; Count: Integer): String;
 function f_stod(datastr:string):TDateTime;
 function GetVersionInfo: string;
 procedure GetBuildInfo(var V1, V2, V3, V4: Word);
 function getiplocalhost(): String;
 procedure p_show_msg_meio;
 function MouseShowCursor(const Show: boolean): boolean;
 function f_Tecla(txt: string; tec: string; max: Integer; dec: Integer;
	shwdisp: char): string;




implementation

uses
  System.SysUtils, ACBRUtil, FireDAC.Comp.Client,  Vcl.Dialogs,
  System.Classes, Winapi.Windows, Vcl.Forms, IdIPWatch, System.IniFiles,
  ufrmPrincipal, UVariaveisGlobais, udtmBcoPdv, ufrmDtmAcbr;

  Function EAN13( CodigoBarras : String ) : String;
var nX    : Integer;
   nPeso  : Integer;
   nSoma  : Double;
   nMaior  : Double;
   nDigito : Integer;
Begin
   nPeso := 3;
   nSoma := 0;

  for nX := 12 downto 1 do
  begin
    nSoma := nSoma + StrToInt( CodigoBarras[ nX ] ) * nPeso;
    If nPeso = 3 Then
       nPeso := 1
    Else
       nPeso := 3;
  End;
  nMaior    := ( ( Trunc( nSoma / 10 ) + 1 ) * 10 );
  nDigito   := Trunc( nMaior ) - Trunc( nSoma );
  If nDigito = 10 Then
    nDigito := 0;
  Result := CodigoBarras + IntToStr( nDigito );
End;

function GetStrNumber(const S: string): string;
var
  vText : PChar;
begin
  vText := PChar(S);
  Result := '';

  while (vText^ <> #0) do
  begin
    {$IFDEF UNICODE}
    if CharInSet(vText^, ['0'..'9']) then
    {$ELSE}
    if vText^ in ['0'..'9'] then
    {$ENDIF}
      Result := Result + vText^;

    Inc(vText);
  end;
end;


function imprimeCNPJ(CNPJ: string): string;
begin
  imprimeCNPJ := copy(CNPJ, 1, 2) + '.' + copy(CNPJ, 3, 3) + '.' +
    copy(CNPJ, 6, 3) + '.' + copy(CNPJ, 9, 4) + '-' + copy(CNPJ, 13, 2);
end;

function imprimeCPF(CPF: string): string;
begin
   imprimeCPF := copy(CPF, 1, 3) + '.' + copy(CPF, 4, 3) + '.' +
    copy(CPF, 7, 3) + '-' + copy(CPF, 10, 2);
end;

function isCNPJ(CNPJ: string): boolean;
 var
 dig13, dig14: string;
  sm, i, r, peso: integer;

begin
  if ((CNPJ = '00000000000000') or (CNPJ = '11111111111111') or
      (CNPJ = '22222222222222') or (CNPJ = '33333333333333') or
      (CNPJ = '44444444444444') or (CNPJ = '55555555555555') or
      (CNPJ = '66666666666666') or (CNPJ = '77777777777777') or
      (CNPJ = '88888888888888') or (CNPJ = '99999999999999') or
      (length(CNPJ) <> 14)) then
       begin
        isCNPJ := false;
        exit;
       end;

  try
    sm := 0;
    peso := 2;
    for i := 12 downto 1 do
    begin
      sm := sm + (StrToInt(CNPJ[i]) * peso);
      peso := peso + 1;
      if (peso = 10)
         then peso := 2;
    end;
    r := sm mod 11;
    if ((r = 0) or (r = 1))
       then dig13 := '0' ;

    sm := 0;
    peso := 2;
    for i := 13 downto 1 do
    begin
      sm := sm + (StrToInt(CNPJ[i]) * peso);
      peso := peso + 1;
      if (peso = 10)
         then peso := 2;
    end;
    r := sm mod 11;
    if ((r = 0) or (r = 1))
       then dig14 := '0'
    else str((11-r):1, dig14);

    if ((dig13 = CNPJ[13]) and (dig14 = CNPJ[14]))
       then isCNPJ := true
    else isCNPJ := false;
  except
    isCNPJ := false
  end;
end;

function isCPF(CPF: string): boolean;
var
 dig10, dig11: string;
    s, i, r, peso: integer;

begin
  if ((CPF = '00000000000') or (CPF = '11111111111') or
      (CPF = '22222222222') or (CPF = '33333333333') or
      (CPF = '44444444444') or (CPF = '55555555555') or
      (CPF = '66666666666') or (CPF = '77777777777') or
      (CPF = '88888888888') or (CPF = '99999999999') or
      (length(CPF) <> 11))
  then
  begin
    isCPF := false;
    exit;
  end;

  try
    s     := 0;
    peso  := 10;
    for i := 1 to 9 do
    begin
      s := s + (StrToInt(CPF[i]) * peso);
      peso := peso - 1;
    end;
    r := 11 - (s mod 11);
    if ((r = 10) or (r = 11))
       then dig10 := '0'
    else str(r:1, dig10);

    s := 0;
    peso := 11;
    for i := 1 to 10 do
    begin
      s := s + (StrToInt(CPF[i]) * peso);
      peso := peso - 1;
    end;
    r := 11 - (s mod 11);
    if ((r = 10) or (r = 11))
       then dig11 := '0'
    else str(r:1, dig11);

    if ((dig10 = CPF[10]) and (dig11 = CPF[11]))
       then isCPF := true
    else isCPF := false;
  except
    isCPF := false
  end;

end;



function GeraDigitoEAN(Codigo: string; Numero: word): string;
var
  Tot1, Tot2, Tot3: LongInt;
  I: Integer;
  CodRef: string;
  Digito: Integer;
begin
  Tot1 := 0;
  Tot2 := 0;
  CodRef := Poem_Zeros(Codigo, Numero - 1);
  for I := 1 to (Numero - 1) do
  begin
    if Not Odd(I) then
      Tot1 := Tot1 + StrToInt(CodRef[i])
    else
      Tot2 := Tot2 + StrToInt(CodRef[i]);
  end;
  Tot1 := Trunc(Tot1 * 3);
  Tot3 := Tot1 + Tot2;
  Digito := trunc(10 * (int(Tot3 / 10.0) + 1) - Tot3);
  if Digito = 10 then
    Digito := 0;
  Result := IntToStr(Digito);

end;

function ValidaEAN(Cod: string; Num: word; var CodEAN, Digito: string): Boolean;
begin
  Digito := '';
  CodEAN := Cod;
  Result := False;
  if (Length(Cod) > Num) then
    Exit;
  if Length(Cod) = Num then
  begin
    Digito := GeraDigitoEAN(Copy(Cod, 1, Num - 1), Num);
    if copy(Cod, Num, 1) <> Digito then
      Exit;
    CodEAN := Cod;
  end;
  if Length(Cod) < Num then
  begin
    Digito := GeraDigitoEAN(copy(Poem_Zeros(Cod, Num), 1, Num - 1 ), Num);
    if copy(Poem_Zeros(Cod, Num), Num, 1) <> Digito then
      Exit;
    CodEAN := Poem_Zeros(Cod, Num);
  end;
  Result := True;
end;

function f_transz(vlr:double;masc:string):string;
var
   r,s: string;
   i: integer;
begin
   s := f_strtran(masc,',','');
   s := f_strtran(s,'/','');
   s := f_strtran(s,'-','');
   s := f_strtran(s,';','');
   r := f_strz(vlr,length(s),length(s)-f_iifi(pos('.',s)>0,pos('.',s),length(s)));
   r := f_strtran(r,'.',',');
   for i := 1 to length(masc) do begin
       if copy(masc,i,1) = ',' then Insert('.', r, i)
       else if copy(masc,i,1) = '/' then Insert('/', r, i)
       else if copy(masc,i,1) = '-' then Insert('-', r, i)
       else if copy(masc,i,1) = ';' then Insert('.', r, i);
   end;
   for i := 1 to length(r) do begin
       if pos(copy(r,i,1),'0123456789-') > 0 then break
       else r[i] := #32;
   end;
   Result := f_strtran(r,'-.',' -');
end;

function f_strtran(campo:string;oquef:string;oqued:string):string;
var
   m_posic : byte;
begin
   m_posic := pos(f_upper(oquef),f_upper(campo));

   while m_posic > 0 do begin
      delete(campo,m_posic,length(oquef));
      insert(oqued,campo,m_posic);
      m_posic := pos(f_upper(oquef),f_upper(campo));
   end;

   Result := campo;
end;

function f_iifi(teste:boolean;pri:integer;seg:integer):integer;
begin
   if teste = true then Result := pri
   else Result := seg;
end;

function f_strz(vlr:double;tam:integer;dec:integer):string;
var
   s: string;
begin
   str(vlr:tam:dec,s);
   Result := f_strtran(s,' ','0');
end;

function f_upper(campo:string):string;
var
   i: integer;
begin
   for i := 1 to length(campo) do begin
       if pos(campo[i],'abcdefghijklmnopqrstuvwxyzçáéíóúãõàèìòùâêîôû') > 0
       then campo[i] := chr(ord(campo[i])-32);
   end;
   Result := campo;
end;

function f_crypdbf(l_font:string): string;
const
   mix1 = '1234567890-=\qwertyuiop[]asdfghjkl;zxcvbnm,./!@#$%^&*()_+|QWERTYUIOP{}ASDFGHJKL:ZXCVBNM<>?';
   mix2 = '?><MNBVCXZ:LKJHGFDSA}{POIUYTREWQ|+_)(*&^%$#@!/.,mnbvcxz;lkjhgfdsa][poiuytrewq\=-0987654321';
   mix3 = 'asdfghjkl;qwertyuiop[]zxcvbnm,./1234567890-=\ASDFGHJKL:QWERTYUIOP{}ZXCVBNM<>?!@#$%^&*()_+|';
var
   l_fat,l_pos,i: integer;
   l_ret: string;
begin
   l_ret := '';
   l_fat := 1;
   l_pos := 0;
   for i := 1 to length(l_font) do begin
       case l_fat of
          1: l_pos := f_pos(copy(l_font,i,1),mix1);
          2: l_pos := f_pos(copy(l_font,i,1),mix2);
          3: l_pos := f_pos(copy(l_font,i,1),mix3);
       end;

       if l_pos > 0 then begin
          case l_fat of
             1: l_ret := l_ret + copy(mix2,l_pos,1);
             2: l_ret := l_ret + copy(mix3,l_pos,1);
             3: l_ret := l_ret + copy(mix1,l_pos,1);
          end;
       end else begin
          l_ret := l_ret + copy(l_font,i,1);
       end;
       l_fat := l_fat + 1;
       if l_fat > 3 then l_fat := 1;
   end;
   Result := l_ret;
end;

function f_pos(ss: string; s:string): integer;
var
   i: integer;
begin
  result := 0;
  for i := 1 to length(s) do
  begin
    if copy(s,i,length(ss)) = ss then
    begin
      Result := i;
      break;
    end;
  end;
end;

function f_vali(campo:string):integer;
var
s: string;
f,i,c: integer;
begin
  s := f_alltrim(f_strtran(campo,',','.'));
  for f := 1 to length(s) do
   begin
    if pos(s[f],'0123456789.-') = 0 then
    begin
      s := copy(s,1,f-1);
      break;
    end;
  end;
  val(s,i,c);
  Result := i;
end;

function f_prmstrd(prm:integer;txt:string;delim:string):string;
var
l_prm,l_ind,l_pos: integer;
l_txt,l_ret: string;
begin
  l_txt := txt;
  l_prm := prm;
  l_ret := '';
  l_ind := 0;
  while l_ind < l_prm do
  begin
    l_ind := l_ind + 1;
    l_txt := f_alltrim(l_txt);
    l_pos := pos(delim,l_txt);
    if l_pos = 0 then
    begin
      l_ret := l_txt;
      l_txt := '';
      end
   else
    begin
      l_ret := f_alltrim(copy(l_txt,1,l_pos-1));
      l_txt := copy(l_txt,l_pos+1,length(l_txt));
    end;
  end;
  Result := l_ret;
end;

function f_alltrim(campo:string):string;
var
i    : integer;
ini  : integer;
fim  : integer;
begin
  ini := 0;
  fim := length(campo);

  for i := 1 to length(campo) do begin
     if campo[i] <> ' ' then begin
        ini := i;
        break;
     end;
  end;

  for i := length(campo) downto 1 do begin
    if campo[i] <> ' ' then begin
       fim := i;
       break;
    end;
  end;

  if ini = 0 then Result := ''
  else Result := copy(campo,ini,fim-ini+1);
end;

function f_dcrypdbf(l_font:string): string;
const
   mix1 = '1234567890-=\qwertyuiop[]asdfghjkl;zxcvbnm,./!@#$%^&*()_+|QWERTYUIOP{}ASDFGHJKL:ZXCVBNM<>?';
   mix2 = '?><MNBVCXZ:LKJHGFDSA}{POIUYTREWQ|+_)(*&^%$#@!/.,mnbvcxz;lkjhgfdsa][poiuytrewq\=-0987654321';
   mix3 = 'asdfghjkl;qwertyuiop[]zxcvbnm,./1234567890-=\ASDFGHJKL:QWERTYUIOP{}ZXCVBNM<>?!@#$%^&*()_+|';
var
   l_fat,l_pos,i: integer;
   l_ret: string;
begin
   l_ret := '';
   l_fat := 1;
   l_pos := 0;
   for i := 1 to length(l_font) do begin
       case l_fat of
          1: l_pos := f_pos(copy(l_font,i,1),mix2);
          2: l_pos := f_pos(copy(l_font,i,1),mix3);
          3: l_pos := f_pos(copy(l_font,i,1),mix1);
       end;

       if l_pos > 0 then begin
          case l_fat of
             1: l_ret := l_ret + copy(mix1,l_pos,1);
             2: l_ret := l_ret + copy(mix2,l_pos,1);
             3: l_ret := l_ret + copy(mix3,l_pos,1);
          end;
       end else begin
          l_ret := l_ret + copy(l_font,i,1);
       end;
       l_fat := l_fat + 1;
       if l_fat > 3 then l_fat := 1;
   end;
   Result := l_ret;
end;

function StrCrypt(const AString, StrChave: AnsiString): AnsiString;
var
  i, TamanhoString, pos, PosLetra, TamanhoChave: Integer;
  C : AnsiChar ;
begin
  Result        := AString;
  TamanhoString := Length(AString);
  TamanhoChave  := Length(StrChave);

  for i := 1 to TamanhoString do
  begin
     pos := (i mod TamanhoChave);
     if pos = 0 then
        pos := TamanhoChave;

     posLetra := ord(Result[i]) xor ord(StrChave[pos]);
     if posLetra = 0 then
        posLetra := ord(Result[i]);

     C := AnsiChr(posLetra);
     Result[i] := C ;
  end;
end ;

function StringCrc16(AString : AnsiString ):word;
procedure ByteCrc(data:byte;var crc:word);
Var i : Byte;
begin
  For i := 0 to 7 do
    begin
      if ((data and $01) xor (crc and $0001)<>0) then
        begin
          crc := crc shr 1;
          crc := crc xor $A001;
        end
      else
      crc := crc shr 1;
      data := data shr 1;
    end;
  end;

  var len,i : integer;
begin
 len    := length(AString);
 Result := 0;

 for i := 1 to len do
 bytecrc( ord( AString[i] ), Result);
end;

function f_CutChr(var Value: String; Count: Integer): String;
begin
  Result := Copy(Value, 1, Count);
  Delete(Value, 1, Count);
end;

function f_stod(datastr:string):TDateTime;
begin
  try
    Result := strtodate(datastr);
   except
    Result := 0;
   end;
end;

procedure GetBuildInfo(var V1, V2, V3, V4: Word);
var
VerInfoSize, VerValueSize, Dummy: DWORD;
VerInfo: Pointer;
VerValue: PVSFixedFileInfo;
begin
  VerInfoSize := GetFileVersionInfoSize(Pchar(ParamStr(0)), Dummy);
  GetMem(VerInfo, VerInfoSize);
  GetFileVersionInfo(Pchar(ParamStr(0)), 0, VerInfoSize, VerInfo);
  VerQueryValue(VerInfo, '''', Pointer(VerValue), VerValueSize);
  with VerValue^ do
  begin
    V1 := dwFileVersionMS shr 16;
    V2 := dwFileVersionMS and $FFFF;
    V3 := dwFileVersionLS shr 16;
    V4 := dwFileVersionLS and $FFFF;
  end;
  Freemem(VerInfo, VerInfoSize);

end;

function GetVersionInfo: string;
var
V1, V2, V3, V4: Word;
begin
  GetBuildInfo(V1, V2, V3, V4);
  Result := IntToStr(V1) +'.' + IntToStr(V2) + IntToStr(V3)  + IntToStr(V4) + '';
end;


function CryptografaSTR(Action, Src: String): String;
Label Fim;
var
  KeyLen : Integer;
  KeyPos : Integer;
  OffSet : Integer;
  Dest, Key : String;
  SrcPos : Integer;
  SrcAsc : Integer;
  TmpSrcAsc : Integer;
  Range : Integer;
begin
  if (Src = '') Then
  begin
         Result:= '';
         Goto Fim;
  end;
  Key := 'AQUI VOCE CRIA SUA CHAVE PARA CRIPTOGRAFAR';
  Dest := '';
  KeyLen := Length(Key);
  KeyPos := 0;
  SrcPos := 0;
  SrcAsc := 0;
  Range := 256;
  if (Action = UpperCase('C')) then
  begin
   // Randomize;
   // OffSet := Random(Range);
    OffSet := Range;
    Dest := Format('%1.2x',[OffSet]);
    for SrcPos := 1 to Length(Src) do
    begin
      Application.ProcessMessages;
      SrcAsc := (Ord(Src[srcPos]) + OffSet) Mod 255;
      if KeyPos < KeyLen then KeyPos := KeyPos + 1 else KeyPos := 1;

      SrcAsc := SrcAsc Xor Ord(Key[KeyPos]);
      Dest := Dest + Format('%1.2x',[srcAsc]);
      OffSet := SrcAsc;
    end;
  end
  Else if (Action = UpperCase('D')) then
  begin
    OffSet := StrToInt('$' + copy(Src,1,2));//<--------------- adiciona o $ entra as aspas simples
    SrcPos := 3;
    repeat
      SrcAsc := StrToInt('$' + copy(Src,SrcPos,2));//<--------------- adiciona o $ entra as aspas simples
      if (KeyPos < KeyLen) Then KeyPos := KeyPos + 1 else KeyPos := 1;

      TmpSrcAsc := SrcAsc Xor Ord(Key[KeyPos]);

      if TmpSrcAsc <= OffSet then TmpSrcAsc := 255 + TmpSrcAsc - OffSet
        else TmpSrcAsc := TmpSrcAsc - OffSet;

      Dest := Dest + Chr(TmpSrcAsc);
      OffSet := SrcAsc;
      SrcPos := SrcPos + 2;
      until (SrcPos >= Length(Src));
  end;
  Result:= Dest;
Fim:
end;

function MouseShowCursor(const Show: boolean): boolean;
var
I: integer;
begin
  I := ShowCursor(LongBool(true));
  if Show then
  begin
    Result := I >= 0;
      while I < 0 do begin
      Result := ShowCursor(LongBool(true)) >= 0;
      Inc(I);
    end;
  end
  else
  begin
    Result := I < 0;
      while I >= 0 do begin
      Result := ShowCursor(LongBool(false)) < 0;
      Dec(I);
    end;
  end;
end;

function f_Tecla(txt: string; tec: string; max: Integer; dec: Integer;
	shwdisp: char): string;
begin
	Result := txt;

	if Pos(tec, '0123456789') > 0 then
	begin
		if dec > 0 then
		begin
			if (Pos('.', txt) > 0) and (Length(txt) - Pos('.', txt) < dec) then
				Result := Result + tec;
			if (Pos('.', txt) = 0) and (Length(txt) < max) then
				Result := Result + tec;
		end
		else
		begin
			if Length(txt) < max then
				Result := Result + tec;
		end;
	end;

	if (Pos(tec, '.,') > 0) and (dec > 0) then
	begin
		if (Pos(txt, '.,') = 0) and (Length(txt) <= max - dec) then
			Result := Result + '.';
	end;

	if Result <> txt then
	begin
		if shwdisp = 's' then
   // formPrincipal.XKeyBoardAcbr.
		//	formRegistro.XKeyBoard.LCDPrint(tec);
		if shwdisp = 'p' then
	 //		formRegistro.XKeyBoard.LCDPrint('*');
	end;
end;
 procedure p_show_msg_meio;
 begin
  try

  except

  end;

 end;

Function getiplocalhost(): String;
Var
  IP         : TIdIPWatch;
  NumeroDoIP : String;
begin
  IP := nil;
  Result := '';
  try
    IP := TIdIPWatch.Create(nil);
    NumeroDoIP  :=  IP.LocalIP;
    freeandnil(IP);
    Result :=  NumeroDoIP;
  except on E: Exception do
    begin
      showmessage(e.Message);
    end;
  end;
end;


end.
