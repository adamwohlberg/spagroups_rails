# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require 'faker'

users = []
20.times do
  users << User.create!(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email)
end

suffixes = %w(Hotel Resort Spa Inn Cabins Lodge)
spas = []
50.times do
  spas << Spa.create!(
    name: "#{Faker::Company.name} #{suffixes.sample}",
    city: Faker::Address.city,
    state: Faker::Address.state)
end

dates = (Date.today..(Date.today - 40.days)).to_a
statuses = %w(pending confirmed deposit_paid)
60.times do
  Reservation.create! user: users.sample,
                      spa: spas.sample,
                      guests: (1..12).to_a.sample,
                      status: statuses.sample,
                      booked_date: dates.sample
end

