﻿unit Calculator;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.StdCtrls,
  // \/ Библиотеки, подключенные вручную
  Math,
  CE_l_lBin;

type
  TForm1 = class(TForm)

    RadioButton_degrees: TRadioButton;
    RadioButton_radians: TRadioButton;

    Window_plus_minus: TEdit;
    Button_change: TButton;
    Window_radix: TEdit;
    Button_redix: TButton;

    Button_simto: TButton;
    Button_round: TButton;
    Button_trunc: TButton;

    Y: TLabel;
    X: TLabel;

    Window_main: TEdit;
    Window_echo: TEdit;
    Window_sign: TEdit;

    Button_0: TButton;
    Button_1: TButton;
    Button_2: TButton;
    Button_3: TButton;
    Button_4: TButton;
    Button_5: TButton;
    Button_6: TButton;
    Button_7: TButton;
    Button_8: TButton;
    Button_9: TButton;

    Button_dot: TButton;
    Button_plus_minus: TButton;

    Button_pi: TButton;
    Button_e: TButton;
    Button_random: TButton;

    Button_clear_all: TButton;
    Button_clear: TButton;
    Button_backspace: TButton;
    Button_swap: TButton;

    Button_square: TButton;
    Button_square_root: TButton;
    Button_exp: TButton;

    Button_ln: TButton;
    Button_lg: TButton;
    Button_log2: TButton;

    Button_abs: TButton;
    Button_factorial: TButton;

    Button_hex: TButton;
    Button_bin: TButton;
    Button_abin: TButton;

    Button_sin: TButton;
    Button_cos: TButton;
    Button_tg: TButton;
    Button_arcsin: TButton;
    Button_arccos: TButton;
    Button_arctg: TButton;

    Button_not: TButton;
    Button_and: TButton;
    Button_or: TButton;
    Button_xor: TButton;
    Button_shr: TButton;
    Button_shl: TButton;

    Button_plus: TButton;
    Button_minus: TButton;
    Button_multiply: TButton;

    Button_divid: TButton;
    Button_div: TButton;
    Button_mod: TButton;

    Button_power: TButton;
    Button_root: TButton;
    Button_log: TButton;

    Button_max: TButton;
    Button_avg: TButton;
    Button_min: TButton;

    Button_hypotenuse: TButton;
    Button_cathet: TButton;
    Button_quad: TButton;

    Button_equals: TButton;

//    procedure RadioButton_degreesClick(Sender: TObject);
//    procedure RadioButton_radiansClick(Sender: TObject);

    procedure Button_changeClick(Sender: TObject);
    procedure Button_redixClick(Sender: TObject);
    procedure Button_simtoClick(Sender: TObject);

    procedure Button_roundClick(Sender: TObject);
    procedure Button_truncClick(Sender: TObject);

    procedure Button_0Click(Sender: TObject);
    procedure Button_1Click(Sender: TObject);
    procedure Button_2Click(Sender: TObject);
    procedure Button_3Click(Sender: TObject);
    procedure Button_4Click(Sender: TObject);
    procedure Button_5Click(Sender: TObject);
    procedure Button_6Click(Sender: TObject);
    procedure Button_7Click(Sender: TObject);
    procedure Button_8Click(Sender: TObject);
    procedure Button_9Click(Sender: TObject);

    procedure Button_dotClick(Sender: TObject);
    procedure Button_plus_minusClick(Sender: TObject);
    procedure Button_piClick(Sender: TObject);
    procedure Button_eClick(Sender: TObject);
    procedure Button_randomClick(Sender: TObject);

    procedure Button_clear_allClick(Sender: TObject);
    procedure Button_clearClick(Sender: TObject);
    procedure Button_backspaceClick(Sender: TObject);

    procedure Button_swapClick(Sender: TObject);

    procedure Button_squareClick(Sender: TObject);
    procedure Button_square_rootClick(Sender: TObject);
    procedure Button_expClick(Sender: TObject);

    procedure Button_lnClick(Sender: TObject);
    procedure Button_lgClick(Sender: TObject);
    procedure Button_log2Click(Sender: TObject);

    procedure Button_absClick(Sender: TObject);
    procedure Button_factorialClick(Sender: TObject);

    procedure Button_hexClick(Sender: TObject);
    procedure Button_binClick(Sender: TObject);
    procedure Button_abinClick(Sender: TObject);

    procedure Button_sinClick(Sender: TObject);
    procedure Button_cosClick(Sender: TObject);
    procedure Button_tgClick(Sender: TObject);

    procedure Button_arcsinClick(Sender: TObject);
    procedure Button_arccosClick(Sender: TObject);
    procedure Button_arctgClick(Sender: TObject);

    procedure Button_notClick(Sender: TObject);

    procedure Button_andClick(Sender: TObject);
    procedure Button_orClick(Sender: TObject);
    procedure Button_xorClick(Sender: TObject);

    procedure Button_shlClick(Sender: TObject);
    procedure Button_shrClick(Sender: TObject);

    procedure Button_plusClick(Sender: TObject);
    procedure Button_minusClick(Sender: TObject);
    procedure Button_multiplyClick(Sender: TObject);

    procedure Button_dividClick(Sender: TObject);
    procedure Button_divClick(Sender: TObject);
    procedure Button_modClick(Sender: TObject);

    procedure Button_powerClick(Sender: TObject);
    procedure Button_rootClick(Sender: TObject);
    procedure Button_logClick(Sender: TObject);

    procedure Button_maxClick(Sender: TObject);
    procedure Button_minClick(Sender: TObject);
    procedure Button_avgClick(Sender: TObject);

    procedure Button_hypotenuseClick(Sender: TObject);
    procedure Button_cathetClick(Sender: TObject);
    procedure Button_quadClick(Sender: TObject);

    procedure Button_equalsClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
