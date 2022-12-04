//Restart
if keyboard_check_pressed(ord("T")){
	game_restart();
}

if (timeSeconds == 0){
	timeSeconds = 0;

}
else if (timeSeconds > 0){
	//possible minute timer, might be easier to just use seconds
	/*if (timeSeconds = 120)
	{
		timeMinute = 1;
	}
	else if ((timeSeconds < 120) && (timeSeconds > 60))
	{
		timeMinute = 1;
	}
	else{
		timeMinute = 0;
	}*/
	timeSeconds -=  .0167;
	timeClock = string(timeMinute) + ":" + string(timeSeconds);
	//.0267 left health around 4 when set to 60 seconds
	//.0277 leaves health at .47 when set to 60 seconds
	Obj_player1.playOneHealth -= .0277;
	Obj_player2.playTwoHealth -= .0277;
	
	//health decrease player 1
	if(Obj_player1.playOneHealth > 0)
	{
		Obj_player1.playOneHealth -= .0277;
	}
	else if(Obj_player1.playOneHealth == 0 || Obj_player1.playOneHealth < 0)
	{
		Obj_player1.playOneHealth = 0;
	}
	//health increased
	if(Obj_player1.playOneHealth == 100 || Obj_player1.playOneHealth > 100)
	{
		Obj_player1.playOneHealth = 100;
		Obj_player1.playOneHealth -= 3;
	}
	
	//health decrease player 2
	if(Obj_player2.playTwoHealth > 0)
	{
		Obj_player2.playTwoHealth -= .0277;
	}
	else if(Obj_player2.playTwoHealth == 0 || Obj_player2.playTwoHealth < 0)
	{
		Obj_player2.playTwoHealth = 0;
	}
	//health increased
	if(Obj_player2.playTwoHealth == 100 || Obj_player2.playTwoHealth > 100)
	{
		Obj_player2.playTwoHealth = 100;
		Obj_player2.playTwoHealth -= 3;
	}
	
	//meter increase player 1
	if(Obj_player1.playOneMeter < 100)
	{
		Obj_player1.playOneMeter += .0279;
	}
	else if(Obj_player1.playOneMeter == 100 || Obj_player1.playOneMeter > 100)
	{
		global.specialOne = true
		Obj_player1.playOneMeter = 100;
	}
	
	//meter increase player 2
	if(Obj_player2.playTwoMeter < 100)
	{
		Obj_player2.playTwoMeter += .0279;
	}
	else if(Obj_player2.playTwoMeter == 100 || Obj_player2.playTwoMeter > 100)
	{
		global.specialTwo = true;
		Obj_player2.playTwoMeter = 100;
	}
}

//Win, Lose, Draw
if(Obj_player1.playOneHealth < Obj_player2.playTwoHealth)
{
	timeWin = timeOne;
}
else if(Obj_player1.playOneHealth > Obj_player2.playTwoHealth)
{
	timeWin = timeTwo;
}
else if(Obj_player1.playOneHealth == Obj_player2.playTwoHealth)
{
	timeWin = timeDraw;
}
























