# /broken is a large composition of functions.
# checkbrokenstatuses.mcfunction is the first to run when a block break is detected.
# It routes the logic to the blockbroken.mcfunction of the broken block's folder.
# The blockbroken.mcfunction routes the logic to recurse.mcfunction, then spawnchest.mcfunction afterward.

# recurse.mcfunction

# Executes as the player, at a recursively moved position along their look vector.

# Stop if chest spawned already or exceeds max distance.
execute if score @s chestSpawned matches 1 run return 1
execute if score @s raycastDist matches 40.. run execute positioned ^ ^ ^-0.15 run function samslootboxes:broken/spawnchest

# If solid block found, spawn chest in front of it (relative to the player's look vector)
execute unless block ~ ~ ~ minecraft:air run execute positioned ^ ^ ^-0.15 run function samslootboxes:broken/spawnchest

# Otherwise recurse further.
scoreboard players add @s raycastDist 1
execute positioned ^ ^ ^.1 run function samslootboxes:broken/recurse