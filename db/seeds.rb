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
      arrival_date: rand(2.months.ago..4.weeks.from_now), 
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
      arrival_date: rand(4.weeks.from_now..3.years.from_now), 
      first_name: Faker::Name.first_name, 
      email: Faker::Internet.email, 
      status: "pending", 
      guests: rand(1..6), 
      nights: rand(2..7)}
  ])
  end

  Retreat.create!([
    {arrival_date: "2016-10-01", spa_id: 2, group_leader_id: nil, name: "Old ladies YO!", registered: 12, confirmed: nil, group_rates_at: 8, comp_stay_at: 12, facebook_url: nil, image: nil, facebook_image: nil, description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", paypal: nil}
  ])