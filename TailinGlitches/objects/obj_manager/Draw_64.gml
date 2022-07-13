/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 4CC419CD
/// @DnDArgument : "obj" "obj_player"
/// @DnDSaveInfo : "obj" "obj_player"
var l4CC419CD_0 = false;
l4CC419CD_0 = instance_exists(obj_player);
if(l4CC419CD_0)
{
	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 05117FEB
	/// @DnDComment : Draw the HUD coin sprite
	/// @DnDParent : 4CC419CD
	/// @DnDArgument : "x" "1100"
	/// @DnDArgument : "y" "25"
	/// @DnDArgument : "sprite" "spr_hud_coin"
	/// @DnDSaveInfo : "sprite" "spr_hud_coin"
	draw_sprite(spr_hud_coin, 0, 1100, 25);

	/// @DnDAction : YoYo Games.Drawing.Set_Font
	/// @DnDVersion : 1
	/// @DnDHash : 657DA18B
	/// @DnDComment : Change the font to ft_hud
	/// @DnDParent : 4CC419CD
	/// @DnDArgument : "font" "fnt_hud"
	/// @DnDSaveInfo : "font" "fnt_hud"
	draw_set_font(fnt_hud);

	/// @DnDAction : YoYo Games.Drawing.Draw_Value
	/// @DnDVersion : 1
	/// @DnDHash : 0C56D182
	/// @DnDComment : Draw the player's coins value$(13_10)$(13_10)Taken from the player$(13_10)using obj_player.coins
	/// @DnDParent : 4CC419CD
	/// @DnDArgument : "x" "1135"
	/// @DnDArgument : "y" "15"
	/// @DnDArgument : "caption" ""x""
	/// @DnDArgument : "var" "obj_player.coins"
	draw_text(1135, 15, string("x") + string(obj_player.coins));

	/// @DnDAction : YoYo Games.Drawing.Draw_Sprites_Stacked
	/// @DnDVersion : 1
	/// @DnDHash : 3CE6BF12
	/// @DnDComment : draws a specified amount of$(13_10)HUD heart sprites$(13_10)$(13_10)Number is based on player's$(13_10)health
	/// @DnDParent : 4CC419CD
	/// @DnDArgument : "sprite" "spr_hud_heart"
	/// @DnDArgument : "number" "obj_player.hearts"
	/// @DnDSaveInfo : "sprite" "spr_hud_heart"
	var l3CE6BF12_0 = sprite_get_width(spr_hud_heart);
	var l3CE6BF12_1 = 0;
	for(var l3CE6BF12_2 = obj_player.hearts; l3CE6BF12_2 > 0; --l3CE6BF12_2) {
		draw_sprite(spr_hud_heart, 0, 0 + l3CE6BF12_1, 0);
		l3CE6BF12_1 += l3CE6BF12_0;
	}
}