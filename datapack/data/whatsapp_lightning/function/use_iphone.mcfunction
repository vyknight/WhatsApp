# Spawn a charged creeper at the player who used iPhone.
summon minecraft:creeper ~ ~ ~ {powered:1b}
scoreboard players set @s szs_cooldown 20
scoreboard players set @s szs_handled 1
