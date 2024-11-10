Config = {}

Config.Locale = GetConvar('esx:locale', GetConvar('vESX_Language'))
Config.Pushing = {
    ['pushingAnimDict'] = 'switch@trevor@escorted_out',
    ['pushingAnim'] = '001215_02_trvs_12_escorted_out_idle_guard2'
}

Config.Walking = {
    ['walkingAnimDict'] = 'anim@move_m@grooving@',
    ['walkingAnim'] = 'walk'
}
Config.CuffItem = 'handcuffs'
Config.CuffKeysItem = 'cuff_keys'
Config.RopeItem = 'hoofdzak'
Config.BagToHeadItem = 'HD_rope'

Config.OpenMenuKey = 344

Config.HandcuffIMG = 'https://raw.githubusercontent.com/0resmon/db/main/img/black.png'
Config.HandcuffDefaultIMG = 'https://raw.githubusercontent.com/0resmon/db/main/img/prop_chrome_03.png'
Config.HandcuffSound = 'https://raw.githubusercontent.com/0resmon/db/main/sound/handcuff.mp3'


Config.TestMode = false

Config.GetClosestPlayer = function()
   return ESX.OneSync.GetClosestPlayer()
end