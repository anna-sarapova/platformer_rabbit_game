/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 483D969A
/// @DnDComment : // Script assets have changed for v2.3.0 see$(13_10)// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/// @DnDArgument : "funcName" "change_enemy_state_to_dead"
function change_enemy_state_to_dead() 
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1D516200
	/// @DnDParent : 483D969A
	/// @DnDArgument : "expr" "es.DEAD"
	/// @DnDArgument : "var" "state"
	state = es.DEAD;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4F618EFF
	/// @DnDParent : 483D969A
	/// @DnDArgument : "expr" "points"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "score"
	score += points;

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 11D40056
	/// @DnDParent : 483D969A
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos" "bbox_top"
	/// @DnDArgument : "var" "inst"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "objectid" "o_floating_text"
	/// @DnDSaveInfo : "objectid" "o_floating_text"
	var inst = instance_create_layer(x + 0, bbox_top, "Instances", o_floating_text);

	/// @DnDAction : YoYo Games.Common.Apply_To
	/// @DnDVersion : 1
	/// @DnDHash : 4D8A5256
	/// @DnDApplyTo : inst
	/// @DnDParent : 483D969A
	with(inst) {
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 44267A00
		/// @DnDParent : 4D8A5256
		/// @DnDArgument : "expr" ""+" + string(other.points)"
		/// @DnDArgument : "var" "txt"
		txt = "+" + string(other.points);
	}

	/// @DnDAction : YoYo Games.Loops.Repeat
	/// @DnDVersion : 1
	/// @DnDHash : 75154549
	/// @DnDParent : 483D969A
	/// @DnDArgument : "times" "irandom_range(4,6)"
	repeat(irandom_range(4,6))
	{
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 2143F5BF
		/// @DnDParent : 75154549
		/// @DnDArgument : "xpos" "random_range(-10, 10)"
		/// @DnDArgument : "xpos_relative" "1"
		/// @DnDArgument : "ypos" "bbox_top"
		/// @DnDArgument : "objectid" "o_coin"
		/// @DnDArgument : "layer" ""Coin""
		/// @DnDSaveInfo : "objectid" "o_coin"
		instance_create_layer(x + random_range(-10, 10), bbox_top, "Coin", o_coin);
	}

	/// @DnDAction : YoYo Games.Common.Apply_To
	/// @DnDVersion : 1
	/// @DnDHash : 041863A8
	/// @DnDApplyTo : {o_game}
	/// @DnDParent : 483D969A
	with(o_game) {
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 13900670
		/// @DnDParent : 041863A8
		/// @DnDArgument : "expr" "true"
		/// @DnDArgument : "var" "screen_shake"
		screen_shake = true;
	}
}