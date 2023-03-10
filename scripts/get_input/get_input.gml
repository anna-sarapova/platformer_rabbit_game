/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 1E86754B
/// @DnDComment : // Script assets have changed for v2.3.0 see$(13_10)// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/// @DnDArgument : "funcName" "get_input"
function get_input() 
{
	/// @DnDAction : YoYo Games.Common.Execute_Script
	/// @DnDVersion : 1.1
	/// @DnDHash : 169A3C3E
	/// @DnDParent : 1E86754B
	/// @DnDArgument : "script" "reset_input"
	/// @DnDSaveInfo : "script" "reset_input"
	script_execute(reset_input);

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 48D942D5
	/// @DnDParent : 1E86754B
	/// @DnDArgument : "var" "has_control"
	/// @DnDArgument : "value" "true"
	if(has_control == true)
	{
		/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 3404CEFB
		/// @DnDParent : 48D942D5
		/// @DnDArgument : "script" "get_input_gamepad"
		/// @DnDSaveInfo : "script" "get_input_gamepad"
		script_execute(get_input_gamepad);
	
		/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
		/// @DnDVersion : 1
		/// @DnDHash : 58AC1DBB
		/// @DnDParent : 48D942D5
		/// @DnDArgument : "key" "vk_right"
		var l58AC1DBB_0;
		l58AC1DBB_0 = keyboard_check(vk_right);
		if (l58AC1DBB_0)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 7FB4600E
			/// @DnDParent : 58AC1DBB
			/// @DnDArgument : "expr" "true"
			/// @DnDArgument : "var" "right"
			right = true;
		}
	
		/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
		/// @DnDVersion : 1
		/// @DnDHash : 279542E4
		/// @DnDParent : 48D942D5
		/// @DnDArgument : "key" "vk_left"
		var l279542E4_0;
		l279542E4_0 = keyboard_check(vk_left);
		if (l279542E4_0)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 10E5139D
			/// @DnDParent : 279542E4
			/// @DnDArgument : "expr" "true"
			/// @DnDArgument : "var" "left"
			left = true;
		}
	
		/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
		/// @DnDVersion : 1
		/// @DnDHash : 58DC9A7A
		/// @DnDParent : 48D942D5
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
	
		/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
		/// @DnDVersion : 1
		/// @DnDHash : 7C53CA80
		/// @DnDParent : 48D942D5
		/// @DnDArgument : "key" "vk_up"
		var l7C53CA80_0;
		l7C53CA80_0 = keyboard_check_pressed(vk_up);
		if (l7C53CA80_0)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 15331296
			/// @DnDParent : 7C53CA80
			/// @DnDArgument : "expr" "true"
			/// @DnDArgument : "var" "up"
			up = true;
		}
	
		/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
		/// @DnDVersion : 1
		/// @DnDHash : 20769438
		/// @DnDParent : 48D942D5
		/// @DnDArgument : "key" "vk_down"
		var l20769438_0;
		l20769438_0 = keyboard_check_pressed(vk_down);
		if (l20769438_0)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 208EF91D
			/// @DnDParent : 20769438
			/// @DnDArgument : "expr" "true"
			/// @DnDArgument : "var" "down"
			down = true;
		}
	}
}