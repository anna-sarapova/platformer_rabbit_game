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

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 45920E6A
	/// @DnDParent : 5C16BC58
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos" "bbox_top"
	/// @DnDArgument : "var" "inst"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "objectid" "o_floating_text"
	/// @DnDSaveInfo : "objectid" "o_floating_text"
	var inst = instance_create_layer(x + 0, bbox_top, "Instances", o_floating_text);

	/// @DnDAction : YoYo Games.Common.Apply_To
	/// @DnDVersion : 1
	/// @DnDHash : 734C4D90
	/// @DnDApplyTo : inst
	/// @DnDParent : 5C16BC58
	with(inst) {
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 334A5E4B
		/// @DnDParent : 734C4D90
		/// @DnDArgument : "expr" ""+1""
		/// @DnDArgument : "var" "txt"
		txt = "+1";
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 41550598
		/// @DnDParent : 734C4D90
		/// @DnDArgument : "expr" "c_yellow"
		/// @DnDArgument : "var" "color"
		color = c_yellow;
	}
}