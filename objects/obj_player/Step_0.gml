/// @description Insert description here
// You can write your code in this editor

if (keyboard_check(ord("A")) and !instance_place(x-
move_speed, y, obj_wall)) {
	x += -move_speed
	
}

if (keyboard_check(ord("D")) and !instance_place(x+
move_speed, y, obj_wall)) {
	x += move_speed
}

if (place_meeting(x ,y + 2, obj_wall)) {
	move_y = 0;
	if (keyboard_check(vk_space)) {
		move_y = -jump_speed;
	}
}
else if (move_y < 10) {
	move_y += 1;
}

move_and_collide(move_x, move_y, obj_wall);

if (move_x != 0) image_xscale = sign(move_x);

