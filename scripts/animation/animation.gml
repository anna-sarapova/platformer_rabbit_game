/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 1557A93C
/// @DnDComment : // Script assets have changed for v2.3.0 see$(13_10)// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/// @DnDArgument : "funcName" "animation"
function animation() 
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 67DDAEA3
	/// @DnDParent : 1557A93C
	/// @DnDArgument : "var" "horisontal_speed"
	/// @DnDArgument : "not" "1"
	if(!(horisontal_speed == 0))
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 45475624
		/// @DnDParent : 67DDAEA3
		/// @DnDArgument : "var" "horisontal_speed"
		/// @DnDArgument : "op" "2"
		if(horisontal_speed > 0)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 08096DC4
			/// @DnDParent : 45475624
			/// @DnDArgument : "expr" "1"
			/// @DnDArgument : "var" "facing"
			facing = 1;
		}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 48782732
		/// @DnDParent : 67DDAEA3
		else
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 740F4872
			/// @DnDParent : 48782732
			/// @DnDArgument : "expr" "-1"
			/// @DnDArgument : "var" "facing"
			facing = -1;
		}
	}
}