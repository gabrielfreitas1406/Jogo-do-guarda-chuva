/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor


image_index=1;
image_speed = 0;



x = obj_botao_jogar.x + obj_botao_jogar.sprite_width/2;

index = 0;
index_anterior = 1;

index_list_cursores = [obj_cursor_jogar, obj_cursor_opcoes, obj_cursor_creditos, obj_cursor_sair]
index_list_botoes = [obj_botao_jogar, obj_botao_opcoes, obj_botao_creditos, obj_botao_sair]

index_list_botoes[index].image_index = 1;
index_list_botoes[index_anterior].image_index = 0;
	
index_list_cursores[index].image_index = 1;
index_list_cursores[index_anterior].image_index = 0;
	
index_list_cursores[index].y = 90;
index_list_cursores[index_anterior].y = 98;