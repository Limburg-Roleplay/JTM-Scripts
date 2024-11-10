return {
	-- ============= --
	-- === MONEY === --
	-- ============= --

	['black_money'] = {
		label = 'Zwart geld',
		weight = 0,
		description = 'Dit lijkt op nep geld..',
	},

	['money'] = {
		label = 'Contant geld',
		weight = 0,
		description = 'Dit is je cash geld wat je op zak hebt.',
	},

	-- ============= --
	-- === WPD === --
	-- ============= --

	['wpd'] = {
		label = 'Wapendealer Pas',
		weight = 0,
		description = 'Pas waarmee wapens die in je tas of in je kofferbak legaal zijn.',
	},

	-- ============= --
	-- === FOOD === --
	-- ============= --

	['sausageroll'] = {
		label = 'Worstenbroodje',
		description = 'Een worstenbroodje uut Brabant.',
		weight = 75,
		client = {
			status = { hunger = 200000 },
			anim = 'eating',
			prop = 'sandwich',
			usetime = 5000,
		},
	},

	['pizza'] = {
		label = 'Pizza',
		description = 'In ieder geval is dit geen Hawai.',
		weight = 300,
		client = {
			status = { hunger = 200000 },
			anim = 'eating',
			prop = 'sandwich',
			usetime = 5000,
		},
	},

	['hotdog'] = {
		label = 'Hotdog',
		description = 'Niet de eerste worst..',
		weight = 150,
		client = {
			status = { hunger = 200000 },
			anim = 'eating',
			prop = { bone = 18905, model = 'prop_cs_hotdog_01', pos = vec3(0.15, 0.005, 0.050), rot = vec3(35.0, 155.0, -10.0) },
			usetime = 5000,
		},
	},

	['fries'] = {
		label = 'Friet',
		description = 'Het is patat, geen friet..',
		weight = 150,
		client = {
			status = { hunger = 200000 },
			anim = 'eating',
			prop = { bone = 18905, model = 'prop_food_bs_chips', pos = vec3(0.15, 0.005, 0.020), rot = vec3(290.0, 155.0, -10.0) },
			usetime = 5000,
		},
	},

	['burger'] = {
		label = 'Hamburger',
		description = 'Een echte euroknaller van de McDonalds.',
		weight = 175,
		client = {
			status = { hunger = 200000 },
			anim = 'eating2',
			prop = 'burger',
			usetime = 5000,
		},
	},
	
	['cheeseburger'] = {
		label = 'Cheeseburger',
		description = 'Kaas.',
		weight = 205,
		client = {
			status = { hunger = 200000 },
			anim = 'eating2',
			prop = 'burger',
			usetime = 5000,
		},
	},

	['bread'] = {
		label = 'Brood',
		description = 'Iets lekkers om te eten.',
		weight = 70,
		client = {
			status = { hunger = 200000 },
			anim = 'eating',
			prop = 'sandwich',
			usetime = 5000,
		},
	},

	['chips'] = {
		label = 'Chips',
		description = 'Lekker knapperig.',
		weight = 175,
		client = {
			status = { hunger = 200000 },
			anim = 'eating',
			prop = 'sandwich',
			usetime = 5000,
		},
	},

	['burrito'] = {
		label = 'Burrito',
		description = 'Voor de echte Mexicaanse lovers.',
		weight = 200,
		client = {
			status = { hunger = 200000 },
			anim = 'eating',
			prop = 'sandwich',
			usetime = 5000,
		},
	},

	['chocolatebar'] = {
		label = 'Chocoladereep',
		description = 'Lekker smeuig.',
		weight = 100,
		client = {
			status = { hunger = 200000 },
			anim = 'eating',
			prop = { bone = 60309, model = 'prop_choc_ego', pos = vec3(0.0, 0.0, 0.0), rot = vec3(0.0, 0.0, 0.0) },
			usetime = 5000,
		},
	},

	['taco'] = {
		label = 'Taco',
		description = 'Volgensmij is dit een mannennaam..',
		weight = 150,
		client = {
			status = { hunger = 200000 },
			anim = 'eating',
			prop = 'sandwich',
			usetime = 5000,
		},
	},

	['donut'] = {
		label = 'Donut',
		description = 'Voor de Politie mensen..',
		weight = 55,
		client = {
			status = { hunger = 200000 },
			anim = 'eating',
			prop = 'donut',
			usetime = 5000,
		},
	},

	['fruitdoughnut'] = {
		label = 'Oliebol',
		description = 'Gelukkig nieuwjaar!',
		weight = 55,
		client = {
			status = { hunger = 200000 },
			anim = 'eating',
			prop = 'donut',
			usetime = 5000,
		},
	},

	['appleflap'] = {
		label = 'Appelflap',
		description = 'Spreekt voor zich.',
		weight = 100,
		client = {
			status = { hunger = 200000 },
			anim = 'eating',
			prop = 'sandwich',
			usetime = 5000,
		},
	},

	-- ============= --
	-- === DRINKS === --
	-- ============= --
	['icetea'] = {
		label = 'Ice Tea',
		description = 'Lievelingsdrinken van Ivo.',
		weight = 330,
		client = {
			status = { thirst = 200000 },
			anim = 'drinking',
			prop = 'cola',
			usetime = 5000,
		},
	},

	['cola'] = {
		label = 'Cola',
		description = 'De echte Coca Cola.',
		weight = 330,
		client = {
			status = { thirst = 200000 },
			anim = 'drinking',
			prop = 'cola',
			usetime = 5000,
		},
	},
	
	['fanta'] = {
		label = 'Fanta',
		description = 'Dit is echt Fantastisch.',
		weight = 330,
		client = {
			status = { thirst = 200000 },
			anim = 'drinking',
			prop = 'cola',
			usetime = 5000,
		},
	},

	['sprite'] = {
		label = 'Sprite',
		description = 'Dit is geen 7up.',
		weight = 330,
		client = {
			status = { thirst = 200000 },
			anim = 'drinking',
			prop = 'cola',
			usetime = 5000,
		},
	},

	['monsterenergy'] = {
		label = 'Monster Energy',
		description = 'Herdenken aan Robin.',
		weight = 500,
		client = {
			status = { thirst = 200000 },
			anim = 'drinking',
			prop = 'cola',
			usetime = 5000,
		},
	},

	['water'] = {
		label = 'Water',
		description = 'Wil je mij vergiftigen ofzo?',
		weight = 150,
		client = {
			status = { thirst = 200000 },
			anim = 'drinking2',
			prop = 'water',
			usetime = 5000,
		},
	},

	['eiwitshake'] = {
		label = 'Eiwitshake',
		description = 'Voor de Gains!',
		weight = 250,
		client = {
			anim = 'drinking',
			prop = { bone = 28422, model = 'p_amb_coffeecup_01', pos = vec3(0.0, 0.0, 0.0), rot = vec3(0.0, 0.0, 130.0) },
			usetime = 5000,
		},
		server = {
			export = 'frp-gym.useConsument',
		}
	},

	['preworkout'] = {
		label = 'Pre-Workout',
		description = 'Voor de Gains!',
		weight = 250,
		client = {
			anim = 'drinking',
			prop = { bone = 28422, model = 'p_amb_coffeecup_01', pos = vec3(0.0, 0.0, 0.0), rot = vec3(0.0, 0.0, 130.0) },
			usetime = 5000,
		},
		server = {
			export = 'frp-gym.useConsument',
		}
	},
	
	['chocomel'] = {
		label = 'Chocomel',
		description = 'De enige echte.',
		weight = 1000,
		client = {
			status = { thirst = 200000 },
			anim = 'drinking2',
			prop = 'water',
			usetime = 5000,
		},
	},

	['coffee'] = {
		label = 'Koffie',
		description = 'Voor de oude mensen of in de vroege morgen.',
		weight = 100,
		client = {
			status = { thirst = 200000 },
			anim = 'drinking',
			prop = { bone = 28422, model = 'p_amb_coffeecup_01', pos = vec3(0.0, 0.0, 0.0), rot = vec3(0.0, 0.0, 130.0) },
			usetime = 5000,
		},
	},
	
	['fristi'] = {
		label = 'Fristi',
		description = 'Nee.',
		weight = 330,
		close = true,
		client = {
			status = { thirst = 200000 },
			anim = 'drinking2',
			prop = 'water',
			usetime = 5000,
			cancel = true
		},
	},

	-- ============= --
	-- === BAGS === --
	-- ============= --

	['bewijszak'] = {
		label = 'Bewijszakje',
		weight = 300,
		stack = false,
		close = false,
		consume = 0,
		bag = true
	},

	['case'] = {
		label = 'Koffer',
		weight = 500,
		stack = false,
		close = false,
		consume = 0,
		bag = true
	},


	-- ============= --
	-- === ALCOHOL === --
	-- ============= --
	['champagne'] = {
		label = 'Champagne',
		description = 'Gast.. Ik proef kurk..',
		weight = 750,
		client = {
			status = { thirst = 5 },
			anim = { dict = 'anim@heists@humane_labs@finale@keycards', clip = 'ped_a_enter_loop' },
			prop = { bone = 18905, model = 'prop_drink_champ', pos = vec3(0.10, -0.03, 0.03), rot = vec3(-100.0, 0.0, -10.0) },
			usetime = 5000,
		},
	},

	['whiskey'] = {
		label = 'Whiskey',
		description = 'De echte genieters houden hiervan.',
		weight = 250,
		client = {
			status = { thirst = 5 },
			anim = 'drinking',
			prop = { bone = 28422, model = 'prop_drink_whisky', pos = vec3(0.01, -0.01, -0.06), rot = vec3(0.0, 0.0, 0.0) },
			usetime = 5000,
		},
	},

	['beer'] = {
		label = 'Bier',
		description = 'Hahaaaa bier.',
		weight = 250,
		client = {
			status = { thirst = 5 },
			anim = 'drinking',
			prop = { bone = 28422, model = 'prop_amb_beer_bottle', pos = vec3(0.0, 0.0, 0.0), rot = vec3(0.0, 0.0, 0.0) },
			usetime = 5000,
		},
	},

	['wine'] = {
		label = 'Wijn',
		description = 'Natuurlijk wel zoet wit.',
		weight = 250,
		client = {
			status = { thirst = 5 },
			anim = { dict = 'anim@heists@humane_labs@finale@keycards', clip = 'ped_a_enter_loop' },
			prop = { bone = 18905, model = 'prop_drink_redwine', pos = vec3(0.10, -0.03, 0.03), rot = vec3(-100.0, 0.0, -10.0) },
			usetime = 5000,
		},
	},

	-- ============= --
	-- === GADGETS === --
	-- ============= --

	['handcuffs'] = {
		label = 'Handboeien',
		description = 'Lijkt wel iets waarmee je iemand vast kan binden..',
		weight = 980,
	},

	['identification'] = {
		label = 'Identiteitsbewijs',
		stack = false,
	},

	['driverslicense'] = {
		label = 'Rijbewijs',
		stack = false,
	},

	['vliegbrevet'] = {
		label = 'Vliegbrevet',
		stack = false,
	},

	['refernote'] = {
		label = 'Verwijsbrief',
		stack = false,
	},

	['lockpick'] = {
		label = 'Lockpick',
		description = 'Misschien kan je hiermee iets openen?',
		weight = 160,
	},

	["phone"] = {
		label = "Telefoon",
		weight = 150,
		consume = 0,
	},

	['radio'] = {
		label = 'Portofoon',
		description = 'Iets om mee te communiceren in bepaalde kanalen ofzo.',
		weight = 150,
	},

	['repairkit'] = {
		label = 'Reparatieset',
		description = 'Als je dit gebruikt, weet je dat je niet kan rijden..',
		weight = 912,
	},

	['washand'] = {
		label = 'Washand',
		description = 'Is je auto weer is vies? Gebruik mij maar weer..',
		weight = 1000,
	},

	['parachute'] = {
		label = 'Parachute',
		weight = 2500,
		stack = false,
		client = {
			anim = { dict = 'clothingshirt', clip = 'try_shirt_positive_d' },
			usetime = 1500
		}
	},

	['gps'] = {
		label = 'GPS',
		description = 'Dit is soms wel heel handig als je iets wilt zien.',
		weight = 100,
	},

	['jerrycan'] = {
		label = 'Jerrycan',
		description = 'Om een extra zetje in je voertuig te geven',
		weight = 500,
		server = {
			export = 'frp-benzine.benzine',
		}
	},

	['pion'] = {
		label = 'Pion',
		description = 'Om een Pion neer te zetten..',
		weight = 1000,
	},

	['dranghek'] = {
		label = 'Dranghek',
		description = 'Om een Dranghek neer te zetten..',
		weight = 1000,
	},

	['medbag'] = {
		label = 'Medische tas',
		description = 'Om een Medische tas neer te zetten..',
		weight = 2500,
	},

	['weed'] = {
		label = 'Onverpakte Wiet',
		description = 'Iets met legaal en illegaal..',
		weight = 250
	},

	['cocaleaf'] = {
		label = 'Coca bladeren',
		description = 'Iets met legaal en illegaal..',
		weight = 250
	},

	['methamfetamine'] = {
		label = 'Methamfetamine',
		description = 'Dit is een chemisch goedje..',
		weight = 250
	},

	['gasmask'] = {
		label = 'Gasmasker',
		description = 'Dit bied bescherming tegen chemische stoffen ..',
		weight = 2000
	},


	['butyrolacton'] = {
		label = 'Butyrolacton',
		description = 'Dit is een chemisch goedje..',
		weight = 250
	},

	['gootsteenontstopper'] = {
		label = 'Gootsteenontstopper',
		description = 'Dit is een chemisch goedje..',
		weight = 250
	},

	['ghb'] = {
		label = 'GHB',
		description = 'Iets met legaal en illegaal..',
		weight = 1000
	},

	['cocainepoeder'] = {
		label = 'Cocaine Zakje',
		description = 'Iets met legaal en illegaal..',
		weight = 1000
	},

	['cokeblok'] = {
		label = 'Cocaine Blok',
		description = 'Met dit opzak ben je net Tony Montana..',
		weight = 1000
	},

	['xtc'] = {
		label = 'XTC Zakje',
		description = 'Iets met legaal en illegaal..',
		weight = 100
	},

	['weed_packed'] = {
		label = 'Verpakte Wiet',
		description = 'Iets met legaal en illegaal..',
		weight = 100
	},
	-- ============= --
	-- === ROBBERY === --
	-- ============= --
	['jewels'] = {
		label = 'Juwelen',
		weight = 125,
	},

	['jachtkey'] = {
		label = 'Jacht Key',
		weight = 125,
	},

	['laptop'] = {
		label = 'Laptop',
		weight = 1500,
	},

	['drill'] = {
		label = 'Boor',
		weight = 1500,
	},

	['thermiet'] = {
		label = 'Thermiet',
		weight = 250,
	},

	['necklace'] = {
		label = 'Ketting',
		weight = 125,
	},

	['paperclip'] = {
		label = 'Paperclip',
		weight = 1,
	},

	['ring'] = {
		label = 'Ring',
		weight = 3,
	},

	['samsungs20'] = {
		label = 'Samsung S20',
		weight = 200,
	},

	['speaker'] = {
		label = 'Speaker',
		weight = 500,
	},
	-- ============= --
	-- === Furniture === --
	-- ============= --

	['furniture'] = {
		label = 'Meubel',
		description = 'Dit gebruik je om in te richten in je huis.',
		weight = 150, 
		stack = false,
		consume = 0,
		server = {
			export = 'frp-housing.furniture',
		}
	},

	-- ================ --
	-- === EVIDENCDE === --
	-- ================ --

	['empty_evidence'] = {
		label = 'Leeg Bewijszakje',
		weight = 20,
	},


	['filled_evidence'] = {
		label = 'Bewijszakje',
		description = 'Een zakje vol met illegale dingen...',
		stack = false,
		weight = 25,
	},


	-- ============= --
	-- === MINING === --
	-- ============= --

	['ironore'] = {
		label = 'Ijzererts',
		weight = 20,
	},

	['steel'] = {
		label = 'Staal',
		weight = 25,
	},

	['copperore'] = {
		label = 'Kopererts',
		weight = 20,
	},

	['silverore'] = {
		label = 'Zilvererts',
		weight = 20,
	},

	['diamond'] = {
		label = 'Diamant',
		weight = 10,
	},

	['zincore'] = {
		label = 'Zinkerts',
		weight = 20,
	},

	['stone'] = {
		label = 'Steen',
		weight = 100,
	},

	['copper'] = {
		label = 'Koper',
		weight = 15,
	},

	['silver'] = {
		label = 'Zilver',
		weight = 15,
	},

	['postnlfactuur'] = {
		label = 'PostNL Factuur',
		weight = 15,
	},

	['vuilnismanfactuur'] = {
		label = 'Vuilnisman Factuur',
		weight = 15,
	},

	['poolcleanerfactuur'] = {
		label = 'Zwembad Verschoner Factuur',
		weight = 15,
	},

	['duikerfactuur'] = {
		label = 'Berging Factuur',
		weight = 15,
	},

	['technicianfactuur'] = {
		label = 'Elektriciteit Factuur',
		weight = 15,
	},

	['sweeperfactuur'] = {
		label = 'Straatveger Factuur',
		weight = 15,
	},

	['paasei'] = {
		label = 'Paasei',
		weight = 15,
	},

	["alive_chicken"] = {
		label = "Living chicken",
		weight = 1,
		stack = true,
		close = true,
	},

-- overvallen -- 

	["blowpipe"] = {
		label = "Blowtorch",
		weight = 2,
		stack = true,
		close = true,
	},

	["g4s"] = {
		label = "G4S Pas",
		weight = 2,
		stack = true,
		close = true,
	},

	["hacking_device"] = {
		label = "Hack Apparaat",
		weight = 2,
		stack = true,
		close = true,
	},

	["c4"] = {
		label = "C4",
		weight = 2,
		stack = true,
		close = true,
	},

-- overvallen -- 

	["cannabis"] = {
		label = "Cannabis",
		weight = 3,
		stack = true,
		close = true,
	},

	["carokit"] = {
		label = "Body Kit",
		weight = 3,
		stack = true,
		close = true,
	},

	["carotool"] = {
		label = "Tools",
		weight = 2,
		stack = true,
		close = true,
	},

	["clothe"] = {
		label = "Cloth",
		weight = 1,
		stack = true,
		close = true,
	},

	["cutted_wood"] = {
		label = "Cut wood",
		weight = 1,
		stack = true,
		close = true,
	},

	["essence"] = {
		label = "Gas",
		weight = 1,
		stack = true,
		close = true,
	},

	["fabric"] = {
		label = "Fabric",
		weight = 1,
		stack = true,
		close = true,
	},

	["fish"] = {
		label = "Fish",
		weight = 1,
		stack = true,
		close = true,
	},

	["fixkit"] = {
		label = "Repair Kit",
		weight = 3,
		stack = true,
		close = true,
	},

	["fixtool"] = {
		label = "Repair Tools",
		weight = 2,
		stack = true,
		close = true,
	},

	["gazbottle"] = {
		label = "Gas Bottle",
		weight = 2,
		stack = true,
		close = true,
	},

	["gold"] = {
		label = "Gold",
		weight = 1,
		stack = true,
		close = true,
	},

	["iron"] = {
		label = "Iron",
		weight = 1,
		stack = true,
		close = true,
	},

	["marijuana"] = {
		label = "Marijuana",
		weight = 2,
		stack = true,
		close = true,
	},

	["medikit"] = {
		label = "Medikit",
		weight = 2,
		stack = true,
		close = true,
	},

	["packaged_chicken"] = {
		label = "Chicken fillet",
		weight = 1,
		stack = true,
		close = true,
	},

	["packaged_plank"] = {
		label = "Packaged wood",
		weight = 1,
		stack = true,
		close = true,
	},

	["petrol"] = {
		label = "Oil",
		weight = 1,
		stack = true,
		close = true,
	},

	["petrol_raffin"] = {
		label = "Processed oil",
		weight = 1,
		stack = true,
		close = true,
	},

	["slaughtered_chicken"] = {
		label = "Slaughtered chicken",
		weight = 1,
		stack = true,
		close = true,
	},

	["washed_stone"] = {
		label = "Washed stone",
		weight = 1,
		stack = true,
		close = true,
	},

	["wood"] = {
		label = "Wood",
		weight = 1,
		stack = true,
		close = true,
	},

	["wool"] = {
		label = "Wool",
		weight = 1,
		stack = true,
		close = true,
	},

	["icepack"] = {
		label = "Ice Pack",
		weight = 1,
		stack = true,
		close = true,
	},

	["sedative"] = {
		label = "Sedative",
		weight = 1,
		stack = true,
		close = true,
	},

	["tweezers"] = {
		label = "Tweezers",
		weight = 1,
		stack = true,
		close = true,
	},

	["defib"] = {
		label = "Defibrillator",
		weight = 1,
		stack = true,
		close = true,
	},

	["suturekit"] = {
		label = "Suture Kit",
		weight = 1,
		stack = true,
		close = true,
	},

	["burncream"] = {
		label = "Burn Cream",
		weight = 1,
		stack = true,
		close = true,
	},

	["ammopistol"] = {
		label = ".45 ACP munitie (PISTOOL)",
		weight = 2,
		stack = true,
		close = true,
	},

	["ammorifle"] = {
		label = "5.45x39mm munitie (AK)",
		weight = 2,
		stack = true,
		close = true,
	},

	["ammoshotgun"] = {
		label = "12-Gauge munitie (SHOTGUN)",
		weight = 2,
		stack = true,
		close = true,
	},

	["ammosmg"] = {
		label = "9x18mm munitie (SMG)",
		weight = 2,
		stack = true,
		close = true,
	},

	["ammosniper"] = {
		label = "Sniper Ammo",
		weight = 2,
		stack = true,
		close = true,
	},

	["black_phone"] = {
		label = "Black Phone",
		weight = 10,
		stack = true,
		close = true,
	},

	["blue_phone"] = {
		label = "Blue Phone",
		weight = 10,
		stack = true,
		close = true,
	},

	["phone_hack"] = {
		label = "Phone Hack",
		weight = 10,
		stack = true,
		close = true,
	},

	["phone_module"] = {
		label = "Phone Module",
		weight = 10,
		stack = true,
		close = true,
	},

	["pink_phone"] = {
		label = "Pink Phone",
		weight = 10,
		stack = true,
		close = true,
	},

	["powerbank"] = {
		label = "Power Bank",
		weight = 10,
		stack = true,
		close = true,
	},

	["classic_phone"] = {
		label = "Classic Phone",
		weight = 10,
		stack = true,
		close = true,
	},

	["red_phone"] = {
		label = "Red Phone",
		weight = 10,
		stack = true,
		close = true,
	},

	["wet_red_phone"] = {
		label = "Wet Red Phone",
		weight = 10,
		stack = true,
		close = true,
	},

	["wet_black_phone"] = {
		label = "Wet Black Phone",
		weight = 10,
		stack = true,
		close = true,
	},

	["wet_blue_phone"] = {
		label = "Wet Blue Phone",
		weight = 10,
		stack = true,
		close = true,
	},

	["wet_classic_phone"] = {
		label = "Wet Classic Phone",
		weight = 10,
		stack = true,
		close = true,
	},

	["wet_gold_phone"] = {
		label = "Wet Gold Phone",
		weight = 10,
		stack = true,
		close = true,
	},

	["wet_greenlight_phone"] = {
		label = "Wet Green Light Phone",
		weight = 10,
		stack = true,
		close = true,
	},

	["wet_green_phone"] = {
		label = "Wet Green Phone",
		weight = 10,
		stack = true,
		close = true,
	},

	["greenlight_phone"] = {
		label = "Green Light Phone",
		weight = 10,
		stack = true,
		close = true,
	},

	["green_phone"] = {
		label = "Green Phone",
		weight = 10,
		stack = true,
		close = true,
	},

	["wet_white_phone"] = {
		label = "Wet White Phone",
		weight = 10,
		stack = true,
		close = true,
	},

	["white_phone"] = {
		label = "White Phone",
		weight = 10,
		stack = true,
		close = true,
	},

	["wet_pink_phone"] = {
		label = "Wet Pink Phone",
		weight = 10,
		stack = true,
		close = true,
	},

	["gold_phone"] = {
		label = "Gold Phone",
		weight = 10,
		stack = true,
		close = true,
	},

	["parkingcard"] = {
		label = "Parking Card",
		weight = 0,
		stack = true,
		close = true,
	},

	["thermal_charge"] = {
		label = "Thermal charge",
		weight = 1,
		stack = true,
		close = true,
	},

	["gas_mask"] = {
		label = "Gas mask",
		weight = 1,
		stack = true,
		close = true,
	},

	["hacking_computer"] = {
		label = "Hacking computer",
		weight = 1,
		stack = true,
		close = true,
	},

	["painting"] = {
		label = "Painting",
		weight = 1,
		stack = true,
		close = true,
	},

	["gold_ingot"] = {
		label = "Gold ingot",
		weight = 1,
		stack = true,
		close = true,
	},

	["diamonds_box"] = {
		label = "Diamonds box",
		weight = 1,
		stack = true,
		close = true,
	},

	["bandage"] = {
		label = "Bandage",
		weight = 2,
		stack = true,
		close = true,
	},
}