/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor


if(instance_exists(obj_umbrella)){
	direction = point_direction(x, y, obj_umbrella.x, obj_umbrella.y)
	speed = 0.5;
}

touched = false;

px = 0;
py = 0;