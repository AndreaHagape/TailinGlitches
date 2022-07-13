/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 098989BC
/// @DnDArgument : "var" "obj_player.key"
/// @DnDArgument : "not" "1"
/// @DnDArgument : "value" "1"
if(!(obj_player.key == 1))
{
	/// @DnDAction : YoYo Games.Common.Exit_Event
	/// @DnDVersion : 1
	/// @DnDHash : 2F6BEDDF
	/// @DnDParent : 098989BC
	exit;
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 3647B30F
else
{
	/// @DnDAction : YoYo Games.Rooms.Next_Room
	/// @DnDVersion : 1
	/// @DnDHash : 3E389F2A
	/// @DnDParent : 3647B30F
	room_goto_next();
}