/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 1351E70F
/// @DnDArgument : "code" "/// background scrolling$(13_10)//get layer id$(13_10)$(13_10)var layer_id = layer_get_id("Background_trees");$(13_10)$(13_10)// scroll speed$(13_10)var scroll_speed = 0.6;$(13_10)$(13_10)// move layer$(13_10)layer_x(layer_id, camera_get_view_x(view_camera[0]) * scroll_speed);$(13_10)"
/// background scrolling
//get layer id

var layer_id = layer_get_id("Background_trees");

// scroll speed
var scroll_speed = 0.6;

// move layer
layer_x(layer_id, camera_get_view_x(view_camera[0]) * scroll_speed);