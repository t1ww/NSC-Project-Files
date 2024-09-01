randomize();

///Global Variables
//Text
global.TextSpeed = 0.6;//Higher is Faster
//Player
global.gamePaused = false;
global.Death = false;

//Boss
global.Boss1Died = false;
global.Boss2Died = false;
global.Boss3Died = false;

//Boss Defeat
global.Boss1Defeat = false;
global.Boss2Defeat = false;
global.Boss3Defeat = false;

//Tutorial
global.HealthPotCount = 0;
global.AmmoItemCount = 0;


DeathControl = false;

MenuRoom = "rMenu";

surface_resize(application_surface, Resolution_W, Resolution_H);

room_goto(RoomStart);

//Trophy draw
scale = 0.2;
trophyX = Resolution_W - 100;
trophyY = Resolution_H + 200;

