# /broken is a large composition of functions.
# checkbrokenstatuses.mcfunction is the first to run when a block break is detected.
# It routes the logic to the blockbroken.mcfunction of the broken block's folder.
# The blockbroken.mcfunction routes the logic to recurse.mcfunction, then spawnchest.mcfunction afterward.

# checkbrokenstatuses.mcfunction

# This function checks if any of the tracked blocks have been broken. Runs the next function if so.
# Tracked blocks can be found in load.mcfunction where the scoreboard objectives are created.

execute if score @s stoneBroken matches 1.. run function samslootboxes:broken/stone/blockbroken
execute if score @s deepslateBroken matches 1.. run function samslootboxes:broken/deepslate/blockbroken
execute if score @s netherrackBroken matches 1.. run function samslootboxes:broken/netherrack/blockbroken
execute if score @s endstoneBroken matches 1.. run function samslootboxes:broken/endstone/blockbroken