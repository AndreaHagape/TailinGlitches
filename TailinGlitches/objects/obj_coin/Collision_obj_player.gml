/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 099183E1
/// @DnDComment : Destroys coin when player$(13_10)collides with coin object
instance_destroy();

/// @DnDAction : YoYo Games.Particles.Effect
/// @DnDVersion : 1
/// @DnDHash : 7DA5DCB4
/// @DnDComment : fun effect that plays$(13_10)when coin is collected
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "type" "6"
/// @DnDArgument : "where" "1"
/// @DnDArgument : "size" "1"
/// @DnDArgument : "color" "$FF00FFFF"
effect_create_above(6, x + 0, y + 0, 1, $FF00FFFF & $ffffff);