/// @description Insert description here
// You can write your code in this editor

estado = noone;

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

estado = estado_parado;