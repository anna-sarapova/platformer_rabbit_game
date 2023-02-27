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
			/// @DnDAction : YoYo Games.Audio.Play_Audio
			/// @DnDVersion : 1.1
			/// @DnDHash : 62A6BB5F
			/// @DnDParent : 355ED891
			/// @DnDArgument : "soundid" "snd_land_on_enemy"
			/// @DnDSaveInfo : "soundid" "snd_land_on_enemy"
			audio_play_sound(snd_land_on_enemy, 0, 0, 1.0, undefined, 1.0);
		
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
				/// @DnDAction : YoYo Games.Instances.Create_Instance
				/// @DnDVersion : 1
				/// @DnDHash : 5020BC52
				/// @DnDParent : 29E4BA54
				/// @DnDArgument : "xpos_relative" "1"
				/// @DnDArgument : "ypos" "bbox_top"
				/// @DnDArgument : "objectid" "o_explode_ring"
				/// @DnDArgument : "layer" ""FX""
				/// @DnDSaveInfo : "objectid" "o_explode_ring"
				instance_create_layer(x + 0, bbox_top, "FX", o_explode_ring);
			
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
			
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 5A0BF142
				/// @DnDParent : 29E4BA54
				/// @DnDArgument : "expr" "points"
				/// @DnDArgument : "expr_relative" "1"
				/// @DnDArgument : "var" "score"
				score += points;
			
				/// @DnDAction : YoYo Games.Instances.Create_Instance
				/// @DnDVersion : 1
				/// @DnDHash : 3649288A
				/// @DnDParent : 29E4BA54
				/// @DnDArgument : "xpos_relative" "1"
				/// @DnDArgument : "ypos" "bbox_top"
				/// @DnDArgument : "var" "inst"
				/// @DnDArgument : "var_temp" "1"
				/// @DnDArgument : "objectid" "o_floating_text"
				/// @DnDSaveInfo : "objectid" "o_floating_text"
				var inst = instance_create_layer(x + 0, bbox_top, "Instances", o_floating_text);
			
				/// @DnDAction : YoYo Games.Common.Apply_To
				/// @DnDVersion : 1
				/// @DnDHash : 0D911552
				/// @DnDApplyTo : inst
				/// @DnDParent : 29E4BA54
				with(inst) {
					/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 5FDD602A
					/// @DnDParent : 0D911552
					/// @DnDArgument : "expr" ""+" + string(other.points)"
					/// @DnDArgument : "var" "txt"
					txt = "+" + string(other.points);
				}
			
				/// @DnDAction : YoYo Games.Loops.Repeat
				/// @DnDVersion : 1
				/// @DnDHash : 12A43A7B
				/// @DnDParent : 29E4BA54
				/// @DnDArgument : "times" "irandom_range(4,6)"
				repeat(irandom_range(4,6))
				{
					/// @DnDAction : YoYo Games.Instances.Create_Instance
					/// @DnDVersion : 1
					/// @DnDHash : 3CAB3320
					/// @DnDParent : 12A43A7B
					/// @DnDArgument : "xpos" "random_range(-10, 10)"
					/// @DnDArgument : "xpos_relative" "1"
					/// @DnDArgument : "ypos" "bbox_top"
					/// @DnDArgument : "objectid" "o_coin"
					/// @DnDArgument : "layer" ""Coin""
					/// @DnDSaveInfo : "objectid" "o_coin"
					instance_create_layer(x + random_range(-10, 10), bbox_top, "Coin", o_coin);
				}
			
				/// @DnDAction : YoYo Games.Common.Apply_To
				/// @DnDVersion : 1
				/// @DnDHash : 3DAC8E15
				/// @DnDApplyTo : {o_game}
				/// @DnDParent : 29E4BA54
				with(o_game) {
					/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 49FCD8B2
					/// @DnDParent : 3DAC8E15
					/// @DnDArgument : "expr" "true"
					/// @DnDArgument : "var" "screen_shake"
					screen_shake = true;
				}
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
				/// @DnDAction : YoYo Games.Audio.Play_Audio
				/// @DnDVersion : 1.1
				/// @DnDHash : 22E38756
				/// @DnDParent : 4F301615
				/// @DnDArgument : "soundid" "snd_player_damaged"
				/// @DnDSaveInfo : "soundid" "snd_player_damaged"
				audio_play_sound(snd_player_damaged, 0, 0, 1.0, undefined, 1.0);
			
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 4D48B755
				/// @DnDParent : 4F301615
				/// @DnDArgument : "expr" "-1"
				/// @DnDArgument : "expr_relative" "1"
				/// @DnDArgument : "var" "global.hit_points"
				global.hit_points += -1;
			
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 39A0FC59
				/// @DnDParent : 4F301615
				/// @DnDArgument : "expr" "sign(x - other.x) * horisontal_speed_knockback"
				/// @DnDArgument : "expr_relative" "1"
				/// @DnDArgument : "var" "horisontal_speed"
				horisontal_speed += sign(x - other.x) * horisontal_speed_knockback;
			
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