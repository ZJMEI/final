# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Warship.delete_all
Country.delete_all
Equipment.delete_all
Equipped.delete_all
User.delete_all
Review.delete_all
Battle.delete_all
Enrolled.delete_all

jp = Country.create(name: "Japan", cimage_url: "jp.png", description: "Being an island nation, the Imperial Japanese Navy (IJN) have always been the forefront of Japan's military, characterised by advanced development of naval technology, quality shipbuilding and superb seamanship. Japan also readily looked to and accepted foreign input - from the assimilation of foreign technology after the re-opening of their borders, to the frequent military exchanges with Dutch, French, British and United States navies; many naval students were also sent to their naval academies and a number of ships were built in their dockyards.")
us = Country.create(name: "U.S.A.", cimage_url: "usa.png", description: "Ships fielded by the United States Navy (USN) sport great armour (albeit mostly in an all-or-nothing design), batteries, and anti-aircraft (AA) capabilities, and are less hindered by stock configurations—many were built later and subsequently underwent fewer, less drastic upgrades (unlike Imperial Japanese Navy (IJN) vessels such as the Kongo). Most stock American ships are adequate for their roles, and while fully-upgraded ships perform better, they require little to no change in playstyle. Their torpedoes are disastrously bad, but the real strength of USN ships lies in their ability to get into firefights and slug it out, relying on their superior guns and survivability to see them through.")
ussr = Country.create(name: "U.S.S.R", cimage_url: "ussr.png", description: "With over half her massive landmass bordered by water, Russia's navy was (and still is today) divided into four major fleets: the Pacific, Northern, Baltic and Black Sea Fleets - at the height of the Russian Empire, the Imperial Russian Navy was the fourth most powerful fleet in the world after Great Britain, Spain and France. Lagging technological advancement and disastrous wars greatly dented her power, resulting in mixed performance in World War I; the Baltic Fleet played a largely defensive role, the Black Sea Fleet distinguished herself against the Ottoman Navy and the Pacific Fleet had faded into insignificance after the Battle of Tsushima (the Northern Fleet was created during the War to protect shipping in the Barents Sea). The Imperial Russian Navy suffered a near-complete collapse in the Russian Revolution and resulting Civil War, succeeded by the Soviet Union's Red Fleet.")
gm = Country.create(name: "Germany", cimage_url: "gm.png", description: "Germany's naval prowess has always been eclipsed by its British, French, Dutch and Spanish neighbours. A unified Germany only came into being in the late 19th century, thus it did not play a major role in the European colonial period; while its inherited coastline (from the Kingdom of Prussia) was relatively long, Germany's geographical location at the centre of the European continent meant that greater preference was given to its army and its navy never went beyond being a coastal defence force.")

#warships

umikaze = Warship.new
umikaze.name = "Umikaze"
umikaze.shiptype = "Destroyer"
umikaze.image_url = "umikaze.png"
umikaze.tier = 2
umikaze.country_id = jp.id
umikaze.survivability = 10
umikaze.artillery = 7
umikaze.aircraft = 0
umikaze.torpedoes = 4
umikaze.aadefense = 0
umikaze.maneuverability = 74
umikaze.concealment = 97
umikaze.maxspeed = 33
umikaze.detectrange = 5.6
umikaze.save

wakatake = Warship.new
wakatake.name = "Wakatake"
wakatake.shiptype = "Destroyer"
wakatake.image_url = "wakatake.png"
wakatake.tier = 3
wakatake.country_id = jp.id
wakatake.survivability = 10
wakatake.artillery = 13
wakatake.aircraft = 0
wakatake.torpedoes = 8
wakatake.aadefense = 1
wakatake.maneuverability = 83
wakatake.concealment = 95
wakatake.maxspeed = 35.5
wakatake.detectrange = 6.1
wakatake.save

