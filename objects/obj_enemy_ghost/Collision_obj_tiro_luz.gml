/// @description Insert description here
// You can write your code in this editor
//script_execute(knockback());
audio_play_sound(snd_hit, 1, false);
instance_destroy(obj_tiro_luz);
speed *= .5;
vidas--;
obj_player.player_score += 10;
