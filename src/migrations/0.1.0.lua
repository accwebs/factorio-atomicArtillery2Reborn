-- undo prior technologies["atomic-bomb"].researched -> auto researching "atomic-artillery-shell" change in migration.lua
for _, force in pairs(game.forces) do
	force.reset_technology_effects()
end
