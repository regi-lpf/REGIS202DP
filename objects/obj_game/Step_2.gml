/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor


if (instance_exists(obj_player)){
	if (global.life <= 0){
		instance_deactivate_all(true);
		room_restart();	
		room_goto(rm_gameover);
	}
}