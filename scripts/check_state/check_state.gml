/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 1CAB36C3
/// @DnDComment : // Script assets have changed for v2.3.0 see$(13_10)// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/// @DnDArgument : "funcName" "check_state"
function check_state() 
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 11DDA870
	/// @DnDParent : 1CAB36C3
	/// @DnDArgument : "var" "on_ground"
	/// @DnDArgument : "value" "true"
	if(on_ground == true)
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 0FD349F9
		/// @DnDParent : 11DDA870
		/// @DnDArgument : "var" "horisontal_speed"
		if(horisontal_speed == 0)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 7B2CF8DC
			/// @DnDParent : 0FD349F9
			/// @DnDArgument : "expr" "ps.IDLE"
			/// @DnDArgument : "var" "state"
			state = ps.IDLE;
		}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 2CA84AC9
		/// @DnDParent : 11DDA870
		else
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 5B786CF2
			/// @DnDParent : 2CA84AC9
			/// @DnDArgument : "expr" "ps.WALK"
			/// @DnDArgument : "var" "state"
			state = ps.WALK;
		}
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 0BFF84F1
	/// @DnDParent : 1CAB36C3
	else
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 494C8BD1
		/// @DnDParent : 0BFF84F1
		/// @DnDArgument : "expr" "ps.AIR"
		/// @DnDArgument : "var" "state"
		state = ps.AIR;
	}
}