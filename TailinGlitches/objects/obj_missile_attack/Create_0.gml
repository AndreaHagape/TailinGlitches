/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 20CC2B9B
/// @DnDArgument : "speed" "8"
speed = 8;

/// @DnDAction : YoYo Games.Movement.Set_Direction_Free
/// @DnDVersion : 1
/// @DnDHash : 07F751A0
/// @DnDArgument : "direction" "obj_player.input_direction"
direction = obj_player.input_direction;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 4F388FD4
/// @DnDArgument : "expr" "1"
/// @DnDArgument : "var" "countdown"
countdown = 1;

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 177285F6
/// @DnDArgument : "steps" "60"
alarm_set(0, 60);