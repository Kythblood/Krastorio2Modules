-- get the selected color of the settings
local circuit_color
if settings.startup["k2-modules-energy-processing-circuit-color"] then
    circuit_color = settings.startup["k2-modules-energy-processing-circuit-color"].value
else
    circuit_color = "purple"
end

data:extend(
{
    {
        type = "item",
        name = "energy-processing-circuit",
        icon = "__Krastorio2_Modules__/graphics/icons/energy-processing-circuit/energy-processing-circuit-" .. circuit_color .. ".png",
        icon_size = 64, icon_mipmaps = 4,
        subgroup = "intermediate-product",
        order = "gg[processing-unit]",
        stack_size = 200
    },
    {
        type = "recipe",
        name = "energy-processing-circuit",
        category = "crafting-with-fluid",
        energy_required = 24,
        enabled = false,
        ingredients = 
        {
            {"processing-unit", 4},
            {"tritium", 2},
            {type = "fluid", name = "nitric-acid", amount = 10}
        },
        result_count = 2,
        result = "energy-processing-circuit"
    }
})