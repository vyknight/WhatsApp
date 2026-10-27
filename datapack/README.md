# WhatsApp Lightning datapack

Target: Minecraft Java Edition 26.3 (data-pack format 121.0).

## Install

Copy the `datapack` folder into:

`<world>/datapacks/WhatsAppLightning`

Then open the world and run:

`/reload`

Give yourself both custom items:

`/function whatsapp_lightning:give_items`

## Behavior

- **WhatsApp:** right-click to summon lightning at the user's location.
- **iPhone:** right-click to summon a charged creeper at the user's location.
- Both items have a one-second anti-spam cooldown.
- Detection works from either hand; the main hand takes priority.

The items use `carrot_on_a_stick` as their hidden vanilla carrier.
