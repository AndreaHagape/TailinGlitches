/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 5097251B
/// @DnDArgument : "key" "ord("R")"
var l5097251B_0;
l5097251B_0 = keyboard_check(ord("R"));
if (l5097251B_0)
{
	/// @DnDAction : YoYo Games.Common.Exit_Event
	/// @DnDVersion : 1
	/// @DnDHash : 69DDA06D
	/// @DnDParent : 5097251B
	exit;
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 24F29E54
else
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1362B03B
	/// @DnDComment : If Alarm 0 is deactivated
	/// @DnDParent : 24F29E54
	/// @DnDArgument : "var" "alarm[0]"
	/// @DnDArgument : "op" "1"
	if(alarm[0] < 0)
	{
		/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
		/// @DnDVersion : 1
		/// @DnDHash : 30A3EAA2
		/// @DnDComment : face towards enemy
		/// @DnDParent : 1362B03B
		/// @DnDArgument : "x" "other.x"
		/// @DnDArgument : "y" "other.y"
		direction = point_direction(x, y, other.x, other.y);
	
		/// @DnDAction : YoYo Games.Movement.Set_Direction_Free
		/// @DnDVersion : 1
		/// @DnDHash : 5BF38D37
		/// @DnDComment : faces player away from enemy
		/// @DnDParent : 1362B03B
		/// @DnDArgument : "direction" "180"
		/// @DnDArgument : "direction_relative" "1"
		direction += 180;
	
		/// @DnDAction : YoYo Games.Movement.Set_Speed
		/// @DnDVersion : 1
		/// @DnDHash : 5E271AEF
		/// @DnDComment : makes player move $(13_10)in that direction
		/// @DnDParent : 1362B03B
		/// @DnDArgument : "speed" "12"
		speed = 12;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 39EF90A0
		/// @DnDComment : makes health go down 1
		/// @DnDParent : 1362B03B
		/// @DnDArgument : "expr" "-1"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "hearts"
		hearts += -1;
	
		/// @DnDAction : YoYo Games.Instances.Color_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 1003E78C
		/// @DnDComment : Set the color to red to show the player$(13_10)has lost
		/// @DnDParent : 1362B03B
		/// @DnDArgument : "colour" "$FF0000FF"
		image_blend = $FF0000FF & $ffffff;
		image_alpha = ($FF0000FF >> 24) / $ff;
	
		/// @DnDAction : YoYo Games.Audio.Play_Audio
		/// @DnDVersion : 1
		/// @DnDHash : 764ECBC6
		/// @DnDComment : Play "hurt" sound
		/// @DnDParent : 1362B03B
		/// @DnDArgument : "soundid" "snd_hurt"
		/// @DnDSaveInfo : "soundid" "snd_hurt"
		audio_play_sound(snd_hurt, 0, 0);
	
		/// @DnDAction : YoYo Games.Instances.Set_Alarm
		/// @DnDVersion : 1
		/// @DnDHash : 5641C2B6
		/// @DnDComment : Tell the Alarm 0 event to run after 20 frames$(13_10)$(13_10)After 20 frames that event will restart the level
		/// @DnDParent : 1362B03B
		/// @DnDArgument : "steps" "20"
		alarm_set(0, 20);
	}
}