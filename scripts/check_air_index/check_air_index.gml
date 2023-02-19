/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 0B4A9669
/// @DnDComment : // Script assets have changed for v2.3.0 see$(13_10)// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/// @DnDArgument : "funcName" "check_air_index"
function check_air_index() 
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5CB3EA8E
	/// @DnDParent : 0B4A9669
	/// @DnDArgument : "var" "vertical_speed"
	/// @DnDArgument : "op" "1"
	if(vertical_speed < 0)
	{
		/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
		/// @DnDVersion : 1
		/// @DnDHash : 255E3356
		/// @DnDParent : 5CB3EA8E
		/// @DnDArgument : "instvar" "11"
		image_index = 0;
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 3DF04E19
	/// @DnDParent : 0B4A9669
	else
	{
		/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
		/// @DnDVersion : 1
		/// @DnDHash : 00656236
		/// @DnDParent : 3DF04E19
		/// @DnDArgument : "value" "1"
		/// @DnDArgument : "instvar" "11"
		image_index = 1;
	}
}