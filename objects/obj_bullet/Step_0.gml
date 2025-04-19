x += lengthdir_x(spd,move_dir);
y += lengthdir_y(spd,move_dir);

if(x > room_width || x < 0 || y > room_height || y < 0)
{
	instance_destroy();
}