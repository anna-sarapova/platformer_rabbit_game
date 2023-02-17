/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 2328B59C
/// @DnDArgument : "key" "vk_right"
var l2328B59C_0;
l2328B59C_0 = keyboard_check(vk_right);
if (l2328B59C_0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4C764241
	/// @DnDParent : 2328B59C
	/// @DnDArgument : "expr" "walk_speed"
	/// @DnDArgument : "var" "horisontal_speed"
	horisontal_speed = walk_speed;
}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 7001DF02
/// @DnDArgument : "key" "vk_left"
var l7001DF02_0;
l7001DF02_0 = keyboard_check(vk_left);
if (l7001DF02_0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2EB8352C
	/// @DnDParent : 7001DF02
	/// @DnDArgument : "expr" "-walk_speed"
	/// @DnDArgument : "var" "horisontal_speed"
	horisontal_speed = -walk_speed;
}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 0A93A8B8
/// @DnDArgument : "expr" "horisontal_speed*drag"
/// @DnDArgument : "var" "horisontal_speed"
horisontal_speed = horisontal_speed*drag;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 06BA74DF
/// @DnDArgument : "expr" "horisontal_speed"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "x"
x += horisontal_speed;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 2FEC8C17
/// @DnDArgument : "var" "horisontal_speed"
/// @DnDArgument : "not" "1"
if(!(horisontal_speed == 0))
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 30DD0643
	/// @DnDParent : 2FEC8C17
	/// @DnDArgument : "var" "horisontal_speed"
	/// @DnDArgument : "op" "2"
	if(horisontal_speed > 0)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 6D86EA41
		/// @DnDParent : 30DD0643
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "var" "facing"
		facing = 1;
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 362670E7
	/// @DnDParent : 2FEC8C17
	else
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 257B10A4
		/// @DnDParent : 362670E7
		/// @DnDArgument : "expr" "-1"
		/// @DnDArgument : "var" "facing"
		facing = -1;
	}
}