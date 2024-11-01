var _sorte = irandom_range(0, 1)
var _enemy = irandom_range(0,100)

if(_sorte == 0){
	// Nasce à esquerda ou à direita
	xx = (camera_get_view_x(view_camera[0])-50) + irandom(1) * 450
	yy = camera_get_view_y(view_camera[0]) + irandom(240);
}
else{
	// Nasce em cima ou embaixo
	xx = camera_get_view_x(view_camera[0]) + irandom(400)
	yy = (camera_get_view_y(view_camera[0])-50) + irandom(1) * 290;
}

if(_enemy <= 70){
	instance_create_layer(xx, yy, "Obstacles", obj_tornado);
}
else if(_enemy <= 90){
	instance_create_layer(xx, yy, "Obstacles", obj_enemy_ufo);
}
else{
	instance_create_layer(xx, yy, "Obstacles", obj_enemy_shooter);
}


alarm[0] = 120;