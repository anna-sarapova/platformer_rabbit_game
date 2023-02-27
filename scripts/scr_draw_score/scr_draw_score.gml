/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 2C65A4C1
/// @DnDComment : // Script assets have changed for v2.3.0 see$(13_10)// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/// @DnDArgument : "funcName" "scr_draw_score"
function scr_draw_score() 
{
	/// @DnDAction : YoYo Games.Drawing.Set_Font
	/// @DnDVersion : 1
	/// @DnDHash : 16B850C6
	/// @DnDParent : 2C65A4C1
	/// @DnDArgument : "font" "fnt_coins"
	/// @DnDSaveInfo : "font" "fnt_coins"
	draw_set_font(fnt_coins);

	/// @DnDAction : YoYo Games.Drawing.Set_Alignment
	/// @DnDVersion : 1.1
	/// @DnDHash : 7EB9F1BD
	/// @DnDParent : 2C65A4C1
	/// @DnDArgument : "halign" "fa_center"
	draw_set_halign(fa_center);
	draw_set_valign(fa_top);

	/// @DnDAction : YoYo Games.Drawing.Set_Color
	/// @DnDVersion : 1
	/// @DnDHash : 0B460DBD
	/// @DnDParent : 2C65A4C1
	/// @DnDArgument : "color" "$9C000000"
	draw_set_colour($9C000000 & $ffffff);
	var l0B460DBD_0=($9C000000 >> 24);
	draw_set_alpha(l0B460DBD_0 / $ff);

	/// @DnDAction : YoYo Games.Drawing.Draw_Value
	/// @DnDVersion : 1
	/// @DnDHash : 0FE4EF90
	/// @DnDParent : 2C65A4C1
	/// @DnDArgument : "x" "display_get_gui_width()/2"
	/// @DnDArgument : "y" "11"
	/// @DnDArgument : "caption" ""Score: ""
	/// @DnDArgument : "var" "score"
	draw_text(display_get_gui_width()/2, 11, string("Score: ") + string(score));

	/// @DnDAction : YoYo Games.Drawing.Set_Color
	/// @DnDVersion : 1
	/// @DnDHash : 0AE9D6BD
	/// @DnDParent : 2C65A4C1
	/// @DnDArgument : "color" "$FFE5E5E5"
	draw_set_colour($FFE5E5E5 & $ffffff);
	var l0AE9D6BD_0=($FFE5E5E5 >> 24);
	draw_set_alpha(l0AE9D6BD_0 / $ff);

	/// @DnDAction : YoYo Games.Drawing.Draw_Value
	/// @DnDVersion : 1
	/// @DnDHash : 031310AA
	/// @DnDParent : 2C65A4C1
	/// @DnDArgument : "x" "display_get_gui_width()/2 - 2"
	/// @DnDArgument : "y" "8"
	/// @DnDArgument : "caption" ""Score: ""
	/// @DnDArgument : "var" "score"
	draw_text(display_get_gui_width()/2 - 2, 8, string("Score: ") + string(score));
}