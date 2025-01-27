-- data.lua

-- Function to modify the yields of ores and stone
local function modify_smelting_recipes()
    -- List of ores and stone to modify
    local resources = {
        "iron-ore",
        "copper-ore",
        "stone"
    }

    -- Yield multiplier
    local yield_multiplier = 100


    for _, resource in pairs(resources) do
        local product
        if resource == "stone" then
            product = "stone-brick"
        else
            product = resource:gsub("-ore", "-plate")
        end

        local recipe = data.raw.recipe[product]

        if recipe then
            recipe.ingredients = {
                {type = "item", name = resource, amount = 1}
            }
            recipe.results = {
                {type = "item", name = product, amount = yield_multiplier}
            }
        end
    end
end

-- Function to modify the yields of oil
local function modify_oil_processing()
    -- List of oil processing recipes to modify
    local oil_recipes = {
        "basic-oil-processing",
        "advanced-oil-processing",
        "coal-liquefaction"
    }

    -- Yield multiplier
    local yield_multiplier = 10

    for _, recipe_name in pairs(oil_recipes) do
        local recipe = data.raw.recipe[recipe_name]

        if recipe then
            -- Modifier les résultats
            for _, result in pairs(recipe.results) do
                if result.amount then
                    result.amount = result.amount * yield_multiplier
                elseif result.amount_min and result.amount_max then
                    result.amount_min = result.amount_min * yield_multiplier
                    result.amount_max = result.amount_max * yield_multiplier
                end
            end
        end
    end
end

modify_smelting_recipes()
modify_oil_processing()