Config = {}

Config.defaultlang = 'en_lang'
-----------------------------------------------------

Config.keys = {
    station   = 0x760A9C6F, -- Default: 0x760A9C6F [G]
    fuel      = 0x5415BE48, -- Default: 0x5415BE48 [G]
    repair    = 0x73A8FD83, -- Default: 0x73A8FD83 [H]
    bridge    = 0x760A9C6F, -- Default: 0x760A9C6F [G]
    delivery  = 0x760A9C6F, -- Default: 0x760A9C6F [G]
    inventory = 0xD8F73058, -- Default: 0xD8F73058 [U]
}
-----------------------------------------------------

Config.webhookLink = '' -- Insert Webhook Link to Enable
Config.webhookTitle = 'BCC-Train' -- Insert Webhook Title
Config.webhookAvatar = 'https://upload.wikimedia.org/wikipedia/commons/thumb/9/90/Icon-mode-commuter-rail-default.svg/120px-Icon-mode-commuter-rail-default.svg.png' -- Insert Webhook Avatar
-----------------------------------------------------

Config.maxTrains = 5 -- Max Number of Trains a Player may Own
-----------------------------------------------------

Config.sellPrice = 0.60 -- Default: 0.60 / Sell Price is 60% of Purchase Price
-----------------------------------------------------

Config.cruiseControl = true -- Set true to Enable Cruise Control
-----------------------------------------------------

Config.fuel = {
    item = 'bagofcoal',         -- Item Name in the Database
    itemName = 'Bag of Coal',   -- Item Display Name
}
-----------------------------------------------------

Config.condition = {
    item = 'trainoil',      -- Item Name in the Database
    itemName = 'Train Oil', -- Item Display Name
}
-----------------------------------------------------

Config.bacchusBridge = {
    enabled = true,                             -- Blow Up Bacchus Bridge!
    coords = vector3(492.01, 1774.41, 182.5),   -- Coords of Location to Place Dynamite
    item = 'dynamite',                          -- Item Name in Database
    itemAmount = 2,                             -- Number of Items Needed
    timer = 30                                  -- Time in Seconds Before Explosion
}
-----------------------------------------------------

Config.despawnDist = 600 -- Maximum Distance Conductor can be from Train Before it Despawns
-----------------------------------------------------

Config.minigame = {
    focus = true,           -- Should minigame take nui focus (required)
    cursor = false,         -- Should minigame have cursor
    maxattempts = 3,        -- How many fail attempts are allowed before game over
    type = 'bar',           -- What should the bar look like. (bar, trailing)
    userandomkey = false,   -- Should the minigame generate a random key to press?
    keytopress = 'B',       -- userandomkey must be false for this to work. Static key to press
    keycode = 66,           -- The JS keycode for the keytopress
    speed = 2.8,              -- How fast the orbiter grows
    strict = true           -- if true, letting the timer run out counts as a failed attempt
}
-----------------------------------------------------

-- Time in Minutes Before Player can Start Delivery After Successful Completion
Config.cooldown = {
    delivery = 0
}
-----------------------------------------------------

