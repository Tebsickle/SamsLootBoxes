tellraw @a "block placed"
execute align xyz positioned ~0.5 ~0.5 ~0.5 run summon marker ~ ~ ~ {Tags:["placed_block"]}
advancement revoke @s only samslootboxes:block_place

execute align xyz positioned ~0.5 ~0.5 ~0.5 run summon lightning_bolt ~ ~ ~


# THIS FUNCTION IS BROKEN. THE MARKER IS CREATED AT THE PLAYER'S POSITION.
# TODO: RAYCASTING MUST BE DONE TO MARK PROPERLY.