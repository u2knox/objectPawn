
#include <a_samp>
#include <memory>
#include <map>
#include <cjump>

#define class:%0() forward pre_%0(const method[]); public pre_%0(const method[])\
{\
	static Map:ClassMap;\
	if(!MAP_contains_str(ClassMap, method))class_%0(1, ClassMap, -1);\
	new called_method=MAP_get_str_val(ClassMap, method);\
	return class_%0(0, ClassMap, called_method);}forward class_%0(class_init, &Map:ClassMap, called_method); public class_%0(class_init, &Map:ClassMap, called_method)

static method_index;
static method_jump[JmpBuf];

#define method%0()	\
	static %0_index; \
	setjmp(method_jump, %0_index);\
	if(%0_index == 0){\
		MAP_insert_str_val(ClassMap, #%0, ++method_index);\
		%0_index = method_index;\
		longjmp(method_jump, %0_index);}else if(%0_index == called_method && class_init != 1)

#define call%0.%1()	CallClass(#%0,#%1)

main()
{
	print(">> by knox");
}

public OnGameModeInit()
{
	SetGameModeText("knox engine");

	AddPlayerClass(0, 1958.3783, 1343.1572, 15.3746, 269.1425, 0, 0, 0, 0, 0, 0);

	printf("class Player %d", call Player.Get());
	printf("class Player %d", call Player.Get());

	printf("class Vehicle %d", call Vehicle.Get());
	printf("class Vehicle %d", call Vehicle.Get());


	return 1;
}

stock CallClass(const class[], const method[])
{
	new string[32];
	format(string, sizeof string, "pre_%s", class);
	return CallLocalFunction(string, "s", method);
}

class:Player()
{
	method Get()
	{
		return 2;
	}
	return 1;
}

class:Vehicle()
{
	method Get()
	{
		return 3;
	}
	return 1;
}

public OnGameModeExit()
{
	return 1;
}

public OnPlayerRequestClass(playerid, classid)
{
	SetPlayerPos(playerid, 1958.3783, 1343.1572, 15.3746);
	SetPlayerCameraPos(playerid, 1958.3783, 1343.1572, 15.3746);
	SetPlayerCameraLookAt(playerid, 1958.3783, 1343.1572, 15.3746);
	return 1;
}

public OnPlayerConnect(playerid)
{
	return 1;
}

public OnPlayerDisconnect(playerid, reason)
{
	return 1;
}

public OnPlayerSpawn(playerid)
{
	return 1;
}

public OnPlayerDeath(playerid, killerid, reason)
{
	return 1;
}

public OnVehicleSpawn(vehicleid)
{
	return 1;
}

public OnVehicleDeath(vehicleid, killerid)
{
	return 1;
}

public OnPlayerText(playerid, text[])
{
	return 1;
}

public OnPlayerCommandText(playerid, cmdtext[])
{
	if (strcmp("/mycommand", cmdtext, true, 10) == 0)
	{
		// Do something here
		return 1;
	}
	return 0;
}

public OnPlayerEnterVehicle(playerid, vehicleid, ispassenger)
{
	return 1;
}

public OnPlayerExitVehicle(playerid, vehicleid)
{
	return 1;
}

public OnPlayerStateChange(playerid, newstate, oldstate)
{
	return 1;
}

public OnPlayerEnterCheckpoint(playerid)
{
	return 1;
}

public OnPlayerLeaveCheckpoint(playerid)
{
	return 1;
}

public OnPlayerEnterRaceCheckpoint(playerid)
{
	return 1;
}

public OnPlayerLeaveRaceCheckpoint(playerid)
{
	return 1;
}

public OnRconCommand(cmd[])
{
	return 1;
}

public OnPlayerRequestSpawn(playerid)
{
	return 1;
}

public OnObjectMoved(objectid)
{
	return 1;
}

public OnPlayerObjectMoved(playerid, objectid)
{
	return 1;
}

public OnPlayerPickUpPickup(playerid, pickupid)
{
	return 1;
}

public OnVehicleMod(playerid, vehicleid, componentid)
{
	return 1;
}

public OnVehiclePaintjob(playerid, vehicleid, paintjobid)
{
	return 1;
}

public OnVehicleRespray(playerid, vehicleid, color1, color2)
{
	return 1;
}

public OnPlayerSelectedMenuRow(playerid, row)
{
	return 1;
}

public OnPlayerExitedMenu(playerid)
{
	return 1;
}

public OnPlayerInteriorChange(playerid, newinteriorid, oldinteriorid)
{
	return 1;
}

public OnPlayerKeyStateChange(playerid, newkeys, oldkeys)
{
	return 1;
}

public OnRconLoginAttempt(ip[], password[], success)
{
	return 1;
}

public OnPlayerUpdate(playerid)
{
	return 1;
}

public OnPlayerStreamIn(playerid, forplayerid)
{
	return 1;
}

public OnPlayerStreamOut(playerid, forplayerid)
{
	return 1;
}

public OnVehicleStreamIn(vehicleid, forplayerid)
{
	return 1;
}

public OnVehicleStreamOut(vehicleid, forplayerid)
{
	return 1;
}

public OnDialogResponse(playerid, dialogid, response, listitem, inputtext[])
{
	return 1;
}

public OnPlayerClickPlayer(playerid, clickedplayerid, source)
{
	return 1;
}