// \/ Бинарные функции

{Функции перенесены в unit 'CE_l_lBinUnit'}

// /\ Бинарные функции
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
// \/ Функции проверок

//Проверка ошибок с дробным знаком при разных языках системы
function Dot_check(Check: String): String;
begin
  try
    //Попытка перевести строку в число
    Check := FloatToStr(StrToFloat(Check));
  except
    //Если возникает ошибка, то '.' меняется на ','
    on EConvertError
    do Check := StringReplace(Check, '.', ',', []);
  end;
  Result := Check;
end;

//Проверка целочисленности
function Integrt_check(Check: String): Boolean;
begin
  //Если есть ',' или '.', то False, иначе True
  if (Pos(',', Check) > 0)
  or (Pos('.', Check) > 0)
  then Result := False
  else Result := True;
end;

//Проверка целочисленности и положительности
function Natural(Check: String): Boolean;
begin
  //Если есть '-', то False, иначе True
  if (Pos('-', Check) = 0)
  and Integrt_check(Check)
  then Result := True
  else Result := False;
end;

// /\ Функции проверок
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
// \/ Кнопки выбора вида данных для тригонометрических функций

{Градусы
procedure TForm1.RadioButton_degreesClick(Sender: TObject);
begin
  RadioButton_degrees.Checked := True;
  RadioButton_radians.Checked := False;
end;

//Радианы
procedure TForm1.RadioButton_radiansClick(Sender: TObject);
begin
  RadioButton_radians.Checked := True;
  RadioButton_degrees.Checked := False;
end;}

// /\ Кнопки выбора вида данных для тригонометрических функций
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
// \/ Кнопки округления

//Смена положительности/отрицательности значения Redix для SimTo
procedure TForm1.Button_changeClick(Sender: TObject);
begin
  {'+' и '-' для SimTo,
   положительность или отрицательность степени 10
   для округления}
  if Window_plus_minus.Text = '-'
  then Window_plus_minus.Text := '+'
  else Window_plus_minus.Text := '-';
end;

{В случае с Hex определяет минимальное количество символов в записи числа;
 В случае с SimTo определяет до 10 в какой степени делать округление,
 работает в связке функцией выше}
procedure TForm1.Button_redixClick(Sender: TObject);
begin
  if Natural(Window_main.Text) then
    begin
      Window_radix.Text := Window_main.Text;
      Window_main.Text := '0';
    end
    else Window_echo.Text := 'Нужно целое число ≥ 0';
end;

//Математическое округление с учетом процедуры выше
procedure TForm1.Button_simtoClick(Sender: TObject);
begin
  Window_main.Text := Dot_check(Window_main.Text);
  Window_main.Text := FloatToStr(SimpleRoundTo(StrToFloat(Window_main.Text),
                                 StrToInt(Window_radix.Text)
                                 * StrToInt(Window_plus_minus.Text + '1')));
end;

//- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -


//Банковское округление
procedure TForm1.Button_roundClick(Sender: TObject);
begin
  Window_main.Text := Dot_check(Window_main.Text);
  Window_main.Text := IntToStr(Round(StrToFloat(Window_main.Text)));
end;

//Округление до целого (Указаного до дробного знака)
procedure TForm1.Button_truncClick(Sender: TObject);
begin
  Window_main.Text := Dot_check(Window_main.Text);
  Window_main.Text := IntToStr(Trunc(StrToFloat(Window_main.Text)));
end;


// /\ Кнопки округления
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
// \/ Кнопки ввода

//Кнопки цифровой клавиатуры (0-9)

