/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 296FE115
/// @DnDArgument : "var" "state"
/// @DnDArgument : "value" "es.DEAD"
if(state == es.DEAD)
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 54F0AA50
	/// @DnDParent : 296FE115
	instance_destroy();

	/// @DnDAction : YoYo Games.Common.Execute_Script
	/// @DnDVersion : 1.1
	/// @DnDHash : 0C206B7F
	/// @DnDParent : 296FE115
	/// @DnDArgument : "script" "scr_update_dead_list"
	/// @DnDSaveInfo : "script" "scr_update_dead_list"
	script_execute(scr_update_dead_list);
}