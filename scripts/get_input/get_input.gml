/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 1E86754B
/// @DnDComment : // Script assets have changed for v2.3.0 see$(13_10)// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/// @DnDArgument : "funcName" "get_input"
function get_input() 
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 07324B94
	/// @DnDParent : 1E86754B
	/// @DnDArgument : "expr" "false"
	/// @DnDArgument : "var" "jump"
	jump = false;

	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
	/// @DnDVersion : 1
	/// @DnDHash : 58AC1DBB
	/// @DnDParent : 1E86754B
	/// @DnDArgument : "key" "vk_right"
	var l58AC1DBB_0;
	l58AC1DBB_0 = keyboard_check(vk_right);
	if (l58AC1DBB_0)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 7FB4600E
		/// @DnDParent : 58AC1DBB
		/// @DnDArgument : "expr" "walk_speed"
		/// @DnDArgument : "var" "horisontal_speed"
		horisontal_speed = walk_speed;
	}

	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
	/// @DnDVersion : 1
	/// @DnDHash : 279542E4
	/// @DnDParent : 1E86754B
	/// @DnDArgument : "key" "vk_left"
	var l279542E4_0;
	l279542E4_0 = keyboard_check(vk_left);
	if (l279542E4_0)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 10E5139D
		/// @DnDParent : 279542E4
		/// @DnDArgument : "expr" "-walk_speed"
		/// @DnDArgument : "var" "horisontal_speed"
		horisontal_speed = -walk_speed;
	}

	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
	/// @DnDVersion : 1
	/// @DnDHash : 58DC9A7A
	/// @DnDParent : 1E86754B
	var l58DC9A7A_0;
	l58DC9A7A_0 = keyboard_check_pressed(vk_space);
	if (l58DC9A7A_0)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 702F92BF
		/// @DnDParent : 58DC9A7A
		/// @DnDArgument : "expr" "true"
		/// @DnDArgument : "var" "jump"
		jump = true;
	}
}