/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

if(instance_exists(obj_umbrella)){
	speed = 3;
	//image_angle = obj_enemy_shooter.image_angle
	direction = point_direction(x, y, obj_umbrella.x, obj_umbrella.y)
	image_angle = (direction+90)%360
}

audio_play_sound(snd_ray_sound, 0, 0)