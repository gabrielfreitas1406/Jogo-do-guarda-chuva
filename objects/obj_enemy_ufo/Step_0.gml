/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

if(instance_exists(obj_umbrella)){
	
	dir = point_direction(x, y, obj_umbrella.x, obj_umbrella.y);
	
	if(abatido){
		dir = -dir
	}
	dist_to_umbrella = distance_to_object(obj_umbrella);
	
	//Se guarda-chuva tá perto e ainda não tá no frame escuro
	if(dist_to_umbrella <= 1000 and sprite_index == spr_ufo ){
		direction = dir;
		speed = 1;
	}	
	
	if(abatido){
		image_angle += rotacao
	}
}
