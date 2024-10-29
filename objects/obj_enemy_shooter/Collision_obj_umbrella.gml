/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

if(other.image_index == 1){
	global.pontos += 5;
	audio_play_sound(snd_enemy_hurt, 0, 0);
	instance_destroy()
}
else{
	instance_destroy(other)
}
