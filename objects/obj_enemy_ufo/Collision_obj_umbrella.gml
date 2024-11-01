/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

if(not abatido){
	if(other.image_index == 0){
		can_hurt_player = false;
		abatido = true;
		audio_play_sound(snd_enemy_hurt, 0, 0)
		global.pontos += 3;
		sprite_index = spr_ufo_death;
		abatido = true;
		rotacao = 1
		speed = 2;
		alarm[0] = 30;
		other.angle_speed *= -1;
		other.sign_angle_speed *= -1;
	}
	else if(can_hurt_player){
		global.lifes -= 1;
		instance_destroy()
	}
}
