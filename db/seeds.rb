User.destroy_all
puts "cleaning db..."


benj = User.create!(
  password: "secret",
  email: "benjbdk@gmail.com"
)

crepe = Recipe.create!(
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
  user: benj
)

Ingredient.create!(
  name: "Oeuf"
)
Ingredient.create!(
  name: "Farine"
)
Ingredient.create!(
  name: "Eau"
)
Ingredient.create!(
  name: "Jambon"
)
Ingredient.create!(
  name: "Fromage"
)

puts "#{User.all.count} users were created"
puts "#{Recipe.all.count} recipes were created"
puts "#{Ingredient.all.count} ingredients were created"
