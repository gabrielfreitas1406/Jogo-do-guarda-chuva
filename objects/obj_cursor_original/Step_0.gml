/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

if(keyboard_check_pressed(vk_left)){
	audio_play_sound(snd_cursor_move, 0, 0)
	x -= 72;
}
else if(keyboard_check_pressed(vk_right)){
	x += 72;
	audio_play_sound(snd_cursor_move, 0, 0)
}

if(x < 0){
	x = 258
}
else if(x > 300){
	x = 42;
}

if(x == 42 and index != 0){
	index_anterior = index
	index = 0;
	
	index_list_botoes[index].image_index = 1;
	index_list_botoes[index_anterior].image_index = 0;
	
	index_list_cursores[index].image_index = 1;
	index_list_cursores[index_anterior].image_index = 0;
	
	index_list_cursores[index].y = 90;
	index_list_cursores[index_anterior].y = 98;
	

}
else if(x == 114 and index != 1){
	index_anterior = index
	index = 1;
	index_list_botoes[index].image_index = 1;
	index_list_botoes[index_anterior].image_index = 0;
	
	index_list_cursores[index].image_index = 1;
	index_list_cursores[index_anterior].image_index = 0;
	
	index_list_cursores[index].y = 90;
	index_list_cursores[index_anterior].y = 98;
}
else if(x == 186 and index != 2){
	index_anterior = index
	index = 2;
	
	index_list_botoes[index].image_index = 1;
	index_list_botoes[index_anterior].image_index = 0;
	
	index_list_cursores[index].image_index = 1;
	index_list_cursores[index_anterior].image_index = 0;
	
	index_list_cursores[index].y = 90;
	index_list_cursores[index_anterior].y = 98;
}
else if(x == 258 and index != 3){
	index_anterior = index;
	index = 3;
	index_list_botoes[index].image_index = 1;
	index_list_botoes[index_anterior].image_index = 0;
	
	index_list_cursores[index].image_index = 1;
	index_list_cursores[index_anterior].image_index = 0;
	
	index_list_cursores[index].y = 90;
	index_list_cursores[index_anterior].y = 98;
}
