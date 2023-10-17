/// @description Insert description here
// You can write your code in this editor

//Método atirar
atirar = false;

delay_tiro = 0;

delay_pega = 0;

image_xscale = 1.5;
image_yscale = 1.5;

atirando = function()
{
	delay_tiro--;
	if (atirar)
	{
		if (delay_tiro <= 0)		
		{
			//Resetando delay do tiro
			delay_tiro = espera_tiro * room_speed;
			
			//Criando o tiro e dando velocidade
			var _tiro = instance_create_layer(x, y, layer, tiro);
			audio_play_sound(snd_lanterna, 1, 0);
			_tiro.speed = velocidade;
			
			//Definindo direção tiro
			_tiro.direction = point_direction(x, y, mouse_x, mouse_y);
		}
	}
}

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