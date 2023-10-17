// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function get_input(){
	key_right = keyboard_check(ord("D")); //direita
	key_left = keyboard_check(ord("A"));//esquerda
	key_up = keyboard_check(ord("W"));//cima
	key_down = keyboard_check(ord("S"));//baixo
	key_drop = keyboard_check(ord("Q"));//dropar
	key_pause = keyboard_check(vk_escape);//toggle pause menu

	
}