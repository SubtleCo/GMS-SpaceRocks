/// @description create bullet


function create_bullet(_dir, _spd, _faction){
	
	var _creator = id;
	var pew = choose(pew1, pew2, pew3, pew4, pew5, pew6, pew7);
	audio_play_sound(pew, 2, false);
	
	var inst = instance_create_layer(x,y,"Instances", obj_bullet)
	
	with(inst) {
		direction = _dir;
		speed = _spd;
		faction = _faction;
		creator = _creator;
		
		if (faction == factions.ally) image_blend = c_aqua;
		else if (faction == factions.enemy) image_blend = c_red;
	}	
}