/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 50811ABC
/// @DnDComment : // Script assets have changed for v2.3.0 see$(13_10)// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/// @DnDArgument : "funcName" "collision"
function collision() 
{
	/// @DnDAction : YoYo Games.Collisions.If_Object_At
	/// @DnDVersion : 1.1
	/// @DnDHash : 2CA7BE92
	/// @DnDComment : Horizontal Collisions
	/// @DnDParent : 50811ABC
	/// @DnDArgument : "x" "horisontal_speed"
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "object" "o_solid"
	/// @DnDSaveInfo : "object" "o_solid"
	var l2CA7BE92_0 = instance_place(x + horisontal_speed, y + 0, o_solid);
	if ((l2CA7BE92_0 > 0))
	{
		/// @DnDAction : YoYo Games.Common.Temp_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 5808CFB7
		/// @DnDParent : 2CA7BE92
		/// @DnDArgument : "var" "collide"
		/// @DnDArgument : "value" "false"
		var collide = false;
	
		/// @DnDAction : YoYo Games.Loops.While_Loop
		/// @DnDVersion : 1
		/// @DnDHash : 7D5CC4B1
		/// @DnDParent : 2CA7BE92
		/// @DnDArgument : "var" "collide"
		/// @DnDArgument : "value" "false"
		while ((collide == false)) {
			/// @DnDAction : YoYo Games.Collisions.If_Object_At
			/// @DnDVersion : 1.1
			/// @DnDHash : 23BADC91
			/// @DnDParent : 7D5CC4B1
			/// @DnDArgument : "x" "sign(horisontal_speed)"
			/// @DnDArgument : "x_relative" "1"
			/// @DnDArgument : "y_relative" "1"
			/// @DnDArgument : "object" "o_solid"
			/// @DnDArgument : "not" "1"
			/// @DnDSaveInfo : "object" "o_solid"
			var l23BADC91_0 = instance_place(x + sign(horisontal_speed), y + 0, o_solid);
			if (!(l23BADC91_0 > 0))
			{
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 78E0767C
				/// @DnDParent : 23BADC91
				/// @DnDArgument : "expr" "sign(horisontal_speed)"
				/// @DnDArgument : "expr_relative" "1"
				/// @DnDArgument : "var" "x"
				x += sign(horisontal_speed);
			}
		
			/// @DnDAction : YoYo Games.Common.Else
			/// @DnDVersion : 1
			/// @DnDHash : 21386115
			/// @DnDParent : 7D5CC4B1
			else
			{
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 15D84AEF
				/// @DnDParent : 21386115
				/// @DnDArgument : "expr" "true"
				/// @DnDArgument : "var" "collide"
				collide = true;
			
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 1435C060
				/// @DnDParent : 21386115
				/// @DnDArgument : "var" "horisontal_speed"
				horisontal_speed = 0;
			}
		}
	}

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4E9E5F9A
	/// @DnDParent : 50811ABC
	/// @DnDArgument : "expr" "horisontal_speed"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "x"
	x += horisontal_speed;

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 172EA31D
	/// @DnDParent : 50811ABC
	/// @DnDArgument : "var" "vertical_speed"
	/// @DnDArgument : "op" "2"
	if(vertical_speed > 0)
	{
		/// @DnDAction : YoYo Games.Common.Temp_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 5DDA3750
		/// @DnDParent : 172EA31D
		/// @DnDArgument : "var" "_vertical_speed"
		/// @DnDArgument : "value" "max(1, vertical_speed) "
		var _vertical_speed = max(1, vertical_speed) ;
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 0B257DB2
	/// @DnDParent : 50811ABC
	else
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 2F7EE0A0
		/// @DnDParent : 0B257DB2
		/// @DnDArgument : "var" "vertical_speed"
		/// @DnDArgument : "op" "1"
		if(vertical_speed < 0)
		{
			/// @DnDAction : YoYo Games.Common.Temp_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 596739A1
			/// @DnDParent : 2F7EE0A0
			/// @DnDArgument : "var" "_vertical_speed"
			/// @DnDArgument : "value" "min(-1, vertical_speed)"
			var _vertical_speed = min(-1, vertical_speed);
		}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 16A34411
		/// @DnDParent : 0B257DB2
		else
		{
			/// @DnDAction : YoYo Games.Common.Temp_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 1F28CD72
			/// @DnDParent : 16A34411
			/// @DnDArgument : "var" "_vertical_speed"
			/// @DnDArgument : "value" "0"
			var _vertical_speed = 0;
		}
	}

	/// @DnDAction : YoYo Games.Common.Temp_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4C2F36D9
	/// @DnDParent : 50811ABC
	/// @DnDArgument : "var" "_falling"
	/// @DnDArgument : "value" "_vertical_speed >0"
	var _falling = _vertical_speed >0;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1ACB5BCA
	/// @DnDParent : 50811ABC
	/// @DnDArgument : "expr" "false"
	/// @DnDArgument : "var" "on_ground"
	on_ground = false;

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 04D871D9
	/// @DnDParent : 50811ABC
	/// @DnDArgument : "var" "_falling"
	/// @DnDArgument : "value" "true"
	if(_falling == true)
	{
		/// @DnDAction : YoYo Games.Collisions.If_Object_At
		/// @DnDVersion : 1.1
		/// @DnDHash : 5831720E
		/// @DnDParent : 04D871D9
		/// @DnDArgument : "x_relative" "1"
		/// @DnDArgument : "y" "_vertical_speed"
		/// @DnDArgument : "y_relative" "1"
		/// @DnDArgument : "target" "_list"
		/// @DnDArgument : "target_temp" "1"
		/// @DnDArgument : "object" "o_solid_one_way"
		/// @DnDArgument : "aslist" "1"
		/// @DnDSaveInfo : "object" "o_solid_one_way"
		var l5831720E_0 = ds_list_create();
		var l5831720E_1 = instance_place_list(x + 0, y + _vertical_speed, o_solid_one_way, l5831720E_0, true);
		var _list = l5831720E_0;
		if ((l5831720E_1 > 0))
		{
			/// @DnDAction : YoYo Games.Data Structures.List_Get_At
			/// @DnDVersion : 1
			/// @DnDHash : 20BF4E1C
			/// @DnDParent : 5831720E
			/// @DnDArgument : "assignee" "_lowest_id"
			/// @DnDArgument : "assignee_temp" "1"
			/// @DnDArgument : "var" "_list"
			var _lowest_id = ds_list_find_value(_list, 0);
		
			/// @DnDAction : YoYo Games.Data Structures.List_Count
			/// @DnDVersion : 1
			/// @DnDHash : 1C4E70D9
			/// @DnDParent : 5831720E
			/// @DnDArgument : "assignee" "_num"
			/// @DnDArgument : "assignee_temp" "1"
			/// @DnDArgument : "var" "_list"
			var _num = ds_list_size(_list);
		
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 0864E441
			/// @DnDParent : 5831720E
			/// @DnDArgument : "var" "_num"
			/// @DnDArgument : "op" "2"
			/// @DnDArgument : "value" "1"
			if(_num > 1)
			{
				/// @DnDAction : YoYo Games.Loops.For_Loop
				/// @DnDVersion : 1
				/// @DnDHash : 5EE1F508
				/// @DnDParent : 0864E441
				/// @DnDArgument : "init" "i = 1"
				/// @DnDArgument : "init_temp" "1"
				/// @DnDArgument : "cond" "i < _num"
				for(var i = 1; i < _num; i += 1) {
					/// @DnDAction : YoYo Games.Data Structures.List_Get_At
					/// @DnDVersion : 1
					/// @DnDHash : 4FA0CF01
					/// @DnDParent : 5EE1F508
					/// @DnDArgument : "assignee" "_instance"
					/// @DnDArgument : "assignee_temp" "1"
					/// @DnDArgument : "var" "_list"
					/// @DnDArgument : "index" "i"
					var _instance = ds_list_find_value(_list, i);
				
					/// @DnDAction : YoYo Games.Common.If_Variable
					/// @DnDVersion : 1
					/// @DnDHash : 23A3A9A9
					/// @DnDParent : 5EE1F508
					/// @DnDArgument : "var" "_instance.y"
					/// @DnDArgument : "op" "2"
					/// @DnDArgument : "value" "_lowest_id.y"
					if(_instance.y > _lowest_id.y)
					{
						/// @DnDAction : YoYo Games.Common.Variable
						/// @DnDVersion : 1
						/// @DnDHash : 77ADE75C
						/// @DnDParent : 23A3A9A9
						/// @DnDArgument : "expr" "_instance"
						/// @DnDArgument : "var" "_lowest_id"
						_lowest_id = _instance;
					}
				}
			}
		
			/// @DnDAction : YoYo Games.Collisions.If_Object_At
			/// @DnDVersion : 1.1
			/// @DnDHash : 1677143F
			/// @DnDParent : 5831720E
			/// @DnDArgument : "x" " 0"
			/// @DnDArgument : "x_relative" "1"
			/// @DnDArgument : "object" "_lowest_id"
			/// @DnDArgument : "not" "1"
			var l1677143F_0 = instance_place(x +  0, 0, _lowest_id);
			if (!(l1677143F_0 > 0))
			{
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 19F23AA5
				/// @DnDParent : 1677143F
				/// @DnDArgument : "expr" "false"
				/// @DnDArgument : "var" "collide"
				collide = false;
			
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 5D27664D
				/// @DnDParent : 1677143F
				/// @DnDArgument : "expr" "true"
				/// @DnDArgument : "var" "on_ground"
				on_ground = true;
			
				/// @DnDAction : YoYo Games.Loops.While_Loop
				/// @DnDVersion : 1
				/// @DnDHash : 1D75335B
				/// @DnDParent : 1677143F
				/// @DnDArgument : "var" "collide"
				/// @DnDArgument : "value" "false "
				while ((collide == false )) {
					/// @DnDAction : YoYo Games.Collisions.If_Object_At
					/// @DnDVersion : 1.1
					/// @DnDHash : 1548FCDD
					/// @DnDParent : 1D75335B
					/// @DnDArgument : "x_relative" "1"
					/// @DnDArgument : "y" "1"
					/// @DnDArgument : "y_relative" "1"
					/// @DnDArgument : "object" "_lowest_id"
					/// @DnDArgument : "not" "1"
					var l1548FCDD_0 = instance_place(x + 0, y + 1, _lowest_id);
					if (!(l1548FCDD_0 > 0))
					{
						/// @DnDAction : YoYo Games.Common.Variable
						/// @DnDVersion : 1
						/// @DnDHash : 27B1D08F
						/// @DnDParent : 1548FCDD
						/// @DnDArgument : "expr" "1"
						/// @DnDArgument : "expr_relative" "1"
						/// @DnDArgument : "var" "y"
						y += 1;
					}
				
					/// @DnDAction : YoYo Games.Common.Else
					/// @DnDVersion : 1
					/// @DnDHash : 3C6CC399
					/// @DnDParent : 1D75335B
					else
					{
						/// @DnDAction : YoYo Games.Common.Variable
						/// @DnDVersion : 1
						/// @DnDHash : 4A978678
						/// @DnDParent : 3C6CC399
						/// @DnDArgument : "expr" "true"
						/// @DnDArgument : "var" "collide"
						collide = true;
					
						/// @DnDAction : YoYo Games.Common.Execute_Script
						/// @DnDVersion : 1.1
						/// @DnDHash : 7DACFC80
						/// @DnDParent : 3C6CC399
						/// @DnDArgument : "script" "process_bounce"
						/// @DnDSaveInfo : "script" "process_bounce"
						script_execute(process_bounce);
					}
				}
			}
		}
	}

	/// @DnDAction : YoYo Games.Collisions.If_Object_At
	/// @DnDVersion : 1.1
	/// @DnDHash : 5FDD5237
	/// @DnDParent : 50811ABC
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y" "_vertical_speed"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "object" "o_solid "
	var l5FDD5237_0 = instance_place(x + 0, y + _vertical_speed, o_solid );
	if ((l5FDD5237_0 > 0))
	{
		/// @DnDAction : YoYo Games.Common.Temp_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 0589597B
		/// @DnDParent : 5FDD5237
		/// @DnDArgument : "var" "collide"
		/// @DnDArgument : "value" "false"
		var collide = false;
	
		/// @DnDAction : YoYo Games.Loops.While_Loop
		/// @DnDVersion : 1
		/// @DnDHash : 60C07B0C
		/// @DnDParent : 5FDD5237
		/// @DnDArgument : "var" "collide"
		/// @DnDArgument : "value" "false"
		while ((collide == false)) {
			/// @DnDAction : YoYo Games.Collisions.If_Object_At
			/// @DnDVersion : 1.1
			/// @DnDHash : 46AE0399
			/// @DnDParent : 60C07B0C
			/// @DnDArgument : "x_relative" "1"
			/// @DnDArgument : "y" "sign(_vertical_speed)"
			/// @DnDArgument : "y_relative" "1"
			/// @DnDArgument : "object" "o_solid"
			/// @DnDArgument : "not" "1"
			/// @DnDSaveInfo : "object" "o_solid"
			var l46AE0399_0 = instance_place(x + 0, y + sign(_vertical_speed), o_solid);
			if (!(l46AE0399_0 > 0))
			{
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 145C064B
				/// @DnDParent : 46AE0399
				/// @DnDArgument : "expr" "sign(_vertical_speed )"
				/// @DnDArgument : "expr_relative" "1"
				/// @DnDArgument : "var" "y"
				y += sign(_vertical_speed );
			}
		
			/// @DnDAction : YoYo Games.Common.Else
			/// @DnDVersion : 1
			/// @DnDHash : 0A9D8EED
			/// @DnDParent : 60C07B0C
			else
			{
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 3342F2A7
				/// @DnDParent : 0A9D8EED
				/// @DnDArgument : "expr" "true"
				/// @DnDArgument : "var" "collide"
				collide = true;
			
				/// @DnDAction : YoYo Games.Common.Execute_Script
				/// @DnDVersion : 1.1
				/// @DnDHash : 27088034
				/// @DnDParent : 0A9D8EED
				/// @DnDArgument : "script" "process_bounce"
				/// @DnDSaveInfo : "script" "process_bounce"
				script_execute(process_bounce);
			
				/// @DnDAction : YoYo Games.Common.If_Variable
				/// @DnDVersion : 1
				/// @DnDHash : 5AA1531D
				/// @DnDParent : 0A9D8EED
				/// @DnDArgument : "var" "_falling"
				/// @DnDArgument : "value" "true"
				if(_falling == true)
				{
					/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 0F4EADDC
					/// @DnDParent : 5AA1531D
					/// @DnDArgument : "expr" "true"
					/// @DnDArgument : "var" "on_ground"
					on_ground = true;
				}
			}
		}
	}

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2035D334
	/// @DnDParent : 50811ABC
	/// @DnDArgument : "expr" "vertical_speed"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "y"
	y += vertical_speed;
}