-- Speed modules 4, 5, 6

local speed_module_4 = table.deepcopy(data.raw["module"]["speed-module-3"])
speed_module_4.name = "speed-module-4"
speed_module_4.icon = "__Krastorio2_Modules__/graphics/icons/speed-module-4.png"
speed_module_4.tier = 4
speed_module_4.order = "a[speed]-d[speed-module-4]"
speed_module_4.effect = 
{ 
    speed = {bonus = 0.7}, 
    consumption = {bonus = 0.9}
}
speed_module_4.beacon_tint.primary = {r = 65, g = 65, b = 65}
    
local speed_module_5 = table.deepcopy(data.raw["module"]["speed-module-3"])
speed_module_5.name = "speed-module-5"
speed_module_5.icon = "__Krastorio2_Modules__/graphics/icons/speed-module-5.png"
speed_module_5.tier = 5
speed_module_5.order = "a[speed]-d[speed-module-5]"
speed_module_5.effect = 
{ 
    speed = {bonus = 0.9}, 
    consumption = {bonus = 1.2}
}
speed_module_5.beacon_tint.primary = {r = 65, g = 65, b = 65}

local speed_module_6 = table.deepcopy(data.raw["module"]["speed-module-3"])
speed_module_6.name = "speed-module-6"
speed_module_6.icon = "__Krastorio2_Modules__/graphics/icons/speed-module-6.png"
speed_module_6.tier = 6
speed_module_6.order = "a[speed]-d[speed-module-6]"
speed_module_6.effect = 
{ 
    speed = {bonus = 1.0}, 
    consumption = {bonus = 1.6}
}
speed_module_6.beacon_tint.primary = {r = 65, g = 65, b = 65}

data:extend({
    
    -- Items
    speed_module_4,
    speed_module_5,
    speed_module_6,

    -- Recipes 
    -- to-do: easy and hard version
    {
        type = "recipe",
        name = "speed-module-4",
        energy_required = 15,
        enabled = false,
        ingredients = {
            {"speed-module-3", 5},
            {"processing-unit", 5},
            {"energy-processing-circuit", 5}
        },
        result = "speed-module-4"
    },
    {
        type = "recipe",
        name = "speed-module-5",
        energy_required = 15,
        enabled = false,
        ingredients = {
            {"speed-module-4", 5},
            {"energy-processing-circuit", 5},
            {"ai-core", 5}
        },
        result = "speed-module-5"
    },
    {
        type = "recipe",
        name = "speed-module-6",
        energy_required = 15,
        enabled = false,
        ingredients = {
            {"speed-module-5", 5},
            {"energy-processing-circuit", 5},
            {"charged-matter-stabilizer", 5}
        },
        result = "speed-module-6"
    }
})