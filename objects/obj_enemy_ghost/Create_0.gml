/// @description Insert description here
// You can write your code in this editor
delay = 60
spd = 1.5;
vidas = 2;

estado = noone;
tempo_estado = room_speed * 5;
timer_estado = room_speed * 0;

destino_x = x;
destino_y = y;

muda_estado = function(_estado){
	tempo_estado--;
	
	timer_estado = irandom(tempo_estado);
	
	if (timer_estado == tempo_estado or tempo_estado <= 0){
	estado = _estado[irandom(array_length(_estado)-1)];
	tempo_estado = room_speed * 10;
	}
}

estado_parado = function(){
	image_blend = c_white;
	muda_estado([estado_parado, estado_passeando, estado_atacando]);
}

estado_passeando = function(){
	
	var _dist = point_distance(x, y, destino_x, destino_y);
	
	if (_dist < 100){
	
		destino_x = random(room_width);
		destino_y = random(room_height);
	}
	
	var _dir =  point_direction(x, y, destino_x, destino_y);
	
	x += lengthdir_x(spd, _dir);
	y += lengthdir_y(spd, _dir);
	
	muda_estado([estado_parado, estado_passeando, estado_atacando]);
}

estado_atacando = function(){
	delay--;
	if distance_to_object(obj_player) > 75{
		muda_estado([estado_parado, estado_passeando, estado_atacando]);
	}
		var _dir =  point_direction(x, y, obj_player.x, obj_player.y);
	
		x += lengthdir_x(spd, _dir);
		y += lengthdir_y(spd, _dir);
	
	if delay < 0 and place_meeting(x, y, obj_player){
		audio_play_sound(snd_hit,1 ,false);
		global.life--;
		delay = 60;
	} 
}

estado = estado_parado;