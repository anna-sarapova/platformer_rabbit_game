/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
/// @DnDVersion : 1
/// @DnDHash : 2B00729E
/// @DnDArgument : "value" "rise"
/// @DnDArgument : "value_relative" "1"
/// @DnDArgument : "instvar" "1"
y += rise;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 6AEB3F94
/// @DnDArgument : "var" "time_to_fade--"
/// @DnDArgument : "op" "3"
if(time_to_fade-- <= 0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 260D7F50
	/// @DnDParent : 6AEB3F94
	/// @DnDArgument : "expr" "alpha_inc"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "alpha"
	alpha += alpha_inc;

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 32235B6D
	/// @DnDParent : 6AEB3F94
	/// @DnDArgument : "var" " alpha"
	/// @DnDArgument : "op" "3"
	if( alpha <= 0)
	{
		/// @DnDAction : YoYo Games.Instances.Destroy_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 23364D51
		/// @DnDParent : 32235B6D
		instance_destroy();
	}
}