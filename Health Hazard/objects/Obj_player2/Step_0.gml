dKey = keyboard_check(ord("D"));
aKey = keyboard_check(ord("A"));
wKey = keyboard_check(ord("W"));

if(Obj_controller.timeSeconds == 0 || Obj_controller.timeSeconds < 0)
{
	grav = 0
	hsp = 0
	vsp = 0
	move_speed = 0
	jump_height = 0
	canJump = 0
}
else
{
		sprite_index = spr_player2;
	if(dKey)
	{
		sprite_index = spr_player2walk;
		image_xscale = 1;
	}
	if(aKey)
	{
		sprite_index = spr_player2walk;
		image_xscale = -1;
	}


	//horizontal movement
	hsp = (dKey - aKey) * move_speed;
	//vertical movement
	vsp += grav;

	//coyote time, could be used if we have multiple platforms
	if(canJump-- > 0) && (wKey)
	{
		vsp = jump_height;
		canJump = 0;
	}
	//at the moment the player gets unlimited jumps
	//could be tweaked for double jumps
	/*if(wKey) 
	{
		vsp = jump_height;
	}*/


	//Wall and floor collision
	if(place_meeting(x + hsp, y, Obj_floor))
	{
		while(abs(hsp) > .1)
		{
			hsp *= .5
			if (!place_meeting(x +hsp, y, Obj_floor))
			{
				x += hsp;
			}
		}
		hsp = 0;
	}
	x += hsp;
	if(place_meeting(x, y + vsp, Obj_floor))
	{
		if(vsp > 0) 
		{
			canJump = 10;
		}
		while (abs(vsp) > .1)
		{
			vsp *= .5;
			if(!place_meeting(x, y+vsp, Obj_floor))
			{
				y += vsp;
			}
		}
		vsp = 0;
	}
	y += vsp;


	//attacks

	//special
	if(global.specialTwo == true && playTwoMeter == 100)
	{
		if keyboard_check_pressed(ord("C")){
			instance_create_layer(x, y, "Instances", Obj_special2);
			global.specialTwo = false;
			playTwoMeter -= 90;
		}
	}

	//normal
	if keyboard_check_pressed(ord("X")){
		instance_create_layer(x, y, "Instances", Obj_playTwoAttack);
	}
}























