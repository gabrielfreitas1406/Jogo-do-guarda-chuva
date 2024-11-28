/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
move_wrap(true, true, 0)

if((keyboard_check(vk_space) or gamepad_button_check(4, gp_shoulderrb)) and spd!= 0){
	if(powerup_velocidade) {
		image_angle += angle_speed*2;
	} else {
		image_angle += angle_speed;
	}
	image_index = 0;
	mask_index = spr_umbrella;
	speed = 0;
}


if((keyboard_check_released(vk_space) or gamepad_button_check_released(4, gp_shoulderrb)) and spd != 0){
	audio_sound_pitch(snd_open_umbrella, pitch);
	pitch+= 0.05;
	audio_play_sound(snd_open_umbrella, 0, 0)
	if(pitch>=1.2){
		pitch = 0.8
	}
	image_index = 1;
	mask_index = spr_umbrella_aberto;
	angle_speed = sign_angle_speed * 4;
	angle_when_opened = image_angle;
	direction = image_angle + 90;
	
	if(powerup_velocidade) { 
		speed = 3.5
	} else { 
		speed = 2
	}

}

if(angle_speed >= 0 and angle_speed <= max_angle_speed){
	angle_speed += 0.1;
}
else if (angle_speed < 0 and angle_speed >= min_angle_speed){
	angle_speed -= 0.1;
}

if(global.lifes <=0 and not instance_exists(obj_gameover)){
	audio_play_sound(snd_umbrella_death, 0, 0)
	global.lifes = 0;
	instance_create_layer(camera_get_view_x(view_camera[0]) + 200, camera_get_view_y(view_camera[0]), "UI", obj_gameover);
	instance_destroy(obj_player);
	instance_destroy(obj_umbrella);
}

if(global.lifes >3){
	global.lifes = 3;
}


if(global.lifes < vida_antes){
	image_blend = c_black;
	vida_antes = global.lifes
	alarm[2] = 30;
	if(global.lifes > 0) audio_play_sound(snd_umbrella_hurt, 0, 0)
}

if(not powerup_rainbow and  instance_exists(obj_rainbow_shield)) instance_destroy(obj_rainbow_shield);