if(Obj_player2.playTwoHealth > 100 || Obj_player2.playTwoHealth == 100)
{
	Obj_player2.playTwoHealth += 0;
}
else{
	Obj_player2.playTwoHealth += 10;
}
if (x < Obj_player2.x) and !(place_meeting(other.x+16,other.y,Obj_floor)) {
	Obj_player2.x += 15;	
} else if (x > Obj_player2.x) and !(place_meeting(other.x+16,other.y,Obj_floor)) {
	Obj_player2.x -= 15;	
}

Obj_player1.playOneMeter += 3;
instance_destroy();










