isokaze = Warship.new
isokaze.name = "Isokaze"
isokaze.shiptype = "Destroyer"
isokaze.image_url = "isokaze.png"
isokaze.tier = 4
isokaze.country_id = jp.id
isokaze.survivability = 14
isokaze.artillery = 7
isokaze.aircraft = 0
isokaze.torpedoes = 14
isokaze.aadefense = 1
isokaze.maneuverability = 78
isokaze.concealment = 95
isokaze.maxspeed = 34
isokaze.detectrange = 6.1
isokaze.save

chikuma = Warship.new
chikuma.name = "Chikuma"
chikuma.shiptype = "Cruiser"
chikuma.image_url = "chikuma.png"
chikuma.tier = 2
chikuma.country_id = jp.id
chikuma.survivability = 19
chikuma.artillery = 26
chikuma.aircraft = 0
chikuma.torpedoes = 0
chikuma.aadefense = 1
chikuma.maneuverability = 49
chikuma.concealment = 76
chikuma.maxspeed = 26
chikuma.detectrange = 9.2
chikuma.save

tenryu = Warship.new
tenryu.name = "Tenryu"
tenryu.shiptype = "Cruiser"
tenryu.image_url = "tenryu.png"
tenryu.tier = 3
tenryu.country_id = jp.id
tenryu.survivability = 19
tenryu.artillery = 29
tenryu.aircraft = 0
tenryu.torpedoes = 10
tenryu.aadefense = 4
tenryu.maneuverability = 70
tenryu.concealment = 81
tenryu.maxspeed = 32.5
tenryu.detectrange = 8.3
tenryu.save

myogi = Warship.new
myogi.name = "Myogi"
myogi.shiptype = "Battleship"
myogi.image_url = "myogi.png"
myogi.tier = 4
myogi.country_id = jp.id
myogi.survivability = 50
myogi.artillery = 68
myogi.aircraft = 0
myogi.torpedoes = 0
myogi.aadefense = 0
myogi.maneuverability = 26
myogi.concealment = 27
myogi.maxspeed = 24.4
myogi.detectrange = 17.1
myogi.save

kongo = Warship.new
kongo.name = "Kongo"
kongo.shiptype = "Battleship"
kongo.image_url = "kongo.png"
kongo.tier = 5
kongo.country_id = jp.id
kongo.survivability = 59
kongo.artillery = 73
kongo.aircraft = 0
kongo.torpedoes = 0
kongo.aadefense = 7
kongo.maneuverability = 27
kongo.concealment = 29
kongo.maxspeed = 24.9
kongo.detectrange = 16.2
kongo.save

ryujo = Warship.new
ryujo.name = "Ryujo"
ryujo.shiptype = "Aircraft Carrier"
ryujo.image_url = "ryujo.png"
ryujo.tier = 6
ryujo.country_id = jp.id
ryujo.survivability = 49
ryujo.artillery = 6
ryujo.aircraft = 26
ryujo.torpedoes = 0
ryujo.aadefense = 37
ryujo.maneuverability = 40
ryujo.concealment = 67
ryujo.maxspeed = 28
ryujo.detectrange = 9.9
ryujo.save

sampson = Warship.new
sampson.name = "Sampson"
sampson.shiptype = "Destroyer"
sampson.image_url = "sampson.png"
sampson.tier = 2
sampson.country_id = us.id
sampson.survivability = 10
sampson.artillery = 10
sampson.aircraft = 0
sampson.torpedoes = 9
sampson.aadefense = 3
sampson.maneuverability = 63
sampson.concealment = 96
sampson.maxspeed = 29.5
sampson.detectrange = 5.9
sampson.save

wickes = Warship.new
wickes.name = "Wickes"
wickes.shiptype = "Destroyer"
wickes.image_url = "wickes.png"
wickes.tier = 3
wickes.country_id = us.id
wickes.survivability = 11
wickes.artillery = 10
wickes.aircraft = 0
wickes.torpedoes = 13
wickes.aadefense = 3
wickes.maneuverability = 78
wickes.concealment = 92
wickes.maxspeed = 34
wickes.detectrange = 6.7
wickes.save

