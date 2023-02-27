/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 097DA73B
/// @DnDArgument : "var" "vspeed"
/// @DnDArgument : "not" "1"
if(!(vspeed == 0))
{
	/// @DnDAction : YoYo Games.Collisions.If_Object_At
	/// @DnDVersion : 1.1
	/// @DnDHash : 46EDAC46
	/// @DnDParent : 097DA73B
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "object" "o_solid_parent"
	/// @DnDSaveInfo : "object" "o_solid_parent"
	var l46EDAC46_0 = instance_place(x + 0, y + 0, o_solid_parent);
	if ((l46EDAC46_0 > 0))
	{
		/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
		/// @DnDVersion : 1
		/// @DnDHash : 774A6542
		/// @DnDParent : 46EDAC46
		/// @DnDArgument : "instvar" "5"
		vspeed = 0;
	
		/// @DnDAction : YoYo Games.Instances.Sprite_Animation_Speed
		/// @DnDVersion : 1
		/// @DnDHash : 445639C3
		/// @DnDParent : 46EDAC46
		/// @DnDArgument : "speed" "0"
		image_speed = 0;
	}
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 43C56FE1
else
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3393A244
	/// @DnDParent : 43C56FE1
	/// @DnDArgument : "expr" "-1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "time_to_die"
	time_to_die += -1;

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7D45ACAE
	/// @DnDParent : 43C56FE1
	/// @DnDArgument : "var" "time_to_die"
	/// @DnDArgument : "op" "3"
	if(time_to_die <= 0)
	{
		/// @DnDAction : YoYo Games.Instances.Destroy_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 49AB484B
		/// @DnDParent : 7D45ACAE
		instance_destroy();
	}
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 0FDA7C0B
/// @DnDArgument : "var" "y"
/// @DnDArgument : "op" "2"
/// @DnDArgument : "value" "room_height"
if(y > room_height)
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 26BF514F
	/// @DnDParent : 0FDA7C0B
	instance_destroy();
}