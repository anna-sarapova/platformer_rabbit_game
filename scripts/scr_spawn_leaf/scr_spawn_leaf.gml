/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 3D27F2CC
/// @DnDComment : // Script assets have changed for v2.3.0 see$(13_10)// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/// @DnDArgument : "funcName" "scr_spawn_leaf"
function scr_spawn_leaf() 
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 22AB2009
	/// @DnDParent : 3D27F2CC
	/// @DnDArgument : "var" "spawn_leaf_timer"
	/// @DnDArgument : "op" "3"
	if(spawn_leaf_timer <= 0)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 49B670FE
		/// @DnDParent : 22AB2009
		/// @DnDArgument : "expr" "spawn_leaf_initial"
		/// @DnDArgument : "var" "spawn_leaf_timer"
		spawn_leaf_timer = spawn_leaf_initial;
	
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 0116BE8F
		/// @DnDParent : 22AB2009
		/// @DnDArgument : "xpos" "random_range(0, room_width)"
		/// @DnDArgument : "ypos" "-16"
		/// @DnDArgument : "objectid" "o_leaf"
		/// @DnDArgument : "layer" ""Leaves""
		/// @DnDSaveInfo : "objectid" "o_leaf"
		instance_create_layer(random_range(0, room_width), -16, "Leaves", o_leaf);
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 60555DED
	/// @DnDParent : 3D27F2CC
	else
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 3F143591
		/// @DnDParent : 60555DED
		/// @DnDArgument : "expr" "-1"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "spawn_leaf_timer"
		spawn_leaf_timer += -1;
	}
}