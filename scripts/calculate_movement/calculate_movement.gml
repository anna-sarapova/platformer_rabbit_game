/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 4E5BCA5C
/// @DnDComment : // Script assets have changed for v2.3.0 see$(13_10)// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/// @DnDArgument : "funcName" "calculate_movement"
function calculate_movement() 
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1A962016
	/// @DnDParent : 4E5BCA5C
	/// @DnDArgument : "expr" "horisontal_speed*drag"
	/// @DnDArgument : "var" "horisontal_speed"
	horisontal_speed = horisontal_speed*drag;
}