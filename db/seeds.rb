# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

    Shopper.destroy_all
    Customer.destroy_all
    Order.destroy_all



    Shopper.create(name:"steve", availability:"MTuWTh", weight_max: 25)
    Shopper.create(name:"Mark", availability:"SuMTu", weight_max: 10)
   y = Shopper.create(name:"Milo", availability:"SaSuF", weight_max: 5)

   x = Customer.create(name:"name1")
    Customer.create(name:"barbra")
    Customer.create(name:"velma")
    Customer.create(name:"tom")

    Order.create(customer:x, shopper:y, grocery_list:"eggs, milk, ice-cream", list_weight: 4.6)
