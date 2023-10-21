/// @description Insert description here
// You can write your code in this editor

if (global.current_volume != global.volume) { 
	global.current_volume = global.volume;
	audio_set_master_gain(audio_get_listener_info(0)[? "index"], global.current_volume/10);
	
}

altera_valor();
show_debug_message(valor);
