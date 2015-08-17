# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require 'faker'

suffixes = %w(Hotel Resort Spa Inn Cabins Lodge)
50.times do
  Spa.create! name: "#{Faker::Company.name} #{suffixes.sample}",
              city: Faker::Address.city,
              state: Faker::Address.state
end
