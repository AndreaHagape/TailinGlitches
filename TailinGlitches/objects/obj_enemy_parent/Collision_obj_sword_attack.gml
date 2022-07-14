/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 44E73D62
/// @DnDArgument : "expr" "1"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "hit"
hit += 1;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 6FF993E8
/// @DnDArgument : "var" "hit"
/// @DnDArgument : "value" "3"
if(hit == 3)
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 7D237A86
	/// @DnDParent : 6FF993E8
	instance_destroy();

	/// @DnDAction : YoYo Games.Particles.Effect
	/// @DnDVersion : 1
	/// @DnDHash : 5A96171C
	/// @DnDParent : 6FF993E8
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "size" "1"
	/// @DnDArgument : "color" "$FFB3B3B3"
	effect_create_below(0, x + 0, y + 0, 1, $FFB3B3B3 & $ffffff);
}