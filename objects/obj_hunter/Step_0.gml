/// @description Enemy behavior

// Check to see if ship is on the board
if(!instance_exists(obj_ship)) exit;

//If player is inside range
if(point_distance(x,y, obj_ship.x, obj_ship.y) < 250) {
	// Turn to look at player
	var new_angle = point_direction(x,y, obj_ship.x, obj_ship.y);
	new_angle = image_angle - angle_difference(image_angle, new_angle);
	image_angle = lerp(image_angle, new_angle, 0.1);
	direction = image_angle;
	
	if(point_distance(x,y, obj_ship.x, obj_ship.y) < 100){
		speed -= 0.05;
	} else {
		speed += 0.01;
	}
	
	// fire
	bulletCounter++;
	if(bulletCounter >= 40){
		create_bullet(image_angle, 8, faction);
		bulletCounter = 0;
	}

} else {
// no change
	speed = lerp(speed, original_speed, 0.1)
}