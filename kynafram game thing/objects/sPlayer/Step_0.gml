///@description movement

right_key = keyboard_check(vk_right);
left_key = keyboard_check(vk_left);
up_key = keyboard_check(vk_up);
down_key = keyboard_check(vk_down);

//movement
xspd = (right_key - left_key) * mov_spd;
yspd = (down_key - up_key) * mov_spd;

//collisions
if place_meeting(x+xspd, y, aBush) {
	xspd = 0 }
if place_meeting(x, y+yspd, aBush) {
	yspd = 0 }
	
if place_meeting(x+xspd, y, Object4) {
	xspd = 0 }
if place_meeting(x, y+yspd, Object4) {
	yspd = 0 }

//animations

if xspd < 0 {
	sprite_index = sPlayerLeft
} else if xspd > 0 {
	sprite_index = sPlayerRight
	
} else if yspd < 0 {
	sprite_index = sPlayerUp
	
} else if yspd > 0 {
	sprite_index = sPlayerDown
	
}


if (xspd != 0 or yspd != 0) {
	image_speed = 2;
 }
	else {
	image_index = 0
} 


x += xspd;
y += yspd;