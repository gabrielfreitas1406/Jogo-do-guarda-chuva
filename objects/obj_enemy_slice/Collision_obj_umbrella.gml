/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

if(other.image_index == 0){
	audio_play_sound(snd_enemy_hurt, 0, 0)
	global.pontos += 3;
	instance_destroy()
	
	other.angle_speed *= -1;
	other.sign_angle_speed *= -1;
}
else{
	global.lifes -= 1;
	instance_destroy()
}
