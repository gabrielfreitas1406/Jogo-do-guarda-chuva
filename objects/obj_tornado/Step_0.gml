/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor


if(instance_exists(obj_umbrella) and not touched and !hit and !hit_sinuca){
	direction = point_direction(x, y, obj_umbrella.x, obj_umbrella.y)
}
else if(hit_sinuca){
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
		death()
		instance_destroy(other)
	}
}

if(place_meeting(x, y, obj_player)){
	if(can_hurt_player) global.lifes-=1;
	can_hurt_player = false;
	death();
}
