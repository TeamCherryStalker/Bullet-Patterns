randomize();
update_time();
bullet_time += global.gamesecond;

if(keyboard_check_pressed(vk_up))
{
	bullet_amount++;
}

if(keyboard_check_pressed(vk_down))
{
	bullet_amount--;
}

if(keyboard_check_pressed(ord("W")))
{
	division_amount += 0.03;
}

if(keyboard_check_pressed(ord("S")))
{
	division_amount -= 0.03;
}

if(keyboard_check_pressed(vk_left))
{
	angle_curvarture = angle_curvarture/1.25;
}

if(keyboard_check_pressed(vk_right))
{
	angle_curvarture = angle_curvarture*1.25;
}

if(keyboard_check_pressed(vk_backspace))
{
	angle = angle/2;
	angle_curvarture = angle*100;
}

if(keyboard_check_pressed(vk_enter))
{
	angle = angle*2;
	angle_curvarture = angle*100;
}

if(keyboard_check_pressed(ord("A")))
{
	additional_spd++;
}

if(keyboard_check_pressed(ord("D")))
{
	additional_spd--;
}

if(keyboard_check_pressed(ord("R")))
{
	start_curve = true;
}

if(keyboard_check_pressed(ord("T")))
{
	start_curve = false;
}

if(keyboard_check_pressed(ord("X")))
{
	curve = 0;
}

if(keyboard_check_pressed(ord("Y")))
{
	shooting_time -= 0.1;
}

if(keyboard_check_pressed(ord("U")))
{
	shooting_time += 0.1;
}

if(keyboard_check_pressed(ord("F")))
{
	wrong_bullet = true;
}

if(keyboard_check_pressed(ord("G")))
{
	wrong_bullet = false;
}

if(start_curve == true)
{
	curve += angle/angle_curvarture;
}

if(bullet_time >= shooting_time)
{
	for(var _j = 0; _j < division_amount; _j += 0.03)
	{
		for(var _i = 0; _i < bullet_amount; _i++)
		{
			var _bullet = instance_create_layer(x,y,"Instances",obj_bullet);
			_bullet.move_dir = (angle/bullet_amount)*_i + (angle/bullet_amount)*_j +(angle/bullet_amount)*curve;
			if(wrong_bullet == true)
			{
				_bullet.move_dir += irandom_range(-4,4);
			}
			_bullet.spd += additional_spd;
		}
	}
	bullet_time = 0;
}