clemson = Warship.new
clemson.name = "Clemson"
clemson.shiptype = "Destroyer"
clemson.image_url = "clemson.png"
clemson.tier = 4
clemson.country_id = us.id
clemson.survivability = 13
clemson.artillery = 10
clemson.aircraft = 0
clemson.torpedoes = 22
clemson.aadefense = 3
clemson.maneuverability = 81
clemson.concealment = 90
clemson.maxspeed = 35
clemson.detectrange = 7.0
clemson.save

chester = Warship.new
chester.name = "Chester"
chester.shiptype = "Cruiser"
chester.image_url = "chester.png"
chester.tier = 2
chester.country_id = us.id
chester.survivability = 17
chester.artillery = 15
chester.aircraft = 0
chester.torpedoes = 0
chester.aadefense = 0
chester.maneuverability = 43
chester.concealment = 80
chester.maxspeed = 24
chester.detectrange = 8.5
chester.save

stlouis = Warship.new
stlouis.name = "St.Louis"
stlouis.shiptype = "Cruiser"
stlouis.image_url = "stlouis.png"
stlouis.tier = 3
stlouis.country_id = us.id
stlouis.survivability = 32
stlouis.artillery = 34
stlouis.aircraft = 0
stlouis.torpedoes = 0
stlouis.aadefense = 0
stlouis.maneuverability = 32
stlouis.concealment = 65
stlouis.maxspeed = 22
stlouis.detectrange = 11.0
stlouis.save

wyoming = Warship.new
wyoming.name = "Wyoming"
wyoming.shiptype = "Battleship"
wyoming.image_url = "wyoming.png"
wyoming.tier = 4
wyoming.country_id = us.id
wyoming.survivability = 49
wyoming.artillery = 65
wyoming.aircraft = 0
wyoming.torpedoes = 0
wyoming.aadefense = 11
wyoming.maneuverability = 8
wyoming.concealment = 43
wyoming.maxspeed = 18
wyoming.detectrange = 14.0
wyoming.save

newyork = Warship.new
newyork.name = "New York"
newyork.shiptype = "Battleship"
newyork.image_url = "newyork.png"
newyork.tier = 5
newyork.country_id = us.id
newyork.survivability = 51
newyork.artillery = 65
newyork.aircraft = 0
newyork.torpedoes = 0
newyork.aadefense = 17
newyork.maneuverability = 9
newyork.concealment = 33
newyork.maxspeed = 18.4
newyork.detectrange = 16
newyork.save

independence = Warship.new
independence.name = "Independence"
independence.shiptype = "Aircraft Carrier"
independence.image_url = "independence.png"
independence.tier = 6
independence.country_id = us.id
independence.survivability = 45
independence.artillery = 3
independence.aircraft = 23
independence.torpedoes = 0
independence.aadefense = 36
independence.maneuverability = 48
independence.concealment = 57
independence.maxspeed = 31.5
independence.detectrange = 10.3
independence.save

storozhevoi = Warship.new
storozhevoi.name = "Storozhevoi"
storozhevoi.shiptype = "Destroyer"
storozhevoi.image_url = "storozhevoi.png"
storozhevoi.tier = 2
storozhevoi.country_id = ussr.id
storozhevoi.survivability = 8
storozhevoi.artillery = 12
storozhevoi.aircraft = 0
storozhevoi.torpedoes = 8
storozhevoi.aadefense = 2
storozhevoi.maneuverability = 83
storozhevoi.concealment = 96
storozhevoi.maxspeed = 35
storozhevoi.detectrange = 5.8
storozhevoi.save

derzki = Warship.new
derzki.name = "Derzki"
derzki.shiptype = "Destroyer"
derzki.image_url = "derzki.png"
derzki.tier = 3
derzki.country_id = ussr.id
derzki.survivability = 13
derzki.artillery = 13
derzki.aircraft = 0
derzki.torpedoes = 11
derzki.aadefense = 2
derzki.maneuverability = 79
derzki.concealment = 95
derzki.maxspeed = 34
derzki.detectrange = 6.1
derzki.save

