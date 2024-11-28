// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações



function highscore_load(){
	var file = working_directory + "highscore";
	
	try{
		var handle = file_text_open_read(file);
		global.highscore = file_text_read_real(handle);
		file_text_close(handle);
	}
	catch(_exception) {
		global.highscore = 0;
	}
}

function highscore_save(){
	var file = working_directory + "highscore";
	var handle = file_text_open_write(file);
	
	file_text_write_real(handle, global.highscore);
	file_text_close(handle);
}