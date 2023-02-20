/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 5C16BC58
/// @DnDArgument : "var" "bounce"
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "2"
if(bounce < 2)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5E797216
	/// @DnDParent : 5C16BC58
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "global.coins"
	global.coins += 1;

	/// @DnDAction : YoYo Games.Instances.Change_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 1CC1D82F
	/// @DnDParent : 5C16BC58
	/// @DnDArgument : "objind" "o_coin_pickup"
	/// @DnDSaveInfo : "objind" "o_coin_pickup"
	instance_change(o_coin_pickup, true);
}