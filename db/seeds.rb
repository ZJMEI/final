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

jp = Country.create(name: "Japan", cimage_url: "umikaze.jpg")
am = Country.create(name: "America", cimage_url: "umikaze.jpg")
gm = Country.create(name: "Germany", cimage_url: "umikaze.jpg")

umikaze = Warship.new
umikaze.name = "Umikaze"
umikaze.shiptype = "Destroyer"
umikaze.image_url = "Umikaze.jpg"
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

b120mm40t41 = Equipment.new
b120mm40t41.name = "120mm/40 41st Year Type"
b120mm40t41.equiptype = "Main Battery"
b120mm40t41.range = 6.7
b120mm40t41.save

t457mmtwin = Equipment.new
t457mmtwin.name = "457 mm Twin"
t457mmtwin.equiptype = "Torpedo"
t457mmtwin.range = 5.0
t457mmtwin.save

Equipped.create(warship_id: umikaze.id, equipment_id: b120mm40t41.id, amount: 2)
Equipped.create(warship_id: umikaze.id, equipment_id: t457mmtwin.id, amount: 2)

zjmei = User.create(name: "zjmei", password: '11223344', XP: 234)

Battle.create(map: "Big Race", btype: "Random Battle", date: "2010-1-1 13:00:00", winner: "Blue")

print "There are now #{Warship.count} warships in the database.\n"
print "There are now #{Equipment.count} equipments in the database.\n"
