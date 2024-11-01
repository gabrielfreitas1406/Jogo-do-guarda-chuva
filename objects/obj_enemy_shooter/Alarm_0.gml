/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor


if(sprite_index == spr_enemy_shoot_dark and can_hurt_player){
	instance_create_layer(x, y, "Shoot", obj_raio)
	alarm[0] = 90
}

