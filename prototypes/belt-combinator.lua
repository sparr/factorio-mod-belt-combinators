data:extend( {
  {
    type = "item",
    name = "belt-combinator",
    icon = "__belt-combinators__/graphics/icons/belt-combinator.png",
    flags = {"goes-to-quickbar"},
    subgroup = "circuit-network",
    place_result="belt-combinator",
    order = "b[combinators]-d[belt-combinator]",
    stack_size = 50,
  },
  {
    type = "recipe",
    name = "belt-combinator",
    enabled = "false",
    ingredients =
    {
      {"copper-cable", 5},
      {"electronic-circuit",5},
      {"advanced-circuit", 1},
    },
    result="belt-combinator",
  },
  {
    type = "constant-combinator",
    name = "belt-combinator",
    icon = "__belt-combinators__/graphics/icons/belt-combinator.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "belt-combinator"},
    max_health = 50,
    corpse = "small-remnants",

    collision_box = {{-0.35, -0.35}, {0.35, 0.35}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},

    item_slot_count = 15,

    sprite =
    {
      filename = "__belt-combinators__/graphics/entity/belt-combinator.png",
      x = 61,
      width = 61,
      height = 50,
      shift = {0.078125, 0.15625},
    },
    circuit_wire_connection_point =
    {
      shadow =
      {
        red = {0.828125, 0.328125},
        green = {0.828125, -0.078125},
      },
      wire =
      {
        red = {0.515625, -0.078125},
        green = {0.515625, -0.484375},
      }
    },
    circuit_wire_max_distance = 7.5
  },
})

table.insert(
  data.raw["technology"]["circuit-network"].effects,
  { type = "unlock-recipe", recipe = "belt-combinator" }
)