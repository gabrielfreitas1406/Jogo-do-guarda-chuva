/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

if(keyboard_check(vk_space)){
	image_index = 0;
	speed = 0;
}

if(keyboard_check(vk_space)){
	image_angle += angle_speed;
}

if(keyboard_check_released(vk_space)){
	image_index = 1;
	angle_speed = 1;
	angle_when_opened = image_angle;
	direction = image_angle + 90;
	speed = 2;
	alarm[0] = 5;
}

if(angle_speed <= 10){
	angle_speed += 0.1;
}

if(global.lifes <=0){
	instance_destroy()
}


if(global.lifes != vida_antes){
	image_blend = c_red;
	vida_antes = global.lifes
	alarm[2] = 30;
}
