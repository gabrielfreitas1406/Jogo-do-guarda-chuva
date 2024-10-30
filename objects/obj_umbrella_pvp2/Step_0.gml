/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor



if(keyboard_check(vk_enter) or gamepad_button_check(5, gp_shoulderrb)){
	image_angle += angle_speed;
	image_index = 0;
	speed = 0;
}


if(keyboard_check_released(vk_enter) or gamepad_button_check_released(5, gp_shoulderrb)){
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
	speed = 2
	alarm[0] = 5;
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