# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Resort.create!(
  title: "breckenridge",
  address: "1599 Ski Hill Rd, Breckenridge, CO 80424"
)
Resort.create!(
  title: "keystone",
  address: "1202 Jones Gulch Rd, Keystone, CO 80435"
)
Resort.create!(
  title: "arapahoe_basin",
  address: "28194 US-6, Keystone, CO 80435",
)
Resort.create!(
  title: "crested_butte",
  latitude: 38.8833298,
  longitude: -106.939496242
)
Resort.create!(
  title: "vail",
  latitude: 39.6403,
  longitude: -106.3742,
)
Resort.create!(
  title: "winter_park",
  latitude: 39.8717,
  longitude: -105.7631,
)
Resort.create!(
  title: "whistler",
  latitude: 50.1163,
  longitude: -122.9574,
)
