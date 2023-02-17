/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 7A0A1A64
/// @DnDArgument : "value" "0.3"
/// @DnDArgument : "var" "grav"
global.grav = 0.3;

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 0EBB3B1C
/// @DnDArgument : "code" "/// player states$(13_10)enum ps {$(13_10)	IDLE,$(13_10)	WALK,$(13_10)	AIR$(13_10)}$(13_10)$(13_10)enum es {$(13_10)	IDLE,$(13_10)	WALK,$(13_10)	DEAD$(13_10)}"
/// player states
enum ps {
	IDLE,
	WALK,
	AIR
}

enum es {
	IDLE,
	WALK,
	DEAD
}