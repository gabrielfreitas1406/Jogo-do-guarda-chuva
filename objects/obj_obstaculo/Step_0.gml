/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor


if(instance_exists(obj_umbrella) and not touched){
	direction = point_direction(x, y, obj_umbrella.x, obj_umbrella.y)
}

if(place_meeting(x, y, obj_player)){
	if (!inContact){
		global.lifes-=1;
		inContact = true;
	}
	
	if (global.lifes <= 0){
		//instance_destroy(obj_umbrella);
		game_restart();
	}
	
}