{Процедура, вызываемая процедурами кнопок ввода данных.
 Изначально в окне находится ноль,
 чтобы не случались ошибки обработки пустого окна.
 При вводе любой цифры она меняет стартовый ноль,
 если в окне не ноль или он не один,
 то цифра приписывается следом. }

procedure Add_Number(Number: String);
begin
  if Form1.Window_main.Text = '0'
  then Form1.Window_main.Text := Number
  else Form1.Window_main.Text := Form1.Window_main.Text + Number;
end;

{Дальше 10 процедур для каждой нумерной кнопки,
 понять цифру кнопки можно по цифре
 в аргументах вызываемой функции}

procedure TForm1.Button_0Click(Sender: TObject);
begin
  Add_Number('0');
end;

procedure TForm1.Button_1Click(Sender: TObject);
begin
  Add_Number('1');
end;

procedure TForm1.Button_2Click(Sender: TObject);
begin
  Add_Number('2');
end;

procedure TForm1.Button_3Click(Sender: TObject);
begin
  Add_Number('3');
end;

procedure TForm1.Button_4Click(Sender: TObject);
begin
  Add_Number('4');
end;

procedure TForm1.Button_5Click(Sender: TObject);
begin
  Add_Number('5');
end;

procedure TForm1.Button_6Click(Sender: TObject);
begin
  Add_Number('6');
end;

procedure TForm1.Button_7Click(Sender: TObject);
begin
  Add_Number('7');
end;

procedure TForm1.Button_8Click(Sender: TObject);
begin
  Add_Number('8');
end;

procedure TForm1.Button_9Click(Sender: TObject);
begin
  Add_Number('9');
end;

//- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
//Кнопки знаков

//Дробная точка (запятая) (.)
procedure TForm1.Button_dotClick(Sender: TObject);
begin
  if Integrt_check(Window_main.Text) = True
    then Window_main.Text := Window_main.Text + '.';
end;

//Смена положительности/отрецательности (±)
procedure TForm1.Button_plus_minusClick(Sender: TObject);
begin
  Window_main.Text := Dot_check(Window_main.Text);
  if Integrt_check(Window_main.Text)
    then Window_main.Text := IntToStr(-1*StrToInt(Window_main.Text))
    else Window_main.Text := FloatToStr(-1*StrToFloat(Window_main.Text));
end;

//Модуль (|y|)
procedure TForm1.Button_absClick(Sender: TObject);
begin
  Window_main.Text := FloatToStr(Abs(StrToFloat(Window_main.Text)));
end;

//- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
//Кнопки констант

//(π)
procedure TForm1.Button_piClick(Sender: TObject);
begin
  Window_main.Text := FloatToStr(Pi);
end;

//(e)
procedure TForm1.Button_eClick(Sender: TObject);
begin
  Window_main.Text := FloatToStr(Exp(1));
end;

//(Rdm)
procedure TForm1.Button_randomClick(Sender: TObject);
begin
  Window_main.Text := FloatToStr(Random(1000));
end;

//- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
//Кнопки отчистки полей ввода

{Кнопки удаление символов.
 Работают тремя способами, но в любом случае
 оставляют в окне ввода ноль вместо пустого окна.}

{Отчистка всех полей}
procedure TForm1.Button_clear_allClick(Sender: TObject);
begin
  Window_echo.Text := '';
  Window_sign.Text := '';
  Window_main.Text := '0';
end;

{Отчистка основного поля}

procedure TForm1.Button_clearClick(Sender: TObject);
begin
  Window_main.Text := '0';
end;

{Удаление последнего символа}
procedure TForm1.Button_backspaceClick(Sender: TObject);
begin
  if Length(Window_main.Text) > 1 then
  Window_main.Text := Copy(Window_main.Text, 1, Length(Window_main.Text)-1)
  else Window_main.Text := '0';
end;

//- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
//Дополнительные кнопки ввода данных

{Смена мест значений}
procedure TForm1.Button_swapClick(Sender: TObject);
var boofer: String;
begin
  try
    Window_echo.Text := FloatToStr(StrToFloat(Window_echo.Text));
  except
    on EConvertError
    do Window_echo.Text := '0';
  end;
  Boofer := Window_echo.Text;
  Window_echo.Text := Window_main.Text;
  Window_main.Text := Boofer;
end;

// /\ Кнопки ввода
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
// \/ Унарные опирации

{Процедура, вызываемая нажатием на кнопки унарных операций.
 Указывает действите, переносит значение Главного поля в поле Эхо
 и в поле символа ставит =.}

procedure Uno_oper(Sing: String);
begin
  Form1.Window_echo.Text := Sing + Form1.Window_main.Text;
  Form1.Window_sign.Text := '=';
end;

//Кнопки степенных унарных действий (²; √; Exp)

