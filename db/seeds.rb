# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Airports.all.each do |a|
  Airport.create!(
    altitude: a.altitude,
    city: a.city,
    country: a.country,
    dst: a.dst,
    iata: a.iata,
    icao: a.icao,
    latitude: a.latitude,
    longitude: a.longitude,
    name: a.name,
    timezone: a.timezone,
    tz_name: a.tz_name
  )
end

