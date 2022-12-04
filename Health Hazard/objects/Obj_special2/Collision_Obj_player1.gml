if(Obj_player1.playOneHealth > 100 || Obj_player1.playOneHealth == 100)
{
	Obj_player1.playOneHealth += 0;
	Obj_player2.playTwoHealth -= 10;
}
else{
	Obj_player1.playOneHealth += 20;
	Obj_player2.playTwoHealth -= 10;
}
/*
if (x < Obj_player1.x) {
	Obj_player1.x += 20;	
} else {
	Obj_player1.x -= 20;	
}*/







































