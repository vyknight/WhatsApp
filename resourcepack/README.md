# WhatsApp Lightning resource pack

Target: Minecraft Java Edition 26.3 (resource-pack format 97.1).

Copy the `resourcepack` folder into `.minecraft/resourcepacks/WhatsAppLightning`,
then enable it in Minecraft.

The current models deliberately use vanilla placeholder textures:

- WhatsApp uses the slime-ball texture.
- iPhone uses the spyglass texture.

When custom sprites are available, place them at:

- `assets/whatsapp_lightning/textures/item/whatsapp.png`
- `assets/whatsapp_lightning/textures/item/iphone.png`

Then change each model's `layer0` from its `minecraft:` placeholder to:

- `whatsapp_lightning:item/whatsapp`
- `whatsapp_lightning:item/iphone`
