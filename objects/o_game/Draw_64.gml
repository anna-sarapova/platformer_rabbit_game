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

/// @DnDAction : YoYo Games.Common.Execute_Script
/// @DnDVersion : 1.1
/// @DnDHash : 7C853295
/// @DnDArgument : "script" "scr_draw_coins"
/// @DnDSaveInfo : "script" "scr_draw_coins"
script_execute(scr_draw_coins);

/// @DnDAction : YoYo Games.Common.Execute_Script
/// @DnDVersion : 1.1
/// @DnDHash : 39919CE5
/// @DnDArgument : "script" "scr_draw_score"
/// @DnDSaveInfo : "script" "scr_draw_score"
script_execute(scr_draw_score);