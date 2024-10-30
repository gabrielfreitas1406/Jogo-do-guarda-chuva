/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

if(image_index == 1 and not hit and other.image_index == 1){ //se o outro tá aberto
	audio_sound_pitch(snd_enemy_hurt, random_range(0.8, 1.2)); //Som de ferido
	audio_play_sound(snd_enemy_hurt, 0, 0);

	
	px = x;
	py = y;

	// Centro da elipse (obj_umbrella)
	var cx = x;
	var cy = y;

	// Semi-eixos da elipse
	var a = sprite_width / 2;
	var b = sprite_height / 2;

	// Coordenadas do ponto de impacto (px, py)
	var nx = (other.px - cx) / sqr(a);
	var ny = (other.py - cy) / sqr(b);

	// Vetor normal unitário
	var normal_length = point_distance(0, 0, nx, ny);
	nx /= normal_length;
	ny /= normal_length;



	// Vetor de direção inicial do projétil (dx, dy)

	// Obtenha a direção do projétil (em graus) e a velocidade
	var dir = other.direction;
	var spd = other.speed;

	// Calcula os componentes do vetor de direção (dx, dy)
	var dx = lengthdir_x(spd, dir);
	var dy = lengthdir_y(spd, dir);


	// Produto escalar entre a direção e a normal
	var dot = dot_product(dx, dy, nx, ny);

	// Cálculo do vetor de reflexão
	var reflected_dx = dx - 2 * dot * nx;
	var reflected_dy = dy - 2 * dot * ny;

	// Ajuste a direção do projétil para a nova direção (reflexão)
	var new_direction = point_direction(0, 0, reflected_dx, reflected_dy);
	
	
	other.direction = new_direction;

	if(other.speed != 0){
		other.speed *= 2;
	}
	else{
		other.speed *= 1;
	}		
	alarm[3] = 15;
	hit = true;	
}
else if(image_index == 1 and not hit and other.image_index == 0){
	other.direction = -direction
	hit = true;
	alarm[3] = 15;
	other.speed = 4;
}
else if(image_index == 0 and not hit){
	audio_play_sound(snd_enemy_hurt, 0, 0)
	sign_angle_speed *= -1;
	angle_speed *=-1;
	hit = true;
	alarm[3] = 10;
}