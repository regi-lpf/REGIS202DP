spd = 3.5;
hspd = 0;
vspd = 0;
len = 0;
global.life = 2;
player_score = 0;
image_speed = 0.4

arma = noone;

usa_arma = function()
{
	if (arma)
	{
		//Ativar arma
		var _fire = mouse_check_button(mb_left)//tiro
		arma.atirar = _fire;
		
		var _dir = point_direction(x, y, mouse_x, mouse_y);
		
		//Achando a posição da arma 
		var _x = x + lengthdir_x(sprite_height / 2, _dir);
		var _y = y + lengthdir_y(sprite_height / 2, _dir);
		
		//Levar arma
		arma.x = _x;
		arma.y = _y;
		
		//Girar arma
		arma.image_angle = _dir;
	}
}


dropa_arma = function(){
	var _col;
	
	with(arma){
		_col = place_meeting(x, y, obj_wall);
	}
	if (!_col){
		arma.direction = arma.image_angle;
		arma.speed = 4;
		arma.atirar = false;
		arma.delay_pega = 0.7 * room_speed;
		arma = noone;
		
	}
}

knockback = function(){
	if (speed > 0){
		if (place_meeting(x, y, obj_enemy_ghost)) hspeed *= -1;
		if (place_meeting(x, y, obj_enemy_ghost)) vspeed *= -1;
		speed *= 0.9;
		if (speed <= 0.1) speed = 0;
	}
}