Config.deliveryLocations = { -- Add as Many Locations as You Want
    { -- Heartland Oil Fields
        trainCoords = vector3(482.21, 655.46, 115.67),      -- Stop Train for Delivery
        deliveryCoords = vector3(469.27, 669.22, 117.39),   -- Player Delivery Coords
        pay = 84,                                           -- Pay for Completing Mission
        outWest = false,                                    -- Set false if This is Not in the Desert/Western Part of the Map
        radius = 10                                         -- Radius from trainCoords to Stop the Train
    },
    { -- East Hanover Camp
        trainCoords = vector3(2231.4, 657.21, 93.83),
        deliveryCoords = vector3(2226.6, 644.73, 93.33),
        pay = 140,
        outWest = false,
        radius = 10
    },
    { -- Riggs Station
        trainCoords = vector3(-1099.4, -581.83, 81.74),
        deliveryCoords = vector3(-1089.98, -569.49, 81.88),
        pay = 98,
        outWest = false,
        radius = 10
    },
    { -- Flatneck Station
        trainCoords = vector3(-336.31, -347.68, 87.69),
        deliveryCoords = vector3(-323.46, -354.95, 87.96),
        pay = 84,
        outWest = false,
        radius = 10
    },
    { -- Rhodes — Jansen Mills
        trainCoords = vector3(1071.04, -1114.28, 67.22),
        deliveryCoords = vector3(1054.02, -1123.74, 67.84),
        pay = 112,
        outWest = false,
        radius = 10
    },
    { -- Rhodes — Train Station
        trainCoords = vector3(1238.72, -1322.59, 76.37),
        deliveryCoords = vector3(1237.42, -1310.82, 76.86),
        pay = 84,
        outWest = false,
        radius = 10
    },
    { -- St. Denis — Goods Warehouse
        trainCoords = vector3(2542.21, -1482.45, 45.9),
        deliveryCoords = vector3(2564.14, -1496.34, 45.92),
        pay = 112,
        outWest = false,
        radius = 10
    },
    { -- St. Denis — M. Madison & Co.
        trainCoords = vector3(2724.56, -1461.61, 45.85),
        deliveryCoords = vector3(2733.89, -1479.6, 45.34),
        pay = 126,
        outWest = false,
        radius = 10
    },
    { -- St. Denis — Port
        trainCoords = vector3(2788.84, -1393.72, 46.01),
        deliveryCoords = vector3(2813.91, -1396.89, 45.34),
        pay = 112,
        outWest = false,
        radius = 10
    },
    { -- St. Denis — Castille Cotton
        trainCoords = vector3(2632.4, -1476.85, 45.81),
        deliveryCoords = vector3(2633.41, -1454.32, 46.31),
        pay = 126,
        outWest = false,
        radius = 10
    },
    { -- St. Denis — Gauche Bros Lumber
        trainCoords = vector3(2900.34, -1227.56, 45.84),
        deliveryCoords = vector3(2883.5, -1248.62, 45.9),
        pay = 84,
        outWest = false,
        radius = 10
    },
    { -- Van Horn Stable
        trainCoords = vector3(2901.93, 798.43, 50.65),
        deliveryCoords = vector3(2957.49, 789.05, 51.35),
        pay = 168,
        outWest = false,
        radius = 10
    },
    { -- Annesburg — Jameson Mining
        trainCoords = vector3(2943.42, 1382.19, 43.93),
        deliveryCoords = vector3(2946.38, 1379.86, 46.33),
        pay = 112,
        outWest = false,
        radius = 10
    },
    { -- Annesburg — Train Station
        trainCoords = vector3(2954.89, 1277.27, 43.88),
        deliveryCoords = vector3(2960.39, 1288.22, 43.97),
        pay = 84,
        outWest = false,
        radius = 10
    },
    { -- Annesburg — Stable
        trainCoords = vector3(2946.38, 1294.51, 44.58),
        deliveryCoords = vector3(2981.26, 1432.61, 44.63),
        pay = 98,
        outWest = false,
        radius = 10
    },
    { -- Bacchus Station
        trainCoords = vector3(576.18, 1695.65, 187.5),
        deliveryCoords = vector3(585.87, 1680.06, 187.74),
        pay = 154,
        outWest = false,
        radius = 10
    },
    { -- Wallace Station
        trainCoords = vector3(-1310.31, 402.8, 95.01),
        deliveryCoords = vector3(-1295.06, 409.75, 95.33),
        pay = 154,
        outWest = false,
        radius = 10
    },
    { -- Valentine Station
        trainCoords = vector3(-164.53, 626.5, 113.46),
        deliveryCoords = vector3(-183.53, 616.7, 113.38),
        pay = 112,
        outWest = false,
        radius = 10
    },
    { -- Emerald Station
        trainCoords = vector3(1529.71, 439.97, 90.16),
        deliveryCoords = vector3(1525.33, 434.94, 90.63),
        pay = 112,
        outWest = false,
        radius = 10
    },
-- ==============
--  WESTERN LINE
-- ==============
    { -- Armadillo
        trainCoords = vector3(-3749.8, -2635.28, -13.87),
        deliveryCoords = vector3(-3735.51, -2620.4, -13.27),
        pay = 140,
        outWest = true,
        radius = 10
    },
    { -- MacFarlane's Ranch
        trainCoords = vector3(-2492.55, -2449.78, 60.3),
        deliveryCoords = vector3(-2499.76, -2420.72, 60.55),
        pay = 112,
        outWest = true,
        radius = 10
    },
    { -- Benedict Point
        trainCoords = vector3(-5238.55, -3501.53, -21.21),
        deliveryCoords = vector3(-5225.83, -3483.7, -20.59),
        pay = 154,
        outWest = true,
        radius = 10
    },
    { -- camp near Cholla Springs
        trainCoords = vector3(-5026.56, -2545.76, -8.61),
        deliveryCoords = vector3(-5078.95, -2529.75, -11.35),
        pay = 84,
        outWest = true,
        radius = 10
    },
}
-----------------------------------------------------

