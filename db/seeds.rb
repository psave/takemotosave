# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
paul = Guest.create(
  firstname: "Paul",
  lastname: "Save",
  email: "paul@paul.com",
  password_digest: "1234",
  cell_number: "123-456-7890",
  admin: true
  )
PrimaryAddress.create(
  guests_id: paul.id, 
  phone_number: "123-456-7888",
  street: "4-5678 Cedar Ave",
  city: "Vancouver",
  postal_code: "A1B2C4",
  country: "Canada"
  )
SecondaryAddress.create(
  guests_id: paul.id, 
  phone_number: "123-456-7888",
  street: "AVE DE LAS GARZAS #136 ZONA HOTELERA",
  city: "Puerto Vallarta",
  postal_code: "48333",
  country: "Mexico",
  checkin: "2016/12/07 15:00",
  checkout: "2016/12/11 15:00"
  )

john = Guest.create(
  firstname: "John",
  lastname: "Doe",
  email: "john@john.com",
  password_digest: "1234",
  cell_number: "123-456-7890",
  admin: false
  )
PrimaryAddress.create(
  guests_id: john.id,
  phone_number: "123-456-7888",
  street: "1234 Pine Ave",
  city: "Victoria",
  postal_code: "A1B2C4",
  country: "Canada"
  )
SecondaryAddress.create(
  guests_id: john.id, 
  phone_number: "123-456-7888",
  street: "AVE DE LAS GARZAS #138 ZONA HOTELERA",
  city: "Puerto Vallarta",
  postal_code: "48333",
  country: "Mexico",
  checkin: "2016/12/07 15:00",
  checkout: "2016/12/11 15:00"
  )

jane = Guest.create(
  firstname: "Jane",
  lastname: "Doe",
  email: "jane@jane.com",
  password_digest: "1234",
  cell_number: "123-456-7890",
  guests_id: john.id,
  admin: false
  )
PrimaryAddress.create(
  guests_id: jane.id,
  phone_number: "123-456-7888",
  street: "1234 Pine Ave",
  city: "Victoria",
  postal_code: "A1B2C4",
  country: "Canada"
  )
SecondaryAddress.create(
  guests_id: jane.id, 
  phone_number: "123-456-7888",
  street: "AVE DE LAS GARZAS #138 ZONA HOTELERA",
  city: "Puerto Vallarta",
  postal_code: "48333",
  country: "Mexico",
  checkin: "2016/12/07 15:00",
  checkout: "2016/12/11 15:00"
  )