/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 50811ABC
/// @DnDComment : // Script assets have changed for v2.3.0 see$(13_10)// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/// @DnDArgument : "funcName" "collision"
function collision() 
{
	/// @DnDAction : YoYo Games.Collisions.If_Object_At
	/// @DnDVersion : 1.1
	/// @DnDHash : 2CA7BE92
	/// @DnDParent : 50811ABC
	/// @DnDArgument : "x" "horisontal_speed"
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "object" "o_solid"
	/// @DnDSaveInfo : "object" "o_solid"
	var l2CA7BE92_0 = instance_place(x + horisontal_speed, y + 0, o_solid);
	if ((l2CA7BE92_0 > 0))
	{
		/// @DnDAction : YoYo Games.Common.Temp_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 5808CFB7
		/// @DnDParent : 2CA7BE92
		/// @DnDArgument : "var" "collide"
		/// @DnDArgument : "value" "false"
		var collide = false;
	
		/// @DnDAction : YoYo Games.Loops.While_Loop
		/// @DnDVersion : 1
		/// @DnDHash : 7D5CC4B1
		/// @DnDParent : 2CA7BE92
		/// @DnDArgument : "var" "collide"
		/// @DnDArgument : "value" "false"
		while ((collide == false)) {
			/// @DnDAction : YoYo Games.Collisions.If_Object_At
			/// @DnDVersion : 1.1
			/// @DnDHash : 23BADC91
			/// @DnDParent : 7D5CC4B1
			/// @DnDArgument : "x" "sign(horisontal_speed)"
			/// @DnDArgument : "x_relative" "1"
			/// @DnDArgument : "y_relative" "1"
			/// @DnDArgument : "object" "o_solid"
			/// @DnDArgument : "not" "1"
			/// @DnDSaveInfo : "object" "o_solid"
			var l23BADC91_0 = instance_place(x + sign(horisontal_speed), y + 0, o_solid);
			if (!(l23BADC91_0 > 0))
			{
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 78E0767C
				/// @DnDParent : 23BADC91
				/// @DnDArgument : "expr" "sign(horisontal_speed)"
				/// @DnDArgument : "expr_relative" "1"
				/// @DnDArgument : "var" "x"
				x += sign(horisontal_speed);
			}
		
			/// @DnDAction : YoYo Games.Common.Else
			/// @DnDVersion : 1
			/// @DnDHash : 21386115
			/// @DnDParent : 7D5CC4B1
			else
			{
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 15D84AEF
				/// @DnDParent : 21386115
				/// @DnDArgument : "expr" "true"
				/// @DnDArgument : "var" "collide"
				collide = true;
			
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 1435C060
				/// @DnDParent : 21386115
				/// @DnDArgument : "var" "horisontal_speed"
				horisontal_speed = 0;
			}
		}
	}

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4E9E5F9A
	/// @DnDParent : 50811ABC
	/// @DnDArgument : "expr" "horisontal_speed"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "x"
	x += horisontal_speed;
}