/// @description Insert description here
// You can write your code in this editor

//Método atirar

speed = 5;
direction = random(360);

quica_parede = function(){
	if (place_meeting(x + hspeed, y, obj_wall)) hspeed *= -1;
	if (place_meeting(x, y + vspeed, obj_wall)) vspeed *= -1;
}

alinhar = function(){
	if (obj_player.arma != id){
	alarm[0] = 1.7 * room_speed;
	image_angle = 0;
	}
}

