/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

if(instance_exists(obj_umbrella)){
	dir = point_direction(x, y, obj_umbrella.x, obj_umbrella.y);
	
	dist_to_umbrella = distance_to_object(obj_umbrella);
	
	//Se guarda-chuva tá perto e ainda não tá no frame escuro
	if(dist_to_umbrella <= 100){
		direction = dir;
		speed = 1;
	}	
	//Se tá longe
	else{
		//volta ao normal
		image_speed = 0;
		image_angle = 0
		
	}
	
	
}
