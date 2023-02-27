/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 324FE215
/// @DnDComment : // Script assets have changed for v2.3.0 see$(13_10)// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/// @DnDArgument : "funcName" "get_input_gamepad"
function get_input_gamepad() 
{
	/// @DnDAction : YoYo Games.Common.Temp_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2C72C7C8
	/// @DnDParent : 324FE215
	/// @DnDArgument : "var" "dead_zone"
	/// @DnDArgument : "value" "0.3"
	var dead_zone = 0.3;

	/// @DnDAction : YoYo Games.Loops.For_Loop
	/// @DnDVersion : 1
	/// @DnDHash : 68EFCDD2
	/// @DnDParent : 324FE215
	/// @DnDArgument : "init_temp" "1"
	/// @DnDArgument : "cond" "i < 12"
	for(var i = 0; i < 12; i += 1) {
		/// @DnDAction : YoYo Games.Gamepad.Get_Gamepad_Connected
		/// @DnDVersion : 1
		/// @DnDHash : 4D9CDAF2
		/// @DnDParent : 68EFCDD2
		/// @DnDArgument : "var" "connected"
		/// @DnDArgument : "var_temp" "1"
		/// @DnDArgument : "gp" "i"
		var connected = gamepad_is_connected(i);
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 0D80015D
		/// @DnDParent : 68EFCDD2
		/// @DnDArgument : "var" "connected"
		/// @DnDArgument : "value" "true"
		if(connected == true)
		{
			/// @DnDAction : YoYo Games.Gamepad.Set_Gamepad_Axis_Deadzone
			/// @DnDVersion : 1
			/// @DnDHash : 0C551B2A
			/// @DnDParent : 0D80015D
			/// @DnDArgument : "gp" "i"
			/// @DnDArgument : "deadzone" "dead_zone"
			gamepad_set_axis_deadzone(i, dead_zone);
		
			/// @DnDAction : YoYo Games.Gamepad.Get_Gamepad_Axis_Value
			/// @DnDVersion : 1.1
			/// @DnDHash : 160763AA
			/// @DnDParent : 0D80015D
			/// @DnDArgument : "var" "hmove"
			/// @DnDArgument : "gp" "i"
			hmove = gamepad_is_connected(i) ? gamepad_axis_value(i, gp_axislh) : 0;
		
			/// @DnDAction : YoYo Games.Gamepad.Get_Gamepad_Axis_Value
			/// @DnDVersion : 1.1
			/// @DnDHash : 6C020EAC
			/// @DnDParent : 0D80015D
			/// @DnDArgument : "var" "vmove"
			/// @DnDArgument : "gp" "i"
			vmove = gamepad_is_connected(i) ? gamepad_axis_value(i, gp_axislh) : 0;
		
			/// @DnDAction : YoYo Games.Gamepad.If_Gamepad_Button_Pressed
			/// @DnDVersion : 1.1
			/// @DnDHash : 70DC20AD
			/// @DnDParent : 0D80015D
			/// @DnDArgument : "gp" "i"
			/// @DnDArgument : "btn" "gp_face1"
			var l70DC20AD_0 = i;
			var l70DC20AD_1 = gp_face1;
			if(gamepad_is_connected(l70DC20AD_0) && gamepad_button_check_pressed(l70DC20AD_0, l70DC20AD_1))
			{
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 5CAEEC24
				/// @DnDParent : 70DC20AD
				/// @DnDArgument : "expr" "true"
				/// @DnDArgument : "var" "jump"
				jump = true;
			}
		
			/// @DnDAction : YoYo Games.Loops.Break
			/// @DnDVersion : 1
			/// @DnDHash : 648970E4
			/// @DnDParent : 0D80015D
			break;
		}
	}
}