/// @description Destory bullet outside camera

if(!point_in_rectangle(x,y,
	global.cameraX,
	global.cameraY,
	global.cameraX + global.cameraWidth,
	global.cameraY + global.cameraHeight)
	) {
		instance_destroy();
}