-- Add speed and pollution to efficiency module bonuses
data.raw["module"]["effectivity-module"].effect = 
{
    speed = {bonus = 0}, 
    consumption = {bonus = -0.3}, 
    pollution = {bonus = 0}
}
data.raw["module"]["effectivity-module-2"].effect = 
{
    speed = {bonus = 0}, 
    consumption = {bonus = -0.4}, 
    pollution = {bonus = 0}
}
data.raw["module"]["effectivity-module-3"].effect = 
{
    speed = {bonus = 0}, 
    consumption = {bonus = -0.5}, 
    pollution = {bonus = 0}
}

-- Efficiency modules 4, 5, 6
local efficiency_module_4 = table.deepcopy(data.raw["module"]["effectivity-module-3"])
efficiency_module_4.name = "effectivity-module-4"
efficiency_module_4.icon = "__Krastorio2_Modules__/graphics/icons/efficiency-module-4.png"
efficiency_module_4.tier = 4
efficiency_module_4.order = "c[effectivity]-d[effectivity-module-4]"
efficiency_module_4.effect = 
{ 
    speed = {bonus = 0}, 
    consumption = {bonus = -1.6}, 
    pollution = {bonus = 0}
}
efficiency_module_4.beacon_tint.primary = {r = 65, g = 65, b = 65}

local efficiency_module_5 = table.deepcopy(data.raw["module"]["effectivity-module-3"])
efficiency_module_5.name = "effectivity-module-5"
efficiency_module_5.icon = "__Krastorio2_Modules__/graphics/icons/efficiency-module-5.png"
efficiency_module_5.tier = 5
efficiency_module_5.order = "c[effectivity]-d[effectivity-module-5]"
efficiency_module_5.effect = 
{
    speed = {bonus = 0}, 
    consumption = {bonus = -2.4}, 
    pollution = {bonus = 0}
}
efficiency_module_5.beacon_tint.primary = {r = 65, g = 65, b = 65}

local efficiency_module_6 = table.deepcopy(data.raw["module"]["effectivity-module-3"])
efficiency_module_6.name = "effectivity-module-6"
efficiency_module_6.icon = "__Krastorio2_Modules__/graphics/icons/efficiency-module-6.png"
efficiency_module_6.tier = 6
efficiency_module_6.order = "c[effectivity]-d[effectivity-module-6]"
efficiency_module_6.effect = 
{ 
    speed = {bonus = 0}, 
    consumption = {bonus = -3.4}, 
    pollution = {bonus = 0}
}
efficiency_module_6.beacon_tint.primary = {r = 65, g = 65, b = 65}

data:extend({
    
    -- Items
    efficiency_module_4,
    efficiency_module_5,
    efficiency_module_6,
    
    -- Recipes 
    -- to-do: easy and hard version
    {
        type = "recipe",
        name = "effectivity-module-4",
        energy_required = 15,
        enabled = false,
        ingredients = {
            {"effectivity-module-3", 5},
            {"processing-unit", 5},
            {"energy-processing-circuit", 5}
        },
        result = "effectivity-module-4"
    },
    {
        type = "recipe",
        name = "effectivity-module-5",
        energy_required = 15,
        enabled = false,
        ingredients = {
            {"effectivity-module-4", 5},
            {"energy-processing-circuit", 5},
            {"ai-core", 5}
        },
        result = "effectivity-module-5"
    },
    {
        type = "recipe",
        name = "effectivity-module-6",
        energy_required = 15,
        enabled = false,
        ingredients = {
            {"effectivity-module-5", 5},
            {"energy-processing-circuit", 5},
            {"charged-matter-stabilizer", 5}
        },
        result = "effectivity-module-6"
    }
})