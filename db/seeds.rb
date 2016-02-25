# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# User.create(username: 'Texas-Pete', email: "tp@gmail.com", password_digest: "1234")

Recipe.create(name: 'Bloody Mary', description: "2 part tomato juice, 1 part vodka", image:"http://liquor.s3.amazonaws.com/wp-content/uploads/2012/01/classic-bloody-mary.jpg")
Recipe.create(name: 'Rum and Coke', description: "2 part coke, 1 part rum", image:"http://talltalesfromkansas.typepad.com/.a/6a01538dee917a970b01a511949884970c-pi")

Ingredient.create(name: 'Vodka', alcoholic: true)
Ingredient.create(name: 'Rum', alcoholic: true)
Ingredient.create(name: 'Tequila', alcoholic: true)
Ingredient.create(name: 'Bourbon', alcoholic: true)
Ingredient.create(name: 'Gin', alcoholic: true)
Ingredient.create(name: 'Liqueur', alcoholic: true)
Ingredient.create(name: 'Scotch Whiskey', alcoholic: true)
Ingredient.create(name: 'Irish Whiskey', alcoholic: true)
Ingredient.create(name: 'Canadian Whiskey', alcoholic: true)

Ingredient.create(name: 'Coke', alcoholic: false)
Ingredient.create(name: 'Diet Coke', alcoholic: false)
Ingredient.create(name: 'Sprite', alcoholic: false)
Ingredient.create(name: 'Ginger Ale', alcoholic: false)
Ingredient.create(name: 'Club Soda', alcoholic: false)
Ingredient.create(name: 'Tonic', alcoholic: false)
Ingredient.create(name: 'Orange Juice', alcoholic: false)
Ingredient.create(name: 'Pineapple Juice', alcoholic: false)
Ingredient.create(name: 'Cranberry Juice', alcoholic: false)
Ingredient.create(name: 'Triple Sec', alcoholic: false)
Ingredient.create(name: 'Simple Syrup', alcoholic: false)
Ingredient.create(name: 'Tomato Juice', alcoholic: false)

RecipeIngredient.create(recipe_id: 1, ingredient_id: 1)
RecipeIngredient.create(recipe_id: 1, ingredient_id: 21)
RecipeIngredient.create(recipe_id: 2, ingredient_id: 2)
RecipeIngredient.create(recipe_id: 2, ingredient_id: 10)