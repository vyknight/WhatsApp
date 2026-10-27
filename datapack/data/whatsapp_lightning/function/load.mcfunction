# Objectives persist with the world. Re-adding them during /reload can print
# "already exists" messages, but keeps first-time installation automatic.
scoreboard objectives add szs_phone_use minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add szs_cooldown dummy
scoreboard objectives add szs_handled dummy

tellraw @a [{"text":"WhatsApp Lightning loaded. Run ","color":"green"},{"text":"/function whatsapp_lightning:give_items","color":"yellow"},{"text":" to receive both items.","color":"green"}]
