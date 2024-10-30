/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

//se o gurada chuva tá fechado


if(other.image_index == 0){ // Se guarda_chuva fechado
	if (can_hurt_player){
		global.lifes-=1;
		can_hurt_player = false;
	}
	instance_destroy();
}
if(not touched){ //Se guarda chuva aberto
	alarm[0] = 120;
	touched= true; //inimigo foi tocado
	image_speed = 2;
	audio_sound_pitch(snd_enemy_hurt, random_range(0.8, 1.2)); //Som de ferido
	audio_play_sound(snd_enemy_hurt, 0, 0);
	hit = true;
	global.pontos+= 1;
	
	if(obj_umbrella.powerup_sinuca == false){
		px = x;
		py = y;

		// Centro da elipse (obj_umbrella)
		var cx = obj_umbrella.x;
		var cy = obj_umbrella.y;

		// Semi-eixos da elipse
		var a = obj_umbrella.sprite_width / 2;
		var b = obj_umbrella.sprite_height / 2;

		// Coordenadas do ponto de impacto (px, py)
		var nx = (px - cx) / sqr(a);
		var ny = (py - cy) / sqr(b);

		// Vetor normal unitário
		var normal_length = point_distance(0, 0, nx, ny);
		nx /= normal_length;
		ny /= normal_length;



		// Vetor de direção inicial do projétil (dx, dy)

		// Obtenha a direção do projétil (em graus) e a velocidade
		var dir = direction;
		var spd = speed;

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
	
	
		direction = new_direction;

		if(other.speed != 0){
			speed *= 5;
		}
		else{
			speed *= 2;
		}
	}
	if(obj_umbrella.sprite_index == spr_umbrella_sinuca){
		hit = true;
		hit_sinuca = true;
		speed = 2;
		var _list = ds_list_create();
		collision_circle_list(x, y, 200, obj_tornado, false, true, _list, true)
		if(_list[| 0]){
			direction = point_direction(x, y, _list[| 0].x, _list[| 0].y);
		}
		else{
			other.sprite_index = spr_umbrella;
			other.powerup_sinuca = false;
			instance_destroy();
		}
		
	}
}












