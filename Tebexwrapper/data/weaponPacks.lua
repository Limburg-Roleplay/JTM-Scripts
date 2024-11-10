---@type BaseProduct[]
return {
  {
    label = "Wapen Pakket 1",
    name = "wapen_pakket_1",
    description = "5x M1911, 5x Skorp, 5x Ap Pistol, 3x Shotguns, 1x Mini AK",
    image = "pakket1.png",
    price = 10,
    metadata = {
      weapons = {
        { name = "WEAPON_M1911",          count = 5, ammo = 500, ammoType = "ammo-9" },
        { name = "WEAPON_MINISMG",        count = 5, ammo = 500, ammoType = "ammo-9" },
        { name = "WEAPON_GLOCK18C",       count = 5, ammo = 500, ammoType = "ammo-9" },
        { name = "WEAPON_SAWNOFFSHOTGUN", count = 3, ammo = 150, ammoType = "ammo-shotgun" },
        { name = "WEAPON_COMPACTRIFLE",   count = 1, ammo = 100, ammoType = "ammo-rifle" }
      }
    }
  },
  {
    label = "Wapen Pakket 2",
    name = "wapen_pakket_2",
    description = "8x M1911, 2x Ak, 10x Ap Pistol, 5x Shotgun, 5x Mini AK",
    image = "pakket2.png",
    price = 22.50,
    metadata = {
      weapons = {
        { name = "WEAPON_M1911",          count = 8,  ammo = 800, ammoType = "ammo-9" },
        { name = "WEAPON_ASSAULTRIFLE",   count = 2,  ammo = 200, ammoType = "ammo-rifle2" },
        { name = "WEAPON_GLOCK18C",       count = 10, ammo = 100, ammoType = "ammo-9" },
        { name = "WEAPON_SAWNOFFSHOTGUN", count = 5,  ammo = 250, ammoType = "ammo-shotgun" },
        { name = "WEAPON_COMPACTRIFLE",   count = 5,  ammo = 500, ammoType = "ammo-rifle" }
      }
    }
  },
  {
    label = "Wapen Pakket 3",
    name = "wapen_pakket_3",
    description = "5x Ak 12, 5x Ak, 10x Ap Pistol, 10x Shotguns, 10x Mini AK",
    image = "pakket3.png",
    price = 35,
    metadata = {
      weapons = {
        { name = "WEAPON_ASSAULTRIFLE_MK2", count = 5,  ammo = 500, ammoType = "ammo-rifle" },
        { name = "WEAPON_ASSAULTRIFLE",     count = 5,  ammo = 500, ammoType = "ammo-rifle2" },
        { name = "WEAPON_GLOCK18C",         count = 10, ammo = 100, ammoType = "ammo-9" },
        { name = "WEAPON_SAWNOFFSHOTGUN",   count = 10, ammo = 500, ammoType = "ammo-shotgun" },
        { name = "WEAPON_COMPACTRIFLE",     count = 10, ammo = 100, ammoType = "ammo-rifle" }
      }
    }
  },
  {
    label = "Wapen Pakket 4",
    name = "wapen_pakket_4",
    description =
    "5x Fully Ak 12, 5x Fully Ak, 5x Fully P90, 10x Ap Pistol, 10x Shotguns, 15x Mini AK, 5x Skorp, 5x M1911",
    image = "pakket4.png",
    price = 50,
    metadata = {
      weapons = {
        { name = "WEAPON_ASSAULTRIFLE",     count = 5,  ammo = 500, ammoType = "ammo-rifle" },
        { name = "WEAPON_ASSAULTRIFLE_MK2", count = 5,  ammo = 500, ammoType = "ammo-rifle2" },
        { name = "WEAPON_ASSAULTSMG",       count = 5,  ammo = 500, ammoType = "ammo-rifle" },
        { name = "WEAPON_GLOCK18C",         count = 10, ammo = 100, ammoType = "ammo-9" },
        { name = "WEAPON_SAWNOFFSHOTGUN",   count = 10, ammo = 500, ammoType = "ammo-shotgun" },
        { name = "WEAPON_COMPACTRIFLE",     count = 15, ammo = 150, ammoType = "ammo-rifle" },
        { name = "WEAPON_MINISMG",          count = 5,  ammo = 500, ammoType = "ammo-9" },
        { name = "WEAPON_M1911",            count = 5,  ammo = 500, ammoType = "ammo-9" },

        { name = "at_suppressor_heavy" },
        { name = "at_grip" },
        { name = "at_flashlight" },
        { name = "at_scope_macro" },
        { name = "at_clip_drum_rifle" },
        { name = "at_clip_extended_rifle" },
        { name = "at_scope_holo" },
        { name = "at_clip_extended_smg" }
      }
    }
  },
  {
    label = "Wapen Pakket 5",
    name = "wapen_pakket_5",
    description =
    "10x Fully Ak 12, 10x Fully Ak, 10x Fully P90, 10x Ap Pistol, 10x Shotguns, 20x Mini AK, 10x Skorp, 10x M1911",
    image = "pakket5.png",
    price = 75,
    metadata = {
      weapons = {
        { name = "WEAPON_ASSAULTRIFLE",     count = 10, ammo = 500,  ammoType = "ammo-rifle" },
        { name = "WEAPON_ASSAULTRIFLE_MK2", count = 10, ammo = 500,  ammoType = "ammo-rifle2" },
        { name = "WEAPON_ASSAULTSMG",       count = 10, ammo = 500,  ammoType = "ammo-rifle" },
        { name = "WEAPON_GLOCK18C",         count = 10, ammo = 1000, ammoType = "ammo-9" },
        { name = "WEAPON_SAWNOFFSHOTGUN",   count = 10, ammo = 500,  ammoType = "ammo-shotgun" },
        { name = "WEAPON_COMPACTRIFLE",     count = 20, ammo = 1500, ammoType = "ammo-rifle" },
        { name = "WEAPON_MINISMG",          count = 10, ammo = 500,  ammoType = "ammo-9" },
        { name = "WEAPON_M1911",            count = 10, ammo = 500,  ammoType = "ammo-9" },

        { name = "at_suppressor_heavy" },
        { name = "at_grip" },
        { name = "at_flashlight" },
        { name = "at_scope_macro" },
        { name = "at_clip_drum_rifle" },
        { name = "at_clip_extended_rifle" },
        { name = "at_scope_holo" },
        { name = "at_clip_extended_smg" }
      }
    }
  }

}
