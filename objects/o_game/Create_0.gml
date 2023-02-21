/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 7A0A1A64
/// @DnDArgument : "value" "0.3"
/// @DnDArgument : "var" "grav"
global.grav = 0.3;

/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 7672771C
/// @DnDArgument : "var" "coins"
global.coins = 0;

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 0EBB3B1C
/// @DnDArgument : "code" "/// player states$(13_10)enum ps {$(13_10)	IDLE,$(13_10)	WALK,$(13_10)	AIR,$(13_10)	KNOCKBACK,$(13_10)	DEAD$(13_10)}$(13_10)$(13_10)enum es {$(13_10)	IDLE,$(13_10)	WALK,$(13_10)	DEAD$(13_10)}"
/// player states
enum ps {
	IDLE,
	WALK,
	AIR,
	KNOCKBACK,
	DEAD
}

enum es {
	IDLE,
	WALK,
	DEAD
}

/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 5B5BC120
/// @DnDInput : 3
/// @DnDArgument : "value" "80"
/// @DnDArgument : "value_1" "96"
/// @DnDArgument : "value_2" "1"
/// @DnDArgument : "var" "player_start_x"
/// @DnDArgument : "var_1" "player_start_y"
/// @DnDArgument : "var_2" "player_facing"
global.player_start_x = 80;
global.player_start_y = 96;
global.player_facing = 1;