/// @description Insert description here
// You can write your code in this editor

if (global.currentVolume != global.volume) { 
	global.currentVolume = global.volume;
	audio_set_master_gain(audio_get_listener_info(0)[? "index"], global.currentVolume/10);
	
}

altera_valor();

