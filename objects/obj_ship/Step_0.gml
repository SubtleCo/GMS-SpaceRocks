/// @description Insert description here
// You can write your code in this editor

if (keyboard_check(vk_left)) {
	image_angle += 5;
}

if (keyboard_check(vk_right)) {
	image_angle -= 5;
}

if (keyboard_check(vk_up)) {
	motion_add(image_angle, 0.05)
}

if (keyboard_check_pressed(vk_space)){
	var inst = instance_create_layer(x,y,"Instances", obj_bullet)
	inst.direction = image_angle
	var pew = choose(pew1, pew2, pew3, pew4, pew5, pew6, pew7);
	audio_play_sound(pew, 2, false);
	
}


move_wrap(true, true, sprite_width/2)