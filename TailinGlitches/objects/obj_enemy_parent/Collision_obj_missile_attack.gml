/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 24B79F3F
/// @DnDArgument : "expr" "1"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "obj_baddie.hit"
obj_baddie.hit += 1;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 647DBB49
/// @DnDArgument : "var" "obj_baddie.hit"
/// @DnDArgument : "value" "3"
if(obj_baddie.hit == 3)
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 4D4A4ACC
	/// @DnDParent : 647DBB49
	instance_destroy();

	/// @DnDAction : YoYo Games.Particles.Effect
	/// @DnDVersion : 1
	/// @DnDHash : 632508CC
	/// @DnDParent : 647DBB49
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "size" "1"
	/// @DnDArgument : "color" "$FFB3B3B3"
	effect_create_below(0, x + 0, y + 0, 1, $FFB3B3B3 & $ffffff);
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 74D7DB30
else
{
	/// @DnDAction : YoYo Games.Common.Exit_Event
	/// @DnDVersion : 1
	/// @DnDHash : 6AC94B86
	/// @DnDParent : 74D7DB30
	exit;
}