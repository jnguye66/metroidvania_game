// Inputs
var left = keyboard_check(ord("A"));
var right = keyboard_check(ord("D"));
var jump = keyboard_check(vk_space);

// Calculate Movements
var move = right - left;

move_x = move * move_speed;

move_y = move_y + grv;

if ((place_meeting(x, y + 1, obj_wall)) || (place_meeting(x, y + 1, obj_platform))) && (jump){
	move_y = -8.8;
}

// Horizontal Collision
if (place_meeting(x + move_x, y, obj_wall)) {
	while (!place_meeting(x + sign(move_x), y, obj_wall)) {
		x = x + sign(move_x);
	}
	move_x = 0;
}

if (place_meeting(x + move_x, y, obj_platform)) {
	while (!place_meeting(x + sign(move_x), y, obj_platform)) {
		x = x + sign(move_x);
	}
	move_x = 0;
}

x = x + move_x;

// Vertical Collision
if (place_meeting(x, y + move_y, obj_wall)) {
	while (!place_meeting(x, y + sign(move_y), obj_wall)) {
		y = y + sign(move_y);
	}
	move_y = 0;
}

if (place_meeting(x, y + move_y, obj_platform)) {
	while (!place_meeting(x, y + sign(move_y), obj_platform)) {
		y = y + sign(move_y);
	}
	move_y = 0;
}

y = y + move_y;