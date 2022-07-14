/// @DnDAction : YoYo Games.Collisions.If_Collision_Shape
/// @DnDVersion : 1.1
/// @DnDHash : 563A63E1
/// @DnDComment : Check if the player is colliding with an elliptical$(13_10)area surrounding the baddie$(13_10)$(13_10)Its size is 100 pixels around the baddie (using$(13_10)the relative option)
/// @DnDArgument : "x1" "-300"
/// @DnDArgument : "x1_relative" "1"
/// @DnDArgument : "y1" "-300"
/// @DnDArgument : "y1_relative" "1"
/// @DnDArgument : "x2" "300"
/// @DnDArgument : "x2_relative" "1"
/// @DnDArgument : "y2" "300"
/// @DnDArgument : "y2_relative" "1"
/// @DnDArgument : "obj" "obj_player"
/// @DnDArgument : "shape" "2"
/// @DnDSaveInfo : "obj" "obj_player"
var l563A63E1_0 = collision_ellipse(x + -300, y + -300, x + 300, y + 300, obj_player, true, 1);
if((l563A63E1_0))
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7C32DED1
	/// @DnDComment : Then check if the baddie is$(13_10)not attacking right now
	/// @DnDParent : 563A63E1
	/// @DnDArgument : "var" "attacking"
	/// @DnDArgument : "value" "false"
	if(attacking == false)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 0405FF8D
		/// @DnDComment : In that case, set 'attacking'$(13_10)to true so it starts attacking
		/// @DnDParent : 7C32DED1
		/// @DnDArgument : "expr" "true"
		/// @DnDArgument : "var" "attacking"
		attacking = true;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 7C64B20A
		/// @DnDParent : 7C32DED1
		/// @DnDArgument : "expr" "x"
		/// @DnDArgument : "var" "position_x"
		position_x = x;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 19684D1A
		/// @DnDParent : 7C32DED1
		/// @DnDArgument : "expr" "y"
		/// @DnDArgument : "var" "position_y"
		position_y = y;
	
		/// @DnDAction : YoYo Games.Paths.Stop_Path
		/// @DnDVersion : 1
		/// @DnDHash : 0A8A5D21
		/// @DnDParent : 7C32DED1
		path_end();
	
		/// @DnDAction : YoYo Games.Movement.Set_Speed
		/// @DnDVersion : 1
		/// @DnDHash : 7AC7C1C7
		/// @DnDParent : 7C32DED1
		/// @DnDArgument : "speed" "2"
		speed = 2;
	
		/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
		/// @DnDVersion : 1
		/// @DnDHash : 3030BF9E
		/// @DnDParent : 7C32DED1
		/// @DnDArgument : "x" "obj_player.x"
		/// @DnDArgument : "y" "obj_player.y"
		direction = point_direction(x, y, obj_player.x, obj_player.y);
	
		/// @DnDAction : YoYo Games.Common.Temp_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 15168FEB
		/// @DnDComment : Get the distance to the player$(13_10)on the X axis
		/// @DnDParent : 7C32DED1
		/// @DnDArgument : "var" "dist_x"
		/// @DnDArgument : "value" "obj_player.x - x"
		var dist_x = obj_player.x - x;
	
		/// @DnDAction : YoYo Games.Common.Temp_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 1CC9CCF7
		/// @DnDComment : Get the distance to the player$(13_10)on the Y axis
		/// @DnDParent : 7C32DED1
		/// @DnDArgument : "var" "dist_y"
		/// @DnDArgument : "value" "obj_player.y - y"
		var dist_y = obj_player.y - y;
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 59B43C8A
		/// @DnDComment : If the X distance is less than -50$(13_10)meaning the player is to the$(13_10)LEFT of the baddie
		/// @DnDParent : 7C32DED1
		/// @DnDArgument : "var" "dist_x"
		/// @DnDArgument : "op" "1"
		/// @DnDArgument : "value" "-50"
		if(dist_x < -50)
		{
			/// @DnDAction : YoYo Games.Instances.Set_Sprite
			/// @DnDVersion : 1
			/// @DnDHash : 21AB0A25
			/// @DnDComment : Switch to the 'side attack'$(13_10)sprite
			/// @DnDParent : 59B43C8A
			/// @DnDArgument : "spriteind" "spr_baddie_attack_side"
			/// @DnDSaveInfo : "spriteind" "spr_baddie_attack_side"
			sprite_index = spr_baddie_attack_side;
			image_index = 0;
		
			/// @DnDAction : YoYo Games.Instances.Sprite_Scale
			/// @DnDVersion : 1
			/// @DnDHash : 6B73486B
			/// @DnDComment : Flip the sprite so it faces left$(13_10)instead of right
			/// @DnDParent : 59B43C8A
			/// @DnDArgument : "xscale" "-1"
			image_xscale = -1;
			image_yscale = 1;
		}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 57EB2C00
		/// @DnDComment : Otherwise,
		/// @DnDParent : 7C32DED1
		else
		{
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 54A9D79A
			/// @DnDComment : If the X distance is greater than$(13_10)50 meaning the player is to the$(13_10)RIGHT of the baddie
			/// @DnDParent : 57EB2C00
			/// @DnDArgument : "var" "dist_x"
			/// @DnDArgument : "op" "2"
			/// @DnDArgument : "value" "50"
			if(dist_x > 50)
			{
				/// @DnDAction : YoYo Games.Instances.Set_Sprite
				/// @DnDVersion : 1
				/// @DnDHash : 6C0652B6
				/// @DnDComment : Switch to the 'side attack'$(13_10)sprite
				/// @DnDParent : 54A9D79A
				/// @DnDArgument : "spriteind" "spr_baddie_attack_side"
				/// @DnDSaveInfo : "spriteind" "spr_baddie_attack_side"
				sprite_index = spr_baddie_attack_side;
				image_index = 0;
			
				/// @DnDAction : YoYo Games.Instances.Sprite_Scale
				/// @DnDVersion : 1
				/// @DnDHash : 72197143
				/// @DnDComment : But keep its original scale$(13_10)so it faces right
				/// @DnDParent : 54A9D79A
				image_xscale = 1;
				image_yscale = 1;
			}
		
			/// @DnDAction : YoYo Games.Common.Else
			/// @DnDVersion : 1
			/// @DnDHash : 41390493
			/// @DnDComment : Otherwise,
			/// @DnDParent : 57EB2C00
			else
			{
				/// @DnDAction : YoYo Games.Common.If_Variable
				/// @DnDVersion : 1
				/// @DnDHash : 4EE25C5F
				/// @DnDComment : If the Y distance is less than -50$(13_10)meaning the player is ABOVE the$(13_10)baddie
				/// @DnDParent : 41390493
				/// @DnDArgument : "var" "dist_y"
				/// @DnDArgument : "op" "1"
				/// @DnDArgument : "value" "-30"
				if(dist_y < -30)
				{
					/// @DnDAction : YoYo Games.Instances.Set_Sprite
					/// @DnDVersion : 1
					/// @DnDHash : 2C0B24A6
					/// @DnDComment : Switch to the 'up attack'$(13_10)sprite
					/// @DnDParent : 4EE25C5F
					/// @DnDArgument : "spriteind" "spr_baddie_attack_up"
					/// @DnDSaveInfo : "spriteind" "spr_baddie_attack_up"
					sprite_index = spr_baddie_attack_up;
					image_index = 0;
				}
			
				/// @DnDAction : YoYo Games.Common.Else
				/// @DnDVersion : 1
				/// @DnDHash : 0DD3BCC9
				/// @DnDComment : Otherwise,
				/// @DnDParent : 41390493
				else
				{
					/// @DnDAction : YoYo Games.Instances.Set_Sprite
					/// @DnDVersion : 1
					/// @DnDHash : 206B8C29
					/// @DnDComment : Switch to the 'down attack'$(13_10)sprite as that's the only$(13_10)direction left
					/// @DnDParent : 0DD3BCC9
					/// @DnDArgument : "spriteind" "spr_baddie_attack_down"
					/// @DnDSaveInfo : "spriteind" "spr_baddie_attack_down"
					sprite_index = spr_baddie_attack_down;
					image_index = 0;
				}
			}
		}
	}
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 3332B600
else
{
	/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
	/// @DnDVersion : 1
	/// @DnDHash : 795CD898
	/// @DnDParent : 3332B600
	/// @DnDArgument : "x" "position_x"
	/// @DnDArgument : "y" "position_y"
	direction = point_direction(x, y, position_x, position_y);

	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 446B69F7
	/// @DnDParent : 3332B600
	/// @DnDArgument : "speed" "2"
	speed = 2;
}