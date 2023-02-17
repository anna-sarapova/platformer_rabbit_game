/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 3C6FAB67
/// @DnDComment : // Script assets have changed for v2.3.0 see$(13_10)// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/// @DnDArgument : "funcName" "check_jump"
function check_jump() 
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7D64A240
	/// @DnDParent : 3C6FAB67
	/// @DnDArgument : "var" "on_ground"
	/// @DnDArgument : "value" "true"
	if(on_ground == true)
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 5EBA432A
		/// @DnDParent : 7D64A240
		/// @DnDArgument : "var" "jump"
		/// @DnDArgument : "value" "true"
		if(jump == true)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 3ED6C890
			/// @DnDParent : 5EBA432A
			/// @DnDArgument : "expr" "-jump_speed"
			/// @DnDArgument : "var" "vertical_speed"
			vertical_speed = -jump_speed;
		}
	}
}