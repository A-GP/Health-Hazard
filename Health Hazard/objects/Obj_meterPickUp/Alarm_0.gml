if (despawnSeconds == 0 || despawnSeconds < 0){
	global.pickupCount -= 1;
	instance_destroy();
}
else if(despawnSeconds > 0)
{
	despawnSeconds -=  .0167;
	//degugging
	despawnClock = string(despawnSeconds);
}

if(Obj_controller.timeSeconds == 0 || Obj_controller.timeSeconds < 0)
{
	instance_destroy();
}


































