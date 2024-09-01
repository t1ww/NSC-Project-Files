/// @description Insert description here
// You can write your code in this editor

range = 225;

phase1 = true;
phase2 = false;
phase1cd = 2;
phase2cd = 1;
phasecd_init = 1;
phasecd_current = phasecd_init;
countdownrate_spawnp1 = 60;//Lower is faster
countdownrate_spawnp2 = 40;//Lower is faster
countdownrate = 40;//Lower is faster
countdownratep2 = 25;//Lower is faster
countdownratelong = 200;//Lower is faster
countdown = countdownrate;
bulletcount = 0;
spawncount = 0;
knockback = 4;

BossBullet = oBoss1Bullet;
Minion = oMinionOne;

B1Death = false;

//Health
scale = 0.6;
hp = 250;
hp_max = hp;

healthbar_width = 100;
healthbar_height = 12;
healthbar_x = x - 27;
healthbar_y = y - 74;

flash = 0;

//Text Checker
Text_count = 0;

TextLeft = false;
ShakeLeft = 1;

//Alpha counter
alphacount = 0;