/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 4E5BCA5C
/// @DnDComment : // Script assets have changed for v2.3.0 see$(13_10)// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/// @DnDArgument : "funcName" "calculate_movement_other"
function calculate_movement_other() 
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 107F9EC5
	/// @DnDParent : 4E5BCA5C
	/// @DnDArgument : "expr" "global.grav"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "vertical_speed"
	vertical_speed += global.grav;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1A962016
	/// @DnDParent : 4E5BCA5C
	/// @DnDArgument : "expr" "horisontal_speed*drag"
	/// @DnDArgument : "var" "horisontal_speed"
	horisontal_speed = horisontal_speed*drag;

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 59B4A4A0
	/// @DnDParent : 4E5BCA5C
	/// @DnDArgument : "var" "abs(horisontal_speed)"
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "0.2"
	if(abs(horisontal_speed) < 0.2)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 79A1FC0B
		/// @DnDParent : 59B4A4A0
		/// @DnDArgument : "var" "horisontal_speed"
		horisontal_speed = 0;
	}
}