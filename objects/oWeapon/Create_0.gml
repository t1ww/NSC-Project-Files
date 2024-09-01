/// @description Insert description here
// You can write your code in this editor

//Unarmed
weapons[0] = ds_map_create();
ds_map_add(weapons[0],"sprite", -1);
ds_map_add(weapons[0],"recoil", 0);
ds_map_add(weapons[0],"damage", 0);
ds_map_add(weapons[0],"projectile", -1);
ds_map_add(weapons[0],"startup", 0);
ds_map_add(weapons[0],"length", 0);
ds_map_add(weapons[0],"cooldown", 0);
ds_map_add(weapons[0],"bulletspd", 0);
ds_map_add(weapons[0],"auto", false);

//Gun 1
weapons[1] = ds_map_create();
ds_map_add(weapons[1],"sprite", sWeapon);//sprite
ds_map_add(weapons[1],"recoil", 10);
ds_map_add(weapons[1],"damage", 2);
ds_map_add(weapons[1],"projectile", oBullet);//bullet
ds_map_add(weapons[1],"startup", 0);
ds_map_add(weapons[1],"length", 19);//length
ds_map_add(weapons[1],"cooldown", 10);
ds_map_add(weapons[1],"bulletspd", 10);
ds_map_add(weapons[1],"auto", true);

//Gun 2
weapons[2] = ds_map_create();
ds_map_add(weapons[2],"sprite", sWeapon);//sprite
ds_map_add(weapons[2],"recoil", 25);
ds_map_add(weapons[2],"damage", 50);
ds_map_add(weapons[2],"projectile", oBullet);//bullet
ds_map_add(weapons[2],"startup", 0);
ds_map_add(weapons[2],"length", 19);//length
ds_map_add(weapons[2],"cooldown", 70);
ds_map_add(weapons[2],"bulletspd", 25);
ds_map_add(weapons[2],"auto", false);

//Gun 3
weapons[3] = ds_map_create();
ds_map_add(weapons[3],"sprite", sWeapon);//sprite
ds_map_add(weapons[3],"recoil", 15);
ds_map_add(weapons[3],"damage", 10);
ds_map_add(weapons[3],"projectile", oBullet);//bullet
ds_map_add(weapons[3],"startup", 0);
ds_map_add(weapons[3],"length", 19);//length
ds_map_add(weapons[3],"cooldown", 25);
ds_map_add(weapons[3],"bulletspd", 15);
ds_map_add(weapons[3],"auto", true);

//Ammo Setup
weapon = 0;
ammo[array_length_1d(weapons)-1] = 0;
ammo[0] = -1;
ammo[1] = 0;
ammo[2] = 0;
ammo[3] = 0;
max_ammo1 = 50;
max_ammo2 = 10;
max_ammo3 = 25;

//ChangeWeapon
ChangeWeapon(0);

//Cooldown
current_cd = 0;
current_delay = -1;
current_recoil = 0;

//Text Check
TextCheck = false;

