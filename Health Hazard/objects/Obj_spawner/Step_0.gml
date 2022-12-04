objectNum = irandom(2);
if (canSpawn = true)
{
	if(objectNum == 0){
		instance_create_layer(irandom_range(60, 1470), 70, "Instances", Obj_healPickUp);
	}
	if(objectNum == 1){
		instance_create_layer(irandom_range(60, 1470), 70, "Instances", Obj_hurtPickUp);
	}
	if(objectNum == 2){
		instance_create_layer(irandom_range(60, 1470), 70, "Instances", Obj_meterPickUp);
	}
	canSpawn = false;
	//shot time
	alarm[0] = room_speed *2;

//loop reset
	if(alarm[0] == -1){
		alarm[0] = 30;
	}	
}
































