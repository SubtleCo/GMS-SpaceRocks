 ///@function initialize_bullet(direction, speed, faction, instance)
 
 function initialize_bullet(_dir, _spd, _faction, inst){
	 var _creator = id;
	 
	 with(inst) {
					direction = _dir;
					if(object_index == obj_bullet) speed = _spd;
					faction = _faction;
					creator = _creator;
		
					if (faction == factions.ally) image_blend = c_aqua;
					else if (faction == factions.enemy) image_blend = c_red;
				}
 }