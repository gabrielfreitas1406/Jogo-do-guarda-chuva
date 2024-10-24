var _sorte = random_range(0, 1)

if(_sorte == 0){
	xx = irandom(1) * 200
	yy = irandom(120);
}
else{
	xx = irandom(1) * 200
	yy = irandom(120);
}


instance_create_layer(xx, yy, "Obstacles", obj_obstaculo);

alarm[0] = 120;