/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor


if(hit and hit_sinuca){
	other.hit_sinuca = true;
	instance_destroy();
	global.pontos+=1;
}


if(hit and not hit_sinuca){
	instance_destroy()
	instance_destroy(other);
	global.pontos+=1;
}

if(hit_sinuca and not other.hit_sinuca){
	hit = true;
	other.hit_sinuca = true;	
}


if(hit_sinuca and not hit){
	can_hurt_player = false;
	var _list = ds_list_create();
	collision_circle_list(x, y, 200, obj_tornado, false, true, _list, true)
	if(_list[| 0]){
		direction = point_direction(x, y, _list[| 0].x, _list[| 0].y);
		speed = 4;
	}
	else{
		obj_umbrella.sprite_index = spr_umbrella;
		obj_umbrella.powerup_sinuca = false;
		instance_destroy()
		instance_destroy(other)
		global.pontos+=1;
	}
}


