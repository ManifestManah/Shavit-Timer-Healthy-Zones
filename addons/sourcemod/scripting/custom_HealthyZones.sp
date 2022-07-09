// List of Includes
#include <sourcemod>
#include <shavit>

// The code formatting rules we wish to follow
#pragma semicolon 1;
#pragma newdecls required;


// The retrievable information about the plugin itself 
public Plugin myinfo =
{
	name		= "[CS:GO] Healthy Zones",
	author		= "Manifest @Road To Glory",
	description	= "Sets the player's health to 100 when entering the start zone.",
	version		= "V. 1.0.0 [Beta]",
	url			= ""
};


// This happens when a player enters a zone on the map
public void Shavit_OnEnterZone(int client, int type, int track, int id, int entity, int data)
{
	// If the type of zone is a start zone then execute this section
	if(type == 0)
	{
		// If the player meets our criteria for validation then execute this section
		if(IsValidClient(client))
		{
			// If the player's health is currently below 100
			if(GetClientHealth(client) < 100)
			{
				// Changes the player's health to 100
				SetEntityHealth(client, 100);
			}
		}
	}
}