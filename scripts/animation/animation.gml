/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 1557A93C
/// @DnDComment : // Script assets have changed for v2.3.0 see$(13_10)// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/// @DnDArgument : "funcName" "animation"
function animation() 
{
	/// @DnDAction : YoYo Games.Switch.Switch
	/// @DnDVersion : 1
	/// @DnDHash : 22667DF9
	/// @DnDParent : 1557A93C
	/// @DnDArgument : "expr" "state"
	var l22667DF9_0 = state;
	switch(l22667DF9_0)
	{
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 3C52CEB4
		/// @DnDParent : 22667DF9
		/// @DnDArgument : "const" "ps.IDLE"
		case ps.IDLE:
			/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
			/// @DnDVersion : 1
			/// @DnDHash : 0BA8DE91
			/// @DnDParent : 3C52CEB4
			/// @DnDArgument : "value" "sprite_idle"
			/// @DnDArgument : "instvar" "10"
			sprite_index = sprite_idle;
		
			/// @DnDAction : YoYo Games.Common.Execute_Script
			/// @DnDVersion : 1.1
			/// @DnDHash : 1DDF44C1
			/// @DnDParent : 3C52CEB4
			/// @DnDArgument : "script" "check_facing"
			/// @DnDSaveInfo : "script" "check_facing"
			script_execute(check_facing);
			break;
	
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 0254120F
		/// @DnDParent : 22667DF9
		/// @DnDArgument : "const" "ps.WALK"
		case ps.WALK:
			/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
			/// @DnDVersion : 1
			/// @DnDHash : 3BB6DCB7
			/// @DnDParent : 0254120F
			/// @DnDArgument : "value" "sprite_walk"
			/// @DnDArgument : "instvar" "10"
			sprite_index = sprite_walk;
		
			/// @DnDAction : YoYo Games.Common.Execute_Script
			/// @DnDVersion : 1.1
			/// @DnDHash : 7A8685D7
			/// @DnDParent : 0254120F
			/// @DnDArgument : "script" "check_facing"
			/// @DnDSaveInfo : "script" "check_facing"
			script_execute(check_facing);
			break;
	
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 1A96436F
		/// @DnDParent : 22667DF9
		/// @DnDArgument : "const" "ps.AIR"
		case ps.AIR:
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 20B91422
			/// @DnDParent : 1A96436F
			/// @DnDArgument : "expr" "sprite_air"
			/// @DnDArgument : "var" "sprite_index"
			sprite_index = sprite_air;
		
			/// @DnDAction : YoYo Games.Common.Execute_Script
			/// @DnDVersion : 1.1
			/// @DnDHash : 1B7E5C9D
			/// @DnDParent : 1A96436F
			/// @DnDArgument : "script" "check_facing"
			/// @DnDSaveInfo : "script" "check_facing"
			script_execute(check_facing);
		
			/// @DnDAction : YoYo Games.Common.Execute_Script
			/// @DnDVersion : 1.1
			/// @DnDHash : 1C654D33
			/// @DnDParent : 1A96436F
			/// @DnDArgument : "script" "check_air_index"
			/// @DnDSaveInfo : "script" "check_air_index"
			script_execute(check_air_index);
			break;
	
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 1F1D9944
		/// @DnDParent : 22667DF9
		/// @DnDArgument : "const" "ps.KNOCKBACK "
		case ps.KNOCKBACK :
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 6B119F48
			/// @DnDParent : 1F1D9944
			/// @DnDArgument : "expr" "sprite_air"
			/// @DnDArgument : "var" "sprite_index"
			sprite_index = sprite_air;
		
			/// @DnDAction : YoYo Games.Common.Execute_Script
			/// @DnDVersion : 1.1
			/// @DnDHash : 1E1261DB
			/// @DnDParent : 1F1D9944
			/// @DnDArgument : "script" "check_air_index"
			/// @DnDSaveInfo : "script" "check_air_index"
			script_execute(check_air_index);
			break;
	
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 4FB00DCD
		/// @DnDParent : 22667DF9
		/// @DnDArgument : "const" "ps.DEAD "
		case ps.DEAD :
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 1120552C
			/// @DnDParent : 4FB00DCD
			/// @DnDArgument : "expr" "sprite_dead"
			/// @DnDArgument : "var" "sprite_index"
			sprite_index = sprite_dead;
			break;
	}
}