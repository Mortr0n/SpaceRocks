/// @description Insert description here
// You can write your code in this editor
instance_destroy(other);
effect_create_above(ef_explosion, x, y, 1, c_white);

_big_rock_score = 10;
_small_rock_score = 20;
_timy_rock_score = 60;

var _tiny_rock_instance_2
var _tiny_rock_instance_3
var _small_rock_instance_2


direction = random(360)

if sprite_index == spr_rock_big
{
	sprite_index = spr_rock_small;
	_small_rock_instance_2 = instance_copy(true);
	obj_game.points += _big_rock_score
}
else if sprite_index == spr_rock_small
{
	sprite_index = spr_rock_tiny
	_tiny_rock_instance_2 = instance_copy(true)
	_tiny_rock_instance_3 = instance_copy(true)
	obj_game.points += _small_rock_score
}

// need to come up with better code for this.  Basically need to check that things exist before checking the counts.  I could also just make a rock instance count by size and use that.  Probably better.
else if sprite_index == spr_rock_big < 6 && (if sprite_exists(_small_rock_instance_2 ||  sprite_index == _small_rock_instance_2 && sprite_index == spr_rock_small) < 15 && (sprite_index == spr_rock_tiny && sprite_index == _tiny_rock_instance_2 && sprite_index == _tiny_rock_instance_3) < 45
{
	sprite_index = spr_rock_big;
	x = -100;
}
else if sprite_index == spr_rock_tiny
{
	instance_destroy();
	obj_game.points += _tiny_rock_score;
}

if sprite_index == spr_rock_small || sprite_index == _small_rock_instance_2
{
	speed *= 2
}

if sprite_index == spr_rock_tiny
{
	speed *= 3
}
	