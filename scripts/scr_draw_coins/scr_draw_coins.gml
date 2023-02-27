/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 2C65A4C1
/// @DnDComment : // Script assets have changed for v2.3.0 see$(13_10)// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/// @DnDArgument : "funcName" "scr_draw_coins"
function scr_draw_coins() 
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
	/// @DnDHash : 7D038D4B
	/// @DnDParent : 2C65A4C1
	draw_set_halign(fa_left);
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
	/// @DnDArgument : "x" "22"
	/// @DnDArgument : "y" "11"
	/// @DnDArgument : "caption" ""Coins: ""
	/// @DnDArgument : "var" "global.coins"
	draw_text(22, 11, string("Coins: ") + string(global.coins));

	/// @DnDAction : YoYo Games.Drawing.Set_Color
	/// @DnDVersion : 1
	/// @DnDHash : 0AE9D6BD
	/// @DnDParent : 2C65A4C1
	/// @DnDArgument : "color" "$FF34E5DF"
	draw_set_colour($FF34E5DF & $ffffff);
	var l0AE9D6BD_0=($FF34E5DF >> 24);
	draw_set_alpha(l0AE9D6BD_0 / $ff);

	/// @DnDAction : YoYo Games.Drawing.Draw_Value
	/// @DnDVersion : 1
	/// @DnDHash : 031310AA
	/// @DnDParent : 2C65A4C1
	/// @DnDArgument : "x" "20"
	/// @DnDArgument : "y" "8"
	/// @DnDArgument : "caption" ""Coins: ""
	/// @DnDArgument : "var" "global.coins"
	draw_text(20, 8, string("Coins: ") + string(global.coins));
}