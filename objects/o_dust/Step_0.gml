/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 49CB952A
/// @DnDArgument : "var" "vspeed"
/// @DnDArgument : "not" "1"
if(!(vspeed == 0))
{
	/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
	/// @DnDVersion : 1
	/// @DnDHash : 65F5883D
	/// @DnDParent : 49CB952A
	/// @DnDArgument : "value" "vspeed * dust_slowdown"
	/// @DnDArgument : "instvar" "5"
	vspeed = vspeed * dust_slowdown;
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 5855093B
/// @DnDArgument : "var" "hspeed"
/// @DnDArgument : "not" "1"
if(!(hspeed == 0))
{
	/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
	/// @DnDVersion : 1
	/// @DnDHash : 673C2DD6
	/// @DnDParent : 5855093B
	/// @DnDArgument : "value" "hspeed*dust_slowdown"
	/// @DnDArgument : "instvar" "4"
	hspeed = hspeed*dust_slowdown;
}

/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
/// @DnDVersion : 1
/// @DnDHash : 131AAE1E
/// @DnDInput : 3
/// @DnDArgument : "value" "scale_dec"
/// @DnDArgument : "value_relative" "1"
/// @DnDArgument : "value_1" "scale_dec"
/// @DnDArgument : "value_relative_1" "1"
/// @DnDArgument : "value_2" "alpha_dec      "
/// @DnDArgument : "value_relative_2" "1"
/// @DnDArgument : "instvar" "15"
/// @DnDArgument : "instvar_1" "16"
/// @DnDArgument : "instvar_2" "13"
image_xscale += scale_dec;
image_yscale += scale_dec;
image_alpha += alpha_dec      ;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 50906EDA
/// @DnDArgument : "var" "image_alpha"
/// @DnDArgument : "op" "3"
if(image_alpha <= 0)
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 7E292D05
	/// @DnDParent : 50906EDA
	instance_destroy();
}