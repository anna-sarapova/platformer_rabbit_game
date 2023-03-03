/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 7CF2D4C4
/// @DnDArgument : "var" "state"
/// @DnDArgument : "not" "1"
/// @DnDArgument : "value" "ps.DEAD"
if(!(state == ps.DEAD))
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 50BF43E5
	/// @DnDParent : 7CF2D4C4
	/// @DnDArgument : "var" "other.state"
	/// @DnDArgument : "not" "1"
	/// @DnDArgument : "value" "es.DEAD"
	if(!(other.state == es.DEAD))
	{
		/// @DnDAction : YoYo Games.Common.If_Expression
		/// @DnDVersion : 1
		/// @DnDHash : 3D157906
		/// @DnDInput : 2
		/// @DnDParent : 50BF43E5
		/// @DnDArgument : "expr" "bbox_bottom < other.bbox_top + 10"
		/// @DnDArgument : "expr_1" "vertical_speed > 0"
		if(bbox_bottom < other.bbox_top + 10 && vertical_speed > 0)
		{
			/// @DnDAction : YoYo Games.Audio.Play_Audio
			/// @DnDVersion : 1.1
			/// @DnDHash : 57E9936A
			/// @DnDParent : 3D157906
			/// @DnDArgument : "soundid" "snd_land_on_enemy"
			/// @DnDSaveInfo : "soundid" "snd_land_on_enemy"
			audio_play_sound(snd_land_on_enemy, 0, 0, 1.0, undefined, 1.0);
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 1B221E65
			/// @DnDParent : 3D157906
			/// @DnDArgument : "expr" "-jump_speed "
			/// @DnDArgument : "var" "vertical_speed"
			vertical_speed = -jump_speed ;
		
			/// @DnDAction : YoYo Games.Instances.Set_Alarm
			/// @DnDVersion : 1
			/// @DnDHash : 6EB490E9
			/// @DnDParent : 3D157906
			/// @DnDArgument : "steps" "immune_time"
			alarm_set(0, immune_time);
		
			/// @DnDAction : YoYo Games.Common.Apply_To
			/// @DnDVersion : 1
			/// @DnDHash : 104090A8
			/// @DnDApplyTo : other
			/// @DnDParent : 3D157906
			with(other) {
				/// @DnDAction : YoYo Games.Common.If_Variable
				/// @DnDVersion : 1
				/// @DnDHash : 07663FAE
				/// @DnDParent : 104090A8
				/// @DnDArgument : "var" "global.boss_hit_points"
				if(global.boss_hit_points == 0)
				{
					/// @DnDAction : YoYo Games.Instances.Create_Instance
					/// @DnDVersion : 1
					/// @DnDHash : 778F0F83
					/// @DnDParent : 07663FAE
					/// @DnDArgument : "xpos_relative" "1"
					/// @DnDArgument : "ypos" "bbox_top"
					/// @DnDArgument : "objectid" "o_explode_ring"
					/// @DnDArgument : "layer" ""FX""
					/// @DnDSaveInfo : "objectid" "o_explode_ring"
					instance_create_layer(x + 0, bbox_top, "FX", o_explode_ring);
				
					/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
					/// @DnDVersion : 1
					/// @DnDHash : 4C96A34D
					/// @DnDParent : 07663FAE
					/// @DnDArgument : "instvar" "11"
					image_index = 0;
				
					/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 375D50CA
					/// @DnDParent : 07663FAE
					/// @DnDArgument : "expr" "es.DEAD"
					/// @DnDArgument : "var" "state"
					state = es.DEAD;
				
					/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 76BCCB0B
					/// @DnDParent : 07663FAE
					/// @DnDArgument : "expr" "points"
					/// @DnDArgument : "expr_relative" "1"
					/// @DnDArgument : "var" "score"
					score += points;
				
					/// @DnDAction : YoYo Games.Instances.Create_Instance
					/// @DnDVersion : 1
					/// @DnDHash : 76EEC3A7
					/// @DnDParent : 07663FAE
					/// @DnDArgument : "xpos_relative" "1"
					/// @DnDArgument : "ypos" "bbox_top"
					/// @DnDArgument : "var" "inst"
					/// @DnDArgument : "var_temp" "1"
					/// @DnDArgument : "objectid" "o_floating_text"
					/// @DnDSaveInfo : "objectid" "o_floating_text"
					var inst = instance_create_layer(x + 0, bbox_top, "Instances", o_floating_text);
				
					/// @DnDAction : YoYo Games.Common.Apply_To
					/// @DnDVersion : 1
					/// @DnDHash : 28BAD58E
					/// @DnDApplyTo : inst
					/// @DnDParent : 07663FAE
					with(inst) {
						/// @DnDAction : YoYo Games.Common.Variable
						/// @DnDVersion : 1
						/// @DnDHash : 74ACFC6A
						/// @DnDParent : 28BAD58E
						/// @DnDArgument : "expr" ""+" + string(other.points)"
						/// @DnDArgument : "var" "txt"
						txt = "+" + string(other.points);
					}
				
					/// @DnDAction : YoYo Games.Loops.Repeat
					/// @DnDVersion : 1
					/// @DnDHash : 1D11ADDF
					/// @DnDParent : 07663FAE
					/// @DnDArgument : "times" "irandom_range(4,6)"
					repeat(irandom_range(4,6))
					{
						/// @DnDAction : YoYo Games.Instances.Create_Instance
						/// @DnDVersion : 1
						/// @DnDHash : 50547512
						/// @DnDParent : 1D11ADDF
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
					/// @DnDHash : 7C9E4B74
					/// @DnDApplyTo : {o_game}
					/// @DnDParent : 07663FAE
					with(o_game) {
						/// @DnDAction : YoYo Games.Common.Variable
						/// @DnDVersion : 1
						/// @DnDHash : 50B4287C
						/// @DnDParent : 7C9E4B74
						/// @DnDArgument : "expr" "true"
						/// @DnDArgument : "var" "screen_shake"
						screen_shake = true;
					}
				}
			
				/// @DnDAction : YoYo Games.Common.Else
				/// @DnDVersion : 1
				/// @DnDHash : 644EFF01
				/// @DnDParent : 104090A8
				else
				{
					/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 7C4802B1
					/// @DnDParent : 644EFF01
					/// @DnDArgument : "expr" "es.KNOCKBACK"
					/// @DnDArgument : "var" "state"
					state = es.KNOCKBACK;
				
					/// @DnDAction : YoYo Games.Common.Execute_Script
					/// @DnDVersion : 1.1
					/// @DnDHash : 529A5322
					/// @DnDParent : 644EFF01
					/// @DnDArgument : "script" "check_hit_points_boss"
					/// @DnDSaveInfo : "script" "check_hit_points_boss"
					script_execute(check_hit_points_boss);
				
					/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 239D2202
					/// @DnDParent : 644EFF01
					/// @DnDArgument : "expr" "-1"
					/// @DnDArgument : "expr_relative" "1"
					/// @DnDArgument : "var" "global.boss_hit_points"
					global.boss_hit_points += -1;
				
					/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 145674AF
					/// @DnDParent : 644EFF01
					/// @DnDArgument : "expr" "sign(x -  other.x) * horisontal_speed_knockback"
					/// @DnDArgument : "expr_relative" "1"
					/// @DnDArgument : "var" "horisontal_speed"
					horisontal_speed += sign(x -  other.x) * horisontal_speed_knockback;
				
					/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 5F781CE0
					/// @DnDParent : 644EFF01
					/// @DnDArgument : "expr" "-vertical_speed_knockback"
					/// @DnDArgument : "var" "vertical_speed"
					vertical_speed = -vertical_speed_knockback;
				
					/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 4848ECFF
					/// @DnDParent : 644EFF01
					/// @DnDArgument : "expr" " es.KNOCKBACK"
					/// @DnDArgument : "var" "state"
					state =  es.KNOCKBACK;
				}
			}
		}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 4D43C8F0
		/// @DnDParent : 50BF43E5
		else
		{
			/// @DnDAction : YoYo Games.Common.If_Expression
			/// @DnDVersion : 1
			/// @DnDHash : 7B1F8A71
			/// @DnDInput : 2
			/// @DnDParent : 4D43C8F0
			/// @DnDArgument : "expr" "state != ps.KNOCKBACK"
			/// @DnDArgument : "expr_1" "alarm[0] <= 0"
			if(state != ps.KNOCKBACK && alarm[0] <= 0)
			{
				/// @DnDAction : YoYo Games.Audio.Play_Audio
				/// @DnDVersion : 1.1
				/// @DnDHash : 606BDC08
				/// @DnDParent : 7B1F8A71
				/// @DnDArgument : "soundid" "snd_player_damaged"
				/// @DnDSaveInfo : "soundid" "snd_player_damaged"
				audio_play_sound(snd_player_damaged, 0, 0, 1.0, undefined, 1.0);
			
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 16E1648B
				/// @DnDParent : 7B1F8A71
				/// @DnDArgument : "expr" "-1"
				/// @DnDArgument : "expr_relative" "1"
				/// @DnDArgument : "var" "global.hit_points"
				global.hit_points += -1;
			
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 403752D4
				/// @DnDParent : 7B1F8A71
				/// @DnDArgument : "expr" "sign(x - other.x) * horisontal_speed_knockback"
				/// @DnDArgument : "expr_relative" "1"
				/// @DnDArgument : "var" "horisontal_speed"
				horisontal_speed += sign(x - other.x) * horisontal_speed_knockback;
			
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 122D56F5
				/// @DnDParent : 7B1F8A71
				/// @DnDArgument : "expr" "-vertical_speed_knockback"
				/// @DnDArgument : "var" "vertical_speed"
				vertical_speed = -vertical_speed_knockback;
			
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 7AAE05DD
				/// @DnDParent : 7B1F8A71
				/// @DnDArgument : "expr" " ps.KNOCKBACK"
				/// @DnDArgument : "var" "state"
				state =  ps.KNOCKBACK;
			}
		}
	}
}