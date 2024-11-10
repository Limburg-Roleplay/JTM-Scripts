local carProducts = require "data.cars"
local airplaneProducts = require "data.airplanes"
local weaponPackProducts = require "data.weaponPacks"
local weaponProducts = require "data.weapons"
local gangProducts = require "data.gangs"
local itemProducts = require "data.items"
local moneyProducts = require "data.money"

---@type Category[]
return {
  {
    label = "🚗 Autos",
    name = "Autos",
    description =
    "Ontdek exclusieve auto's in onze shop, speciaal geselecteerd voor jouw ultieme rijervaring. Van snelle supercars tot stoere SUVs, geniet van indrukwekkende handling en stijlvolle ritten door Haarlem. Luxe was nog nooit zo betaalbaar!",
    type = "vehicle",
    products = carProducts,
  },
  {
    label = "🚁 Luchtvaart",
    name = "Luchtvaart",
    description =
    "Personaliseer je avontuur met unieke items uit onze store. Van stijlvolle outfits tot speciale voertuigen, maak jouw karakter onderscheidend en beleef Haarlem op jouw manier.",
    type = "vehicle",
    products = airplaneProducts,
  },
  {
    label = "🔫 Wapens Paketten",
    name = "Wapens Paketten",
    description =
    "Ontdek onze exclusieve wapenpakketten in de shop, zorgvuldig samengesteld voor jouw ultieme bescherming. Van krachtige pistolen tot geavanceerde geweren, elk pakket biedt topkwaliteit wapens voor een veilige ervaring in Haarlem. Betaalbaar en betrouwbaar, jouw veiligheid staat voorop. Pak jouw wapenpakket en bereid je voor op avontuur in de straten van Haarlem!",
    type = "weapons",
    products = weaponPackProducts
  },
  {
    label = "🔫 Wapens",
    name = "Wapens",
    description =
    "Geen zin in eindeloos grinden? Ontdek onze webshop voor handige wapen's en bewapen jezelf met stijl.",
    type = "weapons",
    products = weaponProducts
  },
  {
    label = "⚔️ Gangs",
    name = "Gangs",
    description =
    "Word baas van onze diverse gangs en domineer samen de straten van Haarlem. Elk ganglid draagt bij aan een unieke dynamiek en samenwerking. Kies je pad en laat je stempel achter op de stad.",
    type = "gang",
    products = gangProducts
  },
  {
    label = "💼 Items",
    name = "Items",
    description =
    "Personaliseer je avontuur met unieke items uit onze store. Van stijlvolle outfits tot speciale voertuigen, maak jouw karakter onderscheidend en beleef Haarlem op jouw manier.",
    type = "item",
    products = itemProducts,
  },
  {
    label = "💰 Geld",
    name = "Geld",
    description =
    "Geef jezelf een financiele boost en koop in-game geld via onze store. Met extra middelen kun je meteen genieten van de beste ervaringen en exclusieve items in Haarlem.",
    type = "money",
    products = moneyProducts,
  },
}
