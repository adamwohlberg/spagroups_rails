include Faker

  Spa.create!([
    {name: "Crayon Ranch", city: "Tucson", state: "AZ"},
    {name: "Ranch of the Door", city: "Tecate", state: "MX"},
    {name: "Orange Mountain", city: "St. George", state: "UT"},
    {name: "Mirabel Resort", city: "Tucson", state: "AZ"},
    {name: "The Redwoods at Ojai", city: "Ojai", state: "CA"},
    {name: "Lake Awesome Spa", city: "Lake Awesome", state: "TX"},
    {name: "Trypalu Yoga", city: "Lenox", state: "MA"}
  ])

  # Populate current month
  80.times do
  Reservation.create!([
    {user_id: nil, 
      spa_id: rand(1..7), 
      arrival_date: rand(2.months.ago..2.weeks.from_now), 
      first_name: Faker::Name.first_name, 
      email: Faker::Internet.email, 
      status: "pending", 
      guests: rand(1..5), 
      nights: rand(2..7)}
  ])
  end

  500.times do
  Reservation.create!([
    {user_id: nil, 
      spa_id: rand(1..7), 
      arrival_date: rand(2.weeks.from_now..3.years.from_now), 
      first_name: Faker::Name.first_name, 
      email: Faker::Internet.email, 
      status: "pending", 
      guests: rand(1..6), 
      nights: rand(2..7)}
  ])
  end
