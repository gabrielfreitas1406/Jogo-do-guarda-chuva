/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

if(other.image_index == 0){
	audio_play_sound(snd_enemy_hurt, 0, 0)
	global.pontos += 3;
	instance_destroy()
}
else{
	global.lifes -= 1;
}
