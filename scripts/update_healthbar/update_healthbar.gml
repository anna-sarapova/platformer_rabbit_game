/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 5AA44544
/// @DnDComment : // Script assets have changed for v2.3.0 see$(13_10)// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/// @DnDArgument : "funcName" "update_healthbar"
function update_healthbar() 
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 70CE4F0B
	/// @DnDParent : 5AA44544
	/// @DnDArgument : "var" "global.hit_points"
	/// @DnDArgument : "op" "3"
	/// @DnDArgument : "value" "global.hit_points_max"
	if(global.hit_points <= global.hit_points_max)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 718CA1C4
		/// @DnDParent : 70CE4F0B
		/// @DnDArgument : "expr" "global.hit_points_max"
		/// @DnDArgument : "var" "global.hit_points"
		global.hit_points = global.hit_points_max;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 696AB284
		/// @DnDParent : 70CE4F0B
		/// @DnDArgument : "expr" "ps.HEAL"
		/// @DnDArgument : "var" "state"
		state = ps.HEAL;
	}
}