Config.blipColors = {
    LIGHT_BLUE    = 'BLIP_MODIFIER_MP_COLOR_1',
    DARK_RED      = 'BLIP_MODIFIER_MP_COLOR_2',
    PURPLE        = 'BLIP_MODIFIER_MP_COLOR_3',
    ORANGE        = 'BLIP_MODIFIER_MP_COLOR_4',
    TEAL          = 'BLIP_MODIFIER_MP_COLOR_5',
    LIGHT_YELLOW  = 'BLIP_MODIFIER_MP_COLOR_6',
    PINK          = 'BLIP_MODIFIER_MP_COLOR_7',
    GREEN         = 'BLIP_MODIFIER_MP_COLOR_8',
    DARK_TEAL     = 'BLIP_MODIFIER_MP_COLOR_9',
    RED           = 'BLIP_MODIFIER_MP_COLOR_10',
    LIGHT_GREEN   = 'BLIP_MODIFIER_MP_COLOR_11',
    TEAL2         = 'BLIP_MODIFIER_MP_COLOR_12',
    BLUE          = 'BLIP_MODIFIER_MP_COLOR_13',
    DARK_PUPLE    = 'BLIP_MODIFIER_MP_COLOR_14',
    DARK_PINK     = 'BLIP_MODIFIER_MP_COLOR_15',
    DARK_DARK_RED = 'BLIP_MODIFIER_MP_COLOR_16',
    GRAY          = 'BLIP_MODIFIER_MP_COLOR_17',
    PINKISH       = 'BLIP_MODIFIER_MP_COLOR_18',
    YELLOW_GREEN  = 'BLIP_MODIFIER_MP_COLOR_19',
    DARK_GREEN    = 'BLIP_MODIFIER_MP_COLOR_20',
    BRIGHT_BLUE   = 'BLIP_MODIFIER_MP_COLOR_21',
    BRIGHT_PURPLE = 'BLIP_MODIFIER_MP_COLOR_22',
    YELLOW_ORANGE = 'BLIP_MODIFIER_MP_COLOR_23',
    BLUE2         = 'BLIP_MODIFIER_MP_COLOR_24',
    TEAL3         = 'BLIP_MODIFIER_MP_COLOR_25',
    TAN           = 'BLIP_MODIFIER_MP_COLOR_26',
    OFF_WHITE     = 'BLIP_MODIFIER_MP_COLOR_27',
    LIGHT_YELLOW2 = 'BLIP_MODIFIER_MP_COLOR_28',
    LIGHT_PINK    = 'BLIP_MODIFIER_MP_COLOR_29',
    LIGHT_RED     = 'BLIP_MODIFIER_MP_COLOR_30',
    LIGHT_YELLOW3 = 'BLIP_MODIFIER_MP_COLOR_31',
    WHITE         = 'BLIP_MODIFIER_MP_COLOR_32'
}
