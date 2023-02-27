/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 2660C974
/// @DnDArgument : "expr" "bounce < 2 or moveable == false"
if(bounce < 2 or moveable == false)
{
	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1.1
	/// @DnDHash : 5FDA898D
	/// @DnDParent : 2660C974
	/// @DnDArgument : "target" "snd"
	/// @DnDArgument : "target_temp" "1"
	/// @DnDArgument : "soundid" "snd_coin_pickup"
	/// @DnDSaveInfo : "soundid" "snd_coin_pickup"
	var snd = audio_play_sound(snd_coin_pickup, 0, 0, 1.0, undefined, 1.0);

	/// @DnDAction : YoYo Games.Audio.Audio_Set_Pitch
	/// @DnDVersion : 1
	/// @DnDHash : 27F54E20
	/// @DnDParent : 2660C974
	/// @DnDArgument : "sound" "snd"
	/// @DnDArgument : "pitch" "random_range(0.8, 1.2)"
	audio_sound_pitch(snd, random_range(0.8, 1.2));

	/// @DnDAction : YoYo Games.Common.Execute_Script
	/// @DnDVersion : 1.1
	/// @DnDHash : 279D355E
	/// @DnDParent : 2660C974
	/// @DnDArgument : "script" "scr_update_dead_list"
	/// @DnDSaveInfo : "script" "scr_update_dead_list"
	script_execute(scr_update_dead_list);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5E797216
	/// @DnDParent : 2660C974
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "global.carrots "
	global.carrots  += 1;

	/// @DnDAction : YoYo Games.Instances.Change_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 1CC1D82F
	/// @DnDParent : 2660C974
	/// @DnDArgument : "objind" "o_coin_pickup "
	instance_change(o_coin_pickup , true);

	/// @DnDAction : YoYo Games.Common.Execute_Script
	/// @DnDVersion : 1.1
	/// @DnDHash : 5A8ED4E2
	/// @DnDParent : 2660C974
	/// @DnDArgument : "script" "update_healthbar"
	/// @DnDSaveInfo : "script" "update_healthbar"
	script_execute(update_healthbar);
}