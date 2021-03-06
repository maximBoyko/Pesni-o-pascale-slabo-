{ p_37_3.pas - �襭�� ��४��᪮� ����� }
program p_37_3;

const cMax = 20;                { ��魮��� ������⢠, ॠ�쭮 250}
type tSet = set of 1..cMax;     { ������� ⨯� "������⢮" }

{----- ��楤�� �⥭�� ������⢠ �� 䠩�� -----}
procedure ReadSet(var aFile: text; var aSet: tSet);
var k: integer;
begin
    while not Eoln(aFile) do begin  { ���� �� ����� ��ப� }
        Read(aFile, k);             { �⠥� ��।��� �᫮ }
        aSet := aSet + [k];         { � ������塞 � �������� }
    end;
    Readln(aFile);                  { ���室 �� ᫥������ ��ப� }
end;

{----- ��楤�� �뢮�� ������⢠ � 䠩� -----}
procedure WriteSet(var aFile: text; const aSet: tSet);
var k: integer;
begin
    for k:=1 to 255 do          { 横� �� �ᥬ ������⠬ ������⢠ }
        if k in aSet then       { �᫨ k �室�� � ������⢮ }
            Write(aFile, k:4);  { ���⠥� � ��ப� }
    Writeln(aFile);             { �� ����砭�� - ���室 �� ᫥������ ��ப� }
end;

var r, s1, s2, s3: tSet;
    fileIn, fileOut: text;

{----- ������� �ணࠬ�� -----}
begin
    { ����⨥ ��室���� 䠩�� }
    Assign(fileIn, 'p_37_3_in.txt');
    Reset(fileIn);
    { �������� ��室���� 䠩�� }
    Assign(fileOut, 'p_37_3_out.txt');
    Rewrite(fileOut);
    { ���� ������� �� �室���� 䠩�� }
    s1 := [];   ReadSet(fileIn, s1);
    s2 := [];   ReadSet(fileIn, s2);
    s3 := [];   ReadSet(fileIn, s3);
    { ��襭�� }
    r := [1..255] - (s1+s2+s3);
    { �뢮� �襭�� � ��室��� 䠩� }
    WriteSet(fileOut, r);

    Close(fileIn);
    Close(fileOut);
end.