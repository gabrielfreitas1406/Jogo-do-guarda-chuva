instance_create_layer(obj_player.x, obj_player.y, "UI", obj_instructions);

audio_stop_sound(snd_music_Umbrellalala);
if(not audio_is_playing(snd_umbra_fella))audio_play_sound(snd_umbra_fella, 0, 1);


cam_width = 400;
cam_height = 240;

follow = obj_umbrella;

x_to = x;
y_to = y;