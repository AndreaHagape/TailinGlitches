/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 76762E42
instance_destroy();

/// @DnDAction : YoYo Games.Particles.Effect
/// @DnDVersion : 1
/// @DnDHash : 1A35BBEA
/// @DnDArgument : "type" "6"
/// @DnDArgument : "where" "1"
/// @DnDArgument : "size" "1"
effect_create_above(6, 0, 0, 1, $FFFFFF & $ffffff);

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1
/// @DnDHash : 498365B3
/// @DnDArgument : "soundid" "snd_powerup"
/// @DnDSaveInfo : "soundid" "snd_powerup"
audio_play_sound(snd_powerup, 0, 0);