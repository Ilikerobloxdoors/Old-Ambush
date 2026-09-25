local Creator = loadstring(game:HttpGet("https://pastebin.com/raw/0fSnvfGt"))()

-- Create entity
local entity = Creator.createEntity({
    CustomName = "Old Ambush",

    Model = "https://raw.githubusercontent.com/Ilikerobloxdoors/Old-Ambush/main/Old%20Ambush.rbxm",

    Speed = 230,
    DelayTime = 4,
    HeightOffset = 0,

    CanKill = true,
    KillRange = 40,

    BreakLights = true,
    BackwardsMovement = false,

    FlickerLights = {
        true,
        2.3,
    },

    Cycles = {
        Min = 3,
        Max = 6,
        WaitTime = 0.5,
    },

    CamShake = {
        true,
        {7, 40, 0.2, 1.1},
        100,
    },

    Jumpscare = {
        true,
        {
            Image1 = "rbxassetid://10921104240",
            Image2 = "rbxassetid://10921104240",

            Shake = true,

            Sound1 = {
                104513172698892,
                { Volume = 0.5 },
            },

            Sound2 = {
                104513172698892,
                { Volume = 0.5 },
            },

            Flashing = {
                true,
                Color3.fromRGB(255, 0, 0),
            },

            Tease = {
                false,
                Min = 4,
                Max = 4,
            },
        },
    },

    CustomDialog = {
        "You died to Old Ambush..."
    },
})

-----[[ Advanced ]]-----

entity.Debug.OnEntitySpawned = function(entityTable)
    print("Old Ambush has spawned:", entityTable.Model)
end

entity.Debug.OnEntityDespawned = function(entityTable)
    print("Old Ambush has despawned:", entityTable.Model)
end

entity.Debug.OnEntityStartMoving = function(entityTable)
    print("Old Ambush has started moving:", entityTable.Model)
end

entity.Debug.OnEntityFinishedRebound = function(entityTable)
    print("Old Ambush has finished rebound:", entityTable.Model)
end

entity.Debug.OnEntityEnteredRoom = function(entityTable, room)
    print("Old Ambush has entered room:", room)
end

entity.Debug.OnLookAtEntity = function(entityTable)
    print("Player has looked at Old Ambush:", entityTable.Model)
end

entity.Debug.OnDeath = function(entityTable)
    warn("Player has died to Old Ambush.")
end

------------------------

-- Run the created entity
Creator.runEntity(entity)
