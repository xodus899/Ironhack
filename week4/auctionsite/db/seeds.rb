user1 = User.create(name: "Dan H", email: "thedirty@mail.com")

user2 = User.create(name: "Frank A",email: "freakyfrank@mail.com")

user3 = User.create(name: "Daniel U", email: "dancing@mail.com")

user4 = User.create(name: "Steve B", email: "synthetics@gmail.com")

user5 = User.create(name: "Mike M", email: "marvelous@gmail.com")

# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

product1 = user1.products.create(title: 'Football', description: 'Made from pigskin', deadline: Date.today + 1.month)

product2 = user2.products.create(title: 'Golf Cart', description: ' Needs battery', deadline: Date.today + 1.year)

product3 = user3.products.create(title: ' Table', description: ' Wood 36 x 36', deadline: Date.today + 1.week)

product4 = user4.products.create(title: 'Fancy pen', description: 'Ball point, blue ink', deadline: Date.today + 1.month)

product5 = user5.products.create(title: 'Laptop', description: 'Macbook 13.3 needs hdd', deadline: Date.today + 1.month)






# Seed your database with users in the db/seeds.rb file. The user should have a name and an email address