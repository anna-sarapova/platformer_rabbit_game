/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 0AF71421
/// @DnDComment : // Script assets have changed for v2.3.0 see$(13_10)// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/// @DnDArgument : "funcName" "process_bounce"
function process_bounce() 
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 731A3077
	/// @DnDParent : 0AF71421
	/// @DnDArgument : "var" "bounce"
	/// @DnDArgument : "op" "2"
	if(bounce > 0)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 21D47F27
		/// @DnDInput : 2
		/// @DnDParent : 731A3077
		/// @DnDArgument : "expr" "-vertical_speed/2"
		/// @DnDArgument : "expr_1" "-1"
		/// @DnDArgument : "expr_relative_1" "1"
		/// @DnDArgument : "var" "vertical_speed"
		/// @DnDArgument : "var_1" "bounce"
		vertical_speed = -vertical_speed/2;
		bounce += -1;
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 4B7953F8
	/// @DnDParent : 0AF71421
	else
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 7C5919F7
		/// @DnDParent : 4B7953F8
		/// @DnDArgument : "var" "vertical_speed"
		vertical_speed = 0;
	}
}