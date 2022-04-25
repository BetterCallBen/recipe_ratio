puts "cleaning db..."
User.destroy_all
Ingredient.destroy_all

benj = User.create!(
  first_name: "Benjamin",
  last_name: "Boisson",
  password: "secret",
  email: "benjbdk@gmail.com"
)

crepe = Recipe.create!(
  name: "crepe",
  number_of_people: 5,
  user: benj
)

Recipe.create!(
  name: "quiche",
  number_of_people: 4,
  user: benj
)

Recipe.create!(
  name: "lasagne",
  number_of_people: 5,
  user: benj
)
Recipe.create!(
  name: "pates carbo",
  number_of_people: 5,
  user: benj
)
Recipe.create!(
  name: "riz",
  number_of_people: 5,
  user: benj
)

oeuf = Ingredient.create!(
  name: "Oeuf"
)
farine = Ingredient.create!(
  name: "Farine"
)
eau = Ingredient.create!(
  name: "Eau"
)
jambon = Ingredient.create!(
  name: "Jambon"
)
fromage = Ingredient.create!(
  name: "Fromage"
)
sucre = Ingredient.create!(
  name: "Sucre"
)
sel = Ingredient.create!(
  name: "Sel"
)
lait = Ingredient.create!(
  name: "Lait"
)
creme = Ingredient.create!(
  name: "Crème fraiche"
)
sucre_vanille = Ingredient.create!(
  name: "Sucre Vanillé"
)
huile = Ingredient.create!(
  name: "Huile"
)

RecipeIngredient.create!(
  quantity: 500,
  unity: "g",
  recipe: crepe,
  ingredient: fromage
)
RecipeIngredient.create!(
  quantity: 5,
  unity: "",
  recipe: crepe,
  ingredient: oeuf
)
RecipeIngredient.create!(
  quantity: 120,
  unity: "g",
  recipe: crepe,
  ingredient: farine
)
RecipeIngredient.create!(
  quantity: 150,
  unity: "mL",
  recipe: crepe,
  ingredient: lait
)
RecipeIngredient.create!(
  quantity: 1,
  unity: "sachet",
  recipe: crepe,
  ingredient: sucre_vanille
)

puts "#{User.all.count} users were created"
puts "#{Recipe.all.count} recipes were created"
puts "#{Ingredient.all.count} ingredients were created"
