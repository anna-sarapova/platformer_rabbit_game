/// @DnDAction : YoYo Games.Drawing.Set_Alpha
/// @DnDVersion : 1
/// @DnDHash : 4B62B2ED
/// @DnDArgument : "alpha" "alpha"
draw_set_alpha(alpha);

/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 4A2BDFAB
/// @DnDArgument : "font" "fnt_floating_text"
/// @DnDSaveInfo : "font" "fnt_floating_text"
draw_set_font(fnt_floating_text);

/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 17B300F3
/// @DnDArgument : "color" "$78000000"
/// @DnDArgument : "alpha" "false"
draw_set_colour($78000000 & $ffffff);draw_set_alpha(1);

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 40BE2E12
/// @DnDArgument : "x" "1"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "caption" ""
/// @DnDArgument : "var" "txt"
draw_text(x + 1, y + 1,  + string(txt));

/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 007A9724
/// @DnDArgument : "color" "color"
/// @DnDArgument : "alpha" "false"
draw_set_colour(color & $ffffff);draw_set_alpha(1);

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 68514D1B
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "caption" ""
/// @DnDArgument : "var" "txt"
draw_text(x + 0, y + 0,  + string(txt));

/// @DnDAction : YoYo Games.Drawing.Set_Alpha
/// @DnDVersion : 1
/// @DnDHash : 4A5C9E2D
draw_set_alpha(1);