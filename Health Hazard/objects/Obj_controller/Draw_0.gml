if instance_exists(Obj_player2)
{
	draw_healthbar(30, 10, 300, 40, Obj_player2.playTwoHealth,c_black,c_red,c_lime,1,true,true);
	//draw_text(30, 60, string(Obj_player2.playTwoHealth));
	//used to test values
	draw_healthbar(50, 50, 300, 70, Obj_player2.playTwoMeter,c_ltgray,c_navy,c_aqua,1,true,true);
	//draw_text(30, 100, string(Obj_player2.playTwoMeter));
}


if instance_exists(Obj_player1)
{
	draw_healthbar(1300, 10, 1570, 40, Obj_player1.playOneHealth,c_black,c_red,c_lime,0,true,true);
	//draw_text(1300, 60, string(Obj_player1.playOneHealth));
	//used to test values
	draw_healthbar(1300, 50, 1550, 70, Obj_player1.playOneMeter,c_ltgray,c_navy,c_aqua,0,true,true);
	//draw_text(1300, 100, string(Obj_player1.playOneMeter));
}

draw_set_color(c_black);
draw_set_font(Font1);
draw_text(695, 10, timeClock);




//Win text
if(timeSeconds == 0 || timeSeconds < 0)
{
	draw_text(660, 414, timeWin);
}

//pickup debugging
/*if instance_exists(Obj_meterPickUp)
{
	draw_text(695, 60, Obj_meterPickUp.despawnClock);
}*/
//Pickups
draw_set_font(Font1);
draw_text(0, 192, "Pickups");
draw_set_font(Font2);
draw_text(0, 240, "Increase Health: Green")
draw_text(0, 260, "Decrease Health: Red")
draw_text(0, 280, "Increase Meter: Blue")

//Controls
draw_set_font(Font2);
draw_text(59, 733, "Movement: W, A, D; Attacks: X; Special: C");
draw_text(1030, 733, "Movement: Up, Left, Right; Attacks: O; Special: P");
draw_text(0, 300, "Restart: T");

//Names
draw_set_font(Font1);
draw_text(395, 5, "Player 2");
draw_text(1035, 5, "Player 1");





























