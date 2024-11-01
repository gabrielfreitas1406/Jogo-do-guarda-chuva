/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
move_wrap(true, true, 0)

if(keyboard_check(vk_space) or gamepad_button_check(4, gp_shoulderrb)){
	if(powerup_velocidade) {
		image_angle += angle_speed*2;
	} else {
		image_angle += angle_speed;
	}
	image_index = 0;
	speed = 0;
}


if(keyboard_check_released(vk_space) or gamepad_button_check_released(4, gp_shoulderrb)){
	audio_sound_pitch(snd_open_umbrella, pitch);
	pitch+= 0.05;
	audio_play_sound(snd_open_umbrella, 0, 0)
	if(pitch>=1.2){
		pitch = 0.8
	}
	image_index = 1;
	angle_speed = sign_angle_speed * 3;
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

if(global.lifes <=0){
	room_restart()
}


if(global.lifes != vida_antes){
	image_blend = c_red;
	vida_antes = global.lifes
	alarm[2] = 30;
}

if(not powerup_rainbow and  instance_exists(obj_rainbow_shield)) instance_destroy(obj_rainbow_shield);