izyaslav = Warship.new
izyaslav.name = "Izyaslav"
izyaslav.shiptype = "Destroyer"
izyaslav.image_url = "izyaslav.png"
izyaslav.tier = 4
izyaslav.country_id = ussr.id
izyaslav.survivability = 15
izyaslav.artillery = 13
izyaslav.aircraft = 0
izyaslav.torpedoes = 9
izyaslav.aadefense = 7
izyaslav.maneuverability = 81
izyaslav.concealment = 92
izyaslav.maxspeed = 35
izyaslav.detectrange = 6.7
izyaslav.save

gnevny = Warship.new
gnevny.name = "Gnevny"
gnevny.shiptype = "Destroyer"
gnevny.image_url = "gnevny.png"
gnevny.tier = 5
gnevny.country_id = ussr.id
gnevny.survivability = 18
gnevny.artillery = 24
gnevny.aircraft = 0
gnevny.torpedoes = 12
gnevny.aadefense = 8
gnevny.maneuverability = 87
gnevny.concealment = 89
gnevny.maxspeed = 38
gnevny.detectrange = 7.0
gnevny.save

budyonny = Warship.new
budyonny.name = "Budyonny"
budyonny.shiptype = "Cruiser"
budyonny.image_url = "budyonny.png"
budyonny.tier = 6
budyonny.country_id = ussr.id
budyonny.survivability = 35
budyonny.artillery = 51
budyonny.aircraft = 0
budyonny.torpedoes = 12
budyonny.aadefense = 21
budyonny.maneuverability = 67
budyonny.concealment = 51
budyonny.maxspeed = 35
budyonny.detectrange = 13.1
budyonny.save

shchors = Warship.new
shchors.name = "Shchors"
shchors.shiptype = "Cruiser"
shchors.image_url = "shchors.png"
shchors.tier = 7
shchors.country_id = ussr.id
shchors.survivability = 39
shchors.artillery = 52
shchors.aircraft = 0
shchors.torpedoes = 12
shchors.aadefense = 22
shchors.maneuverability = 63
shchors.concealment = 50
shchors.maxspeed = 35.5
shchors.detectrange = 13.3
shchors.save

chapayev = Warship.new
chapayev.name = "Chapayev"
chapayev.shiptype = "Cruiser"
chapayev.image_url = "chapayev.png"
chapayev.tier = 8
chapayev.country_id = ussr.id
chapayev.survivability = 45
chapayev.artillery = 53
chapayev.aircraft = 0
chapayev.torpedoes = 14
chapayev.aadefense = 38
chapayev.maneuverability = 55
chapayev.concealment = 51
chapayev.maxspeed = 33.5
chapayev.detectrange = 13.2
chapayev.save

karlsruhe = Warship.new
karlsruhe.name = "Karlsruhe"
karlsruhe.shiptype = "Cruiser"
karlsruhe.image_url = "karlsruhe.png"
karlsruhe.tier = 4
karlsruhe.country_id = gm.id
karlsruhe.survivability = 25
karlsruhe.artillery = 36
karlsruhe.aircraft = 0
karlsruhe.torpedoes = 7
karlsruhe.aadefense = 5
karlsruhe.maneuverability = 47
karlsruhe.concealment = 68
karlsruhe.maxspeed = 27.5
karlsruhe.detectrange = 10.6
karlsruhe.save

königsberg = Warship.new
königsberg.name = "Königsberg"
königsberg.shiptype = "Cruiser"
königsberg.image_url = "königsberg.png"
königsberg.tier = 5
königsberg.country_id = gm.id
königsberg.survivability = 32
königsberg.artillery = 44
königsberg.aircraft = 0
königsberg.torpedoes = 28
königsberg.aadefense = 23
königsberg.maneuverability = 65
königsberg.concealment = 58
königsberg.maxspeed = 32.5
königsberg.detectrange = 12.4
königsberg.save

