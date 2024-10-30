/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

if(instance_exists(obj_umbrella)){
	dir = point_direction(x, y, obj_umbrella.x, obj_umbrella.y);
	
	dist_to_umbrella = distance_to_object(obj_umbrella);
	
	//Se guarda-chuva tá perto e ainda não tá no frame escuro
	if(dist_to_umbrella <= 120 and image_index <= 3){
		image_angle = dir + 100;
		image_speed = 1;
	}
	//Se guarda-chuva tá perto e TÁ no frame escuro
	else if dist_to_umbrella <= 120{
		sprite_index = spr_enemy_shoot_dark;
		image_angle = dir + 100;
		alarm[0] = 90;
		
	}
	//Se tá longe
	else{
		//volta ao normal
		sprite_index = spr_enemy_shoot;
		image_speed = 0;
		image_index = 0;
		image_angle = 0
		
	}
	
	
}
