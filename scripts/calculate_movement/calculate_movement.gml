/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 4E5BCA5C
/// @DnDComment : // Script assets have changed for v2.3.0 see$(13_10)// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/// @DnDArgument : "funcName" "calculate_movement"
function calculate_movement() 
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 62EDD3AF
	/// @DnDParent : 4E5BCA5C
	/// @DnDArgument : "var" "vmove"
	/// @DnDArgument : "op" "1"
	if(vmove < 0)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 177453DA
		/// @DnDParent : 62EDD3AF
		/// @DnDArgument : "expr" "true"
		/// @DnDArgument : "var" "up"
		up = true;
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 40F85266
	/// @DnDParent : 4E5BCA5C
	/// @DnDArgument : "var" "vmove"
	/// @DnDArgument : "op" "2"
	if(vmove > 0)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 7F9D7110
		/// @DnDParent : 40F85266
		/// @DnDArgument : "expr" "true"
		/// @DnDArgument : "var" "down"
		down = true;
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 46BE4876
	/// @DnDParent : 4E5BCA5C
	/// @DnDArgument : "var" "right"
	/// @DnDArgument : "value" "true"
	if(right == true)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 5E0966BB
		/// @DnDParent : 46BE4876
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "var" "hmove"
		hmove = 1;
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 225AB0F7
	/// @DnDParent : 4E5BCA5C
	/// @DnDArgument : "var" "left"
	/// @DnDArgument : "value" "true"
	if(left == true)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 0D287EF4
		/// @DnDParent : 225AB0F7
		/// @DnDArgument : "expr" "-1"
		/// @DnDArgument : "var" "hmove"
		hmove = -1;
	}

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3E14B91E
	/// @DnDParent : 4E5BCA5C
	/// @DnDArgument : "expr" "hmove* acceleration"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "horisontal_speed"
	horisontal_speed += hmove* acceleration;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 65DC97A9
	/// @DnDParent : 4E5BCA5C
	/// @DnDArgument : "expr" "clamp(horisontal_speed, -walk_speed, walk_speed)"
	/// @DnDArgument : "var" "horisontal_speed"
	horisontal_speed = clamp(horisontal_speed, -walk_speed, walk_speed);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 107F9EC5
	/// @DnDParent : 4E5BCA5C
	/// @DnDArgument : "expr" "global.grav"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "vertical_speed"
	vertical_speed += global.grav;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1A962016
	/// @DnDParent : 4E5BCA5C
	/// @DnDArgument : "expr" "horisontal_speed*drag"
	/// @DnDArgument : "var" "horisontal_speed"
	horisontal_speed = horisontal_speed*drag;

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 59B4A4A0
	/// @DnDParent : 4E5BCA5C
	/// @DnDArgument : "var" "abs(horisontal_speed)"
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "0.2"
	if(abs(horisontal_speed) < 0.2)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 79A1FC0B
		/// @DnDParent : 59B4A4A0
		/// @DnDArgument : "var" "horisontal_speed"
		horisontal_speed = 0;
	}
}