procedure TForm1.Button_squareClick(Sender: TObject);
begin
  Window_echo.Text := Window_main.Text + '²';
  Window_sign.Text := '=';
  Window_main.Text := FloatToStr(Sqr(StrToFloat(Window_main.Text)));
end;

procedure TForm1.Button_square_rootClick(Sender: TObject);
begin
if StrToFloat(Window_main.Text) >= 0
  then
    begin
      Uno_oper('√');
      Window_main.Text := FloatToStr(Sqrt(StrToFloat(Window_main.Text)));
    end
  else Window_echo.Text := 'Нужно число ≥ 0';

end;

procedure TForm1.Button_expClick(Sender: TObject);
begin
  Uno_oper('Exp');
  Window_main.Text := FloatToStr(Exp(StrToFloat(Window_main.Text)));
end;

//- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
//Кнопки логарифмических унарных действий (lg; ln; log₂)

procedure TForm1.Button_lgClick(Sender: TObject);
begin
if StrToFloat(Window_main.Text) > 0 then
  begin
    Uno_oper('lg');
    Window_main.Text := FloatToStr(Log10(StrToFloat(Window_main.Text)))
  end
else Window_echo.Text := 'Нужно число > 0';
end;

procedure TForm1.Button_lnClick(Sender: TObject);
begin
if StrToFloat(Window_main.Text) > 0 then
  begin
    Uno_oper('ln');
    Window_main.Text := FloatToStr(Ln(StrToFloat(Window_main.Text)));
  end
  else Window_echo.Text := 'Нужно число > 0';
end;

procedure TForm1.Button_log2Click(Sender: TObject);

begin
if StrToFloat(Window_main.Text) > 0 then
  begin
    Uno_oper('log₂');
    Window_main.Text := FloatToStr(Log2(StrToFloat(Window_main.Text)));
  end
  else Window_echo.Text := 'Нужно число > 0';
end;

//- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
//Кнопка факториала (!)

//(!)
procedure TForm1.Button_factorialClick(Sender: TObject);
var I, F: Integer;
begin
  if Natural(Window_main.Text) then
    begin
      Window_echo.Text := Window_main.Text + '!';
      if (Window_main.Text = '0')
      or (Window_main.Text = '1')
      then Window_main.Text := '1'
      else
        begin;
          F := 1;
          for I := 2 to StrToInt(Window_main.Text) do F := F*I;
          Window_main.Text := IntToStr(F)
        end;
    end
  else Window_echo.Text := 'Нужно целое число ≥ 0';
end;

//- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
//Кнопки перевода в другие системы счисления (Hex; Bin; Abin)

//(Hex)
{Перевод из 10 в 16}
procedure TForm1.Button_hexClick(Sender: TObject);
begin
  if Integrt_check(Window_main.Text) then
    begin
      Window_echo.Text := Window_main.Text + '₁₀ = '
                          + IntToHex(StrToInt(Window_main.Text),
                          StrToInt(Window_radix.Text)) + '₁₆';
    end
  else Window_echo.Text := 'Нужно целое число';
end;


//(Bin)
{Перевод положительных чисел из ₁₀ в ₂,
 используя функцию, прописанную в библиотеке 'CE_l_lBinUnit'}
procedure TForm1.Button_binClick(Sender: TObject);
begin
  if Natural(Window_main.Text) then
    begin
      Window_echo.Text := Window_main.Text + '₁₀ = '
                          + IntToBin(StrToInt(Window_main.Text),
                          StrToInt(Window_radix.Text)) + '₂';
    end
  else Window_echo.Text := 'Нужно целое число ≥ 0';
end;

//(ABin)
{Перевод положительных чисел из ₂ в ₁₀,
 используя функцию, прописанную в библиотеке 'CE_l_lBinUnit'}
procedure TForm1.Button_abinClick(Sender: TObject);
begin
  if BinToInt(StrToInt(Window_main.Text)) > -1 then
    begin
      Window_echo.Text := Window_main.Text + '₂ -> ₁₀';
      Window_main.Text := IntToStr(BinToInt(StrToInt(Window_main.Text)));
      Window_sign.Text := '='
    end
  else Window_echo.Text := Window_main.Text + ' не бинарно';
end;

//- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
//Кнопки тригонометрических функций (sin, cos, tg)

procedure TForm1.Button_sinClick(Sender: TObject);
begin
  Uno_oper('sin');
  if RadioButton_degrees.Checked = True then
    begin
      Window_echo.Text := Window_echo.Text + '°';
      Window_main.Text := FloatToStr(Sin(StrToFloat(Window_main.Text)
                                         *Pi/180));
    end
  else Window_main.Text := FloatToStr(Sin(StrToFloat(Window_main.Text)));
  if (StrToFloat(Window_main.Text) < 0.0001)
  and (StrToFloat(Window_main.Text) > -0.0001)
  then Window_main.Text := '0';
