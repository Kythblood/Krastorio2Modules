-- Productivity modules 4, 5, 6

local productivity_module_4 = table.deepcopy(data.raw["module"]["productivity-module-3"])
productivity_module_4.name = "productivity-module-4"
productivity_module_4.icon = "__Krastorio2_Modules__/graphics/icons/productivity-module-4.png"
productivity_module_4.tier = 4
productivity_module_4.order = "c[productivity]-d[productivity-module-4]"
productivity_module_4.effect = 
{ 
    productivity = {bonus = 0.16}, 
    consumption = {bonus = 1.2}, 
    speed = {bonus = -0.2}, 
    pollution = {bonus = 0.18}
}

local productivity_module_5 = table.deepcopy(data.raw["module"]["productivity-module-3"])
productivity_module_5.name = "productivity-module-5"
productivity_module_5.icon = "__Krastorio2_Modules__/graphics/icons/productivity-module-5.png"
productivity_module_5.tier = 5
productivity_module_5.order = "c[productivity]-d[productivity-module-5]"
productivity_module_5.effect =
{ 
    productivity = {bonus = 0.22}, 
    consumption = {bonus = 1.6}, 
    speed = {bonus = -0.2}, 
    pollution = {bonus = 0.26}
}

local productivity_module_6 = table.deepcopy(data.raw["module"]["productivity-module-3"])
productivity_module_6.name = "productivity-module-6"
productivity_module_6.icon = "__Krastorio2_Modules__/graphics/icons/productivity-module-6.png"
productivity_module_6.tier = 6
productivity_module_6.order = "c[productivity]-d[productivity-module-6]"
productivity_module_6.effect = 
{ 
    productivity = {bonus = 0.3}, 
    consumption = {bonus = 2.0}, 
    speed = {bonus = -0.2}, 
    pollution = {bonus = 0.36}
}

data:extend({  
     
    -- Items
    productivity_module_4,
    productivity_module_5,
    productivity_module_6,

    -- Recipes 
    -- to-do: easy and hard version
    {
        type = "recipe",
        name = "productivity-module-4",
        energy_required = 15,
        enabled = false,
        ingredients = {
            {"productivity-module-3", 5},
            {"processing-unit", 5},
            {"energy-processing-circuit", 5}
        },
        result = "productivity-module-4"
    },
    {
        type = "recipe",
        name = "productivity-module-5",
        energy_required = 15,
        enabled = false,
        ingredients = {
            {"productivity-module-4", 5},
            {"energy-processing-circuit", 5},
            {"ai-core", 5}
        },
        result = "productivity-module-5"
    },
    {
        type = "recipe",
        name = "productivity-module-6",
        energy_required = 15,
        enabled = false,
        ingredients = {
            {"productivity-module-5", 5},
            {"energy-processing-circuit", 5},
            {"charged-matter-stabilizer", 5}
        },
        result = "productivity-module-6"
    }
})