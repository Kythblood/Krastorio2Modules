-- sorts all modules into 3 seperate subgroups
if settings.startup["k2-modules-reoranize"].value == true then

    data.raw.recipe["speed-module"].subgroup = "module-subgroup-speed"
    data.raw.recipe["speed-module-2"].subgroup = "module-subgroup-speed"
    data.raw.recipe["speed-module-3"].subgroup = "module-subgroup-speed"
    data.raw.recipe["speed-module-4"].subgroup = "module-subgroup-speed"
    data.raw.recipe["speed-module-5"].subgroup = "module-subgroup-speed"
    data.raw.recipe["speed-module-6"].subgroup = "module-subgroup-speed"
    
    data.raw.recipe["effectivity-module"].subgroup = "module-subgroup-efficiency"
    data.raw.recipe["effectivity-module-2"].subgroup = "module-subgroup-efficiency"
    data.raw.recipe["effectivity-module-3"].subgroup = "module-subgroup-efficiency"
    data.raw.recipe["effectivity-module-4"].subgroup = "module-subgroup-efficiency"
    data.raw.recipe["effectivity-module-5"].subgroup = "module-subgroup-efficiency"
    data.raw.recipe["effectivity-module-6"].subgroup = "module-subgroup-efficiency"

    data.raw.recipe["productivity-module"].subgroup = "module-subgroup-productivity"
    data.raw.recipe["productivity-module-2"].subgroup = "module-subgroup-productivity"
    data.raw.recipe["productivity-module-3"].subgroup = "module-subgroup-productivity"
    data.raw.recipe["productivity-module-4"].subgroup = "module-subgroup-productivity"
    data.raw.recipe["productivity-module-5"].subgroup = "module-subgroup-productivity"
    data.raw.recipe["productivity-module-6"].subgroup = "module-subgroup-productivity"
end

-- nerf / buff productivity boost of productivity modules
    -- default: P4 = 0.16, P4 = 0.22, P5 = 0.3
if settings.startup["k2-modules-productivity-bonus"].value == "low" then
    data.raw["module"]["productivity-module-4"].effect.productivity.bonus = 0.15
    data.raw["module"]["productivity-module-5"].effect.productivity.bonus = 0.20
    data.raw["module"]["productivity-module-6"].effect.productivity.bonus = 0.25  -- 4xP6= +100%

elseif settings.startup["k2-modules-productivity-bonus"].value == "high" then
    data.raw["module"]["productivity-module-4"].effect.productivity.bonus = 0.16
    data.raw["module"]["productivity-module-5"].effect.productivity.bonus = 0.24
    data.raw["module"]["productivity-module-6"].effect.productivity.bonus = 0.36
end

-- add a pollution reduction bonus of efficiency modules if the setting is checked
if settings.startup["k2-modules-efficiency-pollution-bonus"].value == true then
    -- change E2 and E3 only if rebalance is enabled
    if settings.startup["k2-modules-efficiency-rebalance"].value == true then
        data.raw["module"]["effectivity-module-2"].effect.pollution.bonus = -0.1
        data.raw["module"]["effectivity-module-3"].effect.pollution.bonus = -0.2
    end
    data.raw["module"]["effectivity-module-4"].effect.pollution.bonus = -0.3
    data.raw["module"]["effectivity-module-5"].effect.pollution.bonus = -0.4
    data.raw["module"]["effectivity-module-6"].effect.pollution.bonus = -0.5
end

-- rebalance vanilla efficiency module 
if settings.startup["k2-modules-efficiency-rebalance"].value == true then
    data.raw["module"]["effectivity-module-2"].effect.consumption.bonus = -0.5
    data.raw["module"]["effectivity-module-3"].effect.consumption.bonus = -0.8
end

-- add a small speed boost to efficiency modules to make higher tiers of them viable options
if settings.startup["k2-modules-efficiency-speed-bonus"].value == "low" then
    data.raw["module"]["effectivity-module-4"].effect.speed.bonus = 0.1
    data.raw["module"]["effectivity-module-5"].effect.speed.bonus = 0.2
    data.raw["module"]["effectivity-module-6"].effect.speed.bonus = 0.3