end;

procedure TForm1.Button_cosClick(Sender: TObject);
begin
  Uno_oper('cos');
  if RadioButton_degrees.Checked = True then
    begin
      Window_echo.Text := Window_echo.Text + '°';
      Window_main.Text := FloatToStr(Cos(StrToFloat(Window_main.Text)
                                         *Pi/180));
    end
    else Window_main.Text := FloatToStr(Cos(StrToFloat(Window_main.Text)));
    if (StrToFloat(Window_main.Text) < 0.0001)
    and (StrToFloat(Window_main.Text) > -0.0001)
    then Window_main.Text := '0';
end;

procedure TForm1.Button_tgClick(Sender: TObject);
begin
  Uno_oper('tg');
  if RadioButton_degrees.Checked = True then
    begin
      Window_echo.Text := Window_echo.Text + '°';
      if (Round(StrToFloat(Window_main.Text)) mod 90 = 0)
      and (Round(StrToFloat(Window_main.Text)) mod 20 <> 0)
      then Window_echo.Text := Window_echo.Text + ' — Неопределен'
      else Window_main.Text :=
             FloatToStr(Tan(StrToFloat(Window_main.Text)*Pi/180));
    end
    else
    begin
      if ((Round(StrToFloat(Window_main.Text)*180/Pi)) mod 90 = 0)
      and ((Round(StrToFloat(Window_main.Text)*180/Pi)) mod 20 <> 0)
      then Window_echo.Text := 'tg' + Copy(Window_main.Text, 1, 5)
                               + ' — Неопределен'
      else Window_main.Text := FloatToStr(Tan(StrToFloat(Window_main.Text)));
    end;
end;

//- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
//Кнопки обратных тригонометрических функций (arcsin, arccos, arctg)

procedure TForm1.Button_arcsinClick(Sender: TObject);
begin
  if (-1 <= StrToFloat(Window_main.Text))
  and (StrToFloat(Window_main.Text) <= 1) then
  begin
    Uno_oper('ArcSin');
    if RadioButton_degrees.Checked = True
    then Window_main.Text := FloatToStr((Arcsin
                                        (StrToFloat(Window_main.Text)))/Pi*180)
    else
      Window_main.Text := FloatToStr(Arcsin(StrToFloat(Window_main.Text)));
  end
  else
    Window_echo.Text := 'Число должно быть ≥ -1 и ≤ 1';
end;

procedure TForm1.Button_arccosClick(Sender: TObject);
begin
  if (-1 <= StrToFloat(Window_main.Text))
  and (StrToFloat(Window_main.Text) <= 1)
  then
  begin
  Uno_oper('ArcCin');
    if RadioButton_degrees.Checked = True
    then Window_main.Text := FloatToStr((Arccos
                                        (StrToFloat(Window_main.Text)))/Pi*180)
    else
      Window_main.Text := FloatToStr(Arccos(StrToFloat(Window_main.Text)));
  end
  else
    Window_echo.Text := 'Число должно быть ≥ -1 и ≤ 1';
end;

procedure TForm1.Button_arctgClick(Sender: TObject);
begin
  Uno_oper('ArcTg');
  if RadioButton_degrees.Checked = True
  then Window_main.Text := FloatToStr((Arctan
                                      (StrToFloat(Window_main.Text)))/Pi*180)
  else Window_main.Text := FloatToStr(Arctan(StrToFloat(Window_main.Text)));
end;

// /\ Унарные математические опирации
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
// \/ Унарные логические опирации

{Кнопки логических операций
 с проверкой на целочисленность
 (Унарные: Not;
  Бинарные: And; Or; Xor; ShL; ShR)}

//(Not)
procedure TForm1.Button_notClick(Sender: TObject);
begin
  if Integrt_check(Window_main.Text) then
    begin
      Uno_oper('Not');
      Window_main.Text := IntToStr(Not(StrToInt(Window_main.Text)));
    end
  else Window_echo.Text := 'Нужно целое число';
end;

// /\ Унарные логические опирации
//- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
// \/ Бинарные логические опирации

{Процедура, вызываемая нажатием на кнопки бинарных операций.
 Переносит значение Главного поля в поле Эхо
 и указывает символ операции в соответствующем окне.}

procedure Bin_oper(Sing: String);
begin
  Form1.Window_echo.Text := Form1.Window_main.Text;
  Form1.Window_sign.Text := Sing;
  Form1.Window_main.Text := '0';
end;

//Кнопки бинарных логических операций (And; Or; Xor)

//(And)
procedure TForm1.Button_andClick(Sender: TObject);
begin
  if Integrt_check(Window_main.Text)
    then Bin_oper('And')
    else Window_echo.Text := 'Нужно целое число';
