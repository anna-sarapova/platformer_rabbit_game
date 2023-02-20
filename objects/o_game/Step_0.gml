/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 1351E70F
/// @DnDArgument : "code" "/// background scrolling$(13_10)//get layer id$(13_10)$(13_10)var layer_id = layer_get_id("Background_trees");$(13_10)$(13_10)// scroll speed$(13_10)var scroll_speed = 0.6;$(13_10)$(13_10)// move layer$(13_10)layer_x(layer_id, camera_get_view_x(view_camera[0]) * scroll_speed);$(13_10)"
/// background scrolling
//get layer id

var layer_id = layer_get_id("Background_trees");

// scroll speed
var scroll_speed = 0.6;

// move layer
layer_x(layer_id, camera_get_view_x(view_camera[0]) * scroll_speed);

/// @DnDAction : YoYo Games.Common.Execute_Script
/// @DnDVersion : 1.1
/// @DnDHash : 6C1768E3
/// @DnDArgument : "script" "scr_spawn_leaf"
script_execute(scr_spawn_leaf);

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 5A4543E7
/// @DnDArgument : "var" "screen_shake"
/// @DnDArgument : "value" "true"
if(screen_shake == true)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7D4D9924
	/// @DnDParent : 5A4543E7
	/// @DnDArgument : "var" "alarm[0]"
	/// @DnDArgument : "op" "3"
	if(alarm[0] <= 0)
	{
		/// @DnDAction : YoYo Games.Instances.Set_Alarm
		/// @DnDVersion : 1
		/// @DnDHash : 245DAB90
		/// @DnDParent : 7D4D9924
		/// @DnDArgument : "steps" "shake_time"
		alarm_set(0, shake_time);
	}

	/// @DnDAction : YoYo Games.Cameras.Set_View_Var
	/// @DnDVersion : 1
	/// @DnDHash : 26E8743F
	/// @DnDParent : 5A4543E7
	/// @DnDArgument : "var" "2"
	/// @DnDArgument : "value" "random_range(-shake_amount, shake_amount)"
	view_set_xport(0, random_range(-shake_amount, shake_amount));

	/// @DnDAction : YoYo Games.Cameras.Set_View_Var
	/// @DnDVersion : 1
	/// @DnDHash : 3F1932FD
	/// @DnDParent : 5A4543E7
	/// @DnDArgument : "var" "3"
	/// @DnDArgument : "value" "random_range(-shake_amount, shake_amount)"
	view_set_yport(0, random_range(-shake_amount, shake_amount));
}