elseif settings.startup["k2-modules-efficiency-speed-bonus"].value == "high" then
    if settings.startup["k2-modules-efficiency-rebalance"].value == true then
        data.raw["module"]["effectivity-module-3"].effect.speed.bonus = 0.1
    end
    data.raw["module"]["effectivity-module-4"].effect.speed.bonus = 0.2
    data.raw["module"]["effectivity-module-5"].effect.speed.bonus = 0.3
    data.raw["module"]["effectivity-module-6"].effect.speed.bonus = 0.5
end

-- decrease energy bonus of efficiency modules
if settings.startup["k2-modules-efficiency-bonus"].value == "low" then
    data.raw["module"]["effectivity-module-4"].effect.consumption.bonus = -1.2
    data.raw["module"]["effectivity-module-5"].effect.consumption.bonus = -1.8
    data.raw["module"]["effectivity-module-6"].effect.consumption.bonus = -2.6

-- increase energy bonus of efficiency modules
elseif settings.startup["k2-modules-efficiency-bonus"].value == "high" then
    if settings.startup["k2-modules-efficiency-rebalance"].value == true then
        data.raw["module"]["effectivity-module-2"].effect.consumption.bonus = -0.6
        data.raw["module"]["effectivity-module-3"].effect.consumption.bonus = -1
    end
    data.raw["module"]["effectivity-module-4"].effect.consumption.bonus = -1.8
    data.raw["module"]["effectivity-module-5"].effect.consumption.bonus = -3.0
    data.raw["module"]["effectivity-module-6"].effect.consumption.bonus = -4.8
end

-- increase crafting time and change ratio to the value of the setting instead of 5:1
if settings.startup["k2-modules-crafting-time"].value ~= 5 then
    
    local tier4_time = (5*15)/settings.startup["k2-modules-crafting-time"].value
    local tier5_time = (5*tier4_time)/settings.startup["k2-modules-crafting-time"].value
    local tier6_time = (5*tier5_time)/settings.startup["k2-modules-crafting-time"].value
    
    -- round to 1 decimal
    tier4_time = math.floor(tier4_time*10)/10
    tier5_time = math.floor(tier5_time*10)/10
    tier6_time = math.floor(tier6_time*10)/10


    data.raw.recipe["speed-module-4"].energy_required = tier4_time
    data.raw.recipe["speed-module-5"].energy_required = tier5_time
    data.raw.recipe["speed-module-6"].energy_required = tier6_time
    
    data.raw.recipe["effectivity-module-4"].energy_required = tier4_time
    data.raw.recipe["effectivity-module-5"].energy_required = tier5_time
    data.raw.recipe["effectivity-module-6"].energy_required = tier6_time

    data.raw.recipe["productivity-module-4"].energy_required = tier4_time
    data.raw.recipe["productivity-module-5"].energy_required = tier5_time
    data.raw.recipe["productivity-module-6"].energy_required = tier6_time
end

-- easy mode: double output for the same input
if settings.startup["k2-modules-recipe-difficulty"].value == "easy" then
    data.raw.recipe["energy-processing-circuit"].result_count = 4
-- hard mode: half output for the same input
elseif settings.startup["k2-modules-productivity-bonus"].value == "hard" then
    data.raw.recipe["energy-processing-circuit"].result_count = 1
end

-- change the graphics of the productivity modules
if settings.startup["k2-modules-productivity-alternative-graphics"].value == true then
    data.raw["module"]["productivity-module-4"].icon = "__Krastorio2_Modules__/graphics/icons/productivity-module-4-alt.png"
    data.raw["module"]["productivity-module-5"].icon = "__Krastorio2_Modules__/graphics/icons/productivity-module-5-alt.png"
    data.raw["module"]["productivity-module-6"].icon = "__Krastorio2_Modules__/graphics/icons/productivity-module-6-alt.png"
end

-- change the graphics of energy processing circuit
if settings.startup["k2-modules-energy-processing-circuit-color"].value == "dark-cyan" then
    data.raw["item"]["energy-processing-circuit"].icon = "__Krastorio2_Modules__/graphics/icons/energy-processing-circuit-cyan.png"
