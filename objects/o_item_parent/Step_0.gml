/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 51AD8A50
/// @DnDArgument : "var" "moveable"
/// @DnDArgument : "value" "true"
if(moveable == true)
{
	/// @DnDAction : YoYo Games.Common.Execute_Script
	/// @DnDVersion : 1.1
	/// @DnDHash : 60CEC4C4
	/// @DnDParent : 51AD8A50
	/// @DnDArgument : "script" "calculate_movement_other"
	/// @DnDSaveInfo : "script" "calculate_movement_other"
	script_execute(calculate_movement_other);

	/// @DnDAction : YoYo Games.Common.Execute_Script
	/// @DnDVersion : 1.1
	/// @DnDHash : 499E839E
	/// @DnDParent : 51AD8A50
	/// @DnDArgument : "script" "check_ground"
	/// @DnDSaveInfo : "script" "check_ground"
	script_execute(check_ground);

	/// @DnDAction : YoYo Games.Common.Temp_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 45F705A2
	/// @DnDParent : 51AD8A50
	/// @DnDArgument : "var" "pre_bounce"
	/// @DnDArgument : "value" "bounce"
	var pre_bounce = bounce;

	/// @DnDAction : YoYo Games.Common.Execute_Script
	/// @DnDVersion : 1.1
	/// @DnDHash : 2A0803B1
	/// @DnDParent : 51AD8A50
	/// @DnDArgument : "script" "collision"
	/// @DnDSaveInfo : "script" "collision"
	script_execute(collision);

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0A3D29C5
	/// @DnDParent : 51AD8A50
	/// @DnDArgument : "var" " pre_bounce"
	/// @DnDArgument : "not" "1"
	/// @DnDArgument : "value" "bounce"
	if(!( pre_bounce == bounce))
	{
		/// @DnDAction : YoYo Games.Audio.If_Audio_Playing
		/// @DnDVersion : 1
		/// @DnDHash : 49B38302
		/// @DnDParent : 0A3D29C5
		/// @DnDArgument : "soundid" "snd_coin_bounce"
		/// @DnDArgument : "not" "1"
		/// @DnDSaveInfo : "soundid" "snd_coin_bounce"
		var l49B38302_0 = snd_coin_bounce;
		if (!audio_is_playing(l49B38302_0))
		{
			/// @DnDAction : YoYo Games.Audio.Play_Audio
			/// @DnDVersion : 1.1
			/// @DnDHash : 7A543F05
			/// @DnDParent : 49B38302
			/// @DnDArgument : "target" "snd"
			/// @DnDArgument : "target_temp" "1"
			/// @DnDArgument : "soundid" "snd_coin_bounce"
			/// @DnDSaveInfo : "soundid" "snd_coin_bounce"
			var snd = audio_play_sound(snd_coin_bounce, 0, 0, 1.0, undefined, 1.0);
		
			/// @DnDAction : YoYo Games.Audio.Audio_Set_Pitch
			/// @DnDVersion : 1
			/// @DnDHash : 28018FF7
			/// @DnDParent : 49B38302
			/// @DnDArgument : "sound" "snd"
			/// @DnDArgument : "pitch" "random_range(0.8, 1.2)"
			audio_sound_pitch(snd, random_range(0.8, 1.2));
		}
	}
}