nürnberg = Warship.new
nürnberg.name = "Nürnberg"
nürnberg.shiptype = "Cruiser"
nürnberg.image_url = "nürnberg.png"
nürnberg.tier = 6
nürnberg.country_id = gm.id
nürnberg.survivability = 33
nürnberg.artillery = 45
nürnberg.aircraft = 0
nürnberg.torpedoes = 28
nürnberg.aadefense = 25
nürnberg.maneuverability = 58
nürnberg.concealment = 56
nürnberg.maxspeed = 32
nürnberg.detectrange = 12.6
nürnberg.save

yorck = Warship.new
yorck.name = "Yorck"
yorck.shiptype = "Cruiser"
yorck.image_url = "yorck.png"
yorck.tier = 7
yorck.country_id = gm.id
yorck.survivability = 38
yorck.artillery = 61
yorck.aircraft = 0
yorck.torpedoes = 28
yorck.aadefense = 34
yorck.maneuverability = 59
yorck.concealment = 49
yorck.maxspeed = 32
yorck.detectrange = 13.9
yorck.save

tirpitz = Warship.new
tirpitz.name = "Tirpitz"
tirpitz.shiptype = "Cruiser"
tirpitz.image_url = "tirpitz.png"
tirpitz.tier = 8
tirpitz.country_id = gm.id
tirpitz.survivability = 85
tirpitz.artillery = 88
tirpitz.aircraft = 0
tirpitz.torpedoes = 16
tirpitz.aadefense = 52
tirpitz.maneuverability = 44
tirpitz.concealment = 24
tirpitz.maxspeed = 30.5
tirpitz.detectrange = 15.9
tirpitz.save

b102mm60m1911 = Equipment.new
b102mm60m1911.name = "102mm/60 Model 1911"
b102mm60m1911.equiptype = "Main Battery"
b102mm60m1911.range = 9.7
b102mm60m1911.save

b102mm50mk12 = Equipment.new
b102mm50mk12.name = "102mm/50 Mk12"
b102mm50mk12.equiptype = "Main Battery"
b102mm50mk12.range = 7.8
b102mm50mk12.save

b120mm40t41 = Equipment.new
b120mm40t41.name = "120mm/40 41st Year Type"
b120mm40t41.equiptype = "Main Battery"
b120mm40t41.range = 6.7
b120mm40t41.save

b127mmmk5 = Equipment.new
b127mmmk5.name = "127mm/50 Mk5"
b127mmmk5.equiptype = "Main Battery"
b127mmmk5.range = 8.4
b127mmmk5.save

b130mmb13 = Equipment.new
b130mmb13.name = "130mm B-13"
b130mmb13.equiptype = "Main Battery"
b130mmb13.range = 10.8
b130mmb13.save

b140mm50t3 = Equipment.new
b140mm50t3.name = "140mm/50 3rd Year Type"
b140mm50t3.equiptype = "Main Battery"
b140mm50t3.range = 10.0
b140mm50t3.save

b150mml45sk = Equipment.new
b150mml45sk.name = "150mm L/45 SK L/45"
b150mml45sk.equiptype = "Main Battery"
b150mml45sk.range = 10.6
b150mml45sk.save

b150mml60sk = Equipment.new
b150mml60sk.name = "150mm L/60 SK C/25"
b150mml60sk.equiptype = "Main Battery"
b150mml60sk.range = 16.5
b150mml60sk.save

b152mmmk6 = Equipment.new
b152mmmk6.name = "152mm/50 Mk6"
b152mmmk6.equiptype = "Main Battery"
b152mmmk6.range = 9.5
b152mmmk6.save

b152mm45t41 = Equipment.new
b152mm45t41.name = "152mm/45 41st Year Type"
b152mm45t41.equiptype = "Main Battery"
b152mm45t41.range = 9.3
b152mm45t41.save

b152mm57mk5 = Equipment.new
b152mm57mk5.name = "152mm/57 MK_5"
b152mm57mk5.equiptype = "Main Battery"
b152mm57mk5.range = 15.1
b152mm57mk5.save

b210mml45sk = Equipment.new
b210mml45sk.name = "210mm L/45 SK L/45"
b210mml45sk.equiptype = "Main Battery"
b210mml45sk.range = 15.7
b210mml45sk.save