elseif settings.startup["k2-modules-energy-processing-circuit-color"].value == "dark-brown" then
    data.raw["item"]["energy-processing-circuit"].icon = "__Krastorio2_Modules__/graphics/icons/energy-processing-circuit-brown.png"
end

-- replace tritium with imersite crystals
if settings.startup["k2-modules-energy-processing-circuit-tritium"].value == "imersite-crystal" then
    data.raw.recipe["energy-processing-circuit"].ingredients = 
    {
        {"processing-unit", 4},
        {"imersite-crystal", 4},
        {type = "fluid", name = "nitric-acid", amount = 10} 
    }
    data.raw.technology["energy-processing-circuit"].prerequisites = {"production-science-pack", "utility-science-pack", "kr-quarry-minerals-extraction"}
end


--[[

-- splits the list of the settings and if the input is a valid name return a table 
function getBlacklist() 
    local list = {}
    for name in string.gmatch(settings.startup["k2-modules-recipe-multiply-capped-blacklist"].value, "([^,%s]+)") do
        if data.raw.recipe[name] then
            table.insert(list, name)
        end
    end
    return list
end

-- checks if name is on the list
function onBlacklist(name, list)
    for _,listName in pairs(list) do
        if listName == name then
            log(name .. " is on the blacklist") 
            return true
        end
    end
    return false
end

]]--


log("Start capped recipes fix")

if settings.startup["k2-modules-recipe-multiply-capped"].value == true then

    -- local recipeCappedBlacklist = getBlacklist()
    local cappedRecipes = {"iron-gear-wheel", "iron-stick", "copper-cable", "electronic-circuit"}    

--[[

    -- searches for all recipes that potentially can reach the speed cap
    for _,recipe in pairs(data.raw["recipe"]) do
        if recipe.subgroup == "intermediate-product" or data.raw.item[recipe.result].subgroup == "intermediate-product" or data.raw.item[recipe.main_product].subgroup == "intermediate-product" then
            if recipe.energy_required == nil or recipe.energy_required <= 4 then
                if not onBlacklist(recipe.name, recipeCappedBlacklist) then
                    table.insert(cappedRecipes, recipe.name)
                end
            end
        elseif recipe.subgroup == "fluid-recipes" or data.raw.item[recipe.result].subgroup == "fluid-recipes" or data.raw.item[recipe.main_product].subgroup == "fluid-recipes" or
               recipe.subgroup == "raw-material" or data.raw.item[recipe.result].subgroup == "raw-material" or data.raw.item[recipe.main_product].subgroup == "raw-material" then
            if recipe.energy_required == nil or recipe.energy_required <= 7 then
                if not onBlacklist(recipe.name, recipeCappedBlacklist) then
                    table.insert(cappedRecipes, recipe.name)
                end
            end
        end
    end

    log("cappedRecipes list:\n" .. serpent.block(cappedRecipes))




    -- and multiply their numbers by 10
    for _,name in pairs(cappedRecipes) do
        
        local recipe = data.raw.recipe[name]
        log("recipe " .. name .. "before modify:\n" .. serpent.block(recipe))

        for _,ingredient in pairs(recipe.ingredients) do
            ingredient.amount = ingredient.amount * 10
        end
        if recipe.result then 
            recipe.result_count = (recipe.result_count or 1) * 10
        else if recipe.results then
            for _,result in pairs(recipe.results) do
                result.amount = result.amount * 10
            end
        end
        recipe.energy_required = (recipe.energy_required or 0.5) * 10

        log("recipe " .. name .. "after modify:\n" .. serpent.block(recipe))
    end
]]--

    -- and multiply their numbers by 10
    for _,name in pairs(cappedRecipes) do
        
        if data.raw.recipe[name] then
            log("recipe " .. name .. " before modify:\n" .. serpent.block(data.raw.recipe[name]))
            
            for _,ingredient in pairs(data.raw.recipe[name].ingredients) do
                ingredient.amount = ingredient.amount * 10
            end
            data.raw.recipe[name].energy_required = (data.raw.recipe[name].energy_required or 0.5) * 10

            log("recipe " .. name .. " after modify:\n" .. serpent.block(data.raw.recipe[name]))
        else
            log("recipe " .. name .. " does not exist or some other error")
    end

end