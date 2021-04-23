/// @description Add power sprites
// default draw event
draw_self();

// Draw guns
if(guns != -1) draw_sprite_ext(spr_ship_powers,guns,x,y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
// Draw invincible
if(invincible) {
	var alpha = 1
	if (alarm[1] < 3 * room_speed) {
		var alpha = min(1, (alarm[1] % 60) / 60)
	}
	
	draw_sprite_ext(spr_ship_powers, powerups.invincible, x,y, 
		image_xscale, image_yscale, image_angle, image_blend, alpha);
}