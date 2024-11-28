/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor





if(not bottom){
	y += spd;
	deslocamento += spd;
	spd += 0.3;
}

if(deslocamento >= 90){
	bottom = true;
}

if(bottom and not (instance_exists(obj_botao_gameover_jogar) and instance_exists(obj_botao_gameover_menu))){
	instance_create_layer(x, y+20, "UI2", obj_botao_gameover_jogar);
	instance_create_layer(x, y+40, "UI2", obj_botao_gameover_menu);
	
	if(global.pontos > global.highscore){
		global.highscore = global.pontos;
		highscore_save();
	}
}
else if (bottom){
	if(keyboard_check_pressed(vk_up) or keyboard_check_pressed(vk_down)){
		current = not current;
		if(current == 0){
			obj_botao_gameover_jogar.image_index = 1;
			obj_botao_gameover_menu.image_index = 0;
		}
		if(current == 1){
			obj_botao_gameover_jogar.image_index = 0;
			obj_botao_gameover_menu.image_index = 1;
		}
	}
	if(keyboard_check_pressed(vk_space)){
		if(current == 0){
			room_restart()
		}
		else{
			room_goto(RoomMenu)
		}	
	}
}

	
	