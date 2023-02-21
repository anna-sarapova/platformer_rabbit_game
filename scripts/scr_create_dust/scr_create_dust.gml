/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 3B8748D3
/// @DnDComment : // Script assets have changed for v2.3.0 see$(13_10)// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/// @DnDArgument : "funcName" "scr_create_dust"
function scr_create_dust() 
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 11BDB0B6
	/// @DnDParent : 3B8748D3
	/// @DnDArgument : "var" "has_control"
	/// @DnDArgument : "value" "true"
	if(has_control == true)
	{
		/// @DnDAction : YoYo Games.Loops.Repeat
		/// @DnDVersion : 1
		/// @DnDHash : 0D0AAAA3
		/// @DnDParent : 11BDB0B6
		/// @DnDArgument : "times" "irandom_range(3,6)"
		repeat(irandom_range(3,6))
		{
			/// @DnDAction : YoYo Games.Common.Temp_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 47B82269
			/// @DnDInput : 2
			/// @DnDParent : 0D0AAAA3
			/// @DnDArgument : "var" "xx"
			/// @DnDArgument : "value" "random_range(-20,20)"
			/// @DnDArgument : "var_1" "yy"
			/// @DnDArgument : "value_1" "random_range(-10,5)"
			var xx = random_range(-20,20);
			var yy = random_range(-10,5);
		
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 4DFC6C83
			/// @DnDParent : 0D0AAAA3
			/// @DnDArgument : "xpos" "xx"
			/// @DnDArgument : "xpos_relative" "1"
			/// @DnDArgument : "ypos" "bbox_bottom + yy"
			/// @DnDArgument : "var" "inst"
			/// @DnDArgument : "var_temp" "1"
			/// @DnDArgument : "objectid" "o_dust"
			/// @DnDArgument : "layer" ""Dust""
			/// @DnDSaveInfo : "objectid" "o_dust"
			var inst = instance_create_layer(x + xx, bbox_bottom + yy, "Dust", o_dust);
		
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 635A3452
			/// @DnDParent : 0D0AAAA3
			/// @DnDArgument : "var" "horisontal_speed"
			/// @DnDArgument : "not" "1"
			if(!(horisontal_speed == 0))
			{
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 13AE116E
				/// @DnDParent : 635A3452
				/// @DnDArgument : "expr" "inst.dust_horisontal_initial * facing"
				/// @DnDArgument : "var" "inst.hspeed"
				inst.hspeed = inst.dust_horisontal_initial * facing;
			}
		
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 633C7EDA
			/// @DnDParent : 0D0AAAA3
			/// @DnDArgument : "var" "vertical_speed"
			/// @DnDArgument : "op" "1"
			if(vertical_speed < 0)
			{
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 5DA22586
				/// @DnDParent : 633C7EDA
				/// @DnDArgument : "expr" "inst.dust_vertical_initial"
				/// @DnDArgument : "var" "inst.vspeed"
				inst.vspeed = inst.dust_vertical_initial;
			}
		}
	}
}