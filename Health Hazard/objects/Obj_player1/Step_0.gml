rightKey = keyboard_check(vk_right);
leftKey = keyboard_check(vk_left);
upKey = keyboard_check(vk_up);

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
	sprite_index = spr_player1;
	
	//player direction
	if(rightKey)
	{
		sprite_index = spr_player1walk;
		image_xscale = 1;
	}
	if(leftKey)
	{
		sprite_index = spr_player1walk;
		image_xscale = -1;
	}


	//horizontal movement
	
	hsp = (rightKey - leftKey) * move_speed;
	//vertical movement
	vsp += grav;

	//coyote time, could be used if we have multiple platforms
	if(canJump-- > 0) && (upKey)
	{
		vsp = jump_height;
		canJump = 0;
	}
	//at the moment the player gets unlimited jumps
	//could be tweaked for double jumps
	/*if(upKey) 
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
	if(global.specialOne == true && playOneMeter == 100)
	{
		if keyboard_check_pressed(ord("P")){
			instance_create_layer(x, y, "Instances", Obj_special1);
			global.specialOne = false;
			playOneMeter -= 90;
		}
	}

	//normal
	if keyboard_check_pressed(ord("O")){
		instance_create_layer(x, y, "Instances", Obj_playOneAttack);
	}
}
























