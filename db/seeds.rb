# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# User.destroy_all
# Post.destroy_allZ

u1 = User.create(email: "adoysurodoy@gadul.com", password: "pass")
u2 = User.create(email: "adoysurodoy2@gadul.com", password: "pass")

p1 = Post.create(title: "Ayam 1", body: "Ayam 1 sungguh enak", user: u1,)
p2 = Post.create(title: "Ayam 2", body: "Ayam 2 lebih enak", user: u1)

p3 = Post.create(title: "Ayam 3", body: "Ayam 3 sungguh luar biasas", user: u2)
p4 = Post.create(title: "Ayam 4", body: "Ayam 4 sungguh maknyossss!", user: u2)

p3.comments.create(body: "Ayam 3 ini ditinggal induknya", user: u2)
p4.comments.create(body: "Ayam 4 ini ditinggal induknya", user: u2)

p1.comments.create(body: "Ayam 1 ini ditinggal induknya mfdedkfdkfd", user: u1)
p2.comments.create(body: "Ayam 2ww ini ditinggal induknya  dfdfdfd", user: u1)
