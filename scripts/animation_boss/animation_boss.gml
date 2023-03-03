/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 1557A93C
/// @DnDComment : // Script assets have changed for v2.3.0 see$(13_10)// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/// @DnDArgument : "funcName" "animation_boss"
function animation_boss() 
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
		/// @DnDHash : 0254120F
		/// @DnDParent : 22667DF9
		/// @DnDArgument : "const" "es.WALK"
		case es.WALK:
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
		/// @DnDHash : 3FFD9071
		/// @DnDParent : 22667DF9
		/// @DnDArgument : "const" "es.DEAD"
		case es.DEAD:
			/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
			/// @DnDVersion : 1
			/// @DnDHash : 4A8A667A
			/// @DnDParent : 3FFD9071
			/// @DnDArgument : "value" "sprite_dead"
			/// @DnDArgument : "instvar" "10"
			sprite_index = sprite_dead;
		
			/// @DnDAction : YoYo Games.Common.Execute_Script
			/// @DnDVersion : 1.1
			/// @DnDHash : 6F638456
			/// @DnDParent : 3FFD9071
			/// @DnDArgument : "script" "check_facing"
			/// @DnDSaveInfo : "script" "check_facing"
			script_execute(check_facing);
			break;
	}
}