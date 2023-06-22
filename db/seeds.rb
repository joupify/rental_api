# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Booking.delete_all
Reservation.delete_all
Mission.delete_all
Listing.delete_all

Listing.create!(num_rooms: 2)
Listing.create!(num_rooms: 1)
Listing.create!(num_rooms: 3)

listing1 = Listing.first
listing2 = Listing.second

Booking.create!(listing: listing1, start_date: "2016-10-10".to_date, end_date: "2016-10-15".to_date)
Booking.create!(listing: listing1, start_date: "2016-10-16".to_date, end_date: "2016-10-20".to_date)
Booking.create!(listing: listing2, start_date: "2016-10-15".to_date, end_date: "2016-10-20".to_date)

Reservation.create!(listing: listing1, start_date: "2016-10-11".to_date, end_date: "2016-10-13".to_date)
Reservation.create!(listing: listing1, start_date: "2016-10-13".to_date, end_date: "2016-10-15".to_date)
Reservation.create!(listing: listing1, start_date: "2016-10-16".to_date, end_date: "2016-10-20".to_date)
Reservation.create!(listing: listing2, start_date: "2016-10-15".to_date, end_date: "2016-10-18".to_date)

Mission.create!(listing: listing1, mission_type: "first_checkin", date: "2016-10-10".to_date, price: 10 * listing1.num_rooms)
Mission.create!(listing: listing1, mission_type: "last_checkout", date: "2016-10-15".to_date, price: 5 * listing1.num_rooms)
Mission.create!(listing: listing1, mission_type: "first_checkin", date: "2016-10-16".to_date, price: 10 * listing1.num_rooms)
Mission.create!(listing: listing1, mission_type: "last_checkout", date: "2016-10-20".to_date, price: 5 * listing1.num_rooms)
Mission.create!(listing: listing1, mission_type: "checkout_checkin", date: "2016-10-13".to_date, price: 10 * listing1.num_rooms)
Mission.create!(listing: listing2, mission_type: "first_checkin", date: "2016-10-15".to_date, price: 10 * listing2.num_rooms)
Mission.create!(listing: listing2, mission_type: "last_checkout", date: "2016-10-20".to_date, price: 5 * listing2.num_rooms)
Mission.create!(listing: listing2, mission_type: "checkout_checkin", date: "2016-10-18".to_date, price: 10 * listing2.num_rooms)
