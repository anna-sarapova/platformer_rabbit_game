/// @DnDAction : YoYo Games.Switch.Switch
/// @DnDVersion : 1
/// @DnDHash : 169F0D4D
/// @DnDArgument : "expr" "state"
var l169F0D4D_0 = state;
switch(l169F0D4D_0)
{
	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 56BD95D1
	/// @DnDParent : 169F0D4D
	/// @DnDArgument : "const" "es.WALK"
	case es.WALK:
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 194F65FA
		/// @DnDParent : 56BD95D1
		/// @DnDArgument : "var" "horisontal_speed"
		if(horisontal_speed == 0)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 5E7F375B
			/// @DnDParent : 194F65FA
			/// @DnDArgument : "expr" "facing*(-1)"
			/// @DnDArgument : "var" "facing"
			facing = facing*(-1);
		}
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 14E06779
		/// @DnDParent : 56BD95D1
		/// @DnDArgument : "expr" "walk_speed*facing"
		/// @DnDArgument : "var" "horisontal_speed"
		horisontal_speed = walk_speed*facing;
	
		/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 0DD9ECFD
		/// @DnDParent : 56BD95D1
		/// @DnDArgument : "script" "calculate_movement"
		/// @DnDSaveInfo : "script" "calculate_movement"
		script_execute(calculate_movement);
	
		/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 130BE54D
		/// @DnDParent : 56BD95D1
		/// @DnDArgument : "script" "collision"
		/// @DnDSaveInfo : "script" "collision"
		script_execute(collision);
	
		/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 2F5984A7
		/// @DnDParent : 56BD95D1
		/// @DnDArgument : "script" "animation_enemy"
		/// @DnDSaveInfo : "script" "animation_enemy"
		script_execute(animation_enemy);
		break;
}