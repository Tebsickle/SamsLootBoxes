# Clean up
scoreboard objectives remove chestRandom
scoreboard objectives remove chestSpawned
scoreboard objectives remove raycastDist

scoreboard objectives remove stoneBroken
scoreboard objectives remove deepslateBroken
scoreboard objectives remove netherrackBroken
scoreboard objectives remove endstoneBroken

advancement revoke @a only samslootboxes:block_place


# Setup -- BLOCKS TO TRACK CAN BE FOUND HERE.
scoreboard objectives add chestRandom dummy
scoreboard objectives add chestSpawned dummy
scoreboard objectives add raycastDist dummy

scoreboard objectives add stoneBroken minecraft.mined:minecraft.stone
scoreboard objectives add deepslateBroken minecraft.mined:minecraft.deepslate
scoreboard objectives add netherrackBroken minecraft.mined:minecraft.netherrack
scoreboard objectives add endstoneBroken minecraft.mined:minecraft.end_stone

tellraw @a "reloaded samslootboxes"