b305mm50mk7 = Equipment.new
b305mm50mk7.name = "305mm/50 Mk7"
b305mm50mk7.equiptype = "Main Battery"
b305mm50mk7.range = 11.0
b305mm50mk7.save

b356mm45t41 = Equipment.new
b356mm45t41.name = "356mm/45 41st Year Type"
b356mm45t41.equiptype = "Main Battery"
b356mm45t41.range = 13.9
b356mm45t41.save

b356mm45mk2 = Equipment.new
b356mm45mk2.name = "356mm/45 Mk2"
b356mm45mk2.equiptype = "Main Battery"
b356mm45mk2.range = 14.2
b356mm45mk2.save

b380mml52sk = Equipment.new
b380mml52sk.name = "330mm L/52 SK C/34"
b380mml52sk.equiptype = "Main Battery"
b380mml52sk.range = 21.4
b380mml52sk.save

t450mmgt = Equipment.new
t450mmgt.name = "450 mm Goncharov Triple"
t450mmgt.equiptype = "Torpedo"
t450mmgt.range = 4.0
t450mmgt.save

t450mmmk6 = Equipment.new
t450mmmk6.name = "450 mm Mk6"
t450mmmk6.equiptype = "Torpedo"
t450mmmk6.range = 4.5
t450mmmk6.save

t457mmtwin = Equipment.new
t457mmtwin.name = "457 mm Twin"
t457mmtwin.equiptype = "Torpedo"
t457mmtwin.range = 5.0
t457mmtwin.save

t500zwilling = Equipment.new
t500zwilling.name = "500 mm Zwilling"
t500zwilling.equiptype = "Torpedo"
t500zwilling.range = 4.0
t500zwilling.save

t533mmtriple39u = Equipment.new
t533mmtriple39u.name = "553 mm Triple 39-U"
t533mmtriple39u.equiptype = "Torpedo"
t533mmtriple39u.range = 3.0
t533mmtriple39u.save

t553mmtwin = Equipment.new
t553mmtwin.name = "553 mm Twin"
t553mmtwin.equiptype = "Torpedo"
t553mmtwin.range = 7.0
t553mmtwin.save

t553mmtriple = Equipment.new
t553mmtriple.name = "553 mm Triple"
t553mmtriple.equiptype = "Torpedo"
t553mmtriple.range = 7.0
t553mmtriple.save

mitsubishi = Equipment.new
mitsubishi.name = "Mitsubishi A5M4"
mitsubishi.equiptype = "Fighters"
mitsubishi.range = 100
mitsubishi.save

nakajima = Equipment.new
nakajima.name = "Nakajima B5N2"
nakajima.equiptype = "Torpedo Bombers"
nakajima.range = 100
nakajima.save

aichi = Equipment.new
aichi.name = "Aichi D1A2"
aichi.equiptype = "Bombers"
aichi.range = 100
aichi.save

grummanf4f4 = Equipment.new
grummanf4f4.name = "Grumman F4F-4"
grummanf4f4.equiptype = "Fighters"
grummanf4f4.range = 100
grummanf4f4.save

douglastbd = Equipment.new
douglastbd.name = "Douglas TBD"
douglastbd.equiptype = "Torpedo Bombers"
douglastbd.range = 100
douglastbd.save

douglassbd3 = Equipment.new
douglassbd3.name = "Douglas SBD-3"
douglassbd3.equiptype = "Bombers"
douglassbd3.range = 100
douglassbd3.save

