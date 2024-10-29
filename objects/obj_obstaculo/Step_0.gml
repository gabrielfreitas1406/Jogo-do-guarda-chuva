/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor


if(place_meeting(x, y, obj_gerador2)){
	if (!inContact){
		global.lifes-=1;
		inContact = true;
	}
	
	if (global.lifes <= 0){
		//instance_destroy(obj_umbrella);
		game_restart();
	}
	
}
