-- assembling maschine max beaconed: 141 (speed) x 1.44 (max prod bonus) / 60 (ticks/second) = 3.384 ~ 4 (every recipe under 4 seconds crafting time has to be modified because it can reach the cap)
-- chemical plant max beaconed: 265.6 (speed) x 1.44 (max prod bonus) / 60 (ticks/second) = 6.374 ~ 7 (every recipe under 7 seconds crafting time has to be modified because it can reach the cap)

if settings.startup["k2-modules-recipe-multiply-capped"].value == true then

    log("Start capped recipes fix")

    local cappedRecipes = {
        -- Chemical plant recipes
        "sulfuric-acid",
        "heavy-oil-cracking",
        "light-oil-cracking",
        "solid-fuel-from-heavy-oil",
        "solid-fuel-from-light-oil",
        "solid-fuel-from-petroleum-gas",
        "lubricant",
        "ammonia",
        "kr-water",
        "nitric-acid",
        "hydrogen-chlorine",
        
        "enriched-iron",
        "enriched-copper",
        "enriched-rare-metals",
        "plastic-bar",
        "sulfur",
        "lithium-chloride",
        "battery",
        "lithium-sulfur-battery",
        "explosives",

        --assembling maschine recipes
        "copper-cable",
        "iron-stick",
        "iron-beam",
        "steel-beam",
        "imersium-beam",
        "iron-gear-wheel",
        "steel-gear-wheel",
        "imersium-gear-wheel",
        "inserter-parts",
        "electronic-components",
        "automation-core",
        "electronic-circuit",
        "advanced-circuit",
        "blank-tech-card"
    }
    
    -- get whitelist and add all valid values to the table of capped recipes
    if string.len(settings.startup["k2-modules-recipe-multiply-capped-whitelist"].value) > 0 then
        local whitelist = {}
        for name in string.gmatch(settings.startup["k2-modules-recipe-multiply-capped-whitelist"].value, "([^,%s]+)") do
            if data.raw.recipe[name] then
                table.insert(whitelist, name)
            end
        end
        for _,name in pairs(whitelist) do
            if data.raw.recipe[name] then 
                table.insert(cappedRecipes, name)
                log("Added the recipe with the name " .. name .. " to the table of capped recipes")
            end
        end
        log("Capped recipes after whitelist: " .. serpent.block(cappedRecipes))
    end

    -- get blacklist and remove values from the table of capped recipes
    if string.len(settings.startup["k2-modules-recipe-multiply-capped-blacklist"].value) > 0 then
        local blacklist = {}
        for name in string.gmatch(settings.startup["k2-modules-recipe-multiply-capped-blacklist"].value, "([^,%s]+)") do
            if data.raw.recipe[name] then
                table.insert(blacklist, name)
            end
        end
        for _,nameToBlacklist in pairs(blacklist) do 
            for pos,name in pairs(cappedRecipes) do 
                if name == nameToBlacklist then
                    table.remove(cappedRecipes, pos)
                    log("Removed the recipe with the name " .. name .. " from the table of capped recipes")
                else
                    log("The recipe with the name " .. name .. " does not match any name from the table of capped recipes")
                end
            end
        end
        log("Capped recipes after blacklist: " .. serpent.block(cappedRecipes))
    end

    -- multiply the numbers of all recipes on the list by 10
    for _,name in pairs(cappedRecipes) do
        if data.raw.recipe[name] then

            local recipe = data.raw.recipe[name]
            log("recipe " .. name .. " before modify:\n" .. serpent.block(recipe))
            
            -- multiply the input items
            if recipe.ingredients then
                for _,ingredient in pairs(recipe.ingredients) do
                    if ingredient.amount then
                        ingredient.amount = ingredient.amount * 10
                    else
                        ingredient[2] = ingredient[2] * 10
                    end
                end
            else
                if recipe.normal then
                    for _,ingredient in pairs(recipe.normal.ingredients) do
                        if ingredient.amount then
                            ingredient.amount = ingredient.amount * 10
                        else
                            ingredient[2] = ingredient[2] * 10
                        end
                    end
                end
                if recipe.expensive then
                    for _,ingredient in pairs(recipe.expensive.ingredients) do
                        if ingredient.amount then
                            ingredient.amount = ingredient.amount * 10
                        else
                            ingredient[2] = ingredient[2] * 10
                        end
                    end
                end
            end

            -- multiply the output items
            if recipe.result then 
                recipe.result_count = (recipe.result_count or 1) * 10
            elseif recipe.results then
                for _,result in pairs(recipe.results) do
                    result.amount = result.amount * 10
                end
            else
                if recipe.normal then    
                    if recipe.normal.result then 
                        recipe.normal.result_count = (recipe.normal.result_count or 1) * 10
                    elseif recipe.normal.results then
                        for _,result in pairs(recipe.normal.results) do
                            result.amount = result.amount * 10
                        end
                    end
                end
                if recipe.expensive then    
                    if recipe.expensive.result then 
                        recipe.expensive.result_count = (recipe.expensive.result_count or 1) * 10
                    elseif recipe.expensive.results then
                        for _,result in pairs(recipe.expensive.results) do
                            result.amount = result.amount * 10
                        end
                    end
                end
            end

            -- multiply the crafting time
            if recipe.normal then
                recipe.normal.energy_required = (recipe.normal.energy_required or 0.5) * 10
            elseif recipe.expensive then
                recipe.expensive.energy_required = (recipe.expensive.energy_required or 0.5) * 10
            else
                recipe.energy_required = (recipe.energy_required or 0.5) * 10
            end

            log("recipe " .. name .. " after modify:\n" .. serpent.block(recipe))
        else
            log("recipe " .. name .. " does not exist or some other error with cappedRecipes")
        end
    end
end