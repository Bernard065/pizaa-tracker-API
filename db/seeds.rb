puts "Seeding..."

# Create some restaurants
restaurant1 = Restaurant.create(name: "Sottocasa NYC", address: "298 Atlantic Ave, Brooklyn, NY 11201")
restaurant2 = Restaurant.create(name: "PizzArte", address: "69 W 55th St, New York, NY 10019")
restaurant3 = Restaurant.create(name: "John's Pizza", address: "260 W 44th St, New York, NY 10036")
restaurant4 = Restaurant.create(name: "L'asso Pizza", address: "192 Mott St, New York, NY 10012")

# Create some pizzas
pizza1 = Pizza.create(name: "Cheese", ingredients: "Dough, Tomato Sauce, Cheese")
pizza2 = Pizza.create(name: "Pepperoni", ingredients: "Dough, Tomato Sauce, Cheese, Pepperoni")
pizza3 = Pizza.create(name: "Margherita", ingredients: "Dough, Tomato Sauce, Cheese, Basil")
pizza4 = Pizza.create(name: "Hawaiian", ingredients: "Dough, Tomato Sauce, Cheese, Ham, Pineapple")

# Create some restaurant pizzas
restaurant_pizza1 = RestaurantPizza.create(price: 10, restaurant: restaurant1, pizza: pizza1)
restaurant_pizza2 = RestaurantPizza.create(price: 12, restaurant: restaurant1, pizza: pizza2)
restaurant_pizza3 = RestaurantPizza.create(price: 8, restaurant: restaurant2, pizza: pizza3)
restaurant_pizza4 = RestaurantPizza.create(price: 15, restaurant: restaurant3, pizza: pizza4)
restaurant_pizza5 = RestaurantPizza.create(price: 20, restaurant: restaurant4, pizza: pizza2)
restaurant_pizza6 = RestaurantPizza.create(price: 25, restaurant: restaurant4, pizza: pizza3)
restaurant_pizza7 = RestaurantPizza.create(price: 30, restaurant: restaurant4, pizza: pizza4)
restaurant_pizza8 = RestaurantPizza.create(price: 5, restaurant: restaurant2, pizza: pizza1)


puts "Done seeding"