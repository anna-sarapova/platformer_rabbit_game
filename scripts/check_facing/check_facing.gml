/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 02158EF3
/// @DnDComment : // Script assets have changed for v2.3.0 see$(13_10)// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/// @DnDArgument : "funcName" "check_facing"
function check_facing() 
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3573E1D4
	/// @DnDParent : 02158EF3
	/// @DnDArgument : "var" "horisontal_speed"
	/// @DnDArgument : "not" "1"
	if(!(horisontal_speed == 0))
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 1F9A8B7E
		/// @DnDParent : 3573E1D4
		/// @DnDArgument : "var" "horisontal_speed"
		/// @DnDArgument : "op" "2"
		if(horisontal_speed > 0)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 72EDD953
			/// @DnDParent : 1F9A8B7E
			/// @DnDArgument : "expr" "1"
			/// @DnDArgument : "var" "facing"
			facing = 1;
		}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 23FF6787
		/// @DnDParent : 3573E1D4
		else
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 0D325D5F
			/// @DnDParent : 23FF6787
			/// @DnDArgument : "expr" "-1"
			/// @DnDArgument : "var" "facing"
			facing = -1;
		}
	}
}