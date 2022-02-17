///@description Player Script

// Movement Inputs
leftKey = keyboard_check(ord("A")) or keyboard_check(vk_left);
rightKey = keyboard_check(ord("D")) or keyboard_check(vk_right);
upKey = keyboard_check(ord("W")) or keyboard_check(vk_up);
downKey = keyboard_check(ord("S")) or keyboard_check(vk_down);
sprintKey = keyboard_check(vk_lshift);

// Movement
var moveLeftRight = rightKey - leftKey;
hsp = moveLeftRight;
x += hsp * walkSpeed;

var moveUpDown = downKey - upKey;
vsp = moveUpDown;
y += vsp * walkSpeed;
//Sprinting
if (sprintKey)
{
	walkSpeed = 6;
} else
{
	walkSpeed = 3;
}