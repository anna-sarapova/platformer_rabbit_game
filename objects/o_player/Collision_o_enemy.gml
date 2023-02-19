/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 40BA5F37
/// @DnDArgument : "var" "other.state"
/// @DnDArgument : "not" "1"
/// @DnDArgument : "value" "es.DEAD"
if(!(other.state == es.DEAD))
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 07DB24B4
	/// @DnDParent : 40BA5F37
	/// @DnDArgument : "var" " bbox_bottom"
	/// @DnDArgument : "op" "2"
	/// @DnDArgument : "value" "other.bbox_top + 10"
	if( bbox_bottom > other.bbox_top + 10)
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 19D5E976
		/// @DnDParent : 07DB24B4
		/// @DnDArgument : "var" "vertical_speed"
		/// @DnDArgument : "op" "2"
		if(vertical_speed > 0)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 471FBD54
			/// @DnDParent : 19D5E976
			/// @DnDArgument : "expr" "-jump_speed "
			/// @DnDArgument : "var" "vertical_speed"
			vertical_speed = -jump_speed ;
		
			/// @DnDAction : YoYo Games.Common.Apply_To
			/// @DnDVersion : 1
			/// @DnDHash : 29E4BA54
			/// @DnDApplyTo : other
			/// @DnDParent : 19D5E976
			with(other) {
				/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
				/// @DnDVersion : 1
				/// @DnDHash : 3AACE52F
				/// @DnDParent : 29E4BA54
				/// @DnDArgument : "instvar" "11"
				image_index = 0;
			
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 769D6F06
				/// @DnDParent : 29E4BA54
				/// @DnDArgument : "var" "horisontal_speed"
				horisontal_speed = 0;
			
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 0C4F83A9
				/// @DnDParent : 29E4BA54
				/// @DnDArgument : "expr" "es.DEAD"
				/// @DnDArgument : "var" "state"
				state = es.DEAD;
			}
		}
	}
}