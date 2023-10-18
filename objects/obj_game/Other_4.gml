/// @description Insert description here
// You can write your code in this editor
if (instance_exists(obj_player)) {
	obj_player.persistent = true;
}
if not (audio_is_playing(snd_ambiente)){
	audio_play_sound(snd_ambiente, 1, true, 1);
}