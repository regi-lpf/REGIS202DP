/// @description Insert description here
// You can write your code in this editor

if (delay_pega > 0){
	delay_pega--;
}

atirando();
if (speed > 0)
{
	quica_parede();
	speed *= 0.9;
	if (speed <= 0.1) speed = 0;
}

alinhar();
