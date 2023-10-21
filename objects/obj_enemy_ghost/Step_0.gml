/// @description Insert description here
// You can write your code in this editor

estado(estado_parado, estado_passeando);

if vidas <= 0 {
	audio_play_sound(snd_death, 1, false);
	instance_destroy();
}

if (distance_to_object(obj_player) < 50 and distance_to_object(obj_enemy_ghost) > 75){
	estado_atacando();
}



