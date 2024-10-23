unit CE_l_lBin;

interface

uses
// ���������� � IntToStr, StringReplace...
  System.SysUtils,
// ���������� � Power...
  Math;

function IntToBin(Number, Radix: Integer): String;
function BinToInt(Number: Integer): Integer;

implementation

//�������� �������

{������� �������� ����� �� 10-������ � 2-����� �������.}

{10 � 2}

function IntToBin(Number, Radix: Integer): String;
  var Res: String;
begin
  while Number > 0 do
    begin
      Res := IntToStr(Number mod 2) + Res;
      Number := Number div 2;
    end;
  while Length(Res) < Radix do Res := '0' + Res;
  Result := Res;
end;

{2 � 10, � ���������� ������,
 ���� ��������� �� �������� ������,
 � ������ ������ ��������� ����� -1}

function BinToInt(Number: Integer): Integer;
var I, Res: Integer;
var Test: String;
begin
  Res := 0;
  Test := IntToStr(Number);
  Test := StringReplace(Test, '0', '', [rfReplaceAll]);
  Test := StringReplace(Test, '1', '', [rfReplaceAll]);
  if Test = '' then
    begin
      for I := Length(IntToStr(Number)) downto 1 do
        begin
          if StrToInt(IntToStr(Number)[Length(IntToStr(Number))-I+1]) = 1
          then Res := Res + Round(power(2, I-1));
        end;
      Result := Res;
    end
    else Result := -1;
end;

// �������� �������

end.
