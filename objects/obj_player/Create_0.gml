spd = 7;
hspd = 0;
vspd = 0;
global.life = 4;
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
