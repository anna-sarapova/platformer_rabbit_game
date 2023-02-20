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

	/// @DnDAction : YoYo Games.Collisions.If_Object_At
	/// @DnDVersion : 1.1
	/// @DnDHash : 5FDD5237
	/// @DnDParent : 50811ABC
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y" "vertical_speed"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "object" "o_solid"
	/// @DnDSaveInfo : "object" "o_solid"
	var l5FDD5237_0 = instance_place(x + 0, y + vertical_speed, o_solid);
	if ((l5FDD5237_0 > 0))
	{
		/// @DnDAction : YoYo Games.Common.Temp_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 0589597B
		/// @DnDParent : 5FDD5237
		/// @DnDArgument : "var" "collide"
		/// @DnDArgument : "value" "false"
		var collide = false;
	
		/// @DnDAction : YoYo Games.Loops.While_Loop
		/// @DnDVersion : 1
		/// @DnDHash : 60C07B0C
		/// @DnDParent : 5FDD5237
		/// @DnDArgument : "var" "collide"
		/// @DnDArgument : "value" "false"
		while ((collide == false)) {
			/// @DnDAction : YoYo Games.Collisions.If_Object_At
			/// @DnDVersion : 1.1
			/// @DnDHash : 46AE0399
			/// @DnDParent : 60C07B0C
			/// @DnDArgument : "x_relative" "1"
			/// @DnDArgument : "y" "sign(vertical_speed)"
			/// @DnDArgument : "y_relative" "1"
			/// @DnDArgument : "object" "o_solid"
			/// @DnDArgument : "not" "1"
			/// @DnDSaveInfo : "object" "o_solid"
			var l46AE0399_0 = instance_place(x + 0, y + sign(vertical_speed), o_solid);
			if (!(l46AE0399_0 > 0))
			{
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 145C064B
				/// @DnDParent : 46AE0399
				/// @DnDArgument : "expr" "sign(vertical_speed )"
				/// @DnDArgument : "expr_relative" "1"
				/// @DnDArgument : "var" "y"
				y += sign(vertical_speed );
			}
		
			/// @DnDAction : YoYo Games.Common.Else
			/// @DnDVersion : 1
			/// @DnDHash : 0A9D8EED
			/// @DnDParent : 60C07B0C
			else
			{
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 3342F2A7
				/// @DnDParent : 0A9D8EED
				/// @DnDArgument : "expr" "true"
				/// @DnDArgument : "var" "collide"
				collide = true;
			
				/// @DnDAction : YoYo Games.Common.If_Variable
				/// @DnDVersion : 1
				/// @DnDHash : 25BB4BB7
				/// @DnDParent : 0A9D8EED
				/// @DnDArgument : "var" "bounce"
				/// @DnDArgument : "op" "2"
				if(bounce > 0)
				{
					/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 5D1D6A50
					/// @DnDInput : 2
					/// @DnDParent : 25BB4BB7
					/// @DnDArgument : "expr" "-vertical_speed/2"
					/// @DnDArgument : "expr_1" "-1"
					/// @DnDArgument : "expr_relative_1" "1"
					/// @DnDArgument : "var" "vertical_speed"
					/// @DnDArgument : "var_1" "bounce"
					vertical_speed = -vertical_speed/2;
					bounce += -1;
				}
			
				/// @DnDAction : YoYo Games.Common.Else
				/// @DnDVersion : 1
				/// @DnDHash : 673FF64A
				/// @DnDParent : 0A9D8EED
				else
				{
					/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 6028C5BC
					/// @DnDParent : 673FF64A
					/// @DnDArgument : "var" "vertical_speed"
					vertical_speed = 0;
				}
			}
		}
	}

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2035D334
	/// @DnDParent : 50811ABC
	/// @DnDArgument : "expr" "vertical_speed"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "y"
	y += vertical_speed;
}