/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 0101A377
/// @DnDArgument : "var" "other.has_control"
/// @DnDArgument : "value" "true"
if(other.has_control == true)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1601FE81
	/// @DnDInput : 3
	/// @DnDParent : 0101A377
	/// @DnDArgument : "expr" "target_x"
	/// @DnDArgument : "expr_1" "target_y"
	/// @DnDArgument : "expr_2" "target_facing"
	/// @DnDArgument : "var" "global.player_start_x"
	/// @DnDArgument : "var_1" "global.player_start_y"
	/// @DnDArgument : "var_2" "global.player_facing"
	global.player_start_x = target_x;
	global.player_start_y = target_y;
	global.player_facing = target_facing;

	/// @DnDAction : YoYo Games.Common.Apply_To
	/// @DnDVersion : 1
	/// @DnDHash : 568E1D60
	/// @DnDApplyTo : other
	/// @DnDParent : 0101A377
	with(other) {
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 53B239C4
		/// @DnDInput : 4
		/// @DnDParent : 568E1D60
		/// @DnDArgument : "expr" "false"
		/// @DnDArgument : "expr_1" "60"
		/// @DnDArgument : "expr_3" "0 "
		/// @DnDArgument : "var" "has_control"
		/// @DnDArgument : "var_1" "alarm[1]"
		/// @DnDArgument : "var_2" "horisontal_speed"
		/// @DnDArgument : "var_3" "vertical_speed"
		has_control = false;
		alarm[1] = 60;
		horisontal_speed = 0;
		vertical_speed = 0 ;
	}

	/// @DnDAction : YoYo Games.Rooms.Go_To_Room
	/// @DnDVersion : 1
	/// @DnDHash : 62D60315
	/// @DnDParent : 0101A377
	/// @DnDArgument : "room" "target_room"
	room_goto(target_room);
}