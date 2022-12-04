if(Obj_player1.playOneHealth > 100 || Obj_player1.playOneHealth == 100)
{
	Obj_player1.playOneHealth += 0;
}
else{
	Obj_player1.playOneHealth += 10;
}
if (x < Obj_player1.x) and !(place_meeting(other.x+16,other.y,Obj_floor)) {
	Obj_player1.x += 15;	
} else if (x > Obj_player1.x) and !(place_meeting(other.x+16,other.y,Obj_floor)) {
	Obj_player1.x -= 15;
}

Obj_player2.playTwoMeter += 3;
instance_destroy();










































