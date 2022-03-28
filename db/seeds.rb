User.destroy_all
puts "cleaning db..."


benj = User.create!(
  password: "secret",
  email: "benjbdk@gmail.com"
)

Recipe.create!(
  name: "crepe",
  number_of_people: 5,
  user: benj,
)

Recipe.create!(
  name: "quiche",
  number_of_people: 4,
  user: benj,
)

Recipe.create!(
  name: "lasagne",
  number_of_people: 5,
  user: benj,
)

puts "#{User.all.count} users were created"
puts "#{Recipe.all.count} recipes were created"
