/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 1E64451E
/// @DnDComment : // Script assets have changed for v2.3.0 see$(13_10)// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/// @DnDArgument : "funcName" "src_set_identifier"
function src_set_identifier() 
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 16171CC5
	/// @DnDParent : 1E64451E
	/// @DnDArgument : "expr" "string(room) + string(object_index) + string(x) + string(y)"
	/// @DnDArgument : "var" "uid"
	uid = string(room) + string(object_index) + string(x) + string(y);

	/// @DnDAction : YoYo Games.Data Structures.List_IndexOf
	/// @DnDVersion : 1
	/// @DnDHash : 2F119C77
	/// @DnDParent : 1E64451E
	/// @DnDArgument : "assignee" "_index"
	/// @DnDArgument : "assignee_temp" "1"
	/// @DnDArgument : "var" "global.dead_list"
	/// @DnDArgument : "value" "uid"
	var _index = ds_list_find_index(global.dead_list, uid);

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 17BEC186
	/// @DnDParent : 1E64451E
	/// @DnDArgument : "var" "_index"
	/// @DnDArgument : "not" "1"
	/// @DnDArgument : "value" "-1"
	if(!(_index == -1))
	{
		/// @DnDAction : YoYo Games.Instances.Destroy_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 1D59FCD9
		/// @DnDParent : 17BEC186
		instance_destroy();
	}
}