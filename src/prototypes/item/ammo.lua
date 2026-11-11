local item_sounds = require("__base__.prototypes.item_sounds")

data:extend(
{
	{
		type = "ammo",
		ammo_category = "artillery-shell",
		name = "atomic-artillery-shell",
		icon = "__AtomicArtillery2Reborn__/graphics/icons/atomic-artillery-shell.png",
		icon_size = 64,
		ammo_type =
		{
			target_type = "position",
			action =
			{
				type = "direct",
				action_delivery =
				{
					type = "artillery",
					projectile = "atomic-artillery-projectile",
					starting_speed = 1,
					direction_deviation = 0,
					range_deviation = 0,
					source_effects =
					{
						type = "create-explosion",
						entity_name = "artillery-cannon-muzzle-flash"
					},
				}
			},
		},
		subgroup = "ammo",
		order = "d[explosive-cannon-shell]-d[artillery]-a[atomic]",
		stack_size = 1,
		weight = 300 * kg, -- 3 per rocket (1000 kg lift)
		inventory_move_sound = item_sounds.artillery_large_inventory_move,
		pick_sound = item_sounds.artillery_large_inventory_pickup,
		drop_sound = item_sounds.artillery_large_inventory_move
	}
}
)
