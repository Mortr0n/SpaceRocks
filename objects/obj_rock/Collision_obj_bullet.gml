/// @description Insert description here
// You can write your code in this editor
instance_destroy(other);
effect_create_above(ef_explosion, x, y, 1, c_white);

var _score = 10
var _big_rock_score = _score * 1;
var _small_rock_score = _score * 2;
var _tiny_rock_score = _score * 4; 

var _tiny_rock_instance_2
var _tiny_rock_instance_3
var _small_rock_instance_2


direction = random(360)

if sprite_index == spr_rock_big
{
	sprite_index = spr_rock_small;
	_small_rock_instance_2 = instance_copy(true);
	_small_rock_instance_2.speed = speed * 2
	obj_game.points += _big_rock_score
}
else if sprite_index == spr_rock_small
{
	sprite_index = spr_rock_tiny
	_tiny_rock_instance_2 = instance_copy(true)
	_tiny_rock_instance_2.speed *=3
	_tiny_rock_instance_3 = instance_copy(true)
	_tiny_rock_instance_3.speed *=3
	obj_game.points += _small_rock_score
}


if sprite_index == spr_rock_big < 6
{
	sprite_index = spr_rock_big;
	x = -100;
}
if sprite_index == spr_rock_tiny
{
	instance_destroy();
	obj_game.points += _tiny_rock_score	
}

if  sprite_index == spr_rock_small 
{
	speed *=2
}
if sprite_index == spr_rock_tiny
{
	speed *=3
}

//if sprite_exists(spr_rock_small) && sprite_index == spr_rock_small 
//{
//	speed *= 2
//}





//if sprite_index == spr_rock_tiny
//{
//	speed *= 3
//}
	