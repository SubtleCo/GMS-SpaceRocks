/// @description Follow the ship
// Follow the target
if(instance_exists(target)){
	global.cameraX = target.x - global.cameraWidth/2;
	global.cameraY = target.y - global.cameraHeight/2;
	
	global.cameraX = clamp(global.cameraX, 0, room_width - global.cameraWidth);
	global.cameraY = clamp(global.cameraY, 0, room_height - global.cameraHeight);

}
camera_set_view_pos(view_camera[0], global.cameraX, global.cameraY);

layer_x("Stars", global.cameraX * .85);
layer_y("Stars", global.cameraY * .85);

layer_x("Parallax_0", global.cameraX * .92);
layer_y("Parallax_0", global.cameraY * .92);

layer_x("Parallax_1", global.cameraX * .88);
layer_y("Parallax_1", global.cameraY * .88);