Equipped.create(warship_id: umikaze.id, equipment_id: b120mm40t41.id, amount: 2)
Equipped.create(warship_id: umikaze.id, equipment_id: t457mmtwin.id, amount: 2)
Equipped.create(warship_id: wakatake.id, equipment_id: b120mm40t41.id, amount: 2)
Equipped.create(warship_id: wakatake.id, equipment_id: t553mmtwin.id, amount: 2)
Equipped.create(warship_id: isokaze.id, equipment_id: b120mm40t41.id, amount: 2)
Equipped.create(warship_id: isokaze.id, equipment_id: t553mmtwin.id, amount: 3)
Equipped.create(warship_id: sampson.id, equipment_id: b102mm50mk12.id, amount: 4)
Equipped.create(warship_id: sampson.id, equipment_id: t450mmmk6.id, amount: 4)
Equipped.create(warship_id: wickes.id, equipment_id: b102mm50mk12.id, amount: 4)
Equipped.create(warship_id: wickes.id, equipment_id: t553mmtriple.id, amount: 4)
Equipped.create(warship_id: clemson.id, equipment_id: b102mm50mk12.id, amount: 4)
Equipped.create(warship_id: clemson.id, equipment_id: t553mmtriple.id, amount: 4)
Equipped.create(warship_id: storozhevoi.id, equipment_id: b102mm60m1911.id, amount: 3)
Equipped.create(warship_id: storozhevoi.id, equipment_id: t450mmgt.id, amount: 3)
Equipped.create(warship_id: derzki.id, equipment_id: b102mm60m1911.id, amount: 3)
Equipped.create(warship_id: derzki.id, equipment_id: t450mmgt.id, amount: 5)
Equipped.create(warship_id: izyaslav.id, equipment_id: b102mm60m1911.id, amount: 5)
Equipped.create(warship_id: izyaslav.id, equipment_id: t450mmgt.id, amount: 3)
Equipped.create(warship_id: gnevny.id, equipment_id: b130mmb13.id, amount: 4)
Equipped.create(warship_id: gnevny.id, equipment_id: t533mmtriple39u.id, amount: 2)


Equipped.create(warship_id: chikuma.id, equipment_id: b152mm45t41.id, amount: 4)
Equipped.create(warship_id: tenryu.id, equipment_id: b140mm50t3.id, amount: 4)
Equipped.create(warship_id: tenryu.id, equipment_id: t553mmtriple.id, amount: 2)
Equipped.create(warship_id: chester.id, equipment_id: b127mmmk5.id, amount: 4)
Equipped.create(warship_id: stlouis.id, equipment_id: b152mmmk6.id, amount: 10)
Equipped.create(warship_id: budyonny.id, equipment_id: b152mm57mk5.id, amount: 3)
Equipped.create(warship_id: shchors.id, equipment_id: b152mmmk6.id, amount: 4)
Equipped.create(warship_id: chapayev.id, equipment_id: b152mmmk6.id, amount: 4)
Equipped.create(warship_id: chapayev.id, equipment_id: t533mmtriple39u.id, amount: 2)
Equipped.create(warship_id: karlsruhe.id, equipment_id: b150mml45sk.id, amount: 8)
Equipped.create(warship_id: karlsruhe.id, equipment_id: t500zwilling.id, amount: 2)
Equipped.create(warship_id: königsberg.id, equipment_id: b150mml60sk.id, amount: 9)
Equipped.create(warship_id: königsberg.id, equipment_id: t533mmtriple39u.id, amount: 4)
Equipped.create(warship_id: nürnberg.id, equipment_id: b150mml60sk.id, amount: 9)
Equipped.create(warship_id: nürnberg.id, equipment_id: t533mmtriple39u.id, amount: 12)
Equipped.create(warship_id: yorck.id, equipment_id: b210mml45sk.id, amount: 4)
Equipped.create(warship_id: yorck.id, equipment_id: t533mmtriple39u.id, amount: 12)

Equipped.create(warship_id: myogi.id, equipment_id: b356mm45t41.id, amount: 3)
Equipped.create(warship_id: kongo.id, equipment_id: b356mm45t41.id, amount: 4)
Equipped.create(warship_id: wyoming.id, equipment_id: b305mm50mk7.id, amount: 6)
Equipped.create(warship_id: newyork.id, equipment_id: b356mm45mk2.id, amount: 5)
Equipped.create(warship_id: tirpitz.id, equipment_id: b380mml52sk.id, amount: 4)

