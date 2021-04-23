/// @description Insert description here
// You can write your code in this editor
score = 0;
lives = 3;

draw_set_font(fnt_text);


// place a numerical index on factions, and present them in the global scope with enum

enum factions {
	neutral,
	ally,
	enemy
}

enum powerups {
	two_bullets,
	three_bullets,
	four_bullets,
	stat_bullets,
	laser,
	invincible
}