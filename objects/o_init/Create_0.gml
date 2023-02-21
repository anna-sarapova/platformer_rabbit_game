/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 6951026C
/// @DnDArgument : "obj" "o_game"
/// @DnDArgument : "not" "1"
/// @DnDSaveInfo : "obj" "o_game"
var l6951026C_0 = false;
l6951026C_0 = instance_exists(o_game);
if(!l6951026C_0)
{
	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 324C8701
	/// @DnDParent : 6951026C
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "o_game"
	/// @DnDSaveInfo : "objectid" "o_game"
	instance_create_layer(x + 0, y + 0, "Instances", o_game);
}

/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 2E17ADD0
/// @DnDArgument : "obj" "o_player"
/// @DnDArgument : "not" "1"
/// @DnDSaveInfo : "obj" "o_player"
var l2E17ADD0_0 = false;
l2E17ADD0_0 = instance_exists(o_player);
if(!l2E17ADD0_0)
{
	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 1F12889E
	/// @DnDParent : 2E17ADD0
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "o_player"
	/// @DnDArgument : "layer" ""Player""
	/// @DnDSaveInfo : "objectid" "o_player"
	instance_create_layer(x + 0, y + 0, "Player", o_player);
}

/// @DnDAction : YoYo Games.Rooms.Next_Room
/// @DnDVersion : 1
/// @DnDHash : 2D803BF1
room_goto_next();