Equipped.create(warship_id: ryujo.id, equipment_id: mitsubishi.id, amount: 1)
Equipped.create(warship_id: ryujo.id, equipment_id: nakajima.id, amount: 1)
Equipped.create(warship_id: ryujo.id, equipment_id: aichi.id, amount: 2)
Equipped.create(warship_id: independence.id, equipment_id: grummanf4f4.id, amount: 1)
Equipped.create(warship_id: independence.id, equipment_id: douglastbd.id, amount: 1)
Equipped.create(warship_id: independence.id, equipment_id: douglassbd3.id, amount: 1)


superuser = User.create(name: "superuser", administrator: true, password: 'nopassword', XP: 10000 )
zjmei = User.create(name: "zjmei", administrator: true, password: '11223344', XP: 234)
yoyo = User.create(name: "yoyo", administrator: false, password: 'yoyo', XP: 334)
biubiu = User.create(name: "biubiu", administrator: false, password: 'biubiu', XP: 100)
alice = User.create(name: "alice", administrator: false, password: 'alice', XP: 0)

b1 = Battle.create(map: "Big Race", btype: "Random Battle", date: "2016-1-1 13:00:00", winner: "Blue")
b2 = Battle.create(map: "Trident", btype: "Ranked Battle", date: "2016-4-1 13:00:00", winner: "Red")
b3 = Battle.create(map: "Big Race", btype: "Random Battle", date: "2016-5-1 13:00:00", winner: "Blue")
b4 = Battle.create(map: "Ocean", btype: "Random Battle", date: "2016-5-1 15:00:00", winner: "Red")
b5 = Battle.create(map: "Big Race", btype: "Co-op Battle", date: "2016-5-1 23:00:00", winner: "Red")

Enrolled.create(user_id: zjmei.id, battle_id: b1.id, warship_id: umikaze.id, team: 'Red')
Enrolled.create(user_id: zjmei.id, battle_id: b2.id, warship_id: clemson.id, team: 'Blue')
Enrolled.create(user_id: zjmei.id, battle_id: b3.id, warship_id: independence.id, team: 'Red')
Enrolled.create(user_id: yoyo.id, battle_id: b1.id, warship_id: ryujo.id, team: 'Blue')
Enrolled.create(user_id: yoyo.id, battle_id: b2.id, warship_id: kongo.id, team: 'Blue')
Enrolled.create(user_id: biubiu.id, battle_id: b1.id, warship_id: tenryu.id, team: 'Red')
Enrolled.create(user_id: biubiu.id, battle_id: b2.id, warship_id: shchors.id, team: 'Red')
Enrolled.create(user_id: alice.id, battle_id: b1.id, warship_id: derzki.id, team: 'Blue')
Enrolled.create(user_id: alice.id, battle_id: b2.id, warship_id: umikaze.id, team: 'Red')
Enrolled.create(user_id: alice.id, battle_id: b3.id, warship_id: yorck.id, team: 'Blue')
Enrolled.create(user_id: zjmei.id, battle_id: b4.id, warship_id: chester.id, team: 'Blue')
Enrolled.create(user_id: biubiu.id, battle_id: b4.id, warship_id: karlsruhe.id, team: 'Red')
Enrolled.create(user_id: yoyo.id, battle_id: b4.id, warship_id: isokaze.id, team: 'Blue')
Enrolled.create(user_id: alice.id, battle_id: b5.id, warship_id: chikuma.id, team: 'Red')
Enrolled.create(user_id: alice.id, battle_id: b4.id, warship_id: wyoming.id, team: 'Red')
Enrolled.create(user_id: yoyo.id, battle_id: b5.id, warship_id: newyork.id, team: 'Blue')

Review.create(rating: 3, content: "This is a good ship", warship_id: umikaze.id, user_id: zjmei.id)
Review.create(rating: 0, content: "This is a bad ship", warship_id: wakatake.id, user_id: zjmei.id)


print "There are now #{Warship.count} warships in the database.\n"
print "There are now #{Equipment.count} equipments in the database.\n"
