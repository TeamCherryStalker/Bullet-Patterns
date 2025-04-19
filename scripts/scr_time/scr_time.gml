#macro FRAMES 60
game_set_speed(FRAMES, gamespeed_fps);

global.game_spd = 1;
global.framerate = global.game_spd / FRAMES;
global.gamesecond = 0;

function update_time()
{
	global.gamesecond = delta_time/ 1000000;
	global.framerate = global.gamesecond * global.game_spd;
}