# Give every online player initialized temporary scores.
scoreboard players add @a szs_cooldown 0
scoreboard players add @a szs_handled 0

# Count cooldowns down once per game tick.
scoreboard players remove @a[scores={szs_cooldown=1..}] szs_cooldown 1

# Dispatch each carrot-on-a-stick right-click according to the item's custom ID.
# Main hand has priority if a player somehow holds one custom phone in each hand.
scoreboard players set @a[scores={szs_phone_use=1..}] szs_handled 0

execute as @a[scores={szs_phone_use=1..,szs_cooldown=0,szs_handled=0}] at @s if items entity @s weapon.mainhand minecraft:carrot_on_a_stick[minecraft:custom_data~{whatsapp_lightning:{item:"whatsapp"}}] run function whatsapp_lightning:use_whatsapp
execute as @a[scores={szs_phone_use=1..,szs_cooldown=0,szs_handled=0}] at @s if items entity @s weapon.mainhand minecraft:carrot_on_a_stick[minecraft:custom_data~{whatsapp_lightning:{item:"iphone"}}] run function whatsapp_lightning:use_iphone

execute as @a[scores={szs_phone_use=1..,szs_cooldown=0,szs_handled=0}] at @s if items entity @s weapon.offhand minecraft:carrot_on_a_stick[minecraft:custom_data~{whatsapp_lightning:{item:"whatsapp"}}] run function whatsapp_lightning:use_whatsapp
execute as @a[scores={szs_phone_use=1..,szs_cooldown=0,szs_handled=0}] at @s if items entity @s weapon.offhand minecraft:carrot_on_a_stick[minecraft:custom_data~{whatsapp_lightning:{item:"iphone"}}] run function whatsapp_lightning:use_iphone

# Consume the detection score, including clicks made while cooling down.
scoreboard players set @a[scores={szs_phone_use=1..}] szs_phone_use 0
