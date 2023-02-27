/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 3C6FAB67
/// @DnDComment : // Script assets have changed for v2.3.0 see$(13_10)// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/// @DnDArgument : "funcName" "check_jump"
function check_jump() 
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7D64A240
	/// @DnDParent : 3C6FAB67
	/// @DnDArgument : "var" "on_ground"
	/// @DnDArgument : "value" "true"
	if(on_ground == true)
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 5EBA432A
		/// @DnDParent : 7D64A240
		/// @DnDArgument : "var" "jump"
		/// @DnDArgument : "value" "true"
		if(jump == true)
		{
			/// @DnDAction : YoYo Games.Audio.Play_Audio
			/// @DnDVersion : 1.1
			/// @DnDHash : 7EEAD783
			/// @DnDParent : 5EBA432A
			/// @DnDArgument : "soundid" "snd_jump"
			/// @DnDSaveInfo : "soundid" "snd_jump"
			audio_play_sound(snd_jump, 0, 0, 1.0, undefined, 1.0);
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 3ED6C890
			/// @DnDParent : 5EBA432A
			/// @DnDArgument : "expr" "-jump_speed"
			/// @DnDArgument : "var" "vertical_speed"
			vertical_speed = -jump_speed;
		
			/// @DnDAction : YoYo Games.Common.Execute_Script
			/// @DnDVersion : 1.1
			/// @DnDHash : 203CED70
			/// @DnDParent : 5EBA432A
			/// @DnDArgument : "script" "scr_create_dust"
			/// @DnDSaveInfo : "script" "scr_create_dust"
			script_execute(scr_create_dust);
		}
	}
}