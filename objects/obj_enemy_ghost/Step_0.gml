/// @description Insert description here
// You can write your code in this editor

estado(estado_parado, estado_passeando);

if vidas <= 0 {
	audio_play_sound(snd_death, 1, false);
	instance_destroy();
}

if (distance_to_object(obj_player) < 100){
	if (distance_to_object(obj_enemy_ghost) > 150){
		estado_atacando();
	}
}