end;

//(Or)
procedure TForm1.Button_orClick(Sender: TObject);
begin
  if Integrt_check(Window_main.Text)
    then Bin_oper('Or')
    else Window_echo.Text := 'Нужно целое число';
end;

//(Xor)
procedure TForm1.Button_xorClick(Sender: TObject);
begin
  if Integrt_check(Window_main.Text)
    then Bin_oper('Xor')
    else Window_echo.Text := 'Нужно целое число';
end;

//- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
//Кнопки бинарных логических операций (ShL; ShR)

//(ShL)
procedure TForm1.Button_shlClick(Sender: TObject);
begin
  if Integrt_check(Window_main.Text)
    then Bin_oper('ShL')
    else Window_echo.Text := 'Нужно целое число';
end;

//(ShR)
procedure TForm1.Button_shrClick(Sender: TObject);
begin
  if Integrt_check(Window_main.Text)
    then Bin_oper('ShR')
    else Window_echo.Text := 'Нужно целое число';
end;

// /\ Бинарные логические опирации
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
// \/ Бинарные математические опирации

{Дальше 15 процедур для каждой кнопки бинарной операции,
 понять значение кнопки можно по символу
 в аргументе Bin_oper(...)}

//Кнопки основных действией (+; -; *)

procedure TForm1.Button_plusClick(Sender: TObject);
begin
  Bin_oper('+');
end;

procedure TForm1.Button_minusClick(Sender: TObject);
begin
  Bin_oper('-');
end;

procedure TForm1.Button_multiplyClick(Sender: TObject);
begin
  Bin_oper('*');
end;

//- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
//Кнопки деления (/; Div; Mod)

procedure TForm1.Button_dividClick(Sender: TObject);
begin
  Bin_oper('/');
end;

procedure TForm1.Button_divClick(Sender: TObject);
begin
  if Integrt_check(Window_main.Text)
    then Bin_oper('Div')
    else Window_echo.Text := 'Нужно целое число';
end;

procedure TForm1.Button_modClick(Sender: TObject);
begin
  if Integrt_check(Window_main.Text)
    then Bin_oper('Mod')
    else Window_echo.Text := 'Нужно целое число';
end;

//- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
//Кнопки степенных действией (^; √; log)

procedure TForm1.Button_powerClick(Sender: TObject);
begin
  Bin_oper('^');
end;

procedure TForm1.Button_rootClick(Sender: TObject);
begin
  Bin_oper('√');
end;

procedure TForm1.Button_logClick(Sender: TObject);
begin
if (StrToFloat(Window_main.Text) > 0)
and (Window_main.Text <> '1')
  then Bin_oper('logᵧx')
  else Window_echo.Text := 'Нужно число > 0 и ≠ 1';
end;

//- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
//Кнопки сепоратных действией (Max; Min; Avg)

procedure TForm1.Button_maxClick(Sender: TObject);
begin
  Bin_oper('Max');
end;

procedure TForm1.Button_minClick(Sender: TObject);
begin
  Bin_oper('Min');
end;

procedure TForm1.Button_avgClick(Sender: TObject);
begin
  Bin_oper('Avg');
end;

//- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

//Кнопки уравнений (Hptn; Ctht; Quad)

//(Hptn)
procedure TForm1.Button_hypotenuseClick(Sender: TObject);
begin
  Bin_oper('Hptn');
end;

//(Ctht)
procedure TForm1.Button_cathetClick(Sender: TObject);
begin
  Bin_oper('Ctht');
end;

//(Quad)
procedure TForm1.Button_quadClick(Sender: TObject);
begin
  Bin_oper('Quad');
end;

// /\ Бинарные опирации
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
// \/ Кнопка равно (=)

