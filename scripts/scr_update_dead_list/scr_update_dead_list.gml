/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 3D19475C
/// @DnDComment : // Script assets have changed for v2.3.0 see$(13_10)// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/// @DnDArgument : "funcName" "scr_update_dead_list"
function scr_update_dead_list() 
{
	/// @DnDAction : YoYo Games.Data Structures.List_IndexOf
	/// @DnDVersion : 1
	/// @DnDHash : 11D94A51
	/// @DnDParent : 3D19475C
	/// @DnDArgument : "assignee" "_index"
	/// @DnDArgument : "assignee_temp" "1"
	/// @DnDArgument : "var" "global.dead_list"
	/// @DnDArgument : "value" "uid"
	var _index = ds_list_find_index(global.dead_list, uid);

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0AD0AFC9
	/// @DnDParent : 3D19475C
	/// @DnDArgument : "var" "_index"
	/// @DnDArgument : "value" "-1"
	if(_index == -1)
	{
		/// @DnDAction : YoYo Games.Data Structures.List_Add
		/// @DnDVersion : 1
		/// @DnDHash : 0B516041
		/// @DnDParent : 0AD0AFC9
		/// @DnDArgument : "var" "global.dead_list"
		/// @DnDArgument : "value" "uid"
		ds_list_add(global.dead_list, uid);
	}
}