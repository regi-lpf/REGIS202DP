script_execute(get_input);

ini_open("settings.ini");
script_execute(verifica_resolucao);
ini_close();	

if (key_pause){
	if (room != rm_pause){
		if (instance_exists(obj_player)){
			obj_player.persistent = false;
			isPause = true;
			instance_activate_all();
		}
		room_previous(room);
		room_goto(rm_pause);
	} else {
		room_goto_previous();
		instance_deactivate_all(true);
	}
}
