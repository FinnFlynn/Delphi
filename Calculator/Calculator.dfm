object Form1: TForm1
  Left = 0
  Top = 0
  ClientHeight = 201
  ClientWidth = 632
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesigned
  TextHeight = 15
  object Y: TLabel
    Left = 208
    Top = 44
    Width = 7
    Height = 15
    Caption = 'Y'
  end
  object X: TLabel
    Left = 208
    Top = 12
    Width = 7
    Height = 15
    Caption = 'X'
  end
  object Button_7: TButton
    Left = 232
    Top = 72
    Width = 24
    Height = 24
    Caption = '7'
    TabOrder = 0
    OnClick = Button_7Click
  end
  object Button_8: TButton
    Left = 264
    Top = 72
    Width = 24
    Height = 24
    Caption = '8'
    TabOrder = 1
    OnClick = Button_8Click
  end
  object Button_4: TButton
    Left = 232
    Top = 104
    Width = 24
    Height = 24
    Caption = '4'
    TabOrder = 2
    OnClick = Button_4Click
  end
  object Button_3: TButton
    Left = 296
    Top = 136
    Width = 24
    Height = 24
    Caption = '3'
    TabOrder = 3
    OnClick = Button_3Click
  end
  object Button_9: TButton
    Left = 296
    Top = 72
    Width = 24
    Height = 24
    Caption = '9'
    TabOrder = 4
    OnClick = Button_9Click
  end
  object Button_5: TButton
    Left = 264
    Top = 104
    Width = 24
    Height = 24
    Caption = '5'
    TabOrder = 5
    OnClick = Button_5Click
  end
  object Button_6: TButton
    Left = 296
    Top = 104
    Width = 24
    Height = 24
    Caption = '6'
    TabOrder = 6
    OnClick = Button_6Click
  end
  object Button_2: TButton
    Left = 264
    Top = 136
    Width = 24
    Height = 24
    Caption = '2'
    TabOrder = 7
    OnClick = Button_2Click
  end
  object Button_1: TButton
    Left = 232
    Top = 136
    Width = 24
    Height = 24
    Caption = '1'
    TabOrder = 8
    OnClick = Button_1Click
  end
  object Button_0: TButton
    Left = 232
    Top = 168
    Width = 56
    Height = 24
    Caption = '0'
    TabOrder = 9
    OnClick = Button_0Click
  end
  object Button_dot: TButton
    Left = 296
    Top = 168
    Width = 24
    Height = 24
    Caption = '.'
    TabOrder = 10
    OnClick = Button_dotClick
  end
  object Button_equals: TButton
    Left = 328
    Top = 136
    Width = 24
    Height = 56
    Caption = '='
    TabOrder = 11
    OnClick = Button_equalsClick
  end
  object Button_plus: TButton
    Left = 328
    Top = 104
    Width = 24
    Height = 24
    Caption = '+'
    TabOrder = 12
    OnClick = Button_plusClick
  end
  object Button_minus: TButton
    Left = 358
    Top = 104
    Width = 24
    Height = 24
    Caption = '-'
    TabOrder = 13
    OnClick = Button_minusClick
  end
  object Button_multiply: TButton
    Left = 328
    Top = 72
    Width = 24
    Height = 24
    Caption = '*'
    TabOrder = 14
    OnClick = Button_multiplyClick
  end
  object Button_divid: TButton
    Left = 358
    Top = 72
    Width = 24
    Height = 24
    Caption = '/'
    TabOrder = 15
    OnClick = Button_dividClick
  end
  object Button_plus_minus: TButton
    Left = 358
    Top = 136
    Width = 24
    Height = 24
    Caption = #177
    TabOrder = 16
    OnClick = Button_plus_minusClick
  end
  object Window_main: TEdit
    Left = 220
    Top = 40
    Width = 152
    Height = 23
    ReadOnly = True
    TabOrder = 17
    Text = '0'
  end
  object Window_echo: TEdit
    Left = 220
    Top = 8
    Width = 152
    Height = 23
    ReadOnly = True
    TabOrder = 18
  end
  object Window_sign: TEdit
    Left = 376
    Top = 8
    Width = 40
    Height = 23
    ReadOnly = True
    TabOrder = 19
  end
  object Button_clear_all: TButton
    Left = 161
    Top = 8
    Width = 40
    Height = 24
    Caption = 'Cl All'
    TabOrder = 20
    OnClick = Button_clear_allClick
  end
  object Button_clear: TButton
    Left = 161
    Top = 40
    Width = 40
    Height = 24
    Caption = 'Clear'
    TabOrder = 21
    OnClick = Button_clearClick
  end
  object Button_backspace: TButton
    Left = 376
    Top = 40
    Width = 24
    Height = 24
    Caption = '<-'
    TabOrder = 22
    OnClick = Button_backspaceClick
  end
  object Button_factorial: TButton
    Left = 432
    Top = 169
    Width = 24
    Height = 24
    Caption = 'y!'
    TabOrder = 23
    OnClick = Button_factorialClick
  end
  object Button_power: TButton
    Left = 392
    Top = 72
    Width = 24
    Height = 24
    Caption = 'x'#696
    TabOrder = 24
    OnClick = Button_powerClick
  end
  object Button_root: TButton
    Left = 392
    Top = 169
    Width = 32
    Height = 24
    Caption = ' '#739#8730'y'
    TabOrder = 25
    OnClick = Button_rootClick
  end
  object Button_square: TButton
    Left = 392
    Top = 136
    Width = 24
    Height = 24
    Caption = 'y'#178
    TabOrder = 26
    OnClick = Button_squareClick
  end
  object Button_square_root: TButton
    Left = 392
    Top = 104
    Width = 24
    Height = 24
    Caption = #8730'y'
    TabOrder = 27
    OnClick = Button_square_rootClick
  end
  object Button_pi: TButton
    Left = 200
    Top = 136
    Width = 24
    Height = 24
    Caption = #960
    TabOrder = 28
    OnClick = Button_piClick
  end
  object Button_abs: TButton
    Left = 358
    Top = 169
    Width = 24
    Height = 24
    Caption = '|y|'
    TabOrder = 29
    OnClick = Button_absClick
  end
  object Button_random: TButton
    Left = 152
    Top = 168
    Width = 40
    Height = 24
    Caption = 'Rdm'
    TabOrder = 30
    OnClick = Button_randomClick
  end
  object Button_lg: TButton
    Left = 104
    Top = 136
    Width = 40
    Height = 24
    Caption = 'lg'
    TabOrder = 31
    OnClick = Button_lgClick
  end
  object Button_log: TButton
    Left = 152
    Top = 104
    Width = 40
    Height = 24
    Caption = 'log'#7527'x'
    TabOrder = 32
    OnClick = Button_logClick
  end
  object Button_ln: TButton
    Left = 152
    Top = 136
    Width = 40
    Height = 24
    Caption = 'ln'
    TabOrder = 33
    OnClick = Button_lnClick
  end
  object Button_log2: TButton
    Left = 104
    Top = 104
    Width = 40
    Height = 24
    Caption = 'log'#8322
    TabOrder = 34
    OnClick = Button_log2Click
  end
  object Button_hex: TButton
    Left = 584
    Top = 40
    Width = 40
    Height = 24
    Caption = 'Hex'
    TabOrder = 35
    OnClick = Button_hexClick
  end
  object Button_e: TButton
    Left = 200
    Top = 168
    Width = 24
    Height = 24
    Caption = 'e'
    TabOrder = 36
    OnClick = Button_eClick
  end
  object Button_exp: TButton
    Left = 104
    Top = 168
    Width = 40
    Height = 24
    Caption = 'Exp'
    TabOrder = 37
    OnClick = Button_expClick
  end
  object Button_redix: TButton
    Left = 536
    Top = 40
    Width = 40
    Height = 24
    Caption = 'Radix'
    TabOrder = 38
    OnClick = Button_redixClick
  end
  object Window_radix: TEdit
    Left = 504
    Top = 40
    Width = 24
    Height = 23
    TabOrder = 39
    Text = '1'
  end
  object Button_bin: TButton
    Left = 536
    Top = 72
    Width = 40
    Height = 24
    Caption = 'Bin'
    TabOrder = 40
    OnClick = Button_binClick
  end
  object Button_abin: TButton
    Left = 584
    Top = 72
    Width = 40
    Height = 24
    Caption = 'ABin'
    TabOrder = 41
    OnClick = Button_abinClick
  end
  object Button_max: TButton
    Left = 424
    Top = 104
    Width = 56
    Height = 24
    Caption = 'Max (x y)'
    TabOrder = 42
    OnClick = Button_maxClick
  end
  object Button_min: TButton
    Left = 424
    Top = 136
    Width = 56
    Height = 24
    Caption = 'Min (x y)'
    TabOrder = 43
    OnClick = Button_minClick
  end
  object Button_sin: TButton
    Left = 56
    Top = 136
    Width = 40
    Height = 24
    Caption = 'Sin'
    TabOrder = 44
    OnClick = Button_sinClick
  end
  object Button_cos: TButton
    Left = 56
    Top = 169
    Width = 40
    Height = 24
    Caption = 'Cos'
    TabOrder = 45
    OnClick = Button_cosClick
  end
  object RadioButton_degrees: TRadioButton
    Left = 494
    Top = 8
    Width = 64
    Height = 24
    Caption = 'Degrees'
    Checked = True
    TabOrder = 46
    TabStop = True
  end
  object RadioButton_radians: TRadioButton
    Left = 424
    Top = 8
    Width = 64
    Height = 24
    Caption = 'Radians'
    TabOrder = 47
  end
  object Button_tg: TButton
    Left = 56
    Top = 104
    Width = 40
    Height = 24
    Caption = 'Tg'
    TabOrder = 48
    OnClick = Button_tgClick
  end
  object Button_avg: TButton
    Left = 424
    Top = 72
    Width = 56
    Height = 24
    Caption = #1040'vg (x y)'
    TabOrder = 49
    OnClick = Button_avgClick
  end
  object Button_round: TButton
    Left = 488
    Top = 104
    Width = 40
    Height = 24
    Caption = 'Round'
    TabOrder = 50
  end
  object Button_trunc: TButton
    Left = 488
    Top = 136
    Width = 40
    Height = 24
    Caption = 'Trunc'
    TabOrder = 51
  end
  object Button_simto: TButton
    Left = 488
    Top = 72
    Width = 40
    Height = 24
    Caption = 'SimTo'
    TabOrder = 52
    OnClick = Button_simtoClick
  end
  object Button_or: TButton
    Left = 536
    Top = 104
    Width = 40
    Height = 24
    Caption = 'Or'
    TabOrder = 53
    OnClick = Button_orClick
  end
  object Button_xor: TButton
    Left = 584
    Top = 104
    Width = 40
    Height = 24
    Caption = 'Xor'
    TabOrder = 54
    OnClick = Button_xorClick
  end
  object Button_and: TButton
    Left = 584
    Top = 136
    Width = 40
    Height = 24
    Caption = 'And'
    TabOrder = 55
    OnClick = Button_andClick
  end
  object Button_not: TButton
    Left = 536
    Top = 136
    Width = 40
    Height = 24
    Caption = 'Not'
    TabOrder = 56
    OnClick = Button_notClick
  end
  object Button_mod: TButton
    Left = 8
    Top = 40
    Width = 40
    Height = 24
    Caption = 'Mod'
    TabOrder = 57
    OnClick = Button_modClick
  end
  object Button_div: TButton
    Left = 56
    Top = 40
    Width = 40
    Height = 24
    Caption = 'Div'
    TabOrder = 58
    OnClick = Button_divClick
  end
  object Button_shr: TButton
    Left = 584
    Top = 168
    Width = 40
    Height = 24
    Caption = 'ShR'
    TabOrder = 59
    OnClick = Button_shrClick
  end
  object Button_shl: TButton
    Left = 536
    Top = 168
    Width = 40
    Height = 24
    Caption = 'ShL'
    TabOrder = 60
    OnClick = Button_shlClick
  end
  object Button_arcsin: TButton
    Left = 8
    Top = 136
    Width = 40
    Height = 24
    Caption = 'ArcSin'
    TabOrder = 61
    OnClick = Button_arcsinClick
  end
  object Button_arccos: TButton
    Left = 8
    Top = 168
    Width = 40
    Height = 24
    Caption = 'ArcCos'
    TabOrder = 62
    OnClick = Button_arccosClick
  end
  object Button_arctg: TButton
    Left = 8
    Top = 104
    Width = 40
    Height = 24
    Caption = 'ArcTg'
    TabOrder = 63
    OnClick = Button_arctgClick
  end
  object Window_plus_minus: TEdit
    Left = 488
    Top = 40
    Width = 16
    Height = 23
    TabOrder = 64
    Text = '+'
  end
  object Button_change: TButton
    Left = 472
    Top = 40
    Width = 16
    Height = 24
    Caption = #177
    TabOrder = 65
    OnClick = Button_changeClick
  end
  object Button_hypotenuse: TButton
    Left = 56
    Top = 72
    Width = 40
    Height = 24
    Caption = 'Hptn'
    TabOrder = 66
    OnClick = Button_hypotenuseClick
  end
  object Button_cathet: TButton
    Left = 104
    Top = 72
    Width = 40
    Height = 24
    Caption = 'Ctht'
    TabOrder = 67
    OnClick = Button_cathetClick
  end
  object Button_quad: TButton
    Left = 8
    Top = 72
    Width = 40
    Height = 24
    Caption = 'Quad'
    TabOrder = 68
    OnClick = Button_quadClick
  end
  object Button_swap: TButton
    Left = 408
    Top = 40
    Width = 40
    Height = 24
    Caption = 'Swap'
    TabOrder = 69
    OnClick = Button_swapClick
  end
end
