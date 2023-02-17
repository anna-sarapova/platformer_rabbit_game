/// @DnDAction : YoYo Games.Switch.Switch
/// @DnDVersion : 1
/// @DnDHash : 169F0D4D
/// @DnDArgument : "expr" "state"
var l169F0D4D_0 = state;
switch(l169F0D4D_0)
{
	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 54E519B7
	/// @DnDParent : 169F0D4D
	/// @DnDArgument : "const" "ps.IDLE"
	case ps.IDLE:
		/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 6AC06D75
		/// @DnDParent : 54E519B7
		/// @DnDArgument : "script" "get_input"
		/// @DnDSaveInfo : "script" "get_input"
		script_execute(get_input);
	
		/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 7D24B2BD
		/// @DnDParent : 54E519B7
		/// @DnDArgument : "script" "calculate_movement"
		/// @DnDSaveInfo : "script" "calculate_movement"
		script_execute(calculate_movement);
	
		/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 31BE0552
		/// @DnDParent : 54E519B7
		/// @DnDArgument : "script" "check_ground"
		/// @DnDSaveInfo : "script" "check_ground"
		script_execute(check_ground);
	
		/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 3F0732B1
		/// @DnDParent : 54E519B7
		/// @DnDArgument : "script" "check_state"
		/// @DnDSaveInfo : "script" "check_state"
		script_execute(check_state);
	
		/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 11392749
		/// @DnDParent : 54E519B7
		/// @DnDArgument : "script" "check_jump"
		/// @DnDSaveInfo : "script" "check_jump"
		script_execute(check_jump);
	
		/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 7B3B1768
		/// @DnDParent : 54E519B7
		/// @DnDArgument : "script" "collision"
		/// @DnDSaveInfo : "script" "collision"
		script_execute(collision);
	
		/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 1D09317B
		/// @DnDParent : 54E519B7
		/// @DnDArgument : "script" "animation"
		/// @DnDSaveInfo : "script" "animation"
		script_execute(animation);
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 56BD95D1
	/// @DnDParent : 169F0D4D
	/// @DnDArgument : "const" "ps.WALK"
	case ps.WALK:
		/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 0E6D1EF3
		/// @DnDParent : 56BD95D1
		/// @DnDArgument : "script" "get_input"
		/// @DnDSaveInfo : "script" "get_input"
		script_execute(get_input);
	
		/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 0DD9ECFD
		/// @DnDParent : 56BD95D1
		/// @DnDArgument : "script" "calculate_movement"
		/// @DnDSaveInfo : "script" "calculate_movement"
		script_execute(calculate_movement);
	
		/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 65F8A583
		/// @DnDParent : 56BD95D1
		/// @DnDArgument : "script" "check_ground"
		/// @DnDSaveInfo : "script" "check_ground"
		script_execute(check_ground);
	
		/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 486B93CC
		/// @DnDParent : 56BD95D1
		/// @DnDArgument : "script" "check_state"
		/// @DnDSaveInfo : "script" "check_state"
		script_execute(check_state);
	
		/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 2BF8B95F
		/// @DnDParent : 56BD95D1
		/// @DnDArgument : "script" "check_jump"
		/// @DnDSaveInfo : "script" "check_jump"
		script_execute(check_jump);
	
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
		/// @DnDArgument : "script" "animation"
		/// @DnDSaveInfo : "script" "animation"
		script_execute(animation);
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 37E496E8
	/// @DnDParent : 169F0D4D
	/// @DnDArgument : "const" "ps.AIR "
	case ps.AIR :
		/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 0F7FF716
		/// @DnDParent : 37E496E8
		/// @DnDArgument : "script" "get_input"
		/// @DnDSaveInfo : "script" "get_input"
		script_execute(get_input);
	
		/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 3E53DEF7
		/// @DnDParent : 37E496E8
		/// @DnDArgument : "script" "calculate_movement"
		/// @DnDSaveInfo : "script" "calculate_movement"
		script_execute(calculate_movement);
	
		/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 742BCA74
		/// @DnDParent : 37E496E8
		/// @DnDArgument : "script" "check_ground"
		/// @DnDSaveInfo : "script" "check_ground"
		script_execute(check_ground);
	
		/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 378EC7D0
		/// @DnDParent : 37E496E8
		/// @DnDArgument : "script" "check_state"
		/// @DnDSaveInfo : "script" "check_state"
		script_execute(check_state);
	
		/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 23A7CFCF
		/// @DnDParent : 37E496E8
		/// @DnDArgument : "script" "collision"
		/// @DnDSaveInfo : "script" "collision"
		script_execute(collision);
	
		/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 16C53922
		/// @DnDParent : 37E496E8
		/// @DnDArgument : "script" "animation"
		/// @DnDSaveInfo : "script" "animation"
		script_execute(animation);
		break;
}