/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 0F098C38
/// @DnDComment : creates a sword attack$(13_10)in order to kill enemies
/// @DnDArgument : "xpos_relative" "1"
/// @DnDArgument : "ypos_relative" "1"
/// @DnDArgument : "var" "hand"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "objectid" "obj_missile_attack"
/// @DnDSaveInfo : "objectid" "obj_missile_attack"
var hand = instance_create_layer(x + 0, y + 0, "Instances", obj_missile_attack);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 1D79F71D
/// @DnDArgument : "expr" "input_direction"
/// @DnDArgument : "var" "hand.image_angle"
hand.image_angle = input_direction;

/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 1C13482D
/// @DnDApplyTo : {obj_missile_attack}
/// @DnDArgument : "speed" "8"
with(obj_missile_attack) speed = 8;

/// @DnDAction : YoYo Games.Movement.Set_Direction_Free
/// @DnDVersion : 1
/// @DnDHash : 0DD9C961
/// @DnDApplyTo : {obj_missile_attack}
/// @DnDArgument : "direction" "obj_player.input_direction"
with(obj_missile_attack) direction = obj_player.input_direction;