-- new recipe for electronic-circuit
data.raw.recipe["electronic-circuit"].ingredients = {
    {type = "item", name = "iron-plate", amount = 1},
    {type = "item", name = "copper-plate", amount = 1}
}
data.raw.recipe["electronic-circuit"].results = {
    {type = "item", name = "electronic-circuit", amount = 20}
}

-- new recipe for advanced-circuit
data.raw.recipe["advanced-circuit"].ingredients = {
    {type = "item", name = "electronic-circuit", amount = 2},
    {type = "item", name = "copper-cable", amount = 2},
    {type = "item", name = "plastic-bar", amount = 1}
}
data.raw.recipe["advanced-circuit"].results = {
    {type = "item", name = "advanced-circuit", amount = 20}
}

-- new recipe for processing-unit
data.raw.recipe["processing-unit"].ingredients = {
    {type = "item", name = "electronic-circuit", amount = 4},
    {type = "item", name = "advanced-circuit", amount = 2},
    {type = "fluid", name = "sulfuric-acid", amount = 2}
}
data.raw.recipe["processing-unit"].results = {
    {type = "item", name = "processing-unit", amount = 20}
}