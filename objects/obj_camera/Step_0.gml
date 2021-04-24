/// @description Follow the ship
// Follow the target
if(instance_exists(target)){
	global.cameraX = target.x - global.cameraWidth/2;
	global.cameraY = target.y - global.cameraHeight/2;
	
	global.cameraX += irandom_range(-global.cameraShake, global.cameraShake)
	global.cameraY += irandom_range(-global.cameraShake, global.cameraShake)
	
	global.cameraX = clamp(global.cameraX, 0, room_width - global.cameraWidth);
	global.cameraY = clamp(global.cameraY, 0, room_height - global.cameraHeight);

}

if (global.cameraShake > 0) {
	global.cameraShake -= 0.2;
	if(global.cameraShake < 0) global.cameraShake = 0;
}
camera_set_view_pos(view_camera[0], global.cameraX, global.cameraY);


// Parallax
layer_x("Stars", global.cameraX * .85);
layer_y("Stars", global.cameraY * .85);

layer_x("Parallax_0", global.cameraX * .92);
layer_y("Parallax_0", global.cameraY * .92);

layer_x("Parallax_1", global.cameraX * .88);
layer_y("Parallax_1", global.cameraY * .88);
