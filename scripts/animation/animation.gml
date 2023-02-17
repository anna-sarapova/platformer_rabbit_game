/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 1557A93C
/// @DnDComment : // Script assets have changed for v2.3.0 see$(13_10)// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/// @DnDArgument : "funcName" "animation"
function animation() 
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 293E3B28
	/// @DnDParent : 1557A93C
	/// @DnDArgument : "var" "on_ground"
	/// @DnDArgument : "value" "true"
	if(on_ground == true)
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 67DDAEA3
		/// @DnDParent : 293E3B28
		/// @DnDArgument : "var" "horisontal_speed"
		/// @DnDArgument : "not" "1"
		if(!(horisontal_speed == 0))
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 327B2D31
			/// @DnDParent : 67DDAEA3
			/// @DnDArgument : "expr" "sprite_walk"
			/// @DnDArgument : "var" "sprite_index"
			sprite_index = sprite_walk;
		
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 45475624
			/// @DnDParent : 67DDAEA3
			/// @DnDArgument : "var" "horisontal_speed"
			/// @DnDArgument : "op" "2"
			if(horisontal_speed > 0)
			{
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 08096DC4
				/// @DnDParent : 45475624
				/// @DnDArgument : "expr" "1"
				/// @DnDArgument : "var" "facing"
				facing = 1;
			}
		
			/// @DnDAction : YoYo Games.Common.Else
			/// @DnDVersion : 1
			/// @DnDHash : 48782732
			/// @DnDParent : 67DDAEA3
			else
			{
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 740F4872
				/// @DnDParent : 48782732
				/// @DnDArgument : "expr" "-1"
				/// @DnDArgument : "var" "facing"
				facing = -1;
			}
		}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 10EA1C4E
		/// @DnDParent : 293E3B28
		else
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 3255F501
			/// @DnDParent : 10EA1C4E
			/// @DnDArgument : "expr" "sprite_idle"
			/// @DnDArgument : "var" "sprite_index"
			sprite_index = sprite_idle;
		}
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 45D6FACA
	/// @DnDParent : 1557A93C
	else
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 7C4BA1C8
		/// @DnDParent : 45D6FACA
		/// @DnDArgument : "expr" "sprite_air"
		/// @DnDArgument : "var" "sprite_index"
		sprite_index = sprite_air;
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 4C1A8D5A
		/// @DnDParent : 45D6FACA
		/// @DnDArgument : "var" "vertical_speed"
		/// @DnDArgument : "op" "1"
		if(vertical_speed < 0)
		{
			/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
			/// @DnDVersion : 1
			/// @DnDHash : 74DAED83
			/// @DnDParent : 4C1A8D5A
			/// @DnDArgument : "instvar" "11"
			image_index = 0;
		}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 57A3A198
		/// @DnDParent : 45D6FACA
		else
		{
			/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
			/// @DnDVersion : 1
			/// @DnDHash : 2B5369A3
			/// @DnDParent : 57A3A198
			/// @DnDArgument : "value" "1"
			/// @DnDArgument : "instvar" "11"
			image_index = 1;
		}
	}
}