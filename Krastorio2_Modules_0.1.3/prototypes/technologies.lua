data:extend({
    {
        type = "technology",
        name = "dark-modules",
        icon_size = 128,
        icon = "__Krastorio2_Modules__/graphics/technology/dark-modules.png",
        effects = {},
        prerequisites = {"speed-module-3", "effectivity-module-3", "productivity-module-3", "energy-processing-circuit"},
        unit =
        {
            count = 1000,
            ingredients =
            {
                {"automation-science-pack", 1},
                {"logistic-science-pack", 1},
                {"chemical-science-pack", 1},
                {"production-science-pack", 1},
                {"utility-science-pack", 1}
            },
            time = 60
        },
        order = "i-a-a"
    },
    {
        type = "technology",
        name = "energy-processing-circuit",
        icon_size = 128,
        icon = "__Krastorio2_Modules__/graphics/technology/advanced-electronics-3.png",
        effects =
        {
            {
                type = "unlock-recipe",
                recipe = "energy-processing-circuit"
            }
        },    
        prerequisites = {"production-science-pack", "utility-science-pack", "kr-fusion-energy"},
        unit =
        {
            count = 800,
            ingredients =
            {
                {"automation-science-pack", 1},
                {"logistic-science-pack", 1},
                {"chemical-science-pack", 1},
                {"production-science-pack", 1},
                {"utility-science-pack", 1}
            },
            time = 60
        },
        upgrade = false,
        order = "a-d-d"
    },

    -- Speed modules 4, 5, 6
    {
        type = "technology",
        name = "speed-module-4",
        icon_size = 128,
        icon = "__Krastorio2_Modules__/graphics/technology/speed-module-4.png",
        effects =
        {
            {
                type = "unlock-recipe",
                recipe = "speed-module-4"
            }
        },
        prerequisites = {"dark-modules", "kr-advanced-tech-card"},
        unit =
        {
            count = 1250,
            ingredients =
            {
                {"production-science-pack", 1},
                {"utility-science-pack", 1},
                {"space-science-pack", 1},
                {"matter-tech-card", 1},
                {"advanced-tech-card", 1}
            },
            time = 60
        },
        upgrade = true,
        order = "i-c-d"
    },
    {
        type = "technology",
        name = "speed-module-5",
        icon_size = 128,
        icon = "__Krastorio2_Modules__/graphics/technology/speed-module-5.png",
        effects =
        {
            {
                type = "unlock-recipe",
                recipe = "speed-module-5"
            }
        },
        prerequisites = {"speed-module-4", "kr-singularity-tech-card"},
        unit =
        {
            count = 1800,
            ingredients =
            {
                {"production-science-pack", 1},
                {"utility-science-pack", 1},
                {"space-science-pack", 1},
                {"matter-tech-card", 1},
                {"advanced-tech-card", 1},
                {"singularity-tech-card", 1}
            },
            time = 60
        },
        upgrade = true,
        order = "i-c-e"
    },
    {
        type = "technology",
        name = "speed-module-6",
        icon_size = 128,
        icon = "__Krastorio2_Modules__/graphics/technology/speed-module-6.png",
        effects =
        {
            {
                type = "unlock-recipe",
                recipe = "speed-module-6"
            }
        },
        prerequisites = {"speed-module-5"},
        unit =
        {
            count = 3200,
            ingredients =
            {
                {"production-science-pack", 1},
                {"utility-science-pack", 1},
                {"space-science-pack", 1},
                {"matter-tech-card", 1},
                {"advanced-tech-card", 1},
                {"singularity-tech-card", 1}
            },
            time = 60
        },
        upgrade = true,
        order = "i-c-f"
    },

    -- Productivity modules 4, 5, 6
    {
        type = "technology",
        name = "productivity-module-4",
        icon_size = 128,
        icon = "__Krastorio2_Modules__/graphics/technology/productivity-module-4.png",
        effects =
        {
            {
                type = "unlock-recipe",
                recipe = "productivity-module-4"
            }
        },
        prerequisites = {"dark-modules", "kr-advanced-tech-card"},
        unit =
        {
            count = 1250,
            ingredients =
            {
                {"production-science-pack", 1},
                {"utility-science-pack", 1},
                {"space-science-pack", 1},
                {"matter-tech-card", 1},
                {"advanced-tech-card", 1}
            },
            time = 60
        },
        upgrade = true,
        order = "i-e-d"
    },
    {
        type = "technology",
        name = "productivity-module-5",
        icon_size = 128,
        icon = "__Krastorio2_Modules__/graphics/technology/productivity-module-5.png",
        effects =
        {
            {
                type = "unlock-recipe",
                recipe = "productivity-module-5"
            }
        },
        prerequisites = {"productivity-module-4", "kr-singularity-tech-card"},
        unit =
        {
            count = 1800,
            ingredients =
            {
                {"production-science-pack", 1},
                {"utility-science-pack", 1},
                {"space-science-pack", 1},
                {"matter-tech-card", 1},
                {"advanced-tech-card", 1},
                {"singularity-tech-card", 1}
            },
            time = 60
        },
        upgrade = true,
        order = "i-e-e"
    },
    {
        type = "technology",
        name = "productivity-module-6",
        icon_size = 128,
        icon = "__Krastorio2_Modules__/graphics/technology/productivity-module-6.png",
        effects =
        {
            {
                type = "unlock-recipe",
                recipe = "productivity-module-6"
            }
        },
        prerequisites = {"productivity-module-5"},
        unit =
        {
            count = 3200,
            ingredients =
            {
                {"production-science-pack", 1},
                {"utility-science-pack", 1},
                {"space-science-pack", 1},
                {"matter-tech-card", 1},
                {"advanced-tech-card", 1},
                {"singularity-tech-card", 1}
            },
            time = 60
        },
        upgrade = true,
        order = "i-e-f"
    },

    -- Efficiency modules 4, 5, 6
    {
        type = "technology",
        name = "effectivity-module-4",
        icon_size = 128,
        icon = "__Krastorio2_Modules__/graphics/technology/efficiency-module-4.png",
        effects =
        {
            {
                type = "unlock-recipe",
                recipe = "effectivity-module-4"
            }
        },
        prerequisites = {"dark-modules", "kr-advanced-tech-card"},
        unit =
        {
            count = 1250,
            ingredients =
            {
                {"production-science-pack", 1},
                {"utility-science-pack", 1},
                {"space-science-pack", 1},
                {"matter-tech-card", 1},
                {"advanced-tech-card", 1}
            },
            time = 60
        },
        upgrade = true,
        order = "i-g-d"
    },
    {
        type = "technology",
        name = "effectivity-module-5",
        icon_size = 128,
        icon = "__Krastorio2_Modules__/graphics/technology/efficiency-module-5.png",
        effects =
        {
            {
                type = "unlock-recipe",
                recipe = "effectivity-module-5"
            }
        },
        prerequisites = {"effectivity-module-4", "kr-singularity-tech-card"},
        unit =
        {
            count = 1800,
            ingredients =
            {
                {"production-science-pack", 1},
                {"utility-science-pack", 1},
                {"space-science-pack", 1},
                {"matter-tech-card", 1},
                {"advanced-tech-card", 1},
                {"singularity-tech-card", 1}
            },
            time = 60
        },
        upgrade = true,
        order = "i-g-e"
    },
    {
        type = "technology",
        name = "effectivity-module-6",
        icon_size = 128,
        icon = "__Krastorio2_Modules__/graphics/technology/efficiency-module-6.png",
        effects =
        {
            {
                type = "unlock-recipe",
                recipe = "effectivity-module-6"
            }
        },
        prerequisites = {"effectivity-module-5"},
        unit =
        {
            count = 3200,
            ingredients =
            {
                {"production-science-pack", 1},
                {"utility-science-pack", 1},
                {"space-science-pack", 1},
                {"matter-tech-card", 1},
                {"advanced-tech-card", 1},
                {"singularity-tech-card", 1}
            },
            time = 60
        },
        upgrade = true,
        order = "i-g-f"
    }
})