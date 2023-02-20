/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 26896A55
/// @DnDArgument : "color" "$7B000000"
draw_set_colour($7B000000 & $ffffff);
var l26896A55_0=($7B000000 >> 24);
draw_set_alpha(l26896A55_0 / $ff);

/// @DnDAction : YoYo Games.Drawing.Draw_Rectangle
/// @DnDVersion : 1
/// @DnDHash : 4AF9120D
/// @DnDArgument : "x2" "display_get_gui_width()"
/// @DnDArgument : "y2" "55"
/// @DnDArgument : "fill" "1"
draw_rectangle(0, 0, display_get_gui_width(), 55, 0);

/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 59951BED
/// @DnDArgument : "font" "fnt_coins"
/// @DnDSaveInfo : "font" "fnt_coins"
draw_set_font(fnt_coins);

/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 4A4350D2
/// @DnDArgument : "color" "$9C000000"
draw_set_colour($9C000000 & $ffffff);
var l4A4350D2_0=($9C000000 >> 24);
draw_set_alpha(l4A4350D2_0 / $ff);

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 321DDB0C
/// @DnDArgument : "x" "22"
/// @DnDArgument : "y" "11"
/// @DnDArgument : "caption" ""Coins: ""
/// @DnDArgument : "var" "global.coins"
draw_text(22, 11, string("Coins: ") + string(global.coins));

/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 566BB6D3
/// @DnDArgument : "color" "$FF34E5DF"
draw_set_colour($FF34E5DF & $ffffff);
var l566BB6D3_0=($FF34E5DF >> 24);
draw_set_alpha(l566BB6D3_0 / $ff);

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 5AE2CF24
/// @DnDArgument : "x" "20"
/// @DnDArgument : "y" "8"
/// @DnDArgument : "caption" ""Coins: ""
/// @DnDArgument : "var" "global.coins"
draw_text(20, 8, string("Coins: ") + string(global.coins));