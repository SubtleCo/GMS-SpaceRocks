if(other == creator) exit;

instance_destroy();

// Check alignment of object
if(other.faction == faction) exit;

//Damage object
with(other) event_perform(ev_other, ev_user1);