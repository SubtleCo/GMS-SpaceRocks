/// @function create_bullet(direction, speed, faction, guns*)

function create_bullet(_dir, _spd, _faction){
	
	var _guns = argument_count > 3 && !is_undefined(argument[3]) ? argument[3] : -1
	
	switch(_guns){
		case powerups.two_bullets:
			var pew = choose(pew1, pew2, pew3, pew4, pew5, pew6, pew7);
			audio_play_sound(pew, 2, false);
			var pew = choose(pew1, pew2, pew3, pew4, pew5, pew6, pew7);
			audio_play_sound(pew, 2, false);
			
			// set distance from origin
			var _sep = 9;
			
			// use lengthdir_x to determine origin point depending on angle
			
			var inst = instance_create_layer(x + lengthdir_x(_sep, _dir + 90),y + lengthdir_y(_sep, _dir + 90),"Instances", obj_bullet);
			initialize_bullet(_dir, _spd, _faction, inst);
			
			var inst = instance_create_layer(x + lengthdir_x(_sep, _dir - 90),y + lengthdir_y(_sep, _dir - 90),"Instances", obj_bullet);
			initialize_bullet(_dir, _spd, _faction, inst);
		
			break;
			
		case powerups.three_bullets:
			var pew = choose(pew1, pew2, pew3, pew4, pew5, pew6, pew7);
			audio_play_sound(pew, 2, false);
			var pew = choose(pew1, pew2, pew3, pew4, pew5, pew6, pew7);
			audio_play_sound(pew, 2, false);
			var pew = choose(pew1, pew2, pew3, pew4, pew5, pew6, pew7);
			audio_play_sound(pew, 2, false);
		
			// set distance from origin
			var _sep = 9;
			
			// use lengthdir_x to determine origin point depending on angle
			
			var inst = instance_create_layer(x + lengthdir_x(_sep, _dir + 90),y + lengthdir_y(_sep, _dir + 90),"Instances", obj_bullet);
			initialize_bullet(_dir, _spd, _faction, inst);
			
			var inst = instance_create_layer(x + lengthdir_x(_sep, _dir - 90),y + lengthdir_y(_sep, _dir - 90),"Instances", obj_bullet);
			initialize_bullet(_dir, _spd, _faction, inst);
			
			var inst = instance_create_layer(x,y,"Instances", obj_bullet);
			initialize_bullet(_dir, _spd, _faction, inst);
		
			break;
			
		case powerups.four_bullets:
		
			var pew = choose(pew1, pew2, pew3, pew4, pew5, pew6, pew7);
			audio_play_sound(pew, 2, false);
			var pew = choose(pew1, pew2, pew3, pew4, pew5, pew6, pew7);
			audio_play_sound(pew, 2, false);
			var pew = choose(pew1, pew2, pew3, pew4, pew5, pew6, pew7);
			audio_play_sound(pew, 2, false);
			var pew = choose(pew1, pew2, pew3, pew4, pew5, pew6, pew7);
			audio_play_sound(pew, 2, false);
		
			// set distance from origin
			var _sep = 9;
			var bullet_angle;
			var i = 0;
			
			repeat(4){
				bullet_angle = _dir + (i * 90)
				var inst = instance_create_layer(x + lengthdir_x(_sep, bullet_angle),y,"Instances", obj_bullet);
				initialize_bullet(bullet_angle, _spd, _faction, inst);
				i++;
			}
			
			
			
			break;
			
		case powerups.star_bullets:
	
			var pew = choose(pew1, pew2, pew3, pew4, pew5, pew6, pew7);
			audio_play_sound(pew, 2, false);
			var pew = choose(pew1, pew2, pew3, pew4, pew5, pew6, pew7);
			audio_play_sound(pew, 2, false);
			var pew = choose(pew1, pew2, pew3, pew4, pew5, pew6, pew7);
			audio_play_sound(pew, 2, false);
			var pew = choose(pew1, pew2, pew3, pew4, pew5, pew6, pew7);
			audio_play_sound(pew, 2, false);
		
			
			var _sep = 9;
			var bullet_angle;
			var i = 0;
			
			repeat(8){
				bullet_angle = _dir + (i * 45)
				var inst = instance_create_layer(x + lengthdir_x(_sep, bullet_angle),y,"Instances", obj_bullet);
				initialize_bullet(bullet_angle, _spd, _faction, inst);
				i++;
			}
			
			break;
			
		case powerups.laser:
		
			var inst = instance_create_layer(x,y,"Instances", obj_laser);
			initialize_bullet(_dir, _spd, _faction, inst);
		
			break;
			
		default:
			var pew = choose(pew1, pew2, pew3, pew4, pew5, pew6, pew7);
			audio_play_sound(pew, 2, false);
			
			var inst = instance_create_layer(x,y,"Instances", obj_bullet);
			initialize_bullet(_dir, _spd, _faction, inst);
			
			break;
	
	}	
}