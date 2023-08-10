/// @description Insert description here
// You can write your code in this editor


if (speed > 0)
{
	quica_parede();
	speed *= 1;
	alarm_set(0, 2 * room_speed);
	if (speed <= 0.1) speed = 0;
}


