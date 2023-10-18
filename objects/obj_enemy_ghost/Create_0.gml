/// @description Insert description here
// You can write your code in this editor
delay = 0

vidas = 2;

estado = noone;
estados = ["parado","passeando","atacando"];
tempo_estado = room_speed * 5;
timer_estado = room_speed * 0;



muda_estado = function(_estado){
	tempo_estado--;
	
	timer_estado = irandom(tempo_estado);
	
	if (timer_estado == tempo_estado or tempo_estado <= 0){
	estado = _estado;
	tempo_estado = room_speed * 10;
	}
}

estado_parado = function(){
	image_blend = c_white;
	muda_estado(estado_passeando);
}

estado_passeando = function(){
	
	image_blend = c_red;
	
	muda_estado(estado_parado);
}

estado_atacando = function(){
	delay--;
	if place_meeting(x, y, obj_player){
		audio_play_sound(snd_hit,1 ,true);
		global.life--;
		delay = 60;
	}else if distance_to_object(obj_player) < 75{
		muda_estado(estado_passeando);
	}
}

estado = estado_parado;