procedure TForm1.Button_equalsClick(Sender: TObject);
var D, b, c: Real;
begin

  //Замена (.) на (,), если это необходимо
  Window_main.Text := Dot_check(Window_main.Text);
  Window_echo.Text := Dot_check(Window_echo.Text);

  // - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  //(Or; Xor; And)

  if  Pos(Window_sign.Text, 'Or Xor And') > 0 then
    begin

      if Window_sign.Text = 'Or' then
        begin
          Window_sign.Text := Window_main.Text;
          Window_main.Text := IntToStr(StrToInt(Window_echo.Text)
                                       or StrToInt(Window_main.Text));
          Window_echo.Text := Window_echo.Text + 'or' + Window_sign.Text;
        end;

      if Window_sign.Text = 'Xor' then
        begin
          Window_sign.Text := Window_main.Text;
          Window_main.Text := IntToStr(StrToInt(Window_echo.Text)
                                       xor StrToInt(Window_main.Text));
          Window_echo.Text := Window_echo.Text + 'xor' + Window_sign.Text;
        end;

      if Window_sign.Text = 'And' then
        begin
          Window_sign.Text := Window_main.Text;
          Window_main.Text := IntToStr(StrToInt(Window_echo.Text)
                                       and StrToInt(Window_main.Text));
          Window_echo.Text := Window_echo.Text + 'and' + Window_sign.Text;
        end;

    Window_sign.Text := '=';
    end;

  // - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  //(ShR; ShL)

  if  Pos(Window_sign.Text, 'ShR ShL') > 0 then
    begin

      if Window_sign.Text = 'ShR' then
        begin
          Window_sign.Text := Window_main.Text;
          Window_main.Text := IntToStr(StrToInt(Window_echo.Text)
                                       shr StrToInt(Window_main.Text));
          Window_echo.Text := Window_echo.Text + 'shR' + Window_sign.Text;
        end;

      if Window_sign.Text = 'ShL' then
        begin
          Window_sign.Text := Window_main.Text;
          Window_main.Text := IntToStr(StrToInt(Window_echo.Text)
                                       shl StrToInt(Window_main.Text));
          Window_echo.Text := Window_echo.Text + 'ShL' + Window_sign.Text;
        end;

    Window_sign.Text := '=';
    end;

  // - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  //(+; -; *)

  if Pos(Window_sign.Text, '+ - *') > 0 then
    begin

      if Window_sign.Text = '+' then
        begin
          Window_sign.Text := Window_main.Text;
          Window_main.Text := FloatToStr(StrToFloat(Window_echo.Text)
                                       + StrToFloat(Window_main.Text));
          Window_echo.Text := Window_echo.Text + '+' + Window_sign.Text;
        end;

      if Window_sign.Text = '-' then
        begin
          Window_sign.Text := Window_main.Text;
          Window_main.Text := FloatToStr(StrToFloat(Window_echo.Text)
                                       - StrToFloat(Window_main.Text));
          Window_echo.Text := Window_echo.Text + '-' + Window_sign.Text;
        end;

      if Window_sign.Text = '*' then
        begin
          Window_sign.Text := Window_main.Text;
          Window_main.Text := FloatToStr(StrToFloat(Window_echo.Text)
                                       * StrToFloat(Window_main.Text));
          Window_echo.Text := Window_echo.Text + '*' + Window_sign.Text;
        end;

    Window_sign.Text := '=';
    end;

  // - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  //(/; div; mod)

  if Pos(Window_sign.Text, '/ Div Mod') > 0 then
    begin
      if  Window_main.Text = '0' then
        begin
          Window_main.Text := Window_echo.Text;
          Window_echo.Text := 'Делить на 0 нельзя';
        end
      else
        begin

          //(/)
          if Window_sign.Text = '/' then
            begin
              Window_sign.Text := Window_main.Text;
              Window_main.Text := FloatToStr(StrToFloat(Window_echo.Text)
                                             / StrToFloat(Window_main.Text));
              Window_echo.Text := Window_echo.Text + '/' + Window_sign.Text
            end
          else
            begin
            if Integrt_check(Window_main.Text) then
              begin

                //(Div)
                if Window_sign.Text = 'Div' then
                  begin
                    Window_sign.Text := Window_main.Text;
                    Window_main.Text := IntToStr(
                                          StrToInt(Window_echo.Text)
                                          div StrToInt(Window_main.Text));
                    Window_echo.Text := Window_echo.Text
                                        + 'div' + Window_sign.Text;
                  end;

                //(Mod)
                if Window_sign.Text = 'Mod' then
                  begin
                    Window_sign.Text := Window_main.Text;
                    Window_main.Text := IntToStr(
                                          StrToInt(Window_echo.Text)
                                          mod StrToInt(Window_main.Text));
                    Window_echo.Text := Window_echo.Text
                                        + 'mod' + Window_sign.Text;
                  end;
              end

            else
              begin
                Window_main.Text := Window_echo.Text;
                Window_echo.Text := 'Нужно целое число';
              end;
            end;
        end;
    Window_sign.Text := '=';
    end;

  // - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  //(^; √; logᵧx)

  if Pos(Window_sign.Text, '^ √ logᵧx') > 0 then
    begin

      if Window_sign.Text = '^' then
        begin
          Window_sign.Text := Window_main.Text;
          Window_main.Text := FloatToStr(power(StrToFloat(Window_echo.Text),
                                               StrToFloat(Window_main.Text)));
          Window_echo.Text := Window_echo.Text + '^' + Window_sign.Text;
        end;

      if Pos('-', Window_main.Text) = 0 then
        begin

          {К сожалению данная функция работает
           только с положительными числами.
           И даже если переписать код:

            or ((Integrt_check(Window_echo.Text))
                 and (StrToInt(Window_echo.Text) mod 2 = 1))

           с допуском отрицательных значений
           при нечетности степени, то всё равно ³√-27 будет NAN, а не -3}

          //(√)
          if Window_sign.Text = '√'
          then
            begin
              Window_sign.Text := Window_main.Text;
              Window_main.Text := FloatToStr(power(StrToFloat(Window_main.Text),
                                                   1/StrToFloat(Window_echo.Text)));
              Window_echo.Text := '^' + Window_echo.Text + '√' + Window_sign.Text;
            end;

          //(logᵧx)
          if Window_sign.Text = 'logᵧx' then
            begin
              Window_sign.Text := Window_main.Text;
              Window_main.Text := FloatToStr(LogN(StrToFloat(Window_echo.Text),
                                                  StrToFloat(Window_main.Text)));
              Window_echo.Text := 'log' + Window_echo.Text + ' ' + Window_sign.Text;
            end;

        end
    else Window_echo.Text := 'Нужно число > 0';
    Window_sign.Text := '=';
    end;

  // - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  //(Max; Min; Avg)

  if Pos(Window_sign.Text, 'Max Min Avg') > 0 then
    begin

      if Window_sign.Text = 'Max' then
        begin
          Window_sign.Text := Window_main.Text;
          Window_main.Text := FloatToStr(Max(StrToFloat(Window_echo.Text),
                                              StrToFloat(Window_main.Text)));
          Window_echo.Text := 'Max(' + Window_echo.Text + ', '
                                     + Window_sign.Text + ')';
        end;

      if Window_sign.Text = 'Min' then
        begin
          Window_sign.Text := Window_main.Text;
          Window_main.Text := FloatToStr(Min(StrToFloat(Window_echo.Text),
                                              StrToFloat(Window_main.Text)));
          Window_echo.Text := 'Min(' + Window_echo.Text + ', '
                                     + Window_sign.Text + ')';
        end;

      if Window_sign.Text = 'Avg' then
        begin
          Window_sign.Text := Window_main.Text;
          Window_main.Text := FloatToStr((StrToFloat(Window_echo.Text)
                              + StrToFloat(Window_main.Text))/2);
          Window_echo.Text := 'Avg(' + Window_echo.Text + ', '
                                     + Window_sign.Text + ')';
        end;

    Window_sign.Text := '=';
    end;

  // - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  //(Ctht; Hptn; Quad)

  if Pos(Window_sign.Text, 'Ctht Hptn Quad') > 0 then
    begin

      if Window_sign.Text = 'Ctht' then
        begin
          Window_sign.Text := Window_main.Text;
          if StrToFloat(Window_main.Text) > StrToFloat(Window_echo.Text) then
            begin
              Window_main.Text := FloatToStr(sqrt(sqr(StrToFloat(Window_main.Text))
                                  - sqr(StrToFloat(Window_echo.Text))));
              Window_echo.Text := '√(' + Window_sign.Text + '²'
                                  + '-' + Window_echo.Text + '²)';
            end
          else
            begin
              Window_main.Text := FloatToStr(sqrt(sqr(StrToFloat(Window_echo.Text))
                                  - sqr(StrToFloat(Window_main.Text))));

              Window_echo.Text := '√(' + Window_echo.Text + '²'
                                  + '-' + Window_sign.Text + '²)';
            end;
        end;

      if Window_sign.Text = 'Hptn' then
        begin
          Window_sign.Text := Window_main.Text;
          Window_main.Text := FloatToStr(sqrt(sqr(StrToFloat(Window_main.Text))
                                  + sqr(StrToFloat(Window_echo.Text))));
              Window_echo.Text := '√(' + Window_sign.Text + '²'
                                  + '+' + Window_echo.Text + '²)';
        end;

      if Window_sign.Text = 'Quad' then
        begin
           b := StrToFloat(Window_echo.Text);
           c := StrToFloat(Window_main.Text);
           D := sqr(b) - (4*c);
           if D < 0 then
            begin
              Window_echo.Text := 'x²+' + Window_echo.Text + 'x+'
                                  + Window_main.Text + '=0 Нет корней';
              Window_main.Text := '0';
            end;
           if D = 0 then
            begin
              Window_echo.Text := 'x²+' + Window_echo.Text + 'x+'
                                  + Window_main.Text + '=0 Один корень';
              Window_main.Text := FloatToStr(-b / 2);
            end;
           Window_sign.Text := '=';
           if D > 0 then
            begin
              Window_sign.Text := 'x₁, x₂';
              Window_echo.Text := FloatToStr((-b + sqrt(D)) / 2);
              Window_main.Text := FloatToStr((-b - sqrt(D)) / 2);
            end;
        end
        else Window_sign.Text := '=';

    end;
end;
end.
