/// @description when ship dies

lives -= 1;
instance_destroy();
audio_play_sound(death, 2, false);

repeat(10) {
	instance_create_layer(x,y,"Instances", obj_debris)	
}

with (obj_game) {
	alarm[1] = room_speed;
}