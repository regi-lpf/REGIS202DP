/// @description Insert description here
// You can write your code in this editor

atirando();
if (speed > 0)
{
	quica_parede();
	speed *= 0.9;
	alarm_set(0, 2 * room_speed);
	if (speed <= 0.1) speed = 0;
}

image_angle = image_angle;

alinhar();


