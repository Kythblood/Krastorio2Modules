data:extend({
    -- in case of incompatibility with other mods that modify the recipes of modules besides Krastorio 2, try to disable this setting
    {
        type = "bool-setting",
        name = "k2-modules-reoranize",
        setting_type = "startup",
        default_value = true,
        order = "a"
    },
    {
        type = "bool-setting",
        name = "k2-modules-efficiency-rebalance",
        setting_type = "startup",
        default_value = true,
        order = "b"
    },
    {
        type = "bool-setting",
        name = "k2-modules-efficiency-pollution-bonus",
        setting_type = "startup",
        default_value = true,
        order = "c"
    },
    {
        type = "string-setting",
        name = "k2-modules-efficiency-speed-bonus",
        setting_type = "startup",
        default_value = "low",
        allowed_values = {"none", "low", "high"},
        order = "d"
    },
    {
        type = "string-setting",
        name = "k2-modules-efficiency-bonus",
        setting_type = "startup",
        default_value = "default",
        allowed_values = {"low", "default", "high"},
        order = "e"
    },
    {
        type = "string-setting",
        name = "k2-modules-productivity-bonus",
        setting_type = "startup",
        default_value = "default",
        allowed_values = {"low", "default", "high"},
        order = "f"
    },
    {
        type = "bool-setting",
        name = "k2-modules-productivity-alternative-graphics",
        setting_type = "startup",
        default_value = false,
        order = "g"
    },
    {
        type = "string-setting",
        name = "k2-modules-energy-processing-circuit-tritium",
        setting_type = "startup",
        default_value = "tritium",
        allowed_values = {"tritium", "imersite-crystal"},
        order = "h"
    },
    {
        type = "string-setting",
        name = "k2-modules-energy-processing-circuit-color",
        setting_type = "startup",
        default_value = "purple",
        allowed_values = {"brown", "cyan", "grey", "orange", "purple", "white", "yellow"},
        order = "i"
    },
    {
        type = "string-setting",
        name = "k2-modules-crafting-time",
        setting_type = "startup",
        default_value = 5,
        allowed_values = {
            1,
            2, 
            3,
            4,
            5,
            6,
            7,
            8,
            9,
            10
        },
        order = "j"
    },
    {
        type = "string-setting",
        name = "k2-modules-recipe-difficulty",
        setting_type = "startup",
        default_value = "default",
        allowed_values = {"easy", "default", "hard"},
        order = "k"
    },
    {
        type = "bool-setting",
        name = "k2-modules-recipe-multiply-capped",
        setting_type = "startup",
        default_value = false,
        order = "l"
    },
    {
        type = "string-setting",
        name = "k2-modules-recipe-multiply-capped-whitelist",
        setting_type = "startup",
        default_value = "",
        allow_blank = true,
        order = "m"
    },
    {
        type = "string-setting",
        name = "k2-modules-recipe-multiply-capped-blacklist",
        setting_type = "startup",
        default_value = "",
        allow_blank = true,
        order = "n"
    }
})