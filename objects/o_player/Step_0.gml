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
		/// @DnDHash : 6D08BBCB
		/// @DnDParent : 54E519B7
		/// @DnDArgument : "script" "check_hit_points"
		/// @DnDSaveInfo : "script" "check_hit_points"
		script_execute(check_hit_points);
	
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
	/// @DnDHash : 65C3F4D9
	/// @DnDParent : 169F0D4D
	/// @DnDArgument : "const" "ps.AIR"
	case ps.AIR:
		/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 09FBBDF5
		/// @DnDParent : 65C3F4D9
		/// @DnDArgument : "script" "get_input"
		/// @DnDSaveInfo : "script" "get_input"
		script_execute(get_input);
	
		/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 2BA4EE6D
		/// @DnDParent : 65C3F4D9
		/// @DnDArgument : "script" "calculate_movement"
		/// @DnDSaveInfo : "script" "calculate_movement"
		script_execute(calculate_movement);
	
		/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 790E4EC2
		/// @DnDParent : 65C3F4D9
		/// @DnDArgument : "script" "check_ground"
		/// @DnDSaveInfo : "script" "check_ground"
		script_execute(check_ground);
	
		/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 78BD5B05
		/// @DnDParent : 65C3F4D9
		/// @DnDArgument : "script" "check_state"
		/// @DnDSaveInfo : "script" "check_state"
		script_execute(check_state);
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 1895935B
		/// @DnDParent : 65C3F4D9
		/// @DnDArgument : "var" "on_ground"
		/// @DnDArgument : "value" "true"
		if(on_ground == true)
		{
			/// @DnDAction : YoYo Games.Common.Execute_Script
			/// @DnDVersion : 1.1
			/// @DnDHash : 7AE84F39
			/// @DnDParent : 1895935B
			/// @DnDArgument : "script" "scr_create_dust"
			/// @DnDSaveInfo : "script" "scr_create_dust"
			script_execute(scr_create_dust);
		
			/// @DnDAction : YoYo Games.Audio.Play_Audio
			/// @DnDVersion : 1.1
			/// @DnDHash : 7F1F34AE
			/// @DnDParent : 1895935B
			/// @DnDArgument : "soundid" "snd_land"
			/// @DnDSaveInfo : "soundid" "snd_land"
			audio_play_sound(snd_land, 0, 0, 1.0, undefined, 1.0);
		}
	
		/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 03957B49
		/// @DnDParent : 65C3F4D9
		/// @DnDArgument : "script" "check_hit_points"
		/// @DnDSaveInfo : "script" "check_hit_points"
		script_execute(check_hit_points);
	
		/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 5E7EB6E1
		/// @DnDParent : 65C3F4D9
		/// @DnDArgument : "script" "collision"
		/// @DnDSaveInfo : "script" "collision"
		script_execute(collision);
	
		/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 63994276
		/// @DnDParent : 65C3F4D9
		/// @DnDArgument : "script" "animation"
		/// @DnDSaveInfo : "script" "animation"
		script_execute(animation);
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 37E496E8
	/// @DnDParent : 169F0D4D
	/// @DnDArgument : "const" "ps.KNOCKBACK   "
	case ps.KNOCKBACK   :
		/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 754372ED
		/// @DnDParent : 37E496E8
		/// @DnDArgument : "script" "reset_input"
		/// @DnDSaveInfo : "script" "reset_input"
		script_execute(reset_input);
	
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
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 1EF33C47
		/// @DnDParent : 37E496E8
		/// @DnDArgument : "var" "vertical_speed"
		/// @DnDArgument : "op" "2"
		if(vertical_speed > 0)
		{
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 16992373
			/// @DnDParent : 1EF33C47
			/// @DnDArgument : "var" "on_ground"
			/// @DnDArgument : "value" "true"
			if(on_ground == true)
			{
				/// @DnDAction : YoYo Games.Common.Execute_Script
				/// @DnDVersion : 1.1
				/// @DnDHash : 378EC7D0
				/// @DnDParent : 16992373
				/// @DnDArgument : "script" "check_state"
				/// @DnDSaveInfo : "script" "check_state"
				script_execute(check_state);
			}
		}
	
		/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 751CFA2B
		/// @DnDParent : 37E496E8
		/// @DnDArgument : "script" "check_hit_points"
		/// @DnDSaveInfo : "script" "check_hit_points"
		script_execute(check_hit_points);
	
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

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 20467CF4
	/// @DnDParent : 169F0D4D
	/// @DnDArgument : "const" "ps.DEAD"
	case ps.DEAD:
		/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 0EA91B4E
		/// @DnDParent : 20467CF4
		/// @DnDArgument : "script" "calculate_movement"
		/// @DnDSaveInfo : "script" "calculate_movement"
		script_execute(calculate_movement);
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 5755868B
		/// @DnDParent : 20467CF4
		/// @DnDArgument : "var" "image_index"
		/// @DnDArgument : "op" "2"
		/// @DnDArgument : "value" "image_number -1"
		if(image_index > image_number -1)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 22DF062F
			/// @DnDParent : 5755868B
			/// @DnDArgument : "var" "image_speed"
			image_speed = 0;
		
			/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
			/// @DnDVersion : 1
			/// @DnDHash : 5859D3FC
			/// @DnDParent : 5755868B
			var l5859D3FC_0;
			l5859D3FC_0 = keyboard_check_pressed(vk_space);
			if (l5859D3FC_0)
			{
				/// @DnDAction : YoYo Games.Game.Restart_Game
				/// @DnDVersion : 1
				/// @DnDHash : 18735A6F
				/// @DnDParent : 5859D3FC
				game_restart();
			}
		}
	
		/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 41C145EE
		/// @DnDParent : 20467CF4
		/// @DnDArgument : "script" "collision"
		/// @DnDSaveInfo : "script" "collision"
		script_execute(collision);
	
		/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 71464190
		/// @DnDParent : 20467CF4
		/// @DnDArgument : "script" "animation"
		/// @DnDSaveInfo : "script" "animation"
		script_execute(animation);
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 17C3D978
	/// @DnDParent : 169F0D4D
	/// @DnDArgument : "const" "ps.HEAL"
	case ps.HEAL:
		/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 248627DF
		/// @DnDParent : 17C3D978
		/// @DnDArgument : "script" "check_hit_points"
		/// @DnDSaveInfo : "script" "check_hit_points"
		script_execute(check_hit_points);
	
		/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 09297385
		/// @DnDParent : 17C3D978
		/// @DnDArgument : "script" "update_healthbar"
		/// @DnDSaveInfo : "script" "update_healthbar"
		script_execute(update_healthbar);
		break;
}