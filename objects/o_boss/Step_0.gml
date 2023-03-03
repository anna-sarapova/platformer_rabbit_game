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
		/// @DnDArgument : "script" "calculate_movement_other"
		/// @DnDSaveInfo : "script" "calculate_movement_other"
		script_execute(calculate_movement_other);
	
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

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 6AD2213E
	/// @DnDParent : 169F0D4D
	/// @DnDArgument : "const" "es.DEAD"
	case es.DEAD:
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 2EB71137
		/// @DnDParent : 6AD2213E
		/// @DnDArgument : "var" "image_index"
		/// @DnDArgument : "op" "2"
		/// @DnDArgument : "value" "image_number -1"
		if(image_index > image_number -1)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 5F9E0504
			/// @DnDParent : 2EB71137
			/// @DnDArgument : "var" "image_speed"
			image_speed = 0;
		}
	
		/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 16C4488A
		/// @DnDParent : 6AD2213E
		/// @DnDArgument : "script" "collision"
		/// @DnDSaveInfo : "script" "collision"
		script_execute(collision);
	
		/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 18D8B319
		/// @DnDParent : 6AD2213E
		/// @DnDArgument : "script" "animation_enemy"
		/// @DnDSaveInfo : "script" "animation_enemy"
		script_execute(animation_enemy);
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 4B37FA10
	/// @DnDParent : 169F0D4D
	/// @DnDArgument : "const" "es.KNOCKBACK   "
	case es.KNOCKBACK   :
		/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 088FA2B7
		/// @DnDParent : 4B37FA10
		/// @DnDArgument : "script" "reset_input"
		/// @DnDSaveInfo : "script" "reset_input"
		script_execute(reset_input);
	
		/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 616A054A
		/// @DnDParent : 4B37FA10
		/// @DnDArgument : "script" "calculate_movement_other"
		/// @DnDSaveInfo : "script" "calculate_movement_other"
		script_execute(calculate_movement_other);
	
		/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 72098D51
		/// @DnDParent : 4B37FA10
		/// @DnDArgument : "script" "check_ground"
		/// @DnDSaveInfo : "script" "check_ground"
		script_execute(check_ground);
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 281E3E87
		/// @DnDParent : 4B37FA10
		/// @DnDArgument : "var" "vertical_speed"
		/// @DnDArgument : "op" "2"
		if(vertical_speed > 0)
		{
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 1F4B4F12
			/// @DnDParent : 281E3E87
			/// @DnDArgument : "var" "on_ground"
			/// @DnDArgument : "value" "true"
			if(on_ground == true)
			{
				/// @DnDAction : YoYo Games.Common.Execute_Script
				/// @DnDVersion : 1.1
				/// @DnDHash : 1747A6A3
				/// @DnDParent : 1F4B4F12
				/// @DnDArgument : "script" "check_state"
				/// @DnDSaveInfo : "script" "check_state"
				script_execute(check_state);
			}
		}
	
		/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 7A8B4C4C
		/// @DnDParent : 4B37FA10
		/// @DnDArgument : "script" "check_hit_points_boss"
		/// @DnDSaveInfo : "script" "check_hit_points_boss"
		script_execute(check_hit_points_boss);
	
		/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 36B0F3B0
		/// @DnDParent : 4B37FA10
		/// @DnDArgument : "script" "collision"
		/// @DnDSaveInfo : "script" "collision"
		script_execute(collision);
	
		/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 4EF02CCF
		/// @DnDParent : 4B37FA10
		/// @DnDArgument : "script" "animation_boss"
		/// @DnDSaveInfo : "script" "animation_boss"
		script_execute(animation_boss);
		break;
}