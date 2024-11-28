/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

if(instance_exists(obj_umbrella)){
	x = obj_umbrella.x;
	y = obj_umbrella.y
	
	if(obj_umbrella.speed != 0){
		sprite_index = spr_player_moving;
	} 
	else{
		sprite_index = spr_player_idle;
	}
	
	image_angle = obj_umbrella.image_angle
}
else{
	instance_destroy()
}