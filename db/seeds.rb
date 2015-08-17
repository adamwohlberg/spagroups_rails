GuestNight.create!([
  {reservation_id: 1, guests: 10, date: "2015-08-17"},
  {reservation_id: 1, guests: 10, date: "2015-08-18"},
  {reservation_id: 1, guests: 10, date: "2015-08-19"},
  {reservation_id: 2, guests: 10, date: "2015-08-17"},
  {reservation_id: 2, guests: 10, date: "2015-08-18"},
  {reservation_id: 2, guests: 10, date: "2015-08-19"},
  {reservation_id: 1, guests: 10, date: "2015-08-17"},
  {reservation_id: 1, guests: 10, date: "2015-08-18"},
  {reservation_id: 1, guests: 10, date: "2015-08-19"},
  {reservation_id: 2, guests: 10, date: "2015-08-17"},
  {reservation_id: 2, guests: 10, date: "2015-08-18"},
  {reservation_id: 2, guests: 10, date: "2015-08-19"}
])
Reservation.create!([
  {user_id: nil, spa_id: 1, arrival_date: "2015-08-17", first_name: "Adam", email: "adam@foo.com", status: "pending", guests: 10, nights: 3},
  {user_id: nil, spa_id: 1, arrival_date: "2015-08-17", first_name: "Bob", email: "bob@foo.com", status: "pending", guests: 10, nights: 3}
])
Retreat.create!([
  {arrival_date: "2015-28-10", spa_id: 1, group_leader_id: nil, name: "Cool name 1", registered: 12, confirmed: nil, group_rates_at: 8, comp_stay_at: 12, facebook_url: nil, image: nil, facebook_image: nil, description: nil, paypal: nil},
  {arrival_date: "2016-10-01", spa_id: 2, group_leader_id: nil, name: "Old ladies YO!", registered: 12, confirmed: nil, group_rates_at: 8, comp_stay_at: 12, facebook_url: nil, image: nil, facebook_image: nil, description: nil, paypal: nil},
  {arrival_date: "2015-10-10", spa_id: 1, group_leader_id: nil, name: "Cool name 3", registered: 12, confirmed: nil, group_rates_at: 8, comp_stay_at: 12, facebook_url: nil, image: nil, facebook_image: nil, description: nil, paypal: nil},
  {arrival_date: "2015-06-08", spa_id: 3, group_leader_id: nil, name: "Cool name 5", registered: 12, confirmed: nil, group_rates_at: 8, comp_stay_at: 12, facebook_url: nil, image: nil, facebook_image: nil, description: nil, paypal: nil},
  {arrival_date: "2015-10-08", spa_id: 6, group_leader_id: nil, name: "Happy Retreat", registered: 12, confirmed: nil, group_rates_at: 8, comp_stay_at: 12, facebook_url: nil, image: nil, facebook_image: nil, description: nil, paypal: nil},
  {arrival_date: "2015-05-11", spa_id: 1, group_leader_id: nil, name: "Cool name 1", registered: 12, confirmed: nil, group_rates_at: 8, comp_stay_at: 12, facebook_url: nil, image: nil, facebook_image: nil, description: nil, paypal: nil},
  {arrival_date: "2016-14-03", spa_id: 2, group_leader_id: nil, name: "Old ladies YO!", registered: 12, confirmed: nil, group_rates_at: 8, comp_stay_at: 12, facebook_url: nil, image: nil, facebook_image: nil, description: nil, paypal: nil},
  {arrival_date: "2016-17-02", spa_id: 1, group_leader_id: nil, name: "Cool name 3", registered: 12, confirmed: nil, group_rates_at: 8, comp_stay_at: 12, facebook_url: nil, image: nil, facebook_image: nil, description: nil, paypal: nil},
  {arrival_date: "2015-02-11", spa_id: 3, group_leader_id: nil, name: "Cool name 5", registered: 12, confirmed: nil, group_rates_at: 8, comp_stay_at: 12, facebook_url: nil, image: nil, facebook_image: nil, description: nil, paypal: nil},
  {arrival_date: "2015-23-01", spa_id: 6, group_leader_id: nil, name: "Happy Retreat", registered: 12, confirmed: nil, group_rates_at: 8, comp_stay_at: 12, facebook_url: nil, image: nil, facebook_image: nil, description: nil, paypal: nil}
])
Spa.create!([
  {name: "Crayon Ranch", city: "Tucson", state: "AZ"},
  {name: "Crayon Ranch", city: "Lenox", state: "MA"},
  {name: "Ranch of the Door", city: "Tecate", state: "MX"},
  {name: "Orange Mountain", city: "St. George", state: "UT"},
  {name: "Mirabel Resort and Spa", city: "Tucson", state: "AZ"},
  {name: "The Redwoods at Ojai", city: "Ojai", state: "CA"},
  {name: "Lake Awesome Resort & Spa", city: "Lake Awesome", state: "TX"},
  {name: "Trypalu Yoga", city: "Lenox", state: "MA"}
])
