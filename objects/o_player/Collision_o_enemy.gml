/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 214530B7
/// @DnDArgument : "var" "state"
/// @DnDArgument : "not" "1"
/// @DnDArgument : "value" "ps.DEAD"
if(!(state == ps.DEAD))
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 40BA5F37
	/// @DnDParent : 214530B7
	/// @DnDArgument : "var" "other.state"
	/// @DnDArgument : "not" "1"
	/// @DnDArgument : "value" "es.DEAD"
	if(!(other.state == es.DEAD))
	{
		/// @DnDAction : YoYo Games.Common.If_Expression
		/// @DnDVersion : 1
		/// @DnDHash : 355ED891
		/// @DnDInput : 2
		/// @DnDParent : 40BA5F37
		/// @DnDArgument : "expr" "bbox_bottom < other.bbox_top + 10"
		/// @DnDArgument : "expr_1" "vertical_speed > 0"
		if(bbox_bottom < other.bbox_top + 10 && vertical_speed > 0)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 471FBD54
			/// @DnDParent : 355ED891
			/// @DnDArgument : "expr" "-jump_speed "
			/// @DnDArgument : "var" "vertical_speed"
			vertical_speed = -jump_speed ;
		
			/// @DnDAction : YoYo Games.Instances.Set_Alarm
			/// @DnDVersion : 1
			/// @DnDHash : 27CA57DF
			/// @DnDParent : 355ED891
			/// @DnDArgument : "steps" "immune_time"
			alarm_set(0, immune_time);
		
			/// @DnDAction : YoYo Games.Common.Apply_To
			/// @DnDVersion : 1
			/// @DnDHash : 29E4BA54
			/// @DnDApplyTo : other
			/// @DnDParent : 355ED891
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
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 3CDD5970
		/// @DnDParent : 40BA5F37
		else
		{
			/// @DnDAction : YoYo Games.Common.If_Expression
			/// @DnDVersion : 1
			/// @DnDHash : 4F301615
			/// @DnDInput : 2
			/// @DnDParent : 3CDD5970
			/// @DnDArgument : "expr" "state != ps.KNOCKBACK"
			/// @DnDArgument : "expr_1" "alarm[0] <= 0"
			if(state != ps.KNOCKBACK && alarm[0] <= 0)
			{
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 4D48B755
				/// @DnDParent : 4F301615
				/// @DnDArgument : "expr" "-1"
				/// @DnDArgument : "expr_relative" "1"
				/// @DnDArgument : "var" "hit_points"
				hit_points += -1;
			
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 39A0FC59
				/// @DnDParent : 4F301615
				/// @DnDArgument : "expr" "sign(x - other.x) * horisontal_speed_knockback"
				/// @DnDArgument : "var" "horisontal_speed"
				horisontal_speed = sign(x - other.x) * horisontal_speed_knockback;
			
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 3AEA71FA
				/// @DnDParent : 4F301615
				/// @DnDArgument : "expr" "-vertical_speed_knockback"
				/// @DnDArgument : "var" "vertical_speed"
				vertical_speed = -vertical_speed_knockback;
			
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 21CFBE17
				/// @DnDParent : 4F301615
				/// @DnDArgument : "expr" " ps.KNOCKBACK"
				/// @DnDArgument : "var" "state"
				state =  ps.KNOCKBACK;
			}
		}
	}
}