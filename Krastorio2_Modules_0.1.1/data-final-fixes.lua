-- allow productivity for Energy processing circuits
if data.raw.recipe["energy-processing-circuit"] then
    for _, prototype in pairs(data.raw["module"]) do
        if prototype.limitation and string.find(prototype.name, "productivity", 1, true) then
            table.insert(prototype.limitation, "energy-processing-circuit")
        end
    end
end

require("prototypes.recipes-fix")