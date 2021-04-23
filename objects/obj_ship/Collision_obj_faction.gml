/// @description check alignment of collision
if(other.faction == faction) exit;
else if(invincible) {
	with(other) {
		event_perform(ev_other,ev_user1);
	}
	exit;
}
// trigger take damage script
event_perform(